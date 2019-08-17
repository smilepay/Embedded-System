`timescale 1 ns/1 ns

module left_barrel_shifter_32bit (In, load, out);
   input [31:0] In;
   input [4:0] load;
   output [31:0] out;
   wire [31:0] x,y,z,k;

   //16bit shift left
   mux2X1  mux_1 (0,In[0],load[4],x[0]);
   mux2X1  mux_2 (0,In[1],load[4],x[1]);
   mux2X1  mux_3 (0,In[2],load[4],x[2]);
   mux2X1  mux_4 (0,In[3],load[4],x[3]);
   mux2X1  mux_5 (0,In[4],load[4],x[4]);
   mux2X1  mux_6 (0,In[5],load[4],x[5]);
   mux2X1  mux_7 (0,In[6],load[4],x[6]);
   mux2X1  mux_8 (0,In[7],load[4],x[7]);
   mux2X1  mux_9 (0,In[8],load[4],x[8]);
   mux2X1  mux_10 (0,In[9],load[4],x[9]);
   mux2X1  mux_11 (0,In[10],load[4],x[10]); 
   mux2X1  mux_12 (0,In[11],load[4],x[11]);
   mux2X1  mux_13 (0,In[12],load[4],x[12]);
   mux2X1  mux_14 (0,In[13],load[4],x[13]);
   mux2X1  mux_15 (0,In[14],load[4],x[14]);
   mux2X1  mux_16 (0,In[15],load[4],x[15]);

   mux2X1  mux_17 (In[0],In[16],load[4],x[16]);
   mux2X1  mux_18 (In[1],In[17],load[4],x[17]);
   mux2X1  mux_19 (In[2],In[18],load[4],x[18]);
   mux2X1  mux_20 (In[3],In[19],load[4],x[19]);
   mux2X1  mux_21 (In[4],In[20],load[4],x[20]);
   mux2X1  mux_22 (In[5],In[21],load[4],x[21]);
   mux2X1  mux_23 (In[6],In[22],load[4],x[22]);
   mux2X1  mux_24 (In[7],In[23],load[4],x[23]);
   mux2X1  mux_25 (In[8],In[24],load[4],x[24]);
   mux2X1  mux_26 (In[9],In[25],load[4],x[25]);
   mux2X1  mux_27 (In[10],In[26],load[4],x[26]);
   mux2X1  mux_28 (In[11],In[27],load[4],x[27]);
   mux2X1  mux_29 (In[12],In[28],load[4],x[28]);
   mux2X1  mux_30 (In[13],In[29],load[4],x[29]);
   mux2X1  mux_31 (In[14],In[30],load[4],x[30]);
   mux2X1  mux_32 (In[15],In[31],load[4],x[31]);


   //8bit shift left
   mux2X1  mux_33 (0,x[0],load[3],y[0]);
   mux2X1  mux_34 (0,x[1],load[3],y[1]);
   mux2X1  mux_35 (0,x[2],load[3],y[2]);
   mux2X1  mux_36 (0,x[3],load[3],y[3]);
   mux2X1  mux_37 (0,x[4],load[3],y[4]);
   mux2X1  mux_38 (0,x[5],load[3],y[5]);
   mux2X1  mux_39 (0,x[6],load[3],y[6]);
   mux2X1  mux_40 (0,x[7],load[3],y[7]);


   mux2X1  mux_41 (x[0],x[8],load[3],y[8]);
   mux2X1  mux_42 (x[1],x[9],load[3],y[9]);
   mux2X1  mux_43 (x[2],x[10],load[3],y[10]);
   mux2X1  mux_44 (x[3],x[11],load[3],y[11]);
   mux2X1  mux_45 (x[4],x[12],load[3],y[12]);
   mux2X1  mux_46 (x[5],x[13],load[3],y[13]);
   mux2X1  mux_47 (x[6],x[14],load[3],y[14]);
   mux2X1  mux_48 (x[7],x[15],load[3],y[15]);
   mux2X1  mux_49 (x[8],x[16],load[3],y[16]);
   mux2X1  mux_50 (x[9],x[17],load[3],y[17]);
   mux2X1  mux_51 (x[10],x[18],load[3],y[18]);
   mux2X1  mux_52 (x[11],x[19],load[3],y[19]);
   mux2X1  mux_53 (x[12],x[20],load[3],y[20]);
   mux2X1  mux_54 (x[13],x[21],load[3],y[21]);
   mux2X1  mux_55 (x[14],x[22],load[3],y[22]);
   mux2X1  mux_56 (x[15],x[23],load[3],y[23]);
   mux2X1  mux_57 (x[16],x[24],load[3],y[24]);
   mux2X1  mux_58 (x[17],x[25],load[3],y[25]);
   mux2X1  mux_59 (x[18],x[26],load[3],y[26]);
   mux2X1  mux_60 (x[19],x[27],load[3],y[27]);
   mux2X1  mux_61 (x[20],x[28],load[3],y[28]);
   mux2X1  mux_62 (x[21],x[29],load[3],y[29]);
   mux2X1  mux_63 (x[22],x[30],load[3],y[30]);
   mux2X1  mux_64 (x[23],x[31],load[3],y[31]);
   

   //4bit shift left
   mux2X1  mux_65 (0,y[0],load[2],z[0]);
   mux2X1  mux_66 (0,y[1],load[2],z[1]);
   mux2X1  mux_67 (0,y[2],load[2],z[2]);
   mux2X1  mux_68 (0,y[3],load[2],z[3]);

   mux2X1  mux_69 (y[0],y[4],load[2],z[4]);
   mux2X1  mux_70 (y[1],y[5],load[2],z[5]);
   mux2X1  mux_71 (y[2],y[6],load[2],z[6]);
   mux2X1  mux_72 (y[3],y[7],load[2],z[7]);
   mux2X1  mux_73 (y[4],y[8],load[2],z[8]);
   mux2X1  mux_74 (y[5],y[9],load[2],z[9]);
   mux2X1  mux_75 (y[6],y[10],load[2],z[10]);
   mux2X1  mux_76 (y[7],y[11],load[2],z[11]);
   mux2X1  mux_77 (y[8],y[12],load[2],z[12]);
   mux2X1  mux_78 (y[9],y[13],load[2],z[13]);
   mux2X1  mux_79 (y[10],y[14],load[2],z[14]);
   mux2X1  mux_80 (y[11],y[15],load[2],z[15]);
   mux2X1  mux_81 (y[12],y[16],load[2],z[16]);
   mux2X1  mux_82 (y[13],y[17],load[2],z[17]);
   mux2X1  mux_83 (y[14],y[18],load[2],z[18]);
   mux2X1  mux_84 (y[15],y[19],load[2],z[19]);
   mux2X1  mux_85 (y[16],y[20],load[2],z[20]);
   mux2X1  mux_86 (y[17],y[21],load[2],z[21]);
   mux2X1  mux_87 (y[18],y[22],load[2],z[22]);
   mux2X1  mux_88 (y[19],y[23],load[2],z[23]);
   mux2X1  mux_89 (y[20],y[24],load[2],z[24]);
   mux2X1  mux_90 (y[21],y[25],load[2],z[25]);
   mux2X1  mux_91 (y[22],y[26],load[2],z[26]);
   mux2X1  mux_92 (y[23],y[27],load[2],z[27]);
   mux2X1  mux_93 (y[24],y[28],load[2],z[28]);
   mux2X1  mux_94 (y[25],y[29],load[2],z[29]);
   mux2X1  mux_95 (y[26],y[30],load[2],z[30]);
   mux2X1  mux_96 (y[27],y[31],load[2],z[31]);



   //2 bit shift left
   mux2X1  mux_97 (0,z[0],load[1],k[0]);
   mux2X1  mux_98 (0,z[1],load[1],k[1]);

   mux2X1  mux_99 (z[0],z[2],load[1],k[2]);
   mux2X1  mux_100 (z[1],z[3],load[1],k[3]);
   mux2X1  mux_101 (z[2],z[4],load[1],k[4]);
   mux2X1  mux_102 (z[3],z[5],load[1],k[5]);
   mux2X1  mux_103 (z[4],z[6],load[1],k[6]);
   mux2X1  mux_104 (z[5],z[7],load[1],k[7]);
   mux2X1  mux_105 (z[6],z[8],load[1],k[8]);
   mux2X1  mux_106 (z[7],z[9],load[1],k[9]);
   mux2X1  mux_107 (z[8],z[10],load[1],k[10]);
   mux2X1  mux_108 (z[9],z[11],load[1],k[11]);
   mux2X1  mux_109 (z[10],z[12],load[1],k[12]);
   mux2X1  mux_110 (z[11],z[13],load[1],k[13]);
   mux2X1  mux_111 (z[12],z[14],load[1],k[14]);
   mux2X1  mux_112 (z[13],z[15],load[1],k[15]);
   mux2X1  mux_113 (z[14],z[16],load[1],k[16]);
   mux2X1  mux_114 (z[15],z[17],load[1],k[17]);
   mux2X1  mux_115 (z[16],z[18],load[1],k[18]);
   mux2X1  mux_116 (z[17],z[19],load[1],k[19]);
   mux2X1  mux_117 (z[18],z[20],load[1],k[20]);
   mux2X1  mux_118 (z[19],z[21],load[1],k[21]);
   mux2X1  mux_119 (z[20],z[22],load[1],k[22]);
   mux2X1  mux_120 (z[21],z[23],load[1],k[23]);
   mux2X1  mux_121 (z[22],z[24],load[1],k[24]);
   mux2X1  mux_122 (z[23],z[25],load[1],k[25]);
   mux2X1  mux_123 (z[24],z[26],load[1],k[26]);
   mux2X1  mux_124 (z[25],z[27],load[1],k[27]);
   mux2X1  mux_125 (z[26],z[28],load[1],k[28]);
   mux2X1  mux_126 (z[27],z[29],load[1],k[29]);
   mux2X1  mux_127 (z[28],z[30],load[1],k[30]);
   mux2X1  mux_128 (z[29],z[31],load[1],k[31]);


   //1 bit shift left
   mux2X1  mux_129 (0,k[0],load[0],out[0]);

   mux2X1  mux_130 (k[0],k[1],load[0],out[1]);
   mux2X1  mux_131 (k[1],k[2],load[0],out[2]);
   mux2X1  mux_132 (k[2],k[3],load[0],out[3]);
   mux2X1  mux_133 (k[3],k[4],load[0],out[4]);
   mux2X1  mux_134 (k[4],k[5],load[0],out[5]);
   mux2X1  mux_135 (k[5],k[6],load[0],out[6]);
   mux2X1  mux_136 (k[6],k[7],load[0],out[7]);
   mux2X1  mux_137 (k[7],k[8],load[0],out[8]);
   mux2X1  mux_138 (k[8],k[9],load[0],out[9]);
   mux2X1  mux_139 (k[9],k[10],load[0],out[10]);
   mux2X1  mux_140 (k[10],k[11],load[0],out[11]);
   mux2X1  mux_141 (k[11],k[12],load[0],out[12]);
   mux2X1  mux_142 (k[12],k[13],load[0],out[13]);
   mux2X1  mux_143 (k[13],k[14],load[0],out[14]);
   mux2X1  mux_144 (k[14],k[15],load[0],out[15]);
   mux2X1  mux_145 (k[15],k[16],load[0],out[16]);
   mux2X1  mux_146 (k[16],k[17],load[0],out[17]);
   mux2X1  mux_147 (k[17],k[18],load[0],out[18]);
   mux2X1  mux_148 (k[18],k[19],load[0],out[19]);
   mux2X1  mux_149 (k[19],k[20],load[0],out[20]);
   mux2X1  mux_150 (k[20],k[21],load[0],out[21]);
   mux2X1  mux_151 (k[21],k[22],load[0],out[22]);
   mux2X1  mux_152 (k[22],k[23],load[0],out[23]);
   mux2X1  mux_153 (k[23],k[24],load[0],out[24]);
   mux2X1  mux_154 (k[24],k[25],load[0],out[25]);
   mux2X1  mux_155 (k[25],k[26],load[0],out[26]);
   mux2X1  mux_156 (k[26],k[27],load[0],out[27]);
   mux2X1  mux_157 (k[27],k[28],load[0],out[28]);
   mux2X1  mux_158 (k[28],k[29],load[0],out[29]);
   mux2X1  mux_159 (k[29],k[30],load[0],out[30]);
   mux2X1  mux_160 (k[30],k[31],load[0],out[31]);

endmodule