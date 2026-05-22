using System;

namespace Lisp
{
    public static class Values
    {
        [ThreadStatic]
        public static int ReturnCount;

        [ThreadStatic] public static object Value1;
        [ThreadStatic] public static object Value2;
        [ThreadStatic] public static object Value3;
        [ThreadStatic] public static object Value4;
        [ThreadStatic] public static object Value5;
        [ThreadStatic] public static object Value6;
        [ThreadStatic] public static object Value7;
        [ThreadStatic] public static object Value8;
        [ThreadStatic] public static object Value9;
        [ThreadStatic] public static object Value10;
        [ThreadStatic] public static object Value11;
        [ThreadStatic] public static object Value12;
        [ThreadStatic] public static object Value13;
        [ThreadStatic] public static object Value14;
        [ThreadStatic] public static object Value15;
        [ThreadStatic] public static object Value16;
        [ThreadStatic] public static object Value17;
        [ThreadStatic] public static object Value18;
        [ThreadStatic] public static object Value19;
        [ThreadStatic] public static object Value20;
        [ThreadStatic] public static object Value21;
        [ThreadStatic] public static object Value22;
        [ThreadStatic] public static object Value23;
        [ThreadStatic] public static object Value24;
        [ThreadStatic] public static object Value25;
        [ThreadStatic] public static object Value26;
        [ThreadStatic] public static object Value27;
        [ThreadStatic] public static object Value28;
        [ThreadStatic] public static object Value29;
        [ThreadStatic] public static object Value30;
        [ThreadStatic] public static object Value31;
        [ThreadStatic] public static object Value32;
        [ThreadStatic] public static object Value33;
        [ThreadStatic] public static object Value34;
        [ThreadStatic] public static object Value35;
        [ThreadStatic] public static object Value36;
        [ThreadStatic] public static object Value37;
        [ThreadStatic] public static object Value38;
        [ThreadStatic] public static object Value39;
        [ThreadStatic] public static object Value40;
        [ThreadStatic] public static object Value41;
        [ThreadStatic] public static object Value42;
        [ThreadStatic] public static object Value43;
        [ThreadStatic] public static object Value44;
        [ThreadStatic] public static object Value45;
        [ThreadStatic] public static object Value46;
        [ThreadStatic] public static object Value47;
        [ThreadStatic] public static object Value48;
        [ThreadStatic] public static object Value49;
        [ThreadStatic] public static object Value50;
        [ThreadStatic] public static object Value51;
        [ThreadStatic] public static object Value52;
        [ThreadStatic] public static object Value53;
        [ThreadStatic] public static object Value54;
        [ThreadStatic] public static object Value55;
        [ThreadStatic] public static object Value56;
        [ThreadStatic] public static object Value57;
        [ThreadStatic] public static object Value58;
        [ThreadStatic] public static object Value59;
        [ThreadStatic] public static object Value60;
        [ThreadStatic] public static object Value61;
        [ThreadStatic] public static object Value62;
        [ThreadStatic] public static object Value63;

        public static object CreateGatheringList()
        {
            return new System.Collections.Generic.List<object>();
        }

        public static void Accumulate(object list, object primary)
        {
            var l = (System.Collections.Generic.List<object>)list;
            if (ReturnCount <= 0) return;
            l.Add(primary);
            if (ReturnCount > 1) l.Add(Value1);
            if (ReturnCount > 2) l.Add(Value2);
            if (ReturnCount > 3) l.Add(Value3);
            if (ReturnCount > 4) l.Add(Value4);
            if (ReturnCount > 5) l.Add(Value5);
            if (ReturnCount > 6) l.Add(Value6);
            if (ReturnCount > 7) l.Add(Value7);
            if (ReturnCount > 8) l.Add(Value8);
            if (ReturnCount > 9) l.Add(Value9);
            if (ReturnCount > 10) l.Add(Value10);
            if (ReturnCount > 11) l.Add(Value11);
            if (ReturnCount > 12) l.Add(Value12);
            if (ReturnCount > 13) l.Add(Value13);
            if (ReturnCount > 14) l.Add(Value14);
            if (ReturnCount > 15) l.Add(Value15);
            if (ReturnCount > 16) l.Add(Value16);
            if (ReturnCount > 17) l.Add(Value17);
            if (ReturnCount > 18) l.Add(Value18);
            if (ReturnCount > 19) l.Add(Value19);
            if (ReturnCount > 20) l.Add(Value20);
            if (ReturnCount > 21) l.Add(Value21);
            if (ReturnCount > 22) l.Add(Value22);
            if (ReturnCount > 23) l.Add(Value23);
            if (ReturnCount > 24) l.Add(Value24);
            if (ReturnCount > 25) l.Add(Value25);
            if (ReturnCount > 26) l.Add(Value26);
            if (ReturnCount > 27) l.Add(Value27);
            if (ReturnCount > 28) l.Add(Value28);
            if (ReturnCount > 29) l.Add(Value29);
            if (ReturnCount > 30) l.Add(Value30);
            if (ReturnCount > 31) l.Add(Value31);
            if (ReturnCount > 32) l.Add(Value32);
            if (ReturnCount > 33) l.Add(Value33);
            if (ReturnCount > 34) l.Add(Value34);
            if (ReturnCount > 35) l.Add(Value35);
            if (ReturnCount > 36) l.Add(Value36);
            if (ReturnCount > 37) l.Add(Value37);
            if (ReturnCount > 38) l.Add(Value38);
            if (ReturnCount > 39) l.Add(Value39);
            if (ReturnCount > 40) l.Add(Value40);
            if (ReturnCount > 41) l.Add(Value41);
            if (ReturnCount > 42) l.Add(Value42);
            if (ReturnCount > 43) l.Add(Value43);
            if (ReturnCount > 44) l.Add(Value44);
            if (ReturnCount > 45) l.Add(Value45);
            if (ReturnCount > 46) l.Add(Value46);
            if (ReturnCount > 47) l.Add(Value47);
            if (ReturnCount > 48) l.Add(Value48);
            if (ReturnCount > 49) l.Add(Value49);
            if (ReturnCount > 50) l.Add(Value50);
            if (ReturnCount > 51) l.Add(Value51);
            if (ReturnCount > 52) l.Add(Value52);
            if (ReturnCount > 53) l.Add(Value53);
            if (ReturnCount > 54) l.Add(Value54);
            if (ReturnCount > 55) l.Add(Value55);
            if (ReturnCount > 56) l.Add(Value56);
            if (ReturnCount > 57) l.Add(Value57);
            if (ReturnCount > 58) l.Add(Value58);
            if (ReturnCount > 59) l.Add(Value59);
            if (ReturnCount > 60) l.Add(Value60);
            if (ReturnCount > 61) l.Add(Value61);
            if (ReturnCount > 62) l.Add(Value62);
            if (ReturnCount > 63) l.Add(Value63);
        }

        public static object InvokeWithList(object fn, object list)
        {
            var closure = (Closure)fn;
            var l = (System.Collections.Generic.List<object>)list;
            return closure.Invoke(l.ToArray());
        }

        public static object[] CaptureValues()
        {
            if (ReturnCount == 1) return null;
            var result = new object[ReturnCount];
            if (ReturnCount > 1) result[1] = Value1;
            if (ReturnCount > 2) result[2] = Value2;
            if (ReturnCount > 3) result[3] = Value3;
            if (ReturnCount > 4) result[4] = Value4;
            if (ReturnCount > 5) result[5] = Value5;
            if (ReturnCount > 6) result[6] = Value6;
            if (ReturnCount > 7) result[7] = Value7;
            if (ReturnCount > 8) result[8] = Value8;
            if (ReturnCount > 9) result[9] = Value9;
            if (ReturnCount > 10) result[10] = Value10;
            if (ReturnCount > 11) result[11] = Value11;
            if (ReturnCount > 12) result[12] = Value12;
            if (ReturnCount > 13) result[13] = Value13;
            if (ReturnCount > 14) result[14] = Value14;
            if (ReturnCount > 15) result[15] = Value15;
            if (ReturnCount > 16) result[16] = Value16;
            if (ReturnCount > 17) result[17] = Value17;
            if (ReturnCount > 18) result[18] = Value18;
            if (ReturnCount > 19) result[19] = Value19;
            if (ReturnCount > 20) result[20] = Value20;
            if (ReturnCount > 21) result[21] = Value21;
            if (ReturnCount > 22) result[22] = Value22;
            if (ReturnCount > 23) result[23] = Value23;
            if (ReturnCount > 24) result[24] = Value24;
            if (ReturnCount > 25) result[25] = Value25;
            if (ReturnCount > 26) result[26] = Value26;
            if (ReturnCount > 27) result[27] = Value27;
            if (ReturnCount > 28) result[28] = Value28;
            if (ReturnCount > 29) result[29] = Value29;
            if (ReturnCount > 30) result[30] = Value30;
            if (ReturnCount > 31) result[31] = Value31;
            if (ReturnCount > 32) result[32] = Value32;
            if (ReturnCount > 33) result[33] = Value33;
            if (ReturnCount > 34) result[34] = Value34;
            if (ReturnCount > 35) result[35] = Value35;
            if (ReturnCount > 36) result[36] = Value36;
            if (ReturnCount > 37) result[37] = Value37;
            if (ReturnCount > 38) result[38] = Value38;
            if (ReturnCount > 39) result[39] = Value39;
            if (ReturnCount > 40) result[40] = Value40;
            if (ReturnCount > 41) result[41] = Value41;
            if (ReturnCount > 42) result[42] = Value42;
            if (ReturnCount > 43) result[43] = Value43;
            if (ReturnCount > 44) result[44] = Value44;
            if (ReturnCount > 45) result[45] = Value45;
            if (ReturnCount > 46) result[46] = Value46;
            if (ReturnCount > 47) result[47] = Value47;
            if (ReturnCount > 48) result[48] = Value48;
            if (ReturnCount > 49) result[49] = Value49;
            if (ReturnCount > 50) result[50] = Value50;
            if (ReturnCount > 51) result[51] = Value51;
            if (ReturnCount > 52) result[52] = Value52;
            if (ReturnCount > 53) result[53] = Value53;
            if (ReturnCount > 54) result[54] = Value54;
            if (ReturnCount > 55) result[55] = Value55;
            if (ReturnCount > 56) result[56] = Value56;
            if (ReturnCount > 57) result[57] = Value57;
            if (ReturnCount > 58) result[58] = Value58;
            if (ReturnCount > 59) result[59] = Value59;
            if (ReturnCount > 60) result[60] = Value60;
            if (ReturnCount > 61) result[61] = Value61;
            if (ReturnCount > 62) result[62] = Value62;
            if (ReturnCount > 63) result[63] = Value63;
            return result;
        }

        public static void RestoreValues(object[] captured)
        {
            if (captured == null)
            {
                ReturnCount = 1;
                return;
            }
            ReturnCount = captured.Length;
            if (ReturnCount > 1) Value1 = captured[1];
            if (ReturnCount > 2) Value2 = captured[2];
            if (ReturnCount > 3) Value3 = captured[3];
            if (ReturnCount > 4) Value4 = captured[4];
            if (ReturnCount > 5) Value5 = captured[5];
            if (ReturnCount > 6) Value6 = captured[6];
            if (ReturnCount > 7) Value7 = captured[7];
            if (ReturnCount > 8) Value8 = captured[8];
            if (ReturnCount > 9) Value9 = captured[9];
            if (ReturnCount > 10) Value10 = captured[10];
            if (ReturnCount > 11) Value11 = captured[11];
            if (ReturnCount > 12) Value12 = captured[12];
            if (ReturnCount > 13) Value13 = captured[13];
            if (ReturnCount > 14) Value14 = captured[14];
            if (ReturnCount > 15) Value15 = captured[15];
            if (ReturnCount > 16) Value16 = captured[16];
            if (ReturnCount > 17) Value17 = captured[17];
            if (ReturnCount > 18) Value18 = captured[18];
            if (ReturnCount > 19) Value19 = captured[19];
            if (ReturnCount > 20) Value20 = captured[20];
            if (ReturnCount > 21) Value21 = captured[21];
            if (ReturnCount > 22) Value22 = captured[22];
            if (ReturnCount > 23) Value23 = captured[23];
            if (ReturnCount > 24) Value24 = captured[24];
            if (ReturnCount > 25) Value25 = captured[25];
            if (ReturnCount > 26) Value26 = captured[26];
            if (ReturnCount > 27) Value27 = captured[27];
            if (ReturnCount > 28) Value28 = captured[28];
            if (ReturnCount > 29) Value29 = captured[29];
            if (ReturnCount > 30) Value30 = captured[30];
            if (ReturnCount > 31) Value31 = captured[31];
            if (ReturnCount > 32) Value32 = captured[32];
            if (ReturnCount > 33) Value33 = captured[33];
            if (ReturnCount > 34) Value34 = captured[34];
            if (ReturnCount > 35) Value35 = captured[35];
            if (ReturnCount > 36) Value36 = captured[36];
            if (ReturnCount > 37) Value37 = captured[37];
            if (ReturnCount > 38) Value38 = captured[38];
            if (ReturnCount > 39) Value39 = captured[39];
            if (ReturnCount > 40) Value40 = captured[40];
            if (ReturnCount > 41) Value41 = captured[41];
            if (ReturnCount > 42) Value42 = captured[42];
            if (ReturnCount > 43) Value43 = captured[43];
            if (ReturnCount > 44) Value44 = captured[44];
            if (ReturnCount > 45) Value45 = captured[45];
            if (ReturnCount > 46) Value46 = captured[46];
            if (ReturnCount > 47) Value47 = captured[47];
            if (ReturnCount > 48) Value48 = captured[48];
            if (ReturnCount > 49) Value49 = captured[49];
            if (ReturnCount > 50) Value50 = captured[50];
            if (ReturnCount > 51) Value51 = captured[51];
            if (ReturnCount > 52) Value52 = captured[52];
            if (ReturnCount > 53) Value53 = captured[53];
            if (ReturnCount > 54) Value54 = captured[54];
            if (ReturnCount > 55) Value55 = captured[55];
            if (ReturnCount > 56) Value56 = captured[56];
            if (ReturnCount > 57) Value57 = captured[57];
            if (ReturnCount > 58) Value58 = captured[58];
            if (ReturnCount > 59) Value59 = captured[59];
            if (ReturnCount > 60) Value60 = captured[60];
            if (ReturnCount > 61) Value61 = captured[61];
            if (ReturnCount > 62) Value62 = captured[62];
            if (ReturnCount > 63) Value63 = captured[63];
        }
    }
}
