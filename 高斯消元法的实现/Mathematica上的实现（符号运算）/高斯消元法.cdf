(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.1' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[      6060,        180]
NotebookOptionsPosition[      6617,        178]
NotebookOutlinePosition[      7035,        195]
CellTagsIndexPosition[      6992,        192]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 FormBox[
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{"A", ",", "X", ",", "b"}], "]"}], ";"}], TraditionalForm], "\n", 
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{"Form", "(", 
     RowBox[{"A_", ",", "X_", ",", "b_"}], ")"}], ":=", 
    RowBox[{
     RowBox[{"MatrixForm", "[", 
      RowBox[{"(", "\[NoBreak]", GridBox[{
         {
          TagBox["A",
           Function[BoxForm`e$, 
            MatrixForm[BoxForm`e$]]], 
          TagBox["X",
           Function[BoxForm`e$, 
            MatrixForm[BoxForm`e$]]]}
        },
        GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
        GridBoxSpacings->{"Columns" -> {
            Offset[0.27999999999999997`], {
             Offset[0.7]}, 
            Offset[0.27999999999999997`]}, "Rows" -> {
            Offset[0.2], {
             Offset[0.4]}, 
            Offset[0.2]}}], "\[NoBreak]", ")"}], "]"}], "\[LongEqual]", 
     RowBox[{"MatrixForm", "[", "b", "]"}]}]}], ";"}], TraditionalForm], "\n", 
 FormBox[
  RowBox[{
   RowBox[{"A", "=", 
    RowBox[{
    "Input", "[", "\"\<\:8bf7\:8f93\:5165\:7cfb\:6570\:77e9\:9635A\>\"", 
     "]"}]}], ";"}], TraditionalForm], "\n", 
 FormBox[
  RowBox[{
   RowBox[{"B", "=", 
    RowBox[{"Input", "[", "\"\<\:8bf7\:8f93\:5165\:5411\:91cfB\>\"", "]"}]}], 
   ";"}], TraditionalForm], "\n", 
 FormBox[
  RowBox[{
   RowBox[{"n", "=", 
    RowBox[{
     RowBox[{"Dimensions", "[", "A", "]"}], "\[LeftDoubleBracket]", "1", 
     "\[RightDoubleBracket]"}]}], ";", 
   RowBox[{"X", "=", 
    RowBox[{"Table", "[", 
     RowBox[{
      SubscriptBox["x", "i"], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "n"}], "}"}]}], "]"}]}], ";"}], 
  TraditionalForm], "\n", 
 FormBox[
  RowBox[{"Print", "[", 
   RowBox[{"\"\<\:539f\:65b9\:7a0b\:7ec4\:ff1a\>\"", ",", 
    RowBox[{"Form", "(", 
     RowBox[{"A", ",", "X", ",", "b"}], ")"}]}], "]"}], 
  TraditionalForm], "\n", 
 FormBox[
  RowBox[{
   RowBox[{"For", "[", 
    RowBox[{
     RowBox[{"i", "=", "1"}], ",", 
     RowBox[{"i", "<", "n"}], ",", 
     RowBox[{"i", "++"}], ",", 
     RowBox[{
      RowBox[{"For", "[", 
       RowBox[{
        RowBox[{"j", "=", 
         RowBox[{"i", "+", "1"}]}], ",", 
        RowBox[{"j", "\[LessEqual]", "n"}], ",", 
        RowBox[{
         RowBox[{
          RowBox[{"b", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}],
           "=", 
          RowBox[{
           RowBox[{
           "b", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], "-", 
           FractionBox[
            RowBox[{
             RowBox[{
             "b", "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], " ", 
             RowBox[{"A", "\[LeftDoubleBracket]", 
              RowBox[{"j", ",", "i"}], "\[RightDoubleBracket]"}]}], 
            RowBox[{"A", "\[LeftDoubleBracket]", 
             RowBox[{"i", ",", "i"}], "\[RightDoubleBracket]"}]]}]}], ";", 
         RowBox[{
          RowBox[{"A", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}],
           "=", 
          RowBox[{
           RowBox[{
           "A", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], "-", 
           FractionBox[
            RowBox[{
             RowBox[{
             "A", "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], " ", 
             RowBox[{"A", "\[LeftDoubleBracket]", 
              RowBox[{"j", ",", "i"}], "\[RightDoubleBracket]"}]}], 
            RowBox[{"A", "\[LeftDoubleBracket]", 
             RowBox[{"i", ",", "i"}], "\[RightDoubleBracket]"}]]}]}]}]}], 
       "]"}], ";", 
      RowBox[{"Print", "[", 
       RowBox[{"\"\<\:7b2c\>\"", ",", "i", ",", 
        RowBox[{"\:ff0c", " ", "\"\<\:6b21\:6d88\:5143\:ff1a\>\"", " ", 
         RowBox[{"Form", "(", 
          RowBox[{"A", ",", "X", ",", "b"}], ")"}]}]}], "]"}]}]}], "]"}], 
   ";"}], TraditionalForm], "\n", 
 FormBox[
  RowBox[{"For", "[", 
   RowBox[{
    RowBox[{"i", "=", "n"}], ",", 
    RowBox[{"i", "\[GreaterEqual]", "i"}], ",", 
    RowBox[{"i", "--"}], ",", 
    RowBox[{
     RowBox[{"X", "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], "=", 
     FractionBox[
      RowBox[{
       RowBox[{"b", "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], 
       "-", 
       RowBox[{
        UnderoverscriptBox["\[Sum]", 
         RowBox[{"j", "=", 
          RowBox[{"i", "+", "1"}]}], "n"], 
        RowBox[{
         RowBox[{"X", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
         " ", 
         RowBox[{"A", "\[LeftDoubleBracket]", 
          RowBox[{"i", ",", "j"}], "\[RightDoubleBracket]"}]}]}]}], 
      RowBox[{"A", "\[LeftDoubleBracket]", 
       RowBox[{"i", ",", "i"}], "\[RightDoubleBracket]"}]]}]}], "]"}], 
  TraditionalForm], "\n", 
 FormBox[
  RowBox[{"Print", "[", 
   RowBox[{"\"\<\:51c6\:786e\:89e3X=\>\"", ",", 
    RowBox[{"MatrixForm", "[", "X", "]"}], ",", 
    RowBox[{"\:ff0c", " ", "\"\<\\t\:6570\:503c\:89e3X=\>\"", " ", 
     RowBox[{"N", "[", 
      RowBox[{"MatrixForm", "[", "X", "]"}], "]"}]}]}], "]"}], 
  TraditionalForm]}], "Input",
 CellChangeTimes->{
  3.824371416816365*^9},ExpressionUUID->"7a3a51dc-5165-45f8-b692-\
a4f3554dcf31"]
},
WindowSize->{582.6, 524.4},
WindowMargins->{{18, Automatic}, {Automatic, 22.8}},
FrontEndVersion->"12.1 for Microsoft Windows (64-bit) (2020\:5e747\:670815\
\:65e5)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"e5c1160e-21c7-4257-8f2b-434a5969a9bf"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1488, 33, 5125, 143, 472, "Input",ExpressionUUID->"7a3a51dc-5165-45f8-b692-a4f3554dcf31"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 9xpqf1ARhlHhzDgNgw3F0DOt *)
