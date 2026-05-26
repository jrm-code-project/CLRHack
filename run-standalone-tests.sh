#!/usr/bin/env bash

set -u

root_dir="$(cd "$(dirname "$0")" && pwd)"
tests_dir="$root_dir/bin/Release/net8.0"

tests=(
  AdvancedTest
  BankTest
  BlockTest
  CatchTest
  CallableHardeningTest
  ChurchTest
  ClosureTest
  ComplexScopingTest
  Div2Benchmark
  FibBenchmark
  FletTest
  HelloWorld
  InteropTest
  LabelsTest
  LexicalExitsTest
  LetRecTest
  MacroTest
  MutabilityTest
  MultipleValuesTest
  ValuesCorruptionTest
  NBoyerBenchmark
  RestartTest
  RestartBindEdgeCasesTest
  RestartsTest
  HandlerTest
  HandlerBindEdgeCasesTest
  HandlerCaseTest
  ConditionsTest
  SignalErrorEdgeCasesTest
  DebuggerTest
  ReflectionTest
  PuzzleBenchmark
  ScopingTests
  TagbodyTest
  TakBenchmark
  TopLevelTest
  ToplevelArgs
  TriangBenchmark
  MopCombinationsTest
  MopBenchmark
  SeparateLinked
  UwpTest
)

status=0

for test in "${tests[@]}"; do
  echo "=== Running ${test} ==="

  if [[ "$test" == "ConditionsTest" ]]; then
    set +e
    dotnet "$tests_dir/${test}.dll"
    exit_code=$?
    set -e

    if [[ $exit_code -eq 0 ]]; then
      echo "ConditionsTest exited with code 0 as expected."
    else
      echo "ConditionsTest exited with code ${exit_code} (expected 0)."
      status=1
    fi
    continue
  fi

  if [[ "$test" == "DebuggerTest" ]]; then
    set +e
    printf '0\n' | dotnet "$tests_dir/${test}.dll"
    exit_code=$?
    set -e

    if [[ $exit_code -eq 0 ]]; then
      echo "DebuggerTest exited with code 0 as expected."
    else
      echo "DebuggerTest exited with code ${exit_code} (expected 0)."
      status=1
    fi
    continue
  fi

  dotnet "$tests_dir/${test}.dll" || status=$?
done

exit "$status"