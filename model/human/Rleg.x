xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 34;
 0.00447;0.01347;-1.88091;,
 0.00447;-12.01169;-1.88091;,
 -1.60308;-12.01169;-1.33001;,
 -1.60308;0.01347;-1.33001;,
 -2.26895;-12.01169;0.00000;,
 -2.26895;0.01347;0.00000;,
 -1.60308;-12.01169;1.33001;,
 -1.60308;0.01347;1.33001;,
 0.00447;-12.01169;1.88091;,
 0.00447;0.01347;1.88091;,
 1.61202;-12.01169;1.33001;,
 1.61202;0.01347;1.33001;,
 2.27789;-12.01169;-0.00000;,
 2.27789;0.01347;-0.00000;,
 1.61202;-12.01169;-1.33001;,
 1.61202;0.01347;-1.33001;,
 0.00447;-12.01169;-1.88091;,
 0.00447;0.01347;-1.88091;,
 0.00447;1.72469;0.00000;,
 0.00447;1.72469;0.00000;,
 0.00447;1.72469;0.00000;,
 0.00447;1.72469;0.00000;,
 0.00447;1.72469;0.00000;,
 0.00447;1.72469;0.00000;,
 0.00447;1.72469;0.00000;,
 0.00447;1.72469;0.00000;,
 0.00447;-12.01169;-0.00000;,
 0.00447;-12.01169;-0.00000;,
 0.00447;-12.01169;-0.00000;,
 0.00447;-12.01169;-0.00000;,
 0.00447;-12.01169;-0.00000;,
 0.00447;-12.01169;-0.00000;,
 0.00447;-12.01169;-0.00000;,
 0.00447;-12.01169;-0.00000;;
 
 24;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;15,14,16,17;,
 3;18,0,3;,
 3;19,3,5;,
 3;20,5,7;,
 3;21,7,9;,
 3;22,9,11;,
 3;23,11,13;,
 3;24,13,15;,
 3;25,15,17;,
 3;26,2,1;,
 3;27,4,2;,
 3;28,6,4;,
 3;29,8,6;,
 3;30,10,8;,
 3;31,12,10;,
 3;32,14,12;,
 3;33,16,14;;
 
 MeshMaterialList {
  4;
  24;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.247843;0.247843;0.247843;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.696471;0.552157;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  18;
  0.000000;1.000000;-0.000000;,
  0.000000;0.410359;-0.911924;,
  -0.589022;0.433478;-0.682018;,
  -0.887065;0.461645;0.000000;,
  -0.589022;0.433478;0.682019;,
  0.000000;0.410359;0.911924;,
  0.589023;0.433478;0.682018;,
  0.887065;0.461645;-0.000000;,
  0.589023;0.433478;-0.682018;,
  0.000000;0.000000;-1.000000;,
  -0.658175;0.000000;-0.752865;,
  -1.000000;0.000000;0.000000;,
  -0.658175;0.000000;0.752865;,
  0.000000;0.000000;1.000000;,
  0.658176;0.000000;0.752864;,
  1.000000;0.000000;-0.000000;,
  0.658176;0.000000;-0.752864;,
  0.000000;-1.000000;-0.000000;;
  24;
  4;1,9,10,2;,
  4;2,10,11,3;,
  4;3,11,12,4;,
  4;4,12,13,5;,
  4;5,13,14,6;,
  4;6,14,15,7;,
  4;7,15,16,8;,
  4;8,16,9,1;,
  3;0,1,2;,
  3;0,2,3;,
  3;0,3,4;,
  3;0,4,5;,
  3;0,5,6;,
  3;0,6,7;,
  3;0,7,8;,
  3;0,8,1;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;;
 }
 MeshTextureCoords {
  34;
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.125000;0.000000;,
  0.250000;1.000000;,
  0.250000;0.000000;,
  0.375000;1.000000;,
  0.375000;0.000000;,
  0.500000;1.000000;,
  0.500000;0.000000;,
  0.625000;1.000000;,
  0.625000;0.000000;,
  0.750000;1.000000;,
  0.750000;0.000000;,
  0.875000;1.000000;,
  0.875000;0.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.062500;0.000000;,
  0.187500;0.000000;,
  0.312500;0.000000;,
  0.437500;0.000000;,
  0.562500;0.000000;,
  0.687500;0.000000;,
  0.812500;0.000000;,
  0.937500;0.000000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;;
 }
}
