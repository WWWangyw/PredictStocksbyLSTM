Ъу<
оњ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ђ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleКйelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements#
handleКйelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ыЪ:
|
dense_112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_112/kernel
u
$dense_112/kernel/Read/ReadVariableOpReadVariableOpdense_112/kernel*
_output_shapes

:*
dtype0
t
dense_112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_112/bias
m
"dense_112/bias/Read/ReadVariableOpReadVariableOpdense_112/bias*
_output_shapes
:*
dtype0
|
dense_113/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_113/kernel
u
$dense_113/kernel/Read/ReadVariableOpReadVariableOpdense_113/kernel*
_output_shapes

:*
dtype0
t
dense_113/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_113/bias
m
"dense_113/bias/Read/ReadVariableOpReadVariableOpdense_113/bias*
_output_shapes
:*
dtype0
|
dense_114/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_114/kernel
u
$dense_114/kernel/Read/ReadVariableOpReadVariableOpdense_114/kernel*
_output_shapes

:*
dtype0
t
dense_114/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_114/bias
m
"dense_114/bias/Read/ReadVariableOpReadVariableOpdense_114/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Ц
lstm_150/lstm_cell_150/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*.
shared_namelstm_150/lstm_cell_150/kernel
П
1lstm_150/lstm_cell_150/kernel/Read/ReadVariableOpReadVariableOplstm_150/lstm_cell_150/kernel*
_output_shapes

:@*
dtype0
™
'lstm_150/lstm_cell_150/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'lstm_150/lstm_cell_150/recurrent_kernel
£
;lstm_150/lstm_cell_150/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_150/lstm_cell_150/recurrent_kernel*
_output_shapes

:@*
dtype0
О
lstm_150/lstm_cell_150/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelstm_150/lstm_cell_150/bias
З
/lstm_150/lstm_cell_150/bias/Read/ReadVariableOpReadVariableOplstm_150/lstm_cell_150/bias*
_output_shapes
:@*
dtype0
Ц
lstm_151/lstm_cell_151/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*.
shared_namelstm_151/lstm_cell_151/kernel
П
1lstm_151/lstm_cell_151/kernel/Read/ReadVariableOpReadVariableOplstm_151/lstm_cell_151/kernel*
_output_shapes

:@*
dtype0
™
'lstm_151/lstm_cell_151/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'lstm_151/lstm_cell_151/recurrent_kernel
£
;lstm_151/lstm_cell_151/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_151/lstm_cell_151/recurrent_kernel*
_output_shapes

:@*
dtype0
О
lstm_151/lstm_cell_151/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelstm_151/lstm_cell_151/bias
З
/lstm_151/lstm_cell_151/bias/Read/ReadVariableOpReadVariableOplstm_151/lstm_cell_151/bias*
_output_shapes
:@*
dtype0
Ц
lstm_152/lstm_cell_152/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*.
shared_namelstm_152/lstm_cell_152/kernel
П
1lstm_152/lstm_cell_152/kernel/Read/ReadVariableOpReadVariableOplstm_152/lstm_cell_152/kernel*
_output_shapes

:@*
dtype0
™
'lstm_152/lstm_cell_152/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'lstm_152/lstm_cell_152/recurrent_kernel
£
;lstm_152/lstm_cell_152/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_152/lstm_cell_152/recurrent_kernel*
_output_shapes

:@*
dtype0
О
lstm_152/lstm_cell_152/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelstm_152/lstm_cell_152/bias
З
/lstm_152/lstm_cell_152/bias/Read/ReadVariableOpReadVariableOplstm_152/lstm_cell_152/bias*
_output_shapes
:@*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
К
Adam/dense_112/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_112/kernel/m
Г
+Adam/dense_112/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_112/kernel/m*
_output_shapes

:*
dtype0
В
Adam/dense_112/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_112/bias/m
{
)Adam/dense_112/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_112/bias/m*
_output_shapes
:*
dtype0
К
Adam/dense_113/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_113/kernel/m
Г
+Adam/dense_113/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_113/kernel/m*
_output_shapes

:*
dtype0
В
Adam/dense_113/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_113/bias/m
{
)Adam/dense_113/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_113/bias/m*
_output_shapes
:*
dtype0
К
Adam/dense_114/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_114/kernel/m
Г
+Adam/dense_114/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_114/kernel/m*
_output_shapes

:*
dtype0
В
Adam/dense_114/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_114/bias/m
{
)Adam/dense_114/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_114/bias/m*
_output_shapes
:*
dtype0
§
$Adam/lstm_150/lstm_cell_150/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_150/lstm_cell_150/kernel/m
Э
8Adam/lstm_150/lstm_cell_150/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_150/lstm_cell_150/kernel/m*
_output_shapes

:@*
dtype0
Є
.Adam/lstm_150/lstm_cell_150/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_150/lstm_cell_150/recurrent_kernel/m
±
BAdam/lstm_150/lstm_cell_150/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_150/lstm_cell_150/recurrent_kernel/m*
_output_shapes

:@*
dtype0
Ь
"Adam/lstm_150/lstm_cell_150/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_150/lstm_cell_150/bias/m
Х
6Adam/lstm_150/lstm_cell_150/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_150/lstm_cell_150/bias/m*
_output_shapes
:@*
dtype0
§
$Adam/lstm_151/lstm_cell_151/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_151/lstm_cell_151/kernel/m
Э
8Adam/lstm_151/lstm_cell_151/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_151/lstm_cell_151/kernel/m*
_output_shapes

:@*
dtype0
Є
.Adam/lstm_151/lstm_cell_151/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_151/lstm_cell_151/recurrent_kernel/m
±
BAdam/lstm_151/lstm_cell_151/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_151/lstm_cell_151/recurrent_kernel/m*
_output_shapes

:@*
dtype0
Ь
"Adam/lstm_151/lstm_cell_151/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_151/lstm_cell_151/bias/m
Х
6Adam/lstm_151/lstm_cell_151/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_151/lstm_cell_151/bias/m*
_output_shapes
:@*
dtype0
§
$Adam/lstm_152/lstm_cell_152/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_152/lstm_cell_152/kernel/m
Э
8Adam/lstm_152/lstm_cell_152/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_152/lstm_cell_152/kernel/m*
_output_shapes

:@*
dtype0
Є
.Adam/lstm_152/lstm_cell_152/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_152/lstm_cell_152/recurrent_kernel/m
±
BAdam/lstm_152/lstm_cell_152/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_152/lstm_cell_152/recurrent_kernel/m*
_output_shapes

:@*
dtype0
Ь
"Adam/lstm_152/lstm_cell_152/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_152/lstm_cell_152/bias/m
Х
6Adam/lstm_152/lstm_cell_152/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_152/lstm_cell_152/bias/m*
_output_shapes
:@*
dtype0
К
Adam/dense_112/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_112/kernel/v
Г
+Adam/dense_112/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_112/kernel/v*
_output_shapes

:*
dtype0
В
Adam/dense_112/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_112/bias/v
{
)Adam/dense_112/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_112/bias/v*
_output_shapes
:*
dtype0
К
Adam/dense_113/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_113/kernel/v
Г
+Adam/dense_113/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_113/kernel/v*
_output_shapes

:*
dtype0
В
Adam/dense_113/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_113/bias/v
{
)Adam/dense_113/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_113/bias/v*
_output_shapes
:*
dtype0
К
Adam/dense_114/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_114/kernel/v
Г
+Adam/dense_114/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_114/kernel/v*
_output_shapes

:*
dtype0
В
Adam/dense_114/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_114/bias/v
{
)Adam/dense_114/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_114/bias/v*
_output_shapes
:*
dtype0
§
$Adam/lstm_150/lstm_cell_150/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_150/lstm_cell_150/kernel/v
Э
8Adam/lstm_150/lstm_cell_150/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_150/lstm_cell_150/kernel/v*
_output_shapes

:@*
dtype0
Є
.Adam/lstm_150/lstm_cell_150/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_150/lstm_cell_150/recurrent_kernel/v
±
BAdam/lstm_150/lstm_cell_150/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_150/lstm_cell_150/recurrent_kernel/v*
_output_shapes

:@*
dtype0
Ь
"Adam/lstm_150/lstm_cell_150/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_150/lstm_cell_150/bias/v
Х
6Adam/lstm_150/lstm_cell_150/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_150/lstm_cell_150/bias/v*
_output_shapes
:@*
dtype0
§
$Adam/lstm_151/lstm_cell_151/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_151/lstm_cell_151/kernel/v
Э
8Adam/lstm_151/lstm_cell_151/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_151/lstm_cell_151/kernel/v*
_output_shapes

:@*
dtype0
Є
.Adam/lstm_151/lstm_cell_151/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_151/lstm_cell_151/recurrent_kernel/v
±
BAdam/lstm_151/lstm_cell_151/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_151/lstm_cell_151/recurrent_kernel/v*
_output_shapes

:@*
dtype0
Ь
"Adam/lstm_151/lstm_cell_151/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_151/lstm_cell_151/bias/v
Х
6Adam/lstm_151/lstm_cell_151/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_151/lstm_cell_151/bias/v*
_output_shapes
:@*
dtype0
§
$Adam/lstm_152/lstm_cell_152/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_152/lstm_cell_152/kernel/v
Э
8Adam/lstm_152/lstm_cell_152/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_152/lstm_cell_152/kernel/v*
_output_shapes

:@*
dtype0
Є
.Adam/lstm_152/lstm_cell_152/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_152/lstm_cell_152/recurrent_kernel/v
±
BAdam/lstm_152/lstm_cell_152/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_152/lstm_cell_152/recurrent_kernel/v*
_output_shapes

:@*
dtype0
Ь
"Adam/lstm_152/lstm_cell_152/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_152/lstm_cell_152/bias/v
Х
6Adam/lstm_152/lstm_cell_152/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_152/lstm_cell_152/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
Є_
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*у^
valueй^Bж^ Bя^
Э
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
 regularization_losses
!	keras_api
R
"	variables
#trainable_variables
$regularization_losses
%	keras_api
l
&cell
'
state_spec
(	variables
)trainable_variables
*regularization_losses
+	keras_api
R
,	variables
-trainable_variables
.regularization_losses
/	keras_api
h

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
R
6	variables
7trainable_variables
8regularization_losses
9	keras_api
h

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
R
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
h

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
м
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate0mј1mЅ:m¬;m√DmƒEm≈Om∆Pm«Qm»Rm…Sm TmЋUmћVmЌWmќ0vѕ1v–:v—;v“Dv”Ev‘Ov’Pv÷Qv„RvЎSvўTvЏUvџVv№WvЁ
n
O0
P1
Q2
R3
S4
T5
U6
V7
W8
09
110
:11
;12
D13
E14
n
O0
P1
Q2
R3
S4
T5
U6
V7
W8
09
110
:11
;12
D13
E14
 
≠
	variables
trainable_variables
Xlayer_regularization_losses
Ynon_trainable_variables
regularization_losses
Zmetrics

[layers
\layer_metrics
 
О
]
state_size

Okernel
Precurrent_kernel
Qbias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
 

O0
P1
Q2

O0
P1
Q2
 
є

bstates
	variables
trainable_variables
clayer_regularization_losses
dnon_trainable_variables
regularization_losses
emetrics

flayers
glayer_metrics
 
 
 
≠
	variables
trainable_variables
hlayer_regularization_losses
inon_trainable_variables
regularization_losses
jmetrics

klayers
llayer_metrics
О
m
state_size

Rkernel
Srecurrent_kernel
Tbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
 

R0
S1
T2

R0
S1
T2
 
є

rstates
	variables
trainable_variables
slayer_regularization_losses
tnon_trainable_variables
 regularization_losses
umetrics

vlayers
wlayer_metrics
 
 
 
≠
"	variables
#trainable_variables
xlayer_regularization_losses
ynon_trainable_variables
$regularization_losses
zmetrics

{layers
|layer_metrics
Р
}
state_size

Ukernel
Vrecurrent_kernel
Wbias
~	variables
trainable_variables
Аregularization_losses
Б	keras_api
 

U0
V1
W2

U0
V1
W2
 
њ
Вstates
(	variables
)trainable_variables
 Гlayer_regularization_losses
Дnon_trainable_variables
*regularization_losses
Еmetrics
Жlayers
Зlayer_metrics
 
 
 
≤
,	variables
-trainable_variables
 Иlayer_regularization_losses
Йnon_trainable_variables
.regularization_losses
Кmetrics
Лlayers
Мlayer_metrics
\Z
VARIABLE_VALUEdense_112/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_112/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
≤
2	variables
3trainable_variables
 Нlayer_regularization_losses
Оnon_trainable_variables
4regularization_losses
Пmetrics
Рlayers
Сlayer_metrics
 
 
 
≤
6	variables
7trainable_variables
 Тlayer_regularization_losses
Уnon_trainable_variables
8regularization_losses
Фmetrics
Хlayers
Цlayer_metrics
\Z
VARIABLE_VALUEdense_113/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_113/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
≤
<	variables
=trainable_variables
 Чlayer_regularization_losses
Шnon_trainable_variables
>regularization_losses
Щmetrics
Ъlayers
Ыlayer_metrics
 
 
 
≤
@	variables
Atrainable_variables
 Ьlayer_regularization_losses
Эnon_trainable_variables
Bregularization_losses
Юmetrics
Яlayers
†layer_metrics
\Z
VARIABLE_VALUEdense_114/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_114/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

D0
E1
 
≤
F	variables
Gtrainable_variables
 °layer_regularization_losses
Ґnon_trainable_variables
Hregularization_losses
£metrics
§layers
•layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_150/lstm_cell_150/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_150/lstm_cell_150/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_150/lstm_cell_150/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_151/lstm_cell_151/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_151/lstm_cell_151/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_151/lstm_cell_151/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_152/lstm_cell_152/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_152/lstm_cell_152/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_152/lstm_cell_152/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 
 

¶0
І1
N
0
1
2
3
4
5
6
7
	8

9
10
 
 

O0
P1
Q2

O0
P1
Q2
 
≤
^	variables
_trainable_variables
 ®layer_regularization_losses
©non_trainable_variables
`regularization_losses
™metrics
Ђlayers
ђlayer_metrics
 
 
 
 

0
 
 
 
 
 
 
 

R0
S1
T2

R0
S1
T2
 
≤
n	variables
otrainable_variables
 ≠layer_regularization_losses
Ѓnon_trainable_variables
pregularization_losses
ѓmetrics
∞layers
±layer_metrics
 
 
 
 

0
 
 
 
 
 
 
 

U0
V1
W2

U0
V1
W2
 
≥
~	variables
trainable_variables
 ≤layer_regularization_losses
≥non_trainable_variables
Аregularization_losses
іmetrics
µlayers
ґlayer_metrics
 
 
 
 

&0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Јtotal

Єcount
є	variables
Ї	keras_api
I

їtotal

Љcount
љ
_fn_kwargs
Њ	variables
њ	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Ј0
Є1

є	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

ї0
Љ1

Њ	variables
}
VARIABLE_VALUEAdam/dense_112/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_112/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_113/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_113/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_114/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_114/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_150/lstm_cell_150/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/lstm_150/lstm_cell_150/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_150/lstm_cell_150/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_151/lstm_cell_151/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/lstm_151/lstm_cell_151/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_151/lstm_cell_151/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_152/lstm_cell_152/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/lstm_152/lstm_cell_152/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_152/lstm_cell_152/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_112/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_112/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_113/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_113/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_114/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_114/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_150/lstm_cell_150/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/lstm_150/lstm_cell_150/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_150/lstm_cell_150/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_151/lstm_cell_151/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/lstm_151/lstm_cell_151/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_151/lstm_cell_151/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_152/lstm_cell_152/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/lstm_152/lstm_cell_152/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_152/lstm_cell_152/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Й
serving_default_lstm_150_inputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
н
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_150_inputlstm_150/lstm_cell_150/kernel'lstm_150/lstm_cell_150/recurrent_kernellstm_150/lstm_cell_150/biaslstm_151/lstm_cell_151/kernel'lstm_151/lstm_cell_151/recurrent_kernellstm_151/lstm_cell_151/biaslstm_152/lstm_cell_152/kernel'lstm_152/lstm_cell_152/recurrent_kernellstm_152/lstm_cell_152/biasdense_112/kerneldense_112/biasdense_113/kerneldense_113/biasdense_114/kerneldense_114/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_2258093
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
А
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_112/kernel/Read/ReadVariableOp"dense_112/bias/Read/ReadVariableOp$dense_113/kernel/Read/ReadVariableOp"dense_113/bias/Read/ReadVariableOp$dense_114/kernel/Read/ReadVariableOp"dense_114/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_150/lstm_cell_150/kernel/Read/ReadVariableOp;lstm_150/lstm_cell_150/recurrent_kernel/Read/ReadVariableOp/lstm_150/lstm_cell_150/bias/Read/ReadVariableOp1lstm_151/lstm_cell_151/kernel/Read/ReadVariableOp;lstm_151/lstm_cell_151/recurrent_kernel/Read/ReadVariableOp/lstm_151/lstm_cell_151/bias/Read/ReadVariableOp1lstm_152/lstm_cell_152/kernel/Read/ReadVariableOp;lstm_152/lstm_cell_152/recurrent_kernel/Read/ReadVariableOp/lstm_152/lstm_cell_152/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_112/kernel/m/Read/ReadVariableOp)Adam/dense_112/bias/m/Read/ReadVariableOp+Adam/dense_113/kernel/m/Read/ReadVariableOp)Adam/dense_113/bias/m/Read/ReadVariableOp+Adam/dense_114/kernel/m/Read/ReadVariableOp)Adam/dense_114/bias/m/Read/ReadVariableOp8Adam/lstm_150/lstm_cell_150/kernel/m/Read/ReadVariableOpBAdam/lstm_150/lstm_cell_150/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_150/lstm_cell_150/bias/m/Read/ReadVariableOp8Adam/lstm_151/lstm_cell_151/kernel/m/Read/ReadVariableOpBAdam/lstm_151/lstm_cell_151/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_151/lstm_cell_151/bias/m/Read/ReadVariableOp8Adam/lstm_152/lstm_cell_152/kernel/m/Read/ReadVariableOpBAdam/lstm_152/lstm_cell_152/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_152/lstm_cell_152/bias/m/Read/ReadVariableOp+Adam/dense_112/kernel/v/Read/ReadVariableOp)Adam/dense_112/bias/v/Read/ReadVariableOp+Adam/dense_113/kernel/v/Read/ReadVariableOp)Adam/dense_113/bias/v/Read/ReadVariableOp+Adam/dense_114/kernel/v/Read/ReadVariableOp)Adam/dense_114/bias/v/Read/ReadVariableOp8Adam/lstm_150/lstm_cell_150/kernel/v/Read/ReadVariableOpBAdam/lstm_150/lstm_cell_150/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_150/lstm_cell_150/bias/v/Read/ReadVariableOp8Adam/lstm_151/lstm_cell_151/kernel/v/Read/ReadVariableOpBAdam/lstm_151/lstm_cell_151/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_151/lstm_cell_151/bias/v/Read/ReadVariableOp8Adam/lstm_152/lstm_cell_152/kernel/v/Read/ReadVariableOpBAdam/lstm_152/lstm_cell_152/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_152/lstm_cell_152/bias/v/Read/ReadVariableOpConst*C
Tin<
:28	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_save_2261755
√
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_112/kerneldense_112/biasdense_113/kerneldense_113/biasdense_114/kerneldense_114/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_150/lstm_cell_150/kernel'lstm_150/lstm_cell_150/recurrent_kernellstm_150/lstm_cell_150/biaslstm_151/lstm_cell_151/kernel'lstm_151/lstm_cell_151/recurrent_kernellstm_151/lstm_cell_151/biaslstm_152/lstm_cell_152/kernel'lstm_152/lstm_cell_152/recurrent_kernellstm_152/lstm_cell_152/biastotalcounttotal_1count_1Adam/dense_112/kernel/mAdam/dense_112/bias/mAdam/dense_113/kernel/mAdam/dense_113/bias/mAdam/dense_114/kernel/mAdam/dense_114/bias/m$Adam/lstm_150/lstm_cell_150/kernel/m.Adam/lstm_150/lstm_cell_150/recurrent_kernel/m"Adam/lstm_150/lstm_cell_150/bias/m$Adam/lstm_151/lstm_cell_151/kernel/m.Adam/lstm_151/lstm_cell_151/recurrent_kernel/m"Adam/lstm_151/lstm_cell_151/bias/m$Adam/lstm_152/lstm_cell_152/kernel/m.Adam/lstm_152/lstm_cell_152/recurrent_kernel/m"Adam/lstm_152/lstm_cell_152/bias/mAdam/dense_112/kernel/vAdam/dense_112/bias/vAdam/dense_113/kernel/vAdam/dense_113/bias/vAdam/dense_114/kernel/vAdam/dense_114/bias/v$Adam/lstm_150/lstm_cell_150/kernel/v.Adam/lstm_150/lstm_cell_150/recurrent_kernel/v"Adam/lstm_150/lstm_cell_150/bias/v$Adam/lstm_151/lstm_cell_151/kernel/v.Adam/lstm_151/lstm_cell_151/recurrent_kernel/v"Adam/lstm_151/lstm_cell_151/bias/v$Adam/lstm_152/lstm_cell_152/kernel/v.Adam/lstm_152/lstm_cell_152/recurrent_kernel/v"Adam/lstm_152/lstm_cell_152/bias/v*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__traced_restore_2261927УЧ8
¶
f
-__inference_dropout_227_layer_call_fn_2261193

inputs
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_227_layer_call_and_return_conditional_losses_22572092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ƒ
I
-__inference_dropout_228_layer_call_fn_2261235

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_228_layer_call_and_return_conditional_losses_22570942
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Е
f
H__inference_dropout_225_layer_call_and_return_conditional_losses_2256881

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
х
Ш
+__inference_dense_113_layer_call_fn_2261219

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_22570832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
g
H__inference_dropout_224_layer_call_and_return_conditional_losses_2257634

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЄ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/y¬
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqualГ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
в?
‘
while_body_2257325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:@H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:@F
4while_lstm_cell_152_matmul_1_readvariableop_resource:@A
3while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_152/BiasAdd/ReadVariableOpҐ)while/lstm_cell_152/MatMul/ReadVariableOpҐ+while/lstm_cell_152/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_152/MatMul/ReadVariableOpў
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul—
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_152/MatMul_1/ReadVariableOp¬
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul_1ї
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/add 
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_152/BiasAdd/ReadVariableOp»
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/BiasAddМ
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_152/split/split_dimП
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_152/splitЫ
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/SigmoidЯ
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_1£
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mulТ
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/ReluЄ
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_1≠
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/add_1Я
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_2С
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Relu_1Љ
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Ѓ
g
H__inference_dropout_227_layer_call_and_return_conditional_losses_2261210

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь%
л
while_body_2254955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_150_2254979_0:@/
while_lstm_cell_150_2254981_0:@+
while_lstm_cell_150_2254983_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_150_2254979:@-
while_lstm_cell_150_2254981:@)
while_lstm_cell_150_2254983:@ИҐ+while/lstm_cell_150/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
+while/lstm_cell_150/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_150_2254979_0while_lstm_cell_150_2254981_0while_lstm_cell_150_2254983_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_22548772-
+while/lstm_cell_150/StatefulPartitionedCallш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_150/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3•
while/Identity_4Identity4while/lstm_cell_150/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4•
while/Identity_5Identity4while/lstm_cell_150/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5И

while/NoOpNoOp,^while/lstm_cell_150/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_150_2254979while_lstm_cell_150_2254979_0"<
while_lstm_cell_150_2254981while_lstm_cell_150_2254981_0"<
while_lstm_cell_150_2254983while_lstm_cell_150_2254983_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Z
+while/lstm_cell_150/StatefulPartitionedCall+while/lstm_cell_150/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
™\
†
E__inference_lstm_150_layer_call_and_return_conditional_losses_2256703

inputs>
,lstm_cell_150_matmul_readvariableop_resource:@@
.lstm_cell_150_matmul_1_readvariableop_resource:@;
-lstm_cell_150_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_150/BiasAdd/ReadVariableOpҐ#lstm_cell_150/MatMul/ReadVariableOpҐ%lstm_cell_150/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_150/MatMul/ReadVariableOpѓ
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMulљ
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_150/MatMul_1/ReadVariableOpЂ
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMul_1£
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/addґ
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_150/BiasAdd/ReadVariableOp∞
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/BiasAddА
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_150/split/split_dimч
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_150/splitЙ
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/SigmoidН
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_1О
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mulА
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu†
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_1Х
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/add_1Н
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_2
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu_1§
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2256619*
condR
while_cond_2256618*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ј
х
/__inference_lstm_cell_150_layer_call_fn_2261310

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_22548772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
Ќ
Н
/__inference_sequential_38_layer_call_fn_2257146
lstm_150_input
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:
identityИҐStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCalllstm_150_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_38_layer_call_and_return_conditional_losses_22571132
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_namelstm_150_input
в?
‘
while_body_2260377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_151_matmul_readvariableop_resource_0:@H
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_151_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_151_matmul_readvariableop_resource:@F
4while_lstm_cell_151_matmul_1_readvariableop_resource:@A
3while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_151/BiasAdd/ReadVariableOpҐ)while/lstm_cell_151/MatMul/ReadVariableOpҐ+while/lstm_cell_151/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_151/MatMul/ReadVariableOpў
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul—
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_151/MatMul_1/ReadVariableOp¬
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul_1ї
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/add 
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_151/BiasAdd/ReadVariableOp»
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/BiasAddМ
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_151/split/split_dimП
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_151/splitЫ
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/SigmoidЯ
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_1£
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mulТ
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/ReluЄ
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_1≠
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/add_1Я
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_2С
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Relu_1Љ
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
у
Е
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_2261570

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
Ѓ
g
H__inference_dropout_228_layer_call_and_return_conditional_losses_2257176

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
в?
‘
while_body_2259702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_150_matmul_readvariableop_resource_0:@H
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_150_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_150_matmul_readvariableop_resource:@F
4while_lstm_cell_150_matmul_1_readvariableop_resource:@A
3while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_150/BiasAdd/ReadVariableOpҐ)while/lstm_cell_150/MatMul/ReadVariableOpҐ+while/lstm_cell_150/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_150/MatMul/ReadVariableOpў
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul—
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_150/MatMul_1/ReadVariableOp¬
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul_1ї
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/add 
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_150/BiasAdd/ReadVariableOp»
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/BiasAddМ
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_150/split/split_dimП
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_150/splitЫ
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/SigmoidЯ
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_1£
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mulТ
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/ReluЄ
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_1≠
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/add_1Я
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_2С
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Relu_1Љ
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ц;
О
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258050
lstm_150_input"
lstm_150_2258008:@"
lstm_150_2258010:@
lstm_150_2258012:@"
lstm_151_2258016:@"
lstm_151_2258018:@
lstm_151_2258020:@"
lstm_152_2258024:@"
lstm_152_2258026:@
lstm_152_2258028:@#
dense_112_2258032:
dense_112_2258034:#
dense_113_2258038:
dense_113_2258040:#
dense_114_2258044:
dense_114_2258046:
identityИҐ!dense_112/StatefulPartitionedCallҐ!dense_113/StatefulPartitionedCallҐ!dense_114/StatefulPartitionedCallҐ#dropout_224/StatefulPartitionedCallҐ#dropout_225/StatefulPartitionedCallҐ#dropout_226/StatefulPartitionedCallҐ#dropout_227/StatefulPartitionedCallҐ#dropout_228/StatefulPartitionedCallҐ lstm_150/StatefulPartitionedCallҐ lstm_151/StatefulPartitionedCallҐ lstm_152/StatefulPartitionedCallЈ
 lstm_150/StatefulPartitionedCallStatefulPartitionedCalllstm_150_inputlstm_150_2258008lstm_150_2258010lstm_150_2258012*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_150_layer_call_and_return_conditional_losses_22578012"
 lstm_150/StatefulPartitionedCallЭ
#dropout_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_150/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_224_layer_call_and_return_conditional_losses_22576342%
#dropout_224/StatefulPartitionedCall’
 lstm_151/StatefulPartitionedCallStatefulPartitionedCall,dropout_224/StatefulPartitionedCall:output:0lstm_151_2258016lstm_151_2258018lstm_151_2258020*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_151_layer_call_and_return_conditional_losses_22576052"
 lstm_151/StatefulPartitionedCall√
#dropout_225/StatefulPartitionedCallStatefulPartitionedCall)lstm_151/StatefulPartitionedCall:output:0$^dropout_224/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_225_layer_call_and_return_conditional_losses_22574382%
#dropout_225/StatefulPartitionedCall—
 lstm_152/StatefulPartitionedCallStatefulPartitionedCall,dropout_225/StatefulPartitionedCall:output:0lstm_152_2258024lstm_152_2258026lstm_152_2258028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_152_layer_call_and_return_conditional_losses_22574092"
 lstm_152/StatefulPartitionedCallњ
#dropout_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_152/StatefulPartitionedCall:output:0$^dropout_225/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_226_layer_call_and_return_conditional_losses_22572422%
#dropout_226/StatefulPartitionedCall¬
!dense_112/StatefulPartitionedCallStatefulPartitionedCall,dropout_226/StatefulPartitionedCall:output:0dense_112_2258032dense_112_2258034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_112_layer_call_and_return_conditional_losses_22570592#
!dense_112/StatefulPartitionedCallј
#dropout_227/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0$^dropout_226/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_227_layer_call_and_return_conditional_losses_22572092%
#dropout_227/StatefulPartitionedCall¬
!dense_113/StatefulPartitionedCallStatefulPartitionedCall,dropout_227/StatefulPartitionedCall:output:0dense_113_2258038dense_113_2258040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_22570832#
!dense_113/StatefulPartitionedCallј
#dropout_228/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0$^dropout_227/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_228_layer_call_and_return_conditional_losses_22571762%
#dropout_228/StatefulPartitionedCall¬
!dense_114/StatefulPartitionedCallStatefulPartitionedCall,dropout_228/StatefulPartitionedCall:output:0dense_114_2258044dense_114_2258046*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_22571062#
!dense_114/StatefulPartitionedCallЕ
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityб
NoOpNoOp"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall$^dropout_224/StatefulPartitionedCall$^dropout_225/StatefulPartitionedCall$^dropout_226/StatefulPartitionedCall$^dropout_227/StatefulPartitionedCall$^dropout_228/StatefulPartitionedCall!^lstm_150/StatefulPartitionedCall!^lstm_151/StatefulPartitionedCall!^lstm_152/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2J
#dropout_224/StatefulPartitionedCall#dropout_224/StatefulPartitionedCall2J
#dropout_225/StatefulPartitionedCall#dropout_225/StatefulPartitionedCall2J
#dropout_226/StatefulPartitionedCall#dropout_226/StatefulPartitionedCall2J
#dropout_227/StatefulPartitionedCall#dropout_227/StatefulPartitionedCall2J
#dropout_228/StatefulPartitionedCall#dropout_228/StatefulPartitionedCall2D
 lstm_150/StatefulPartitionedCall lstm_150/StatefulPartitionedCall2D
 lstm_151/StatefulPartitionedCall lstm_151/StatefulPartitionedCall2D
 lstm_152/StatefulPartitionedCall lstm_152/StatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_namelstm_150_input
ѕ`
Ј
)sequential_38_lstm_152_while_body_2254549J
Fsequential_38_lstm_152_while_sequential_38_lstm_152_while_loop_counterP
Lsequential_38_lstm_152_while_sequential_38_lstm_152_while_maximum_iterations,
(sequential_38_lstm_152_while_placeholder.
*sequential_38_lstm_152_while_placeholder_1.
*sequential_38_lstm_152_while_placeholder_2.
*sequential_38_lstm_152_while_placeholder_3I
Esequential_38_lstm_152_while_sequential_38_lstm_152_strided_slice_1_0Ж
Бsequential_38_lstm_152_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_152_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_38_lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0:@_
Msequential_38_lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0:@Z
Lsequential_38_lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0:@)
%sequential_38_lstm_152_while_identity+
'sequential_38_lstm_152_while_identity_1+
'sequential_38_lstm_152_while_identity_2+
'sequential_38_lstm_152_while_identity_3+
'sequential_38_lstm_152_while_identity_4+
'sequential_38_lstm_152_while_identity_5G
Csequential_38_lstm_152_while_sequential_38_lstm_152_strided_slice_1Г
sequential_38_lstm_152_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_152_tensorarrayunstack_tensorlistfromtensor[
Isequential_38_lstm_152_while_lstm_cell_152_matmul_readvariableop_resource:@]
Ksequential_38_lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource:@X
Jsequential_38_lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐAsequential_38/lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpҐ@sequential_38/lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpҐBsequential_38/lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOpс
Nsequential_38/lstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2P
Nsequential_38/lstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shapeё
@sequential_38/lstm_152/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemБsequential_38_lstm_152_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_152_tensorarrayunstack_tensorlistfromtensor_0(sequential_38_lstm_152_while_placeholderWsequential_38/lstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02B
@sequential_38/lstm_152/while/TensorArrayV2Read/TensorListGetItemР
@sequential_38/lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOpKsequential_38_lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_38/lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpµ
1sequential_38/lstm_152/while/lstm_cell_152/MatMulMatMulGsequential_38/lstm_152/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_38/lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@23
1sequential_38/lstm_152/while/lstm_cell_152/MatMulЦ
Bsequential_38/lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOpMsequential_38_lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02D
Bsequential_38/lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOpЮ
3sequential_38/lstm_152/while/lstm_cell_152/MatMul_1MatMul*sequential_38_lstm_152_while_placeholder_2Jsequential_38/lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@25
3sequential_38/lstm_152/while/lstm_cell_152/MatMul_1Ч
.sequential_38/lstm_152/while/lstm_cell_152/addAddV2;sequential_38/lstm_152/while/lstm_cell_152/MatMul:product:0=sequential_38/lstm_152/while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@20
.sequential_38/lstm_152/while/lstm_cell_152/addП
Asequential_38/lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOpLsequential_38_lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02C
Asequential_38/lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp§
2sequential_38/lstm_152/while/lstm_cell_152/BiasAddBiasAdd2sequential_38/lstm_152/while/lstm_cell_152/add:z:0Isequential_38/lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@24
2sequential_38/lstm_152/while/lstm_cell_152/BiasAddЇ
:sequential_38/lstm_152/while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_38/lstm_152/while/lstm_cell_152/split/split_dimл
0sequential_38/lstm_152/while/lstm_cell_152/splitSplitCsequential_38/lstm_152/while/lstm_cell_152/split/split_dim:output:0;sequential_38/lstm_152/while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split22
0sequential_38/lstm_152/while/lstm_cell_152/splitа
2sequential_38/lstm_152/while/lstm_cell_152/SigmoidSigmoid9sequential_38/lstm_152/while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€24
2sequential_38/lstm_152/while/lstm_cell_152/Sigmoidд
4sequential_38/lstm_152/while/lstm_cell_152/Sigmoid_1Sigmoid9sequential_38/lstm_152/while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€26
4sequential_38/lstm_152/while/lstm_cell_152/Sigmoid_1€
.sequential_38/lstm_152/while/lstm_cell_152/mulMul8sequential_38/lstm_152/while/lstm_cell_152/Sigmoid_1:y:0*sequential_38_lstm_152_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_152/while/lstm_cell_152/mul„
/sequential_38/lstm_152/while/lstm_cell_152/ReluRelu9sequential_38/lstm_152/while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€21
/sequential_38/lstm_152/while/lstm_cell_152/ReluФ
0sequential_38/lstm_152/while/lstm_cell_152/mul_1Mul6sequential_38/lstm_152/while/lstm_cell_152/Sigmoid:y:0=sequential_38/lstm_152/while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_152/while/lstm_cell_152/mul_1Й
0sequential_38/lstm_152/while/lstm_cell_152/add_1AddV22sequential_38/lstm_152/while/lstm_cell_152/mul:z:04sequential_38/lstm_152/while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_152/while/lstm_cell_152/add_1д
4sequential_38/lstm_152/while/lstm_cell_152/Sigmoid_2Sigmoid9sequential_38/lstm_152/while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€26
4sequential_38/lstm_152/while/lstm_cell_152/Sigmoid_2÷
1sequential_38/lstm_152/while/lstm_cell_152/Relu_1Relu4sequential_38/lstm_152/while/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€23
1sequential_38/lstm_152/while/lstm_cell_152/Relu_1Ш
0sequential_38/lstm_152/while/lstm_cell_152/mul_2Mul8sequential_38/lstm_152/while/lstm_cell_152/Sigmoid_2:y:0?sequential_38/lstm_152/while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_152/while/lstm_cell_152/mul_2‘
Asequential_38/lstm_152/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_38_lstm_152_while_placeholder_1(sequential_38_lstm_152_while_placeholder4sequential_38/lstm_152/while/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_38/lstm_152/while/TensorArrayV2Write/TensorListSetItemК
"sequential_38/lstm_152/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_38/lstm_152/while/add/y≈
 sequential_38/lstm_152/while/addAddV2(sequential_38_lstm_152_while_placeholder+sequential_38/lstm_152/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_38/lstm_152/while/addО
$sequential_38/lstm_152/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_38/lstm_152/while/add_1/yй
"sequential_38/lstm_152/while/add_1AddV2Fsequential_38_lstm_152_while_sequential_38_lstm_152_while_loop_counter-sequential_38/lstm_152/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_38/lstm_152/while/add_1«
%sequential_38/lstm_152/while/IdentityIdentity&sequential_38/lstm_152/while/add_1:z:0"^sequential_38/lstm_152/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_38/lstm_152/while/Identityс
'sequential_38/lstm_152/while/Identity_1IdentityLsequential_38_lstm_152_while_sequential_38_lstm_152_while_maximum_iterations"^sequential_38/lstm_152/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_152/while/Identity_1…
'sequential_38/lstm_152/while/Identity_2Identity$sequential_38/lstm_152/while/add:z:0"^sequential_38/lstm_152/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_152/while/Identity_2ц
'sequential_38/lstm_152/while/Identity_3IdentityQsequential_38/lstm_152/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_38/lstm_152/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_152/while/Identity_3к
'sequential_38/lstm_152/while/Identity_4Identity4sequential_38/lstm_152/while/lstm_cell_152/mul_2:z:0"^sequential_38/lstm_152/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2)
'sequential_38/lstm_152/while/Identity_4к
'sequential_38/lstm_152/while/Identity_5Identity4sequential_38/lstm_152/while/lstm_cell_152/add_1:z:0"^sequential_38/lstm_152/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2)
'sequential_38/lstm_152/while/Identity_5‘
!sequential_38/lstm_152/while/NoOpNoOpB^sequential_38/lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpA^sequential_38/lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpC^sequential_38/lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_38/lstm_152/while/NoOp"W
%sequential_38_lstm_152_while_identity.sequential_38/lstm_152/while/Identity:output:0"[
'sequential_38_lstm_152_while_identity_10sequential_38/lstm_152/while/Identity_1:output:0"[
'sequential_38_lstm_152_while_identity_20sequential_38/lstm_152/while/Identity_2:output:0"[
'sequential_38_lstm_152_while_identity_30sequential_38/lstm_152/while/Identity_3:output:0"[
'sequential_38_lstm_152_while_identity_40sequential_38/lstm_152/while/Identity_4:output:0"[
'sequential_38_lstm_152_while_identity_50sequential_38/lstm_152/while/Identity_5:output:0"Ъ
Jsequential_38_lstm_152_while_lstm_cell_152_biasadd_readvariableop_resourceLsequential_38_lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0"Ь
Ksequential_38_lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resourceMsequential_38_lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0"Ш
Isequential_38_lstm_152_while_lstm_cell_152_matmul_readvariableop_resourceKsequential_38_lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0"М
Csequential_38_lstm_152_while_sequential_38_lstm_152_strided_slice_1Esequential_38_lstm_152_while_sequential_38_lstm_152_strided_slice_1_0"Е
sequential_38_lstm_152_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_152_tensorarrayunstack_tensorlistfromtensorБsequential_38_lstm_152_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_152_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Ж
Asequential_38/lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpAsequential_38/lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp2Д
@sequential_38/lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp@sequential_38/lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp2И
Bsequential_38/lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOpBsequential_38/lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
у
Е
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_2261374

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
х
f
H__inference_dropout_227_layer_call_and_return_conditional_losses_2257070

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
й\
Ґ
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259333
inputs_0>
,lstm_cell_150_matmul_readvariableop_resource:@@
.lstm_cell_150_matmul_1_readvariableop_resource:@;
-lstm_cell_150_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_150/BiasAdd/ReadVariableOpҐ#lstm_cell_150/MatMul/ReadVariableOpҐ%lstm_cell_150/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_150/MatMul/ReadVariableOpѓ
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMulљ
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_150/MatMul_1/ReadVariableOpЂ
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMul_1£
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/addґ
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_150/BiasAdd/ReadVariableOp∞
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/BiasAddА
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_150/split/split_dimч
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_150/splitЙ
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/SigmoidН
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_1О
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mulА
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu†
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_1Х
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/add_1Н
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_2
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu_1§
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2259249*
condR
while_cond_2259248*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
в?
‘
while_body_2259551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_150_matmul_readvariableop_resource_0:@H
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_150_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_150_matmul_readvariableop_resource:@F
4while_lstm_cell_150_matmul_1_readvariableop_resource:@A
3while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_150/BiasAdd/ReadVariableOpҐ)while/lstm_cell_150/MatMul/ReadVariableOpҐ+while/lstm_cell_150/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_150/MatMul/ReadVariableOpў
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul—
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_150/MatMul_1/ReadVariableOp¬
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul_1ї
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/add 
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_150/BiasAdd/ReadVariableOp»
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/BiasAddМ
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_150/split/split_dimП
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_150/splitЫ
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/SigmoidЯ
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_1£
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mulТ
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/ReluЄ
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_1≠
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/add_1Я
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_2С
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Relu_1Љ
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ЇF
Л
E__inference_lstm_150_layer_call_and_return_conditional_losses_2255024

inputs'
lstm_cell_150_2254942:@'
lstm_cell_150_2254944:@#
lstm_cell_150_2254946:@
identityИҐ%lstm_cell_150/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2І
%lstm_cell_150/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_150_2254942lstm_cell_150_2254944lstm_cell_150_2254946*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_22548772'
%lstm_cell_150/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter»
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_150_2254942lstm_cell_150_2254944lstm_cell_150_2254946*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2254955*
condR
while_cond_2254954*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity~
NoOpNoOp&^lstm_cell_150/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2N
%lstm_cell_150/StatefulPartitionedCall%lstm_cell_150/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
в?
‘
while_body_2256784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_151_matmul_readvariableop_resource_0:@H
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_151_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_151_matmul_readvariableop_resource:@F
4while_lstm_cell_151_matmul_1_readvariableop_resource:@A
3while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_151/BiasAdd/ReadVariableOpҐ)while/lstm_cell_151/MatMul/ReadVariableOpҐ+while/lstm_cell_151/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_151/MatMul/ReadVariableOpў
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul—
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_151/MatMul_1/ReadVariableOp¬
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul_1ї
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/add 
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_151/BiasAdd/ReadVariableOp»
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/BiasAddМ
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_151/split/split_dimП
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_151/splitЫ
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/SigmoidЯ
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_1£
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mulТ
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/ReluЄ
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_1≠
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/add_1Я
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_2С
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Relu_1Љ
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
х
f
H__inference_dropout_228_layer_call_and_return_conditional_losses_2257094

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2260074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2260074___redundant_placeholder05
1while_while_cond_2260074___redundant_placeholder15
1while_while_cond_2260074___redundant_placeholder25
1while_while_cond_2260074___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ѕ`
Ј
)sequential_38_lstm_151_while_body_2254401J
Fsequential_38_lstm_151_while_sequential_38_lstm_151_while_loop_counterP
Lsequential_38_lstm_151_while_sequential_38_lstm_151_while_maximum_iterations,
(sequential_38_lstm_151_while_placeholder.
*sequential_38_lstm_151_while_placeholder_1.
*sequential_38_lstm_151_while_placeholder_2.
*sequential_38_lstm_151_while_placeholder_3I
Esequential_38_lstm_151_while_sequential_38_lstm_151_strided_slice_1_0Ж
Бsequential_38_lstm_151_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_151_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_38_lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0:@_
Msequential_38_lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0:@Z
Lsequential_38_lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0:@)
%sequential_38_lstm_151_while_identity+
'sequential_38_lstm_151_while_identity_1+
'sequential_38_lstm_151_while_identity_2+
'sequential_38_lstm_151_while_identity_3+
'sequential_38_lstm_151_while_identity_4+
'sequential_38_lstm_151_while_identity_5G
Csequential_38_lstm_151_while_sequential_38_lstm_151_strided_slice_1Г
sequential_38_lstm_151_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_151_tensorarrayunstack_tensorlistfromtensor[
Isequential_38_lstm_151_while_lstm_cell_151_matmul_readvariableop_resource:@]
Ksequential_38_lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource:@X
Jsequential_38_lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐAsequential_38/lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpҐ@sequential_38/lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpҐBsequential_38/lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOpс
Nsequential_38/lstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2P
Nsequential_38/lstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shapeё
@sequential_38/lstm_151/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemБsequential_38_lstm_151_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_151_tensorarrayunstack_tensorlistfromtensor_0(sequential_38_lstm_151_while_placeholderWsequential_38/lstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02B
@sequential_38/lstm_151/while/TensorArrayV2Read/TensorListGetItemР
@sequential_38/lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOpKsequential_38_lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_38/lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpµ
1sequential_38/lstm_151/while/lstm_cell_151/MatMulMatMulGsequential_38/lstm_151/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_38/lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@23
1sequential_38/lstm_151/while/lstm_cell_151/MatMulЦ
Bsequential_38/lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOpMsequential_38_lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02D
Bsequential_38/lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOpЮ
3sequential_38/lstm_151/while/lstm_cell_151/MatMul_1MatMul*sequential_38_lstm_151_while_placeholder_2Jsequential_38/lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@25
3sequential_38/lstm_151/while/lstm_cell_151/MatMul_1Ч
.sequential_38/lstm_151/while/lstm_cell_151/addAddV2;sequential_38/lstm_151/while/lstm_cell_151/MatMul:product:0=sequential_38/lstm_151/while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@20
.sequential_38/lstm_151/while/lstm_cell_151/addП
Asequential_38/lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOpLsequential_38_lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02C
Asequential_38/lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp§
2sequential_38/lstm_151/while/lstm_cell_151/BiasAddBiasAdd2sequential_38/lstm_151/while/lstm_cell_151/add:z:0Isequential_38/lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@24
2sequential_38/lstm_151/while/lstm_cell_151/BiasAddЇ
:sequential_38/lstm_151/while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_38/lstm_151/while/lstm_cell_151/split/split_dimл
0sequential_38/lstm_151/while/lstm_cell_151/splitSplitCsequential_38/lstm_151/while/lstm_cell_151/split/split_dim:output:0;sequential_38/lstm_151/while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split22
0sequential_38/lstm_151/while/lstm_cell_151/splitа
2sequential_38/lstm_151/while/lstm_cell_151/SigmoidSigmoid9sequential_38/lstm_151/while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€24
2sequential_38/lstm_151/while/lstm_cell_151/Sigmoidд
4sequential_38/lstm_151/while/lstm_cell_151/Sigmoid_1Sigmoid9sequential_38/lstm_151/while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€26
4sequential_38/lstm_151/while/lstm_cell_151/Sigmoid_1€
.sequential_38/lstm_151/while/lstm_cell_151/mulMul8sequential_38/lstm_151/while/lstm_cell_151/Sigmoid_1:y:0*sequential_38_lstm_151_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_151/while/lstm_cell_151/mul„
/sequential_38/lstm_151/while/lstm_cell_151/ReluRelu9sequential_38/lstm_151/while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€21
/sequential_38/lstm_151/while/lstm_cell_151/ReluФ
0sequential_38/lstm_151/while/lstm_cell_151/mul_1Mul6sequential_38/lstm_151/while/lstm_cell_151/Sigmoid:y:0=sequential_38/lstm_151/while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_151/while/lstm_cell_151/mul_1Й
0sequential_38/lstm_151/while/lstm_cell_151/add_1AddV22sequential_38/lstm_151/while/lstm_cell_151/mul:z:04sequential_38/lstm_151/while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_151/while/lstm_cell_151/add_1д
4sequential_38/lstm_151/while/lstm_cell_151/Sigmoid_2Sigmoid9sequential_38/lstm_151/while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€26
4sequential_38/lstm_151/while/lstm_cell_151/Sigmoid_2÷
1sequential_38/lstm_151/while/lstm_cell_151/Relu_1Relu4sequential_38/lstm_151/while/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€23
1sequential_38/lstm_151/while/lstm_cell_151/Relu_1Ш
0sequential_38/lstm_151/while/lstm_cell_151/mul_2Mul8sequential_38/lstm_151/while/lstm_cell_151/Sigmoid_2:y:0?sequential_38/lstm_151/while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_151/while/lstm_cell_151/mul_2‘
Asequential_38/lstm_151/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_38_lstm_151_while_placeholder_1(sequential_38_lstm_151_while_placeholder4sequential_38/lstm_151/while/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_38/lstm_151/while/TensorArrayV2Write/TensorListSetItemК
"sequential_38/lstm_151/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_38/lstm_151/while/add/y≈
 sequential_38/lstm_151/while/addAddV2(sequential_38_lstm_151_while_placeholder+sequential_38/lstm_151/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_38/lstm_151/while/addО
$sequential_38/lstm_151/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_38/lstm_151/while/add_1/yй
"sequential_38/lstm_151/while/add_1AddV2Fsequential_38_lstm_151_while_sequential_38_lstm_151_while_loop_counter-sequential_38/lstm_151/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_38/lstm_151/while/add_1«
%sequential_38/lstm_151/while/IdentityIdentity&sequential_38/lstm_151/while/add_1:z:0"^sequential_38/lstm_151/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_38/lstm_151/while/Identityс
'sequential_38/lstm_151/while/Identity_1IdentityLsequential_38_lstm_151_while_sequential_38_lstm_151_while_maximum_iterations"^sequential_38/lstm_151/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_151/while/Identity_1…
'sequential_38/lstm_151/while/Identity_2Identity$sequential_38/lstm_151/while/add:z:0"^sequential_38/lstm_151/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_151/while/Identity_2ц
'sequential_38/lstm_151/while/Identity_3IdentityQsequential_38/lstm_151/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_38/lstm_151/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_151/while/Identity_3к
'sequential_38/lstm_151/while/Identity_4Identity4sequential_38/lstm_151/while/lstm_cell_151/mul_2:z:0"^sequential_38/lstm_151/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2)
'sequential_38/lstm_151/while/Identity_4к
'sequential_38/lstm_151/while/Identity_5Identity4sequential_38/lstm_151/while/lstm_cell_151/add_1:z:0"^sequential_38/lstm_151/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2)
'sequential_38/lstm_151/while/Identity_5‘
!sequential_38/lstm_151/while/NoOpNoOpB^sequential_38/lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpA^sequential_38/lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpC^sequential_38/lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_38/lstm_151/while/NoOp"W
%sequential_38_lstm_151_while_identity.sequential_38/lstm_151/while/Identity:output:0"[
'sequential_38_lstm_151_while_identity_10sequential_38/lstm_151/while/Identity_1:output:0"[
'sequential_38_lstm_151_while_identity_20sequential_38/lstm_151/while/Identity_2:output:0"[
'sequential_38_lstm_151_while_identity_30sequential_38/lstm_151/while/Identity_3:output:0"[
'sequential_38_lstm_151_while_identity_40sequential_38/lstm_151/while/Identity_4:output:0"[
'sequential_38_lstm_151_while_identity_50sequential_38/lstm_151/while/Identity_5:output:0"Ъ
Jsequential_38_lstm_151_while_lstm_cell_151_biasadd_readvariableop_resourceLsequential_38_lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0"Ь
Ksequential_38_lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resourceMsequential_38_lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0"Ш
Isequential_38_lstm_151_while_lstm_cell_151_matmul_readvariableop_resourceKsequential_38_lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0"М
Csequential_38_lstm_151_while_sequential_38_lstm_151_strided_slice_1Esequential_38_lstm_151_while_sequential_38_lstm_151_strided_slice_1_0"Е
sequential_38_lstm_151_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_151_tensorarrayunstack_tensorlistfromtensorБsequential_38_lstm_151_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_151_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Ж
Asequential_38/lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpAsequential_38/lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp2Д
@sequential_38/lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp@sequential_38/lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp2И
Bsequential_38/lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOpBsequential_38/lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
™\
†
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259786

inputs>
,lstm_cell_150_matmul_readvariableop_resource:@@
.lstm_cell_150_matmul_1_readvariableop_resource:@;
-lstm_cell_150_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_150/BiasAdd/ReadVariableOpҐ#lstm_cell_150/MatMul/ReadVariableOpҐ%lstm_cell_150/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_150/MatMul/ReadVariableOpѓ
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMulљ
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_150/MatMul_1/ReadVariableOpЂ
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMul_1£
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/addґ
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_150/BiasAdd/ReadVariableOp∞
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/BiasAddА
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_150/split/split_dimч
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_150/splitЙ
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/SigmoidН
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_1О
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mulА
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu†
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_1Х
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/add_1Н
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_2
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu_1§
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2259702*
condR
while_cond_2259701*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓ
і
*__inference_lstm_151_layer_call_fn_2259846

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_151_layer_call_and_return_conditional_losses_22568682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
е\
Ґ
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260834
inputs_0>
,lstm_cell_152_matmul_readvariableop_resource:@@
.lstm_cell_152_matmul_1_readvariableop_resource:@;
-lstm_cell_152_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_152/BiasAdd/ReadVariableOpҐ#lstm_cell_152/MatMul/ReadVariableOpҐ%lstm_cell_152/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_152/MatMul/ReadVariableOpѓ
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMulљ
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_152/MatMul_1/ReadVariableOpЂ
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMul_1£
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/addґ
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_152/BiasAdd/ReadVariableOp∞
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/BiasAddА
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_152/split/split_dimч
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_152/splitЙ
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/SigmoidН
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_1О
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mulА
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu†
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_1Х
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/add_1Н
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_2
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu_1§
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2260750*
condR
while_cond_2260749*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
Џ
»
while_cond_2254744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2254744___redundant_placeholder05
1while_while_cond_2254744___redundant_placeholder15
1while_while_cond_2254744___redundant_placeholder25
1while_while_cond_2254744___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
™\
†
E__inference_lstm_151_layer_call_and_return_conditional_losses_2257605

inputs>
,lstm_cell_151_matmul_readvariableop_resource:@@
.lstm_cell_151_matmul_1_readvariableop_resource:@;
-lstm_cell_151_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_151/BiasAdd/ReadVariableOpҐ#lstm_cell_151/MatMul/ReadVariableOpҐ%lstm_cell_151/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_151/MatMul/ReadVariableOpѓ
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMulљ
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_151/MatMul_1/ReadVariableOpЂ
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMul_1£
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/addґ
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_151/BiasAdd/ReadVariableOp∞
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/BiasAddА
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_151/split/split_dimч
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_151/splitЙ
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/SigmoidН
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_1О
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mulА
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu†
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_1Х
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/add_1Н
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_2
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu_1§
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2257521*
condR
while_cond_2257520*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъq
н
 __inference__traced_save_2261755
file_prefix/
+savev2_dense_112_kernel_read_readvariableop-
)savev2_dense_112_bias_read_readvariableop/
+savev2_dense_113_kernel_read_readvariableop-
)savev2_dense_113_bias_read_readvariableop/
+savev2_dense_114_kernel_read_readvariableop-
)savev2_dense_114_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_150_lstm_cell_150_kernel_read_readvariableopF
Bsavev2_lstm_150_lstm_cell_150_recurrent_kernel_read_readvariableop:
6savev2_lstm_150_lstm_cell_150_bias_read_readvariableop<
8savev2_lstm_151_lstm_cell_151_kernel_read_readvariableopF
Bsavev2_lstm_151_lstm_cell_151_recurrent_kernel_read_readvariableop:
6savev2_lstm_151_lstm_cell_151_bias_read_readvariableop<
8savev2_lstm_152_lstm_cell_152_kernel_read_readvariableopF
Bsavev2_lstm_152_lstm_cell_152_recurrent_kernel_read_readvariableop:
6savev2_lstm_152_lstm_cell_152_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_112_kernel_m_read_readvariableop4
0savev2_adam_dense_112_bias_m_read_readvariableop6
2savev2_adam_dense_113_kernel_m_read_readvariableop4
0savev2_adam_dense_113_bias_m_read_readvariableop6
2savev2_adam_dense_114_kernel_m_read_readvariableop4
0savev2_adam_dense_114_bias_m_read_readvariableopC
?savev2_adam_lstm_150_lstm_cell_150_kernel_m_read_readvariableopM
Isavev2_adam_lstm_150_lstm_cell_150_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_150_lstm_cell_150_bias_m_read_readvariableopC
?savev2_adam_lstm_151_lstm_cell_151_kernel_m_read_readvariableopM
Isavev2_adam_lstm_151_lstm_cell_151_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_151_lstm_cell_151_bias_m_read_readvariableopC
?savev2_adam_lstm_152_lstm_cell_152_kernel_m_read_readvariableopM
Isavev2_adam_lstm_152_lstm_cell_152_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_152_lstm_cell_152_bias_m_read_readvariableop6
2savev2_adam_dense_112_kernel_v_read_readvariableop4
0savev2_adam_dense_112_bias_v_read_readvariableop6
2savev2_adam_dense_113_kernel_v_read_readvariableop4
0savev2_adam_dense_113_bias_v_read_readvariableop6
2savev2_adam_dense_114_kernel_v_read_readvariableop4
0savev2_adam_dense_114_bias_v_read_readvariableopC
?savev2_adam_lstm_150_lstm_cell_150_kernel_v_read_readvariableopM
Isavev2_adam_lstm_150_lstm_cell_150_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_150_lstm_cell_150_bias_v_read_readvariableopC
?savev2_adam_lstm_151_lstm_cell_151_kernel_v_read_readvariableopM
Isavev2_adam_lstm_151_lstm_cell_151_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_151_lstm_cell_151_bias_v_read_readvariableopC
?savev2_adam_lstm_152_lstm_cell_152_kernel_v_read_readvariableopM
Isavev2_adam_lstm_152_lstm_cell_152_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_152_lstm_cell_152_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЉ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*ќ
valueƒBЅ7B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesч
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Б
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesШ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_112_kernel_read_readvariableop)savev2_dense_112_bias_read_readvariableop+savev2_dense_113_kernel_read_readvariableop)savev2_dense_113_bias_read_readvariableop+savev2_dense_114_kernel_read_readvariableop)savev2_dense_114_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_150_lstm_cell_150_kernel_read_readvariableopBsavev2_lstm_150_lstm_cell_150_recurrent_kernel_read_readvariableop6savev2_lstm_150_lstm_cell_150_bias_read_readvariableop8savev2_lstm_151_lstm_cell_151_kernel_read_readvariableopBsavev2_lstm_151_lstm_cell_151_recurrent_kernel_read_readvariableop6savev2_lstm_151_lstm_cell_151_bias_read_readvariableop8savev2_lstm_152_lstm_cell_152_kernel_read_readvariableopBsavev2_lstm_152_lstm_cell_152_recurrent_kernel_read_readvariableop6savev2_lstm_152_lstm_cell_152_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_112_kernel_m_read_readvariableop0savev2_adam_dense_112_bias_m_read_readvariableop2savev2_adam_dense_113_kernel_m_read_readvariableop0savev2_adam_dense_113_bias_m_read_readvariableop2savev2_adam_dense_114_kernel_m_read_readvariableop0savev2_adam_dense_114_bias_m_read_readvariableop?savev2_adam_lstm_150_lstm_cell_150_kernel_m_read_readvariableopIsavev2_adam_lstm_150_lstm_cell_150_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_150_lstm_cell_150_bias_m_read_readvariableop?savev2_adam_lstm_151_lstm_cell_151_kernel_m_read_readvariableopIsavev2_adam_lstm_151_lstm_cell_151_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_151_lstm_cell_151_bias_m_read_readvariableop?savev2_adam_lstm_152_lstm_cell_152_kernel_m_read_readvariableopIsavev2_adam_lstm_152_lstm_cell_152_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_152_lstm_cell_152_bias_m_read_readvariableop2savev2_adam_dense_112_kernel_v_read_readvariableop0savev2_adam_dense_112_bias_v_read_readvariableop2savev2_adam_dense_113_kernel_v_read_readvariableop0savev2_adam_dense_113_bias_v_read_readvariableop2savev2_adam_dense_114_kernel_v_read_readvariableop0savev2_adam_dense_114_bias_v_read_readvariableop?savev2_adam_lstm_150_lstm_cell_150_kernel_v_read_readvariableopIsavev2_adam_lstm_150_lstm_cell_150_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_150_lstm_cell_150_bias_v_read_readvariableop?savev2_adam_lstm_151_lstm_cell_151_kernel_v_read_readvariableopIsavev2_adam_lstm_151_lstm_cell_151_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_151_lstm_cell_151_bias_v_read_readvariableop?savev2_adam_lstm_152_lstm_cell_152_kernel_v_read_readvariableopIsavev2_adam_lstm_152_lstm_cell_152_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_152_lstm_cell_152_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *E
dtypes;
927	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*•
_input_shapesУ
Р: ::::::: : : : : :@:@:@:@:@:@:@:@:@: : : : :::::::@:@:@:@:@:@:@:@:@:::::::@:@:@:@:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:@:$  

_output_shapes

:@: !

_output_shapes
:@:$" 

_output_shapes

:@:$# 

_output_shapes

:@: $

_output_shapes
:@:$% 

_output_shapes

:@:$& 

_output_shapes

:@: '

_output_shapes
:@:$( 

_output_shapes

:: )

_output_shapes
::$* 

_output_shapes

:: +

_output_shapes
::$, 

_output_shapes

:: -

_output_shapes
::$. 

_output_shapes

:@:$/ 

_output_shapes

:@: 0

_output_shapes
:@:$1 

_output_shapes

:@:$2 

_output_shapes

:@: 3

_output_shapes
:@:$4 

_output_shapes

:@:$5 

_output_shapes

:@: 6

_output_shapes
:@:7

_output_shapes
: 
Џ
»
while_cond_2257716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2257716___redundant_placeholder05
1while_while_cond_2257716___redundant_placeholder15
1while_while_cond_2257716___redundant_placeholder25
1while_while_cond_2257716___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Џ
ґ
*__inference_lstm_150_layer_call_fn_2259149
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_150_layer_call_and_return_conditional_losses_22548142
StatefulPartitionedCallИ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
Џ
ґ
*__inference_lstm_151_layer_call_fn_2259824
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_151_layer_call_and_return_conditional_losses_22554442
StatefulPartitionedCallИ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
Ы
Г
%__inference_signature_wrapper_2258093
lstm_150_input
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCalllstm_150_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_22546562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_namelstm_150_input
∆3
–
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258005
lstm_150_input"
lstm_150_2257963:@"
lstm_150_2257965:@
lstm_150_2257967:@"
lstm_151_2257971:@"
lstm_151_2257973:@
lstm_151_2257975:@"
lstm_152_2257979:@"
lstm_152_2257981:@
lstm_152_2257983:@#
dense_112_2257987:
dense_112_2257989:#
dense_113_2257993:
dense_113_2257995:#
dense_114_2257999:
dense_114_2258001:
identityИҐ!dense_112/StatefulPartitionedCallҐ!dense_113/StatefulPartitionedCallҐ!dense_114/StatefulPartitionedCallҐ lstm_150/StatefulPartitionedCallҐ lstm_151/StatefulPartitionedCallҐ lstm_152/StatefulPartitionedCallЈ
 lstm_150/StatefulPartitionedCallStatefulPartitionedCalllstm_150_inputlstm_150_2257963lstm_150_2257965lstm_150_2257967*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_150_layer_call_and_return_conditional_losses_22567032"
 lstm_150/StatefulPartitionedCallЕ
dropout_224/PartitionedCallPartitionedCall)lstm_150/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_224_layer_call_and_return_conditional_losses_22567162
dropout_224/PartitionedCallЌ
 lstm_151/StatefulPartitionedCallStatefulPartitionedCall$dropout_224/PartitionedCall:output:0lstm_151_2257971lstm_151_2257973lstm_151_2257975*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_151_layer_call_and_return_conditional_losses_22568682"
 lstm_151/StatefulPartitionedCallЕ
dropout_225/PartitionedCallPartitionedCall)lstm_151/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_225_layer_call_and_return_conditional_losses_22568812
dropout_225/PartitionedCall…
 lstm_152/StatefulPartitionedCallStatefulPartitionedCall$dropout_225/PartitionedCall:output:0lstm_152_2257979lstm_152_2257981lstm_152_2257983*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_152_layer_call_and_return_conditional_losses_22570332"
 lstm_152/StatefulPartitionedCallБ
dropout_226/PartitionedCallPartitionedCall)lstm_152/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_226_layer_call_and_return_conditional_losses_22570462
dropout_226/PartitionedCallЇ
!dense_112/StatefulPartitionedCallStatefulPartitionedCall$dropout_226/PartitionedCall:output:0dense_112_2257987dense_112_2257989*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_112_layer_call_and_return_conditional_losses_22570592#
!dense_112/StatefulPartitionedCallВ
dropout_227/PartitionedCallPartitionedCall*dense_112/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_227_layer_call_and_return_conditional_losses_22570702
dropout_227/PartitionedCallЇ
!dense_113/StatefulPartitionedCallStatefulPartitionedCall$dropout_227/PartitionedCall:output:0dense_113_2257993dense_113_2257995*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_22570832#
!dense_113/StatefulPartitionedCallВ
dropout_228/PartitionedCallPartitionedCall*dense_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_228_layer_call_and_return_conditional_losses_22570942
dropout_228/PartitionedCallЇ
!dense_114/StatefulPartitionedCallStatefulPartitionedCall$dropout_228/PartitionedCall:output:0dense_114_2257999dense_114_2258001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_22571062#
!dense_114/StatefulPartitionedCallЕ
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity£
NoOpNoOp"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall!^lstm_150/StatefulPartitionedCall!^lstm_151/StatefulPartitionedCall!^lstm_152/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2D
 lstm_150/StatefulPartitionedCall lstm_150/StatefulPartitionedCall2D
 lstm_151/StatefulPartitionedCall lstm_151/StatefulPartitionedCall2D
 lstm_152/StatefulPartitionedCall lstm_152/StatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_namelstm_150_input
л
Г
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_2255991

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
Д
ч
F__inference_dense_113_layer_call_and_return_conditional_losses_2261230

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
е\
Ґ
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260683
inputs_0>
,lstm_cell_152_matmul_readvariableop_resource:@@
.lstm_cell_152_matmul_1_readvariableop_resource:@;
-lstm_cell_152_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_152/BiasAdd/ReadVariableOpҐ#lstm_cell_152/MatMul/ReadVariableOpҐ%lstm_cell_152/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_152/MatMul/ReadVariableOpѓ
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMulљ
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_152/MatMul_1/ReadVariableOpЂ
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMul_1£
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/addґ
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_152/BiasAdd/ReadVariableOp∞
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/BiasAddА
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_152/split/split_dimч
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_152/splitЙ
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/SigmoidН
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_1О
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mulА
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu†
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_1Х
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/add_1Н
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_2
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu_1§
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2260599*
condR
while_cond_2260598*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
ѕ`
Ј
)sequential_38_lstm_150_while_body_2254253J
Fsequential_38_lstm_150_while_sequential_38_lstm_150_while_loop_counterP
Lsequential_38_lstm_150_while_sequential_38_lstm_150_while_maximum_iterations,
(sequential_38_lstm_150_while_placeholder.
*sequential_38_lstm_150_while_placeholder_1.
*sequential_38_lstm_150_while_placeholder_2.
*sequential_38_lstm_150_while_placeholder_3I
Esequential_38_lstm_150_while_sequential_38_lstm_150_strided_slice_1_0Ж
Бsequential_38_lstm_150_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_150_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_38_lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0:@_
Msequential_38_lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0:@Z
Lsequential_38_lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0:@)
%sequential_38_lstm_150_while_identity+
'sequential_38_lstm_150_while_identity_1+
'sequential_38_lstm_150_while_identity_2+
'sequential_38_lstm_150_while_identity_3+
'sequential_38_lstm_150_while_identity_4+
'sequential_38_lstm_150_while_identity_5G
Csequential_38_lstm_150_while_sequential_38_lstm_150_strided_slice_1Г
sequential_38_lstm_150_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_150_tensorarrayunstack_tensorlistfromtensor[
Isequential_38_lstm_150_while_lstm_cell_150_matmul_readvariableop_resource:@]
Ksequential_38_lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource:@X
Jsequential_38_lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐAsequential_38/lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpҐ@sequential_38/lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpҐBsequential_38/lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOpс
Nsequential_38/lstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2P
Nsequential_38/lstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shapeё
@sequential_38/lstm_150/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemБsequential_38_lstm_150_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_150_tensorarrayunstack_tensorlistfromtensor_0(sequential_38_lstm_150_while_placeholderWsequential_38/lstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02B
@sequential_38/lstm_150/while/TensorArrayV2Read/TensorListGetItemР
@sequential_38/lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOpKsequential_38_lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_38/lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpµ
1sequential_38/lstm_150/while/lstm_cell_150/MatMulMatMulGsequential_38/lstm_150/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_38/lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@23
1sequential_38/lstm_150/while/lstm_cell_150/MatMulЦ
Bsequential_38/lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOpMsequential_38_lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02D
Bsequential_38/lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOpЮ
3sequential_38/lstm_150/while/lstm_cell_150/MatMul_1MatMul*sequential_38_lstm_150_while_placeholder_2Jsequential_38/lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@25
3sequential_38/lstm_150/while/lstm_cell_150/MatMul_1Ч
.sequential_38/lstm_150/while/lstm_cell_150/addAddV2;sequential_38/lstm_150/while/lstm_cell_150/MatMul:product:0=sequential_38/lstm_150/while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@20
.sequential_38/lstm_150/while/lstm_cell_150/addП
Asequential_38/lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOpLsequential_38_lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02C
Asequential_38/lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp§
2sequential_38/lstm_150/while/lstm_cell_150/BiasAddBiasAdd2sequential_38/lstm_150/while/lstm_cell_150/add:z:0Isequential_38/lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@24
2sequential_38/lstm_150/while/lstm_cell_150/BiasAddЇ
:sequential_38/lstm_150/while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_38/lstm_150/while/lstm_cell_150/split/split_dimл
0sequential_38/lstm_150/while/lstm_cell_150/splitSplitCsequential_38/lstm_150/while/lstm_cell_150/split/split_dim:output:0;sequential_38/lstm_150/while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split22
0sequential_38/lstm_150/while/lstm_cell_150/splitа
2sequential_38/lstm_150/while/lstm_cell_150/SigmoidSigmoid9sequential_38/lstm_150/while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€24
2sequential_38/lstm_150/while/lstm_cell_150/Sigmoidд
4sequential_38/lstm_150/while/lstm_cell_150/Sigmoid_1Sigmoid9sequential_38/lstm_150/while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€26
4sequential_38/lstm_150/while/lstm_cell_150/Sigmoid_1€
.sequential_38/lstm_150/while/lstm_cell_150/mulMul8sequential_38/lstm_150/while/lstm_cell_150/Sigmoid_1:y:0*sequential_38_lstm_150_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_150/while/lstm_cell_150/mul„
/sequential_38/lstm_150/while/lstm_cell_150/ReluRelu9sequential_38/lstm_150/while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€21
/sequential_38/lstm_150/while/lstm_cell_150/ReluФ
0sequential_38/lstm_150/while/lstm_cell_150/mul_1Mul6sequential_38/lstm_150/while/lstm_cell_150/Sigmoid:y:0=sequential_38/lstm_150/while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_150/while/lstm_cell_150/mul_1Й
0sequential_38/lstm_150/while/lstm_cell_150/add_1AddV22sequential_38/lstm_150/while/lstm_cell_150/mul:z:04sequential_38/lstm_150/while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_150/while/lstm_cell_150/add_1д
4sequential_38/lstm_150/while/lstm_cell_150/Sigmoid_2Sigmoid9sequential_38/lstm_150/while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€26
4sequential_38/lstm_150/while/lstm_cell_150/Sigmoid_2÷
1sequential_38/lstm_150/while/lstm_cell_150/Relu_1Relu4sequential_38/lstm_150/while/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€23
1sequential_38/lstm_150/while/lstm_cell_150/Relu_1Ш
0sequential_38/lstm_150/while/lstm_cell_150/mul_2Mul8sequential_38/lstm_150/while/lstm_cell_150/Sigmoid_2:y:0?sequential_38/lstm_150/while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_38/lstm_150/while/lstm_cell_150/mul_2‘
Asequential_38/lstm_150/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_38_lstm_150_while_placeholder_1(sequential_38_lstm_150_while_placeholder4sequential_38/lstm_150/while/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_38/lstm_150/while/TensorArrayV2Write/TensorListSetItemК
"sequential_38/lstm_150/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_38/lstm_150/while/add/y≈
 sequential_38/lstm_150/while/addAddV2(sequential_38_lstm_150_while_placeholder+sequential_38/lstm_150/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_38/lstm_150/while/addО
$sequential_38/lstm_150/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_38/lstm_150/while/add_1/yй
"sequential_38/lstm_150/while/add_1AddV2Fsequential_38_lstm_150_while_sequential_38_lstm_150_while_loop_counter-sequential_38/lstm_150/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_38/lstm_150/while/add_1«
%sequential_38/lstm_150/while/IdentityIdentity&sequential_38/lstm_150/while/add_1:z:0"^sequential_38/lstm_150/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_38/lstm_150/while/Identityс
'sequential_38/lstm_150/while/Identity_1IdentityLsequential_38_lstm_150_while_sequential_38_lstm_150_while_maximum_iterations"^sequential_38/lstm_150/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_150/while/Identity_1…
'sequential_38/lstm_150/while/Identity_2Identity$sequential_38/lstm_150/while/add:z:0"^sequential_38/lstm_150/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_150/while/Identity_2ц
'sequential_38/lstm_150/while/Identity_3IdentityQsequential_38/lstm_150/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_38/lstm_150/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_38/lstm_150/while/Identity_3к
'sequential_38/lstm_150/while/Identity_4Identity4sequential_38/lstm_150/while/lstm_cell_150/mul_2:z:0"^sequential_38/lstm_150/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2)
'sequential_38/lstm_150/while/Identity_4к
'sequential_38/lstm_150/while/Identity_5Identity4sequential_38/lstm_150/while/lstm_cell_150/add_1:z:0"^sequential_38/lstm_150/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2)
'sequential_38/lstm_150/while/Identity_5‘
!sequential_38/lstm_150/while/NoOpNoOpB^sequential_38/lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpA^sequential_38/lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpC^sequential_38/lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_38/lstm_150/while/NoOp"W
%sequential_38_lstm_150_while_identity.sequential_38/lstm_150/while/Identity:output:0"[
'sequential_38_lstm_150_while_identity_10sequential_38/lstm_150/while/Identity_1:output:0"[
'sequential_38_lstm_150_while_identity_20sequential_38/lstm_150/while/Identity_2:output:0"[
'sequential_38_lstm_150_while_identity_30sequential_38/lstm_150/while/Identity_3:output:0"[
'sequential_38_lstm_150_while_identity_40sequential_38/lstm_150/while/Identity_4:output:0"[
'sequential_38_lstm_150_while_identity_50sequential_38/lstm_150/while/Identity_5:output:0"Ъ
Jsequential_38_lstm_150_while_lstm_cell_150_biasadd_readvariableop_resourceLsequential_38_lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0"Ь
Ksequential_38_lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resourceMsequential_38_lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0"Ш
Isequential_38_lstm_150_while_lstm_cell_150_matmul_readvariableop_resourceKsequential_38_lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0"М
Csequential_38_lstm_150_while_sequential_38_lstm_150_strided_slice_1Esequential_38_lstm_150_while_sequential_38_lstm_150_strided_slice_1_0"Е
sequential_38_lstm_150_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_150_tensorarrayunstack_tensorlistfromtensorБsequential_38_lstm_150_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_150_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Ж
Asequential_38/lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpAsequential_38/lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp2Д
@sequential_38/lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp@sequential_38/lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp2И
Bsequential_38/lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOpBsequential_38/lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
й

ь
lstm_150_while_cond_2258699.
*lstm_150_while_lstm_150_while_loop_counter4
0lstm_150_while_lstm_150_while_maximum_iterations
lstm_150_while_placeholder 
lstm_150_while_placeholder_1 
lstm_150_while_placeholder_2 
lstm_150_while_placeholder_30
,lstm_150_while_less_lstm_150_strided_slice_1G
Clstm_150_while_lstm_150_while_cond_2258699___redundant_placeholder0G
Clstm_150_while_lstm_150_while_cond_2258699___redundant_placeholder1G
Clstm_150_while_lstm_150_while_cond_2258699___redundant_placeholder2G
Clstm_150_while_lstm_150_while_cond_2258699___redundant_placeholder3
lstm_150_while_identity
Э
lstm_150/while/LessLesslstm_150_while_placeholder,lstm_150_while_less_lstm_150_strided_slice_1*
T0*
_output_shapes
: 2
lstm_150/while/Lessx
lstm_150/while/IdentityIdentitylstm_150/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_150/while/Identity";
lstm_150_while_identity lstm_150/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ƒ
I
-__inference_dropout_226_layer_call_fn_2261141

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_226_layer_call_and_return_conditional_losses_22570462
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ЇF
Л
E__inference_lstm_151_layer_call_and_return_conditional_losses_2255654

inputs'
lstm_cell_151_2255572:@'
lstm_cell_151_2255574:@#
lstm_cell_151_2255576:@
identityИҐ%lstm_cell_151/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2І
%lstm_cell_151/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_151_2255572lstm_cell_151_2255574lstm_cell_151_2255576*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_22555072'
%lstm_cell_151/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter»
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_151_2255572lstm_cell_151_2255574lstm_cell_151_2255576*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2255585*
condR
while_cond_2255584*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity~
NoOpNoOp&^lstm_cell_151/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2N
%lstm_cell_151/StatefulPartitionedCall%lstm_cell_151/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2257324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2257324___redundant_placeholder05
1while_while_cond_2257324___redundant_placeholder15
1while_while_cond_2257324___redundant_placeholder25
1while_while_cond_2257324___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
й

ь
lstm_151_while_cond_2258854.
*lstm_151_while_lstm_151_while_loop_counter4
0lstm_151_while_lstm_151_while_maximum_iterations
lstm_151_while_placeholder 
lstm_151_while_placeholder_1 
lstm_151_while_placeholder_2 
lstm_151_while_placeholder_30
,lstm_151_while_less_lstm_151_strided_slice_1G
Clstm_151_while_lstm_151_while_cond_2258854___redundant_placeholder0G
Clstm_151_while_lstm_151_while_cond_2258854___redundant_placeholder1G
Clstm_151_while_lstm_151_while_cond_2258854___redundant_placeholder2G
Clstm_151_while_lstm_151_while_cond_2258854___redundant_placeholder3
lstm_151_while_identity
Э
lstm_151/while/LessLesslstm_151_while_placeholder,lstm_151_while_less_lstm_151_strided_slice_1*
T0*
_output_shapes
: 2
lstm_151/while/Lessx
lstm_151/while/IdentityIdentitylstm_151/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_151/while/Identity";
lstm_151_while_identity lstm_151/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
¶
f
-__inference_dropout_226_layer_call_fn_2261146

inputs
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_226_layer_call_and_return_conditional_losses_22572422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
њ
ґ
*__inference_lstm_152_layer_call_fn_2260510
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_152_layer_call_and_return_conditional_losses_22562842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
Џ
»
while_cond_2260900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2260900___redundant_placeholder05
1while_while_cond_2260900___redundant_placeholder15
1while_while_cond_2260900___redundant_placeholder25
1while_while_cond_2260900___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ќL
ф

lstm_152_while_body_2259010.
*lstm_152_while_lstm_152_while_loop_counter4
0lstm_152_while_lstm_152_while_maximum_iterations
lstm_152_while_placeholder 
lstm_152_while_placeholder_1 
lstm_152_while_placeholder_2 
lstm_152_while_placeholder_3-
)lstm_152_while_lstm_152_strided_slice_1_0i
elstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0:@Q
?lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0:@L
>lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0:@
lstm_152_while_identity
lstm_152_while_identity_1
lstm_152_while_identity_2
lstm_152_while_identity_3
lstm_152_while_identity_4
lstm_152_while_identity_5+
'lstm_152_while_lstm_152_strided_slice_1g
clstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensorM
;lstm_152_while_lstm_cell_152_matmul_readvariableop_resource:@O
=lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource:@J
<lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐ3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpҐ2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpҐ4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp’
@lstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2B
@lstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shapeЙ
2lstm_152/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensor_0lstm_152_while_placeholderIlstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype024
2lstm_152/while/TensorArrayV2Read/TensorListGetItemж
2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp=lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpэ
#lstm_152/while/lstm_cell_152/MatMulMatMul9lstm_152/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_152/while/lstm_cell_152/MatMulм
4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp?lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOpж
%lstm_152/while/lstm_cell_152/MatMul_1MatMullstm_152_while_placeholder_2<lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%lstm_152/while/lstm_cell_152/MatMul_1я
 lstm_152/while/lstm_cell_152/addAddV2-lstm_152/while/lstm_cell_152/MatMul:product:0/lstm_152/while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 lstm_152/while/lstm_cell_152/addе
3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp>lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpм
$lstm_152/while/lstm_cell_152/BiasAddBiasAdd$lstm_152/while/lstm_cell_152/add:z:0;lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$lstm_152/while/lstm_cell_152/BiasAddЮ
,lstm_152/while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_152/while/lstm_cell_152/split/split_dim≥
"lstm_152/while/lstm_cell_152/splitSplit5lstm_152/while/lstm_cell_152/split/split_dim:output:0-lstm_152/while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2$
"lstm_152/while/lstm_cell_152/splitґ
$lstm_152/while/lstm_cell_152/SigmoidSigmoid+lstm_152/while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2&
$lstm_152/while/lstm_cell_152/SigmoidЇ
&lstm_152/while/lstm_cell_152/Sigmoid_1Sigmoid+lstm_152/while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_152/while/lstm_cell_152/Sigmoid_1«
 lstm_152/while/lstm_cell_152/mulMul*lstm_152/while/lstm_cell_152/Sigmoid_1:y:0lstm_152_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_152/while/lstm_cell_152/mul≠
!lstm_152/while/lstm_cell_152/ReluRelu+lstm_152/while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2#
!lstm_152/while/lstm_cell_152/Relu№
"lstm_152/while/lstm_cell_152/mul_1Mul(lstm_152/while/lstm_cell_152/Sigmoid:y:0/lstm_152/while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_152/while/lstm_cell_152/mul_1—
"lstm_152/while/lstm_cell_152/add_1AddV2$lstm_152/while/lstm_cell_152/mul:z:0&lstm_152/while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_152/while/lstm_cell_152/add_1Ї
&lstm_152/while/lstm_cell_152/Sigmoid_2Sigmoid+lstm_152/while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_152/while/lstm_cell_152/Sigmoid_2ђ
#lstm_152/while/lstm_cell_152/Relu_1Relu&lstm_152/while/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#lstm_152/while/lstm_cell_152/Relu_1а
"lstm_152/while/lstm_cell_152/mul_2Mul*lstm_152/while/lstm_cell_152/Sigmoid_2:y:01lstm_152/while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_152/while/lstm_cell_152/mul_2О
3lstm_152/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_152_while_placeholder_1lstm_152_while_placeholder&lstm_152/while/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_152/while/TensorArrayV2Write/TensorListSetItemn
lstm_152/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/while/add/yН
lstm_152/while/addAddV2lstm_152_while_placeholderlstm_152/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_152/while/addr
lstm_152/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/while/add_1/y£
lstm_152/while/add_1AddV2*lstm_152_while_lstm_152_while_loop_counterlstm_152/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_152/while/add_1П
lstm_152/while/IdentityIdentitylstm_152/while/add_1:z:0^lstm_152/while/NoOp*
T0*
_output_shapes
: 2
lstm_152/while/IdentityЂ
lstm_152/while/Identity_1Identity0lstm_152_while_lstm_152_while_maximum_iterations^lstm_152/while/NoOp*
T0*
_output_shapes
: 2
lstm_152/while/Identity_1С
lstm_152/while/Identity_2Identitylstm_152/while/add:z:0^lstm_152/while/NoOp*
T0*
_output_shapes
: 2
lstm_152/while/Identity_2Њ
lstm_152/while/Identity_3IdentityClstm_152/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_152/while/NoOp*
T0*
_output_shapes
: 2
lstm_152/while/Identity_3≤
lstm_152/while/Identity_4Identity&lstm_152/while/lstm_cell_152/mul_2:z:0^lstm_152/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/while/Identity_4≤
lstm_152/while/Identity_5Identity&lstm_152/while/lstm_cell_152/add_1:z:0^lstm_152/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/while/Identity_5О
lstm_152/while/NoOpNoOp4^lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp3^lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp5^lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_152/while/NoOp";
lstm_152_while_identity lstm_152/while/Identity:output:0"?
lstm_152_while_identity_1"lstm_152/while/Identity_1:output:0"?
lstm_152_while_identity_2"lstm_152/while/Identity_2:output:0"?
lstm_152_while_identity_3"lstm_152/while/Identity_3:output:0"?
lstm_152_while_identity_4"lstm_152/while/Identity_4:output:0"?
lstm_152_while_identity_5"lstm_152/while/Identity_5:output:0"T
'lstm_152_while_lstm_152_strided_slice_1)lstm_152_while_lstm_152_strided_slice_1_0"~
<lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource>lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0"А
=lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource?lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0"|
;lstm_152_while_lstm_cell_152_matmul_readvariableop_resource=lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0"ћ
clstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensorelstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2j
3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp2h
2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp2l
4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
™\
†
E__inference_lstm_150_layer_call_and_return_conditional_losses_2257801

inputs>
,lstm_cell_150_matmul_readvariableop_resource:@@
.lstm_cell_150_matmul_1_readvariableop_resource:@;
-lstm_cell_150_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_150/BiasAdd/ReadVariableOpҐ#lstm_cell_150/MatMul/ReadVariableOpҐ%lstm_cell_150/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_150/MatMul/ReadVariableOpѓ
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMulљ
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_150/MatMul_1/ReadVariableOpЂ
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMul_1£
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/addґ
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_150/BiasAdd/ReadVariableOp∞
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/BiasAddА
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_150/split/split_dimч
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_150/splitЙ
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/SigmoidН
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_1О
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mulА
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu†
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_1Х
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/add_1Н
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_2
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu_1§
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2257717*
condR
while_cond_2257716*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓ
і
*__inference_lstm_150_layer_call_fn_2259171

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_150_layer_call_and_return_conditional_losses_22567032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Д
ч
F__inference_dense_112_layer_call_and_return_conditional_losses_2261183

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѓ
g
H__inference_dropout_226_layer_call_and_return_conditional_losses_2257242

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
й

ь
lstm_152_while_cond_2258525.
*lstm_152_while_lstm_152_while_loop_counter4
0lstm_152_while_lstm_152_while_maximum_iterations
lstm_152_while_placeholder 
lstm_152_while_placeholder_1 
lstm_152_while_placeholder_2 
lstm_152_while_placeholder_30
,lstm_152_while_less_lstm_152_strided_slice_1G
Clstm_152_while_lstm_152_while_cond_2258525___redundant_placeholder0G
Clstm_152_while_lstm_152_while_cond_2258525___redundant_placeholder1G
Clstm_152_while_lstm_152_while_cond_2258525___redundant_placeholder2G
Clstm_152_while_lstm_152_while_cond_2258525___redundant_placeholder3
lstm_152_while_identity
Э
lstm_152/while/LessLesslstm_152_while_placeholder,lstm_152_while_less_lstm_152_strided_slice_1*
T0*
_output_shapes
: 2
lstm_152/while/Lessx
lstm_152/while/IdentityIdentitylstm_152/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_152/while/Identity";
lstm_152_while_identity lstm_152/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
в?
‘
while_body_2260075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_151_matmul_readvariableop_resource_0:@H
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_151_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_151_matmul_readvariableop_resource:@F
4while_lstm_cell_151_matmul_1_readvariableop_resource:@A
3while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_151/BiasAdd/ReadVariableOpҐ)while/lstm_cell_151/MatMul/ReadVariableOpҐ+while/lstm_cell_151/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_151/MatMul/ReadVariableOpў
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul—
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_151/MatMul_1/ReadVariableOp¬
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul_1ї
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/add 
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_151/BiasAdd/ReadVariableOp»
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/BiasAddМ
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_151/split/split_dimП
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_151/splitЫ
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/SigmoidЯ
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_1£
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mulТ
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/ReluЄ
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_1≠
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/add_1Я
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_2С
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Relu_1Љ
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
й\
Ґ
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260008
inputs_0>
,lstm_cell_151_matmul_readvariableop_resource:@@
.lstm_cell_151_matmul_1_readvariableop_resource:@;
-lstm_cell_151_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_151/BiasAdd/ReadVariableOpҐ#lstm_cell_151/MatMul/ReadVariableOpҐ%lstm_cell_151/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_151/MatMul/ReadVariableOpѓ
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMulљ
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_151/MatMul_1/ReadVariableOpЂ
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMul_1£
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/addґ
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_151/BiasAdd/ReadVariableOp∞
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/BiasAddА
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_151/split/split_dimч
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_151/splitЙ
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/SigmoidН
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_1О
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mulА
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu†
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_1Х
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/add_1Н
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_2
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu_1§
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2259924*
condR
while_cond_2259923*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
в?
‘
while_body_2256949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:@H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:@F
4while_lstm_cell_152_matmul_1_readvariableop_resource:@A
3while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_152/BiasAdd/ReadVariableOpҐ)while/lstm_cell_152/MatMul/ReadVariableOpҐ+while/lstm_cell_152/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_152/MatMul/ReadVariableOpў
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul—
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_152/MatMul_1/ReadVariableOp¬
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul_1ї
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/add 
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_152/BiasAdd/ReadVariableOp»
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/BiasAddМ
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_152/split/split_dimП
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_152/splitЫ
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/SigmoidЯ
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_1£
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mulТ
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/ReluЄ
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_1≠
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/add_1Я
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_2С
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Relu_1Љ
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
О
Ф
)sequential_38_lstm_150_while_cond_2254252J
Fsequential_38_lstm_150_while_sequential_38_lstm_150_while_loop_counterP
Lsequential_38_lstm_150_while_sequential_38_lstm_150_while_maximum_iterations,
(sequential_38_lstm_150_while_placeholder.
*sequential_38_lstm_150_while_placeholder_1.
*sequential_38_lstm_150_while_placeholder_2.
*sequential_38_lstm_150_while_placeholder_3L
Hsequential_38_lstm_150_while_less_sequential_38_lstm_150_strided_slice_1c
_sequential_38_lstm_150_while_sequential_38_lstm_150_while_cond_2254252___redundant_placeholder0c
_sequential_38_lstm_150_while_sequential_38_lstm_150_while_cond_2254252___redundant_placeholder1c
_sequential_38_lstm_150_while_sequential_38_lstm_150_while_cond_2254252___redundant_placeholder2c
_sequential_38_lstm_150_while_sequential_38_lstm_150_while_cond_2254252___redundant_placeholder3)
%sequential_38_lstm_150_while_identity
г
!sequential_38/lstm_150/while/LessLess(sequential_38_lstm_150_while_placeholderHsequential_38_lstm_150_while_less_sequential_38_lstm_150_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_38/lstm_150/while/LessҐ
%sequential_38/lstm_150/while/IdentityIdentity%sequential_38/lstm_150/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_38/lstm_150/while/Identity"W
%sequential_38_lstm_150_while_identity.sequential_38/lstm_150/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ќL
ф

lstm_152_while_body_2258526.
*lstm_152_while_lstm_152_while_loop_counter4
0lstm_152_while_lstm_152_while_maximum_iterations
lstm_152_while_placeholder 
lstm_152_while_placeholder_1 
lstm_152_while_placeholder_2 
lstm_152_while_placeholder_3-
)lstm_152_while_lstm_152_strided_slice_1_0i
elstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0:@Q
?lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0:@L
>lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0:@
lstm_152_while_identity
lstm_152_while_identity_1
lstm_152_while_identity_2
lstm_152_while_identity_3
lstm_152_while_identity_4
lstm_152_while_identity_5+
'lstm_152_while_lstm_152_strided_slice_1g
clstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensorM
;lstm_152_while_lstm_cell_152_matmul_readvariableop_resource:@O
=lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource:@J
<lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐ3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpҐ2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpҐ4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp’
@lstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2B
@lstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shapeЙ
2lstm_152/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensor_0lstm_152_while_placeholderIlstm_152/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype024
2lstm_152/while/TensorArrayV2Read/TensorListGetItemж
2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp=lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOpэ
#lstm_152/while/lstm_cell_152/MatMulMatMul9lstm_152/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_152/while/lstm_cell_152/MatMulм
4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp?lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOpж
%lstm_152/while/lstm_cell_152/MatMul_1MatMullstm_152_while_placeholder_2<lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%lstm_152/while/lstm_cell_152/MatMul_1я
 lstm_152/while/lstm_cell_152/addAddV2-lstm_152/while/lstm_cell_152/MatMul:product:0/lstm_152/while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 lstm_152/while/lstm_cell_152/addе
3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp>lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOpм
$lstm_152/while/lstm_cell_152/BiasAddBiasAdd$lstm_152/while/lstm_cell_152/add:z:0;lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$lstm_152/while/lstm_cell_152/BiasAddЮ
,lstm_152/while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_152/while/lstm_cell_152/split/split_dim≥
"lstm_152/while/lstm_cell_152/splitSplit5lstm_152/while/lstm_cell_152/split/split_dim:output:0-lstm_152/while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2$
"lstm_152/while/lstm_cell_152/splitґ
$lstm_152/while/lstm_cell_152/SigmoidSigmoid+lstm_152/while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2&
$lstm_152/while/lstm_cell_152/SigmoidЇ
&lstm_152/while/lstm_cell_152/Sigmoid_1Sigmoid+lstm_152/while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_152/while/lstm_cell_152/Sigmoid_1«
 lstm_152/while/lstm_cell_152/mulMul*lstm_152/while/lstm_cell_152/Sigmoid_1:y:0lstm_152_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_152/while/lstm_cell_152/mul≠
!lstm_152/while/lstm_cell_152/ReluRelu+lstm_152/while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2#
!lstm_152/while/lstm_cell_152/Relu№
"lstm_152/while/lstm_cell_152/mul_1Mul(lstm_152/while/lstm_cell_152/Sigmoid:y:0/lstm_152/while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_152/while/lstm_cell_152/mul_1—
"lstm_152/while/lstm_cell_152/add_1AddV2$lstm_152/while/lstm_cell_152/mul:z:0&lstm_152/while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_152/while/lstm_cell_152/add_1Ї
&lstm_152/while/lstm_cell_152/Sigmoid_2Sigmoid+lstm_152/while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_152/while/lstm_cell_152/Sigmoid_2ђ
#lstm_152/while/lstm_cell_152/Relu_1Relu&lstm_152/while/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#lstm_152/while/lstm_cell_152/Relu_1а
"lstm_152/while/lstm_cell_152/mul_2Mul*lstm_152/while/lstm_cell_152/Sigmoid_2:y:01lstm_152/while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_152/while/lstm_cell_152/mul_2О
3lstm_152/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_152_while_placeholder_1lstm_152_while_placeholder&lstm_152/while/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_152/while/TensorArrayV2Write/TensorListSetItemn
lstm_152/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/while/add/yН
lstm_152/while/addAddV2lstm_152_while_placeholderlstm_152/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_152/while/addr
lstm_152/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/while/add_1/y£
lstm_152/while/add_1AddV2*lstm_152_while_lstm_152_while_loop_counterlstm_152/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_152/while/add_1П
lstm_152/while/IdentityIdentitylstm_152/while/add_1:z:0^lstm_152/while/NoOp*
T0*
_output_shapes
: 2
lstm_152/while/IdentityЂ
lstm_152/while/Identity_1Identity0lstm_152_while_lstm_152_while_maximum_iterations^lstm_152/while/NoOp*
T0*
_output_shapes
: 2
lstm_152/while/Identity_1С
lstm_152/while/Identity_2Identitylstm_152/while/add:z:0^lstm_152/while/NoOp*
T0*
_output_shapes
: 2
lstm_152/while/Identity_2Њ
lstm_152/while/Identity_3IdentityClstm_152/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_152/while/NoOp*
T0*
_output_shapes
: 2
lstm_152/while/Identity_3≤
lstm_152/while/Identity_4Identity&lstm_152/while/lstm_cell_152/mul_2:z:0^lstm_152/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/while/Identity_4≤
lstm_152/while/Identity_5Identity&lstm_152/while/lstm_cell_152/add_1:z:0^lstm_152/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/while/Identity_5О
lstm_152/while/NoOpNoOp4^lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp3^lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp5^lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_152/while/NoOp";
lstm_152_while_identity lstm_152/while/Identity:output:0"?
lstm_152_while_identity_1"lstm_152/while/Identity_1:output:0"?
lstm_152_while_identity_2"lstm_152/while/Identity_2:output:0"?
lstm_152_while_identity_3"lstm_152/while/Identity_3:output:0"?
lstm_152_while_identity_4"lstm_152/while/Identity_4:output:0"?
lstm_152_while_identity_5"lstm_152/while/Identity_5:output:0"T
'lstm_152_while_lstm_152_strided_slice_1)lstm_152_while_lstm_152_strided_slice_1_0"~
<lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource>lstm_152_while_lstm_cell_152_biasadd_readvariableop_resource_0"А
=lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource?lstm_152_while_lstm_cell_152_matmul_1_readvariableop_resource_0"|
;lstm_152_while_lstm_cell_152_matmul_readvariableop_resource=lstm_152_while_lstm_cell_152_matmul_readvariableop_resource_0"ћ
clstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensorelstm_152_while_tensorarrayv2read_tensorlistgetitem_lstm_152_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2j
3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp3lstm_152/while/lstm_cell_152/BiasAdd/ReadVariableOp2h
2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp2lstm_152/while/lstm_cell_152/MatMul/ReadVariableOp2l
4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp4lstm_152/while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
й

ь
lstm_152_while_cond_2259009.
*lstm_152_while_lstm_152_while_loop_counter4
0lstm_152_while_lstm_152_while_maximum_iterations
lstm_152_while_placeholder 
lstm_152_while_placeholder_1 
lstm_152_while_placeholder_2 
lstm_152_while_placeholder_30
,lstm_152_while_less_lstm_152_strided_slice_1G
Clstm_152_while_lstm_152_while_cond_2259009___redundant_placeholder0G
Clstm_152_while_lstm_152_while_cond_2259009___redundant_placeholder1G
Clstm_152_while_lstm_152_while_cond_2259009___redundant_placeholder2G
Clstm_152_while_lstm_152_while_cond_2259009___redundant_placeholder3
lstm_152_while_identity
Э
lstm_152/while/LessLesslstm_152_while_placeholder,lstm_152_while_less_lstm_152_strided_slice_1*
T0*
_output_shapes
: 2
lstm_152/while/Lessx
lstm_152/while/IdentityIdentitylstm_152/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_152/while/Identity";
lstm_152_while_identity lstm_152/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
в?
‘
while_body_2261052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:@H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:@F
4while_lstm_cell_152_matmul_1_readvariableop_resource:@A
3while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_152/BiasAdd/ReadVariableOpҐ)while/lstm_cell_152/MatMul/ReadVariableOpҐ+while/lstm_cell_152/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_152/MatMul/ReadVariableOpў
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul—
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_152/MatMul_1/ReadVariableOp¬
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul_1ї
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/add 
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_152/BiasAdd/ReadVariableOp»
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/BiasAddМ
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_152/split/split_dimП
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_152/splitЫ
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/SigmoidЯ
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_1£
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mulТ
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/ReluЄ
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_1≠
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/add_1Я
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_2С
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Relu_1Љ
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
х
f
H__inference_dropout_228_layer_call_and_return_conditional_losses_2261245

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ґF
Л
E__inference_lstm_152_layer_call_and_return_conditional_losses_2256074

inputs'
lstm_cell_152_2255992:@'
lstm_cell_152_2255994:@#
lstm_cell_152_2255996:@
identityИҐ%lstm_cell_152/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2І
%lstm_cell_152/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_152_2255992lstm_cell_152_2255994lstm_cell_152_2255996*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_22559912'
%lstm_cell_152/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter»
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_152_2255992lstm_cell_152_2255994lstm_cell_152_2255996*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2256005*
condR
while_cond_2256004*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity~
NoOpNoOp&^lstm_cell_152/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2N
%lstm_cell_152/StatefulPartitionedCall%lstm_cell_152/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѓ\
†
E__inference_lstm_152_layer_call_and_return_conditional_losses_2261136

inputs>
,lstm_cell_152_matmul_readvariableop_resource:@@
.lstm_cell_152_matmul_1_readvariableop_resource:@;
-lstm_cell_152_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_152/BiasAdd/ReadVariableOpҐ#lstm_cell_152/MatMul/ReadVariableOpҐ%lstm_cell_152/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_152/MatMul/ReadVariableOpѓ
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMulљ
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_152/MatMul_1/ReadVariableOpЂ
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMul_1£
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/addґ
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_152/BiasAdd/ReadVariableOp∞
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/BiasAddА
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_152/split/split_dimч
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_152/splitЙ
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/SigmoidН
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_1О
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mulА
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu†
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_1Х
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/add_1Н
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_2
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu_1§
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2261052*
condR
while_cond_2261051*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ј
х
/__inference_lstm_cell_152_layer_call_fn_2261489

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_22559912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
Ј
х
/__inference_lstm_cell_151_layer_call_fn_2261408

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_22555072
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
ѕ
g
H__inference_dropout_224_layer_call_and_return_conditional_losses_2259813

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЄ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/y¬
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqualГ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь%
л
while_body_2256005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_152_2256029_0:@/
while_lstm_cell_152_2256031_0:@+
while_lstm_cell_152_2256033_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_152_2256029:@-
while_lstm_cell_152_2256031:@)
while_lstm_cell_152_2256033:@ИҐ+while/lstm_cell_152/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
+while/lstm_cell_152/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_152_2256029_0while_lstm_cell_152_2256031_0while_lstm_cell_152_2256033_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_22559912-
+while/lstm_cell_152/StatefulPartitionedCallш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_152/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3•
while/Identity_4Identity4while/lstm_cell_152/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4•
while/Identity_5Identity4while/lstm_cell_152/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5И

while/NoOpNoOp,^while/lstm_cell_152/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_152_2256029while_lstm_cell_152_2256029_0"<
while_lstm_cell_152_2256031while_lstm_cell_152_2256031_0"<
while_lstm_cell_152_2256033while_lstm_cell_152_2256033_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Z
+while/lstm_cell_152/StatefulPartitionedCall+while/lstm_cell_152/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
‘
I
-__inference_dropout_225_layer_call_fn_2260466

inputs
identity 
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_225_layer_call_and_return_conditional_losses_22568812
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ќL
ф

lstm_151_while_body_2258855.
*lstm_151_while_lstm_151_while_loop_counter4
0lstm_151_while_lstm_151_while_maximum_iterations
lstm_151_while_placeholder 
lstm_151_while_placeholder_1 
lstm_151_while_placeholder_2 
lstm_151_while_placeholder_3-
)lstm_151_while_lstm_151_strided_slice_1_0i
elstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0:@Q
?lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0:@L
>lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0:@
lstm_151_while_identity
lstm_151_while_identity_1
lstm_151_while_identity_2
lstm_151_while_identity_3
lstm_151_while_identity_4
lstm_151_while_identity_5+
'lstm_151_while_lstm_151_strided_slice_1g
clstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensorM
;lstm_151_while_lstm_cell_151_matmul_readvariableop_resource:@O
=lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource:@J
<lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐ3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpҐ2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpҐ4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp’
@lstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2B
@lstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shapeЙ
2lstm_151/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensor_0lstm_151_while_placeholderIlstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype024
2lstm_151/while/TensorArrayV2Read/TensorListGetItemж
2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp=lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpэ
#lstm_151/while/lstm_cell_151/MatMulMatMul9lstm_151/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_151/while/lstm_cell_151/MatMulм
4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp?lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOpж
%lstm_151/while/lstm_cell_151/MatMul_1MatMullstm_151_while_placeholder_2<lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%lstm_151/while/lstm_cell_151/MatMul_1я
 lstm_151/while/lstm_cell_151/addAddV2-lstm_151/while/lstm_cell_151/MatMul:product:0/lstm_151/while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 lstm_151/while/lstm_cell_151/addе
3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp>lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpм
$lstm_151/while/lstm_cell_151/BiasAddBiasAdd$lstm_151/while/lstm_cell_151/add:z:0;lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$lstm_151/while/lstm_cell_151/BiasAddЮ
,lstm_151/while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_151/while/lstm_cell_151/split/split_dim≥
"lstm_151/while/lstm_cell_151/splitSplit5lstm_151/while/lstm_cell_151/split/split_dim:output:0-lstm_151/while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2$
"lstm_151/while/lstm_cell_151/splitґ
$lstm_151/while/lstm_cell_151/SigmoidSigmoid+lstm_151/while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2&
$lstm_151/while/lstm_cell_151/SigmoidЇ
&lstm_151/while/lstm_cell_151/Sigmoid_1Sigmoid+lstm_151/while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_151/while/lstm_cell_151/Sigmoid_1«
 lstm_151/while/lstm_cell_151/mulMul*lstm_151/while/lstm_cell_151/Sigmoid_1:y:0lstm_151_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_151/while/lstm_cell_151/mul≠
!lstm_151/while/lstm_cell_151/ReluRelu+lstm_151/while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2#
!lstm_151/while/lstm_cell_151/Relu№
"lstm_151/while/lstm_cell_151/mul_1Mul(lstm_151/while/lstm_cell_151/Sigmoid:y:0/lstm_151/while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_151/while/lstm_cell_151/mul_1—
"lstm_151/while/lstm_cell_151/add_1AddV2$lstm_151/while/lstm_cell_151/mul:z:0&lstm_151/while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_151/while/lstm_cell_151/add_1Ї
&lstm_151/while/lstm_cell_151/Sigmoid_2Sigmoid+lstm_151/while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_151/while/lstm_cell_151/Sigmoid_2ђ
#lstm_151/while/lstm_cell_151/Relu_1Relu&lstm_151/while/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#lstm_151/while/lstm_cell_151/Relu_1а
"lstm_151/while/lstm_cell_151/mul_2Mul*lstm_151/while/lstm_cell_151/Sigmoid_2:y:01lstm_151/while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_151/while/lstm_cell_151/mul_2О
3lstm_151/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_151_while_placeholder_1lstm_151_while_placeholder&lstm_151/while/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_151/while/TensorArrayV2Write/TensorListSetItemn
lstm_151/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/while/add/yН
lstm_151/while/addAddV2lstm_151_while_placeholderlstm_151/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_151/while/addr
lstm_151/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/while/add_1/y£
lstm_151/while/add_1AddV2*lstm_151_while_lstm_151_while_loop_counterlstm_151/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_151/while/add_1П
lstm_151/while/IdentityIdentitylstm_151/while/add_1:z:0^lstm_151/while/NoOp*
T0*
_output_shapes
: 2
lstm_151/while/IdentityЂ
lstm_151/while/Identity_1Identity0lstm_151_while_lstm_151_while_maximum_iterations^lstm_151/while/NoOp*
T0*
_output_shapes
: 2
lstm_151/while/Identity_1С
lstm_151/while/Identity_2Identitylstm_151/while/add:z:0^lstm_151/while/NoOp*
T0*
_output_shapes
: 2
lstm_151/while/Identity_2Њ
lstm_151/while/Identity_3IdentityClstm_151/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_151/while/NoOp*
T0*
_output_shapes
: 2
lstm_151/while/Identity_3≤
lstm_151/while/Identity_4Identity&lstm_151/while/lstm_cell_151/mul_2:z:0^lstm_151/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/while/Identity_4≤
lstm_151/while/Identity_5Identity&lstm_151/while/lstm_cell_151/add_1:z:0^lstm_151/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/while/Identity_5О
lstm_151/while/NoOpNoOp4^lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp3^lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp5^lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_151/while/NoOp";
lstm_151_while_identity lstm_151/while/Identity:output:0"?
lstm_151_while_identity_1"lstm_151/while/Identity_1:output:0"?
lstm_151_while_identity_2"lstm_151/while/Identity_2:output:0"?
lstm_151_while_identity_3"lstm_151/while/Identity_3:output:0"?
lstm_151_while_identity_4"lstm_151/while/Identity_4:output:0"?
lstm_151_while_identity_5"lstm_151/while/Identity_5:output:0"T
'lstm_151_while_lstm_151_strided_slice_1)lstm_151_while_lstm_151_strided_slice_1_0"~
<lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource>lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0"А
=lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource?lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0"|
;lstm_151_while_lstm_cell_151_matmul_readvariableop_resource=lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0"ћ
clstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensorelstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2j
3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp2h
2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp2l
4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Џ
»
while_cond_2259701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2259701___redundant_placeholder05
1while_while_cond_2259701___redundant_placeholder15
1while_while_cond_2259701___redundant_placeholder25
1while_while_cond_2259701___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Џ
»
while_cond_2256618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2256618___redundant_placeholder05
1while_while_cond_2256618___redundant_placeholder15
1while_while_cond_2256618___redundant_placeholder25
1while_while_cond_2256618___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
в?
‘
while_body_2256619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_150_matmul_readvariableop_resource_0:@H
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_150_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_150_matmul_readvariableop_resource:@F
4while_lstm_cell_150_matmul_1_readvariableop_resource:@A
3while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_150/BiasAdd/ReadVariableOpҐ)while/lstm_cell_150/MatMul/ReadVariableOpҐ+while/lstm_cell_150/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_150/MatMul/ReadVariableOpў
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul—
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_150/MatMul_1/ReadVariableOp¬
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul_1ї
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/add 
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_150/BiasAdd/ReadVariableOp»
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/BiasAddМ
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_150/split/split_dimП
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_150/splitЫ
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/SigmoidЯ
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_1£
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mulТ
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/ReluЄ
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_1≠
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/add_1Я
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_2С
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Relu_1Љ
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ѓ\
†
E__inference_lstm_152_layer_call_and_return_conditional_losses_2257033

inputs>
,lstm_cell_152_matmul_readvariableop_resource:@@
.lstm_cell_152_matmul_1_readvariableop_resource:@;
-lstm_cell_152_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_152/BiasAdd/ReadVariableOpҐ#lstm_cell_152/MatMul/ReadVariableOpҐ%lstm_cell_152/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_152/MatMul/ReadVariableOpѓ
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMulљ
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_152/MatMul_1/ReadVariableOpЂ
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMul_1£
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/addґ
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_152/BiasAdd/ReadVariableOp∞
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/BiasAddА
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_152/split/split_dimч
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_152/splitЙ
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/SigmoidН
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_1О
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mulА
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu†
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_1Х
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/add_1Н
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_2
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu_1§
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2256949*
condR
while_cond_2256948*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2256948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2256948___redundant_placeholder05
1while_while_cond_2256948___redundant_placeholder15
1while_while_cond_2256948___redundant_placeholder25
1while_while_cond_2256948___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Џ
»
while_cond_2256214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2256214___redundant_placeholder05
1while_while_cond_2256214___redundant_placeholder15
1while_while_cond_2256214___redundant_placeholder25
1while_while_cond_2256214___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
в?
‘
while_body_2260599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:@H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:@F
4while_lstm_cell_152_matmul_1_readvariableop_resource:@A
3while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_152/BiasAdd/ReadVariableOpҐ)while/lstm_cell_152/MatMul/ReadVariableOpҐ+while/lstm_cell_152/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_152/MatMul/ReadVariableOpў
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul—
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_152/MatMul_1/ReadVariableOp¬
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul_1ї
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/add 
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_152/BiasAdd/ReadVariableOp»
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/BiasAddМ
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_152/split/split_dimП
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_152/splitЫ
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/SigmoidЯ
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_1£
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mulТ
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/ReluЄ
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_1≠
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/add_1Я
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_2С
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Relu_1Љ
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
в?
‘
while_body_2260901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:@H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:@F
4while_lstm_cell_152_matmul_1_readvariableop_resource:@A
3while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_152/BiasAdd/ReadVariableOpҐ)while/lstm_cell_152/MatMul/ReadVariableOpҐ+while/lstm_cell_152/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_152/MatMul/ReadVariableOpў
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul—
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_152/MatMul_1/ReadVariableOp¬
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul_1ї
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/add 
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_152/BiasAdd/ReadVariableOp»
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/BiasAddМ
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_152/split/split_dimП
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_152/splitЫ
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/SigmoidЯ
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_1£
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mulТ
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/ReluЄ
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_1≠
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/add_1Я
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_2С
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Relu_1Љ
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
в?
‘
while_body_2259400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_150_matmul_readvariableop_resource_0:@H
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_150_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_150_matmul_readvariableop_resource:@F
4while_lstm_cell_150_matmul_1_readvariableop_resource:@A
3while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_150/BiasAdd/ReadVariableOpҐ)while/lstm_cell_150/MatMul/ReadVariableOpҐ+while/lstm_cell_150/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_150/MatMul/ReadVariableOpў
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul—
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_150/MatMul_1/ReadVariableOp¬
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul_1ї
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/add 
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_150/BiasAdd/ReadVariableOp»
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/BiasAddМ
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_150/split/split_dimП
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_150/splitЫ
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/SigmoidЯ
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_1£
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mulТ
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/ReluЄ
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_1≠
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/add_1Я
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_2С
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Relu_1Љ
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
л
Г
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_2256137

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
Е
f
H__inference_dropout_225_layer_call_and_return_conditional_losses_2260476

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ё;
Ж
J__inference_sequential_38_layer_call_and_return_conditional_losses_2257892

inputs"
lstm_150_2257850:@"
lstm_150_2257852:@
lstm_150_2257854:@"
lstm_151_2257858:@"
lstm_151_2257860:@
lstm_151_2257862:@"
lstm_152_2257866:@"
lstm_152_2257868:@
lstm_152_2257870:@#
dense_112_2257874:
dense_112_2257876:#
dense_113_2257880:
dense_113_2257882:#
dense_114_2257886:
dense_114_2257888:
identityИҐ!dense_112/StatefulPartitionedCallҐ!dense_113/StatefulPartitionedCallҐ!dense_114/StatefulPartitionedCallҐ#dropout_224/StatefulPartitionedCallҐ#dropout_225/StatefulPartitionedCallҐ#dropout_226/StatefulPartitionedCallҐ#dropout_227/StatefulPartitionedCallҐ#dropout_228/StatefulPartitionedCallҐ lstm_150/StatefulPartitionedCallҐ lstm_151/StatefulPartitionedCallҐ lstm_152/StatefulPartitionedCallѓ
 lstm_150/StatefulPartitionedCallStatefulPartitionedCallinputslstm_150_2257850lstm_150_2257852lstm_150_2257854*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_150_layer_call_and_return_conditional_losses_22578012"
 lstm_150/StatefulPartitionedCallЭ
#dropout_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_150/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_224_layer_call_and_return_conditional_losses_22576342%
#dropout_224/StatefulPartitionedCall’
 lstm_151/StatefulPartitionedCallStatefulPartitionedCall,dropout_224/StatefulPartitionedCall:output:0lstm_151_2257858lstm_151_2257860lstm_151_2257862*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_151_layer_call_and_return_conditional_losses_22576052"
 lstm_151/StatefulPartitionedCall√
#dropout_225/StatefulPartitionedCallStatefulPartitionedCall)lstm_151/StatefulPartitionedCall:output:0$^dropout_224/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_225_layer_call_and_return_conditional_losses_22574382%
#dropout_225/StatefulPartitionedCall—
 lstm_152/StatefulPartitionedCallStatefulPartitionedCall,dropout_225/StatefulPartitionedCall:output:0lstm_152_2257866lstm_152_2257868lstm_152_2257870*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_152_layer_call_and_return_conditional_losses_22574092"
 lstm_152/StatefulPartitionedCallњ
#dropout_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_152/StatefulPartitionedCall:output:0$^dropout_225/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_226_layer_call_and_return_conditional_losses_22572422%
#dropout_226/StatefulPartitionedCall¬
!dense_112/StatefulPartitionedCallStatefulPartitionedCall,dropout_226/StatefulPartitionedCall:output:0dense_112_2257874dense_112_2257876*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_112_layer_call_and_return_conditional_losses_22570592#
!dense_112/StatefulPartitionedCallј
#dropout_227/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0$^dropout_226/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_227_layer_call_and_return_conditional_losses_22572092%
#dropout_227/StatefulPartitionedCall¬
!dense_113/StatefulPartitionedCallStatefulPartitionedCall,dropout_227/StatefulPartitionedCall:output:0dense_113_2257880dense_113_2257882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_22570832#
!dense_113/StatefulPartitionedCallј
#dropout_228/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0$^dropout_227/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_228_layer_call_and_return_conditional_losses_22571762%
#dropout_228/StatefulPartitionedCall¬
!dense_114/StatefulPartitionedCallStatefulPartitionedCall,dropout_228/StatefulPartitionedCall:output:0dense_114_2257886dense_114_2257888*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_22571062#
!dense_114/StatefulPartitionedCallЕ
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityб
NoOpNoOp"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall$^dropout_224/StatefulPartitionedCall$^dropout_225/StatefulPartitionedCall$^dropout_226/StatefulPartitionedCall$^dropout_227/StatefulPartitionedCall$^dropout_228/StatefulPartitionedCall!^lstm_150/StatefulPartitionedCall!^lstm_151/StatefulPartitionedCall!^lstm_152/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2J
#dropout_224/StatefulPartitionedCall#dropout_224/StatefulPartitionedCall2J
#dropout_225/StatefulPartitionedCall#dropout_225/StatefulPartitionedCall2J
#dropout_226/StatefulPartitionedCall#dropout_226/StatefulPartitionedCall2J
#dropout_227/StatefulPartitionedCall#dropout_227/StatefulPartitionedCall2J
#dropout_228/StatefulPartitionedCall#dropout_228/StatefulPartitionedCall2D
 lstm_150/StatefulPartitionedCall lstm_150/StatefulPartitionedCall2D
 lstm_151/StatefulPartitionedCall lstm_151/StatefulPartitionedCall2D
 lstm_152/StatefulPartitionedCall lstm_152/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2260749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2260749___redundant_placeholder05
1while_while_cond_2260749___redundant_placeholder15
1while_while_cond_2260749___redundant_placeholder25
1while_while_cond_2260749___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
у
Е
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_2261538

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
в?
‘
while_body_2260750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:@H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:@F
4while_lstm_cell_152_matmul_1_readvariableop_resource:@A
3while_lstm_cell_152_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_152/BiasAdd/ReadVariableOpҐ)while/lstm_cell_152/MatMul/ReadVariableOpҐ+while/lstm_cell_152/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_152/MatMul/ReadVariableOpў
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul—
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_152/MatMul_1/ReadVariableOp¬
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/MatMul_1ї
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/add 
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_152/BiasAdd/ReadVariableOp»
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_152/BiasAddМ
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_152/split/split_dimП
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_152/splitЫ
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/SigmoidЯ
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_1£
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mulТ
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/ReluЄ
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_1≠
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/add_1Я
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Sigmoid_2С
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/Relu_1Љ
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_152/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ь%
л
while_body_2255585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_151_2255609_0:@/
while_lstm_cell_151_2255611_0:@+
while_lstm_cell_151_2255613_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_151_2255609:@-
while_lstm_cell_151_2255611:@)
while_lstm_cell_151_2255613:@ИҐ+while/lstm_cell_151/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
+while/lstm_cell_151/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_151_2255609_0while_lstm_cell_151_2255611_0while_lstm_cell_151_2255613_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_22555072-
+while/lstm_cell_151/StatefulPartitionedCallш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_151/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3•
while/Identity_4Identity4while/lstm_cell_151/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4•
while/Identity_5Identity4while/lstm_cell_151/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5И

while/NoOpNoOp,^while/lstm_cell_151/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_151_2255609while_lstm_cell_151_2255609_0"<
while_lstm_cell_151_2255611while_lstm_cell_151_2255611_0"<
while_lstm_cell_151_2255613while_lstm_cell_151_2255613_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Z
+while/lstm_cell_151/StatefulPartitionedCall+while/lstm_cell_151/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Ѓ
g
H__inference_dropout_227_layer_call_and_return_conditional_losses_2257209

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ґF
Л
E__inference_lstm_152_layer_call_and_return_conditional_losses_2256284

inputs'
lstm_cell_152_2256202:@'
lstm_cell_152_2256204:@#
lstm_cell_152_2256206:@
identityИҐ%lstm_cell_152/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2І
%lstm_cell_152/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_152_2256202lstm_cell_152_2256204lstm_cell_152_2256206*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_22561372'
%lstm_cell_152/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter»
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_152_2256202lstm_cell_152_2256204lstm_cell_152_2256206*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2256215*
condR
while_cond_2256214*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity~
NoOpNoOp&^lstm_cell_152/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2N
%lstm_cell_152/StatefulPartitionedCall%lstm_cell_152/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѕ
g
H__inference_dropout_225_layer_call_and_return_conditional_losses_2257438

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЄ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/y¬
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqualГ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
®

ч
F__inference_dense_114_layer_call_and_return_conditional_losses_2257106

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь%
л
while_body_2255375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_151_2255399_0:@/
while_lstm_cell_151_2255401_0:@+
while_lstm_cell_151_2255403_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_151_2255399:@-
while_lstm_cell_151_2255401:@)
while_lstm_cell_151_2255403:@ИҐ+while/lstm_cell_151/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
+while/lstm_cell_151/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_151_2255399_0while_lstm_cell_151_2255401_0while_lstm_cell_151_2255403_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_22553612-
+while/lstm_cell_151/StatefulPartitionedCallш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_151/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3•
while/Identity_4Identity4while/lstm_cell_151/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4•
while/Identity_5Identity4while/lstm_cell_151/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5И

while/NoOpNoOp,^while/lstm_cell_151/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_151_2255399while_lstm_cell_151_2255399_0"<
while_lstm_cell_151_2255401while_lstm_cell_151_2255401_0"<
while_lstm_cell_151_2255403while_lstm_cell_151_2255403_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Z
+while/lstm_cell_151/StatefulPartitionedCall+while/lstm_cell_151/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
й\
Ґ
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259484
inputs_0>
,lstm_cell_150_matmul_readvariableop_resource:@@
.lstm_cell_150_matmul_1_readvariableop_resource:@;
-lstm_cell_150_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_150/BiasAdd/ReadVariableOpҐ#lstm_cell_150/MatMul/ReadVariableOpҐ%lstm_cell_150/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_150/MatMul/ReadVariableOpѓ
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMulљ
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_150/MatMul_1/ReadVariableOpЂ
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMul_1£
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/addґ
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_150/BiasAdd/ReadVariableOp∞
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/BiasAddА
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_150/split/split_dimч
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_150/splitЙ
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/SigmoidН
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_1О
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mulА
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu†
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_1Х
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/add_1Н
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_2
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu_1§
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2259400*
condR
while_cond_2259399*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
х
Ш
+__inference_dense_112_layer_call_fn_2261172

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_112_layer_call_and_return_conditional_losses_22570592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓ\
†
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260985

inputs>
,lstm_cell_152_matmul_readvariableop_resource:@@
.lstm_cell_152_matmul_1_readvariableop_resource:@;
-lstm_cell_152_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_152/BiasAdd/ReadVariableOpҐ#lstm_cell_152/MatMul/ReadVariableOpҐ%lstm_cell_152/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_152/MatMul/ReadVariableOpѓ
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMulљ
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_152/MatMul_1/ReadVariableOpЂ
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMul_1£
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/addґ
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_152/BiasAdd/ReadVariableOp∞
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/BiasAddА
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_152/split/split_dimч
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_152/splitЙ
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/SigmoidН
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_1О
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mulА
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu†
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_1Х
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/add_1Н
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_2
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu_1§
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2260901*
condR
while_cond_2260900*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
„ї
ґ
"__inference__wrapped_model_2254656
lstm_150_inputU
Csequential_38_lstm_150_lstm_cell_150_matmul_readvariableop_resource:@W
Esequential_38_lstm_150_lstm_cell_150_matmul_1_readvariableop_resource:@R
Dsequential_38_lstm_150_lstm_cell_150_biasadd_readvariableop_resource:@U
Csequential_38_lstm_151_lstm_cell_151_matmul_readvariableop_resource:@W
Esequential_38_lstm_151_lstm_cell_151_matmul_1_readvariableop_resource:@R
Dsequential_38_lstm_151_lstm_cell_151_biasadd_readvariableop_resource:@U
Csequential_38_lstm_152_lstm_cell_152_matmul_readvariableop_resource:@W
Esequential_38_lstm_152_lstm_cell_152_matmul_1_readvariableop_resource:@R
Dsequential_38_lstm_152_lstm_cell_152_biasadd_readvariableop_resource:@H
6sequential_38_dense_112_matmul_readvariableop_resource:E
7sequential_38_dense_112_biasadd_readvariableop_resource:H
6sequential_38_dense_113_matmul_readvariableop_resource:E
7sequential_38_dense_113_biasadd_readvariableop_resource:H
6sequential_38_dense_114_matmul_readvariableop_resource:E
7sequential_38_dense_114_biasadd_readvariableop_resource:
identityИҐ.sequential_38/dense_112/BiasAdd/ReadVariableOpҐ-sequential_38/dense_112/MatMul/ReadVariableOpҐ.sequential_38/dense_113/BiasAdd/ReadVariableOpҐ-sequential_38/dense_113/MatMul/ReadVariableOpҐ.sequential_38/dense_114/BiasAdd/ReadVariableOpҐ-sequential_38/dense_114/MatMul/ReadVariableOpҐ;sequential_38/lstm_150/lstm_cell_150/BiasAdd/ReadVariableOpҐ:sequential_38/lstm_150/lstm_cell_150/MatMul/ReadVariableOpҐ<sequential_38/lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpҐsequential_38/lstm_150/whileҐ;sequential_38/lstm_151/lstm_cell_151/BiasAdd/ReadVariableOpҐ:sequential_38/lstm_151/lstm_cell_151/MatMul/ReadVariableOpҐ<sequential_38/lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpҐsequential_38/lstm_151/whileҐ;sequential_38/lstm_152/lstm_cell_152/BiasAdd/ReadVariableOpҐ:sequential_38/lstm_152/lstm_cell_152/MatMul/ReadVariableOpҐ<sequential_38/lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpҐsequential_38/lstm_152/whilez
sequential_38/lstm_150/ShapeShapelstm_150_input*
T0*
_output_shapes
:2
sequential_38/lstm_150/ShapeҐ
*sequential_38/lstm_150/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_38/lstm_150/strided_slice/stack¶
,sequential_38/lstm_150/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_38/lstm_150/strided_slice/stack_1¶
,sequential_38/lstm_150/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_38/lstm_150/strided_slice/stack_2м
$sequential_38/lstm_150/strided_sliceStridedSlice%sequential_38/lstm_150/Shape:output:03sequential_38/lstm_150/strided_slice/stack:output:05sequential_38/lstm_150/strided_slice/stack_1:output:05sequential_38/lstm_150/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_38/lstm_150/strided_sliceК
"sequential_38/lstm_150/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_38/lstm_150/zeros/mul/y»
 sequential_38/lstm_150/zeros/mulMul-sequential_38/lstm_150/strided_slice:output:0+sequential_38/lstm_150/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_38/lstm_150/zeros/mulН
#sequential_38/lstm_150/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2%
#sequential_38/lstm_150/zeros/Less/y√
!sequential_38/lstm_150/zeros/LessLess$sequential_38/lstm_150/zeros/mul:z:0,sequential_38/lstm_150/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_38/lstm_150/zeros/LessР
%sequential_38/lstm_150/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_38/lstm_150/zeros/packed/1я
#sequential_38/lstm_150/zeros/packedPack-sequential_38/lstm_150/strided_slice:output:0.sequential_38/lstm_150/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_38/lstm_150/zeros/packedН
"sequential_38/lstm_150/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_38/lstm_150/zeros/Const—
sequential_38/lstm_150/zerosFill,sequential_38/lstm_150/zeros/packed:output:0+sequential_38/lstm_150/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/lstm_150/zerosО
$sequential_38/lstm_150/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_38/lstm_150/zeros_1/mul/yќ
"sequential_38/lstm_150/zeros_1/mulMul-sequential_38/lstm_150/strided_slice:output:0-sequential_38/lstm_150/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_38/lstm_150/zeros_1/mulС
%sequential_38/lstm_150/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2'
%sequential_38/lstm_150/zeros_1/Less/yЋ
#sequential_38/lstm_150/zeros_1/LessLess&sequential_38/lstm_150/zeros_1/mul:z:0.sequential_38/lstm_150/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_38/lstm_150/zeros_1/LessФ
'sequential_38/lstm_150/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_38/lstm_150/zeros_1/packed/1е
%sequential_38/lstm_150/zeros_1/packedPack-sequential_38/lstm_150/strided_slice:output:00sequential_38/lstm_150/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_38/lstm_150/zeros_1/packedС
$sequential_38/lstm_150/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_38/lstm_150/zeros_1/Constў
sequential_38/lstm_150/zeros_1Fill.sequential_38/lstm_150/zeros_1/packed:output:0-sequential_38/lstm_150/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_38/lstm_150/zeros_1£
%sequential_38/lstm_150/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_38/lstm_150/transpose/perm«
 sequential_38/lstm_150/transpose	Transposelstm_150_input.sequential_38/lstm_150/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"
 sequential_38/lstm_150/transposeФ
sequential_38/lstm_150/Shape_1Shape$sequential_38/lstm_150/transpose:y:0*
T0*
_output_shapes
:2 
sequential_38/lstm_150/Shape_1¶
,sequential_38/lstm_150/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_38/lstm_150/strided_slice_1/stack™
.sequential_38/lstm_150/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_150/strided_slice_1/stack_1™
.sequential_38/lstm_150/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_150/strided_slice_1/stack_2ш
&sequential_38/lstm_150/strided_slice_1StridedSlice'sequential_38/lstm_150/Shape_1:output:05sequential_38/lstm_150/strided_slice_1/stack:output:07sequential_38/lstm_150/strided_slice_1/stack_1:output:07sequential_38/lstm_150/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_38/lstm_150/strided_slice_1≥
2sequential_38/lstm_150/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€24
2sequential_38/lstm_150/TensorArrayV2/element_shapeО
$sequential_38/lstm_150/TensorArrayV2TensorListReserve;sequential_38/lstm_150/TensorArrayV2/element_shape:output:0/sequential_38/lstm_150/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_38/lstm_150/TensorArrayV2н
Lsequential_38/lstm_150/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2N
Lsequential_38/lstm_150/TensorArrayUnstack/TensorListFromTensor/element_shape‘
>sequential_38/lstm_150/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_38/lstm_150/transpose:y:0Usequential_38/lstm_150/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_38/lstm_150/TensorArrayUnstack/TensorListFromTensor¶
,sequential_38/lstm_150/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_38/lstm_150/strided_slice_2/stack™
.sequential_38/lstm_150/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_150/strided_slice_2/stack_1™
.sequential_38/lstm_150/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_150/strided_slice_2/stack_2Ж
&sequential_38/lstm_150/strided_slice_2StridedSlice$sequential_38/lstm_150/transpose:y:05sequential_38/lstm_150/strided_slice_2/stack:output:07sequential_38/lstm_150/strided_slice_2/stack_1:output:07sequential_38/lstm_150/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2(
&sequential_38/lstm_150/strided_slice_2ь
:sequential_38/lstm_150/lstm_cell_150/MatMul/ReadVariableOpReadVariableOpCsequential_38_lstm_150_lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_38/lstm_150/lstm_cell_150/MatMul/ReadVariableOpЛ
+sequential_38/lstm_150/lstm_cell_150/MatMulMatMul/sequential_38/lstm_150/strided_slice_2:output:0Bsequential_38/lstm_150/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2-
+sequential_38/lstm_150/lstm_cell_150/MatMulВ
<sequential_38/lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOpEsequential_38_lstm_150_lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02>
<sequential_38/lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpЗ
-sequential_38/lstm_150/lstm_cell_150/MatMul_1MatMul%sequential_38/lstm_150/zeros:output:0Dsequential_38/lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2/
-sequential_38/lstm_150/lstm_cell_150/MatMul_1€
(sequential_38/lstm_150/lstm_cell_150/addAddV25sequential_38/lstm_150/lstm_cell_150/MatMul:product:07sequential_38/lstm_150/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2*
(sequential_38/lstm_150/lstm_cell_150/addы
;sequential_38/lstm_150/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOpDsequential_38_lstm_150_lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential_38/lstm_150/lstm_cell_150/BiasAdd/ReadVariableOpМ
,sequential_38/lstm_150/lstm_cell_150/BiasAddBiasAdd,sequential_38/lstm_150/lstm_cell_150/add:z:0Csequential_38/lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_38/lstm_150/lstm_cell_150/BiasAddЃ
4sequential_38/lstm_150/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_38/lstm_150/lstm_cell_150/split/split_dim”
*sequential_38/lstm_150/lstm_cell_150/splitSplit=sequential_38/lstm_150/lstm_cell_150/split/split_dim:output:05sequential_38/lstm_150/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2,
*sequential_38/lstm_150/lstm_cell_150/splitќ
,sequential_38/lstm_150/lstm_cell_150/SigmoidSigmoid3sequential_38/lstm_150/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,sequential_38/lstm_150/lstm_cell_150/Sigmoid“
.sequential_38/lstm_150/lstm_cell_150/Sigmoid_1Sigmoid3sequential_38/lstm_150/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_150/lstm_cell_150/Sigmoid_1к
(sequential_38/lstm_150/lstm_cell_150/mulMul2sequential_38/lstm_150/lstm_cell_150/Sigmoid_1:y:0'sequential_38/lstm_150/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
(sequential_38/lstm_150/lstm_cell_150/mul≈
)sequential_38/lstm_150/lstm_cell_150/ReluRelu3sequential_38/lstm_150/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2+
)sequential_38/lstm_150/lstm_cell_150/Reluь
*sequential_38/lstm_150/lstm_cell_150/mul_1Mul0sequential_38/lstm_150/lstm_cell_150/Sigmoid:y:07sequential_38/lstm_150/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_150/lstm_cell_150/mul_1с
*sequential_38/lstm_150/lstm_cell_150/add_1AddV2,sequential_38/lstm_150/lstm_cell_150/mul:z:0.sequential_38/lstm_150/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_150/lstm_cell_150/add_1“
.sequential_38/lstm_150/lstm_cell_150/Sigmoid_2Sigmoid3sequential_38/lstm_150/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_150/lstm_cell_150/Sigmoid_2ƒ
+sequential_38/lstm_150/lstm_cell_150/Relu_1Relu.sequential_38/lstm_150/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+sequential_38/lstm_150/lstm_cell_150/Relu_1А
*sequential_38/lstm_150/lstm_cell_150/mul_2Mul2sequential_38/lstm_150/lstm_cell_150/Sigmoid_2:y:09sequential_38/lstm_150/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_150/lstm_cell_150/mul_2љ
4sequential_38/lstm_150/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   26
4sequential_38/lstm_150/TensorArrayV2_1/element_shapeФ
&sequential_38/lstm_150/TensorArrayV2_1TensorListReserve=sequential_38/lstm_150/TensorArrayV2_1/element_shape:output:0/sequential_38/lstm_150/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_38/lstm_150/TensorArrayV2_1|
sequential_38/lstm_150/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_38/lstm_150/time≠
/sequential_38/lstm_150/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€21
/sequential_38/lstm_150/while/maximum_iterationsШ
)sequential_38/lstm_150/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_38/lstm_150/while/loop_counterй
sequential_38/lstm_150/whileWhile2sequential_38/lstm_150/while/loop_counter:output:08sequential_38/lstm_150/while/maximum_iterations:output:0$sequential_38/lstm_150/time:output:0/sequential_38/lstm_150/TensorArrayV2_1:handle:0%sequential_38/lstm_150/zeros:output:0'sequential_38/lstm_150/zeros_1:output:0/sequential_38/lstm_150/strided_slice_1:output:0Nsequential_38/lstm_150/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_38_lstm_150_lstm_cell_150_matmul_readvariableop_resourceEsequential_38_lstm_150_lstm_cell_150_matmul_1_readvariableop_resourceDsequential_38_lstm_150_lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_38_lstm_150_while_body_2254253*5
cond-R+
)sequential_38_lstm_150_while_cond_2254252*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
sequential_38/lstm_150/whileг
Gsequential_38/lstm_150/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2I
Gsequential_38/lstm_150/TensorArrayV2Stack/TensorListStack/element_shapeƒ
9sequential_38/lstm_150/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_38/lstm_150/while:output:3Psequential_38/lstm_150/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02;
9sequential_38/lstm_150/TensorArrayV2Stack/TensorListStackѓ
,sequential_38/lstm_150/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2.
,sequential_38/lstm_150/strided_slice_3/stack™
.sequential_38/lstm_150/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_38/lstm_150/strided_slice_3/stack_1™
.sequential_38/lstm_150/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_150/strided_slice_3/stack_2§
&sequential_38/lstm_150/strided_slice_3StridedSliceBsequential_38/lstm_150/TensorArrayV2Stack/TensorListStack:tensor:05sequential_38/lstm_150/strided_slice_3/stack:output:07sequential_38/lstm_150/strided_slice_3/stack_1:output:07sequential_38/lstm_150/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2(
&sequential_38/lstm_150/strided_slice_3І
'sequential_38/lstm_150/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_38/lstm_150/transpose_1/permБ
"sequential_38/lstm_150/transpose_1	TransposeBsequential_38/lstm_150/TensorArrayV2Stack/TensorListStack:tensor:00sequential_38/lstm_150/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2$
"sequential_38/lstm_150/transpose_1Ф
sequential_38/lstm_150/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_38/lstm_150/runtime≤
"sequential_38/dropout_224/IdentityIdentity&sequential_38/lstm_150/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2$
"sequential_38/dropout_224/IdentityЧ
sequential_38/lstm_151/ShapeShape+sequential_38/dropout_224/Identity:output:0*
T0*
_output_shapes
:2
sequential_38/lstm_151/ShapeҐ
*sequential_38/lstm_151/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_38/lstm_151/strided_slice/stack¶
,sequential_38/lstm_151/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_38/lstm_151/strided_slice/stack_1¶
,sequential_38/lstm_151/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_38/lstm_151/strided_slice/stack_2м
$sequential_38/lstm_151/strided_sliceStridedSlice%sequential_38/lstm_151/Shape:output:03sequential_38/lstm_151/strided_slice/stack:output:05sequential_38/lstm_151/strided_slice/stack_1:output:05sequential_38/lstm_151/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_38/lstm_151/strided_sliceК
"sequential_38/lstm_151/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_38/lstm_151/zeros/mul/y»
 sequential_38/lstm_151/zeros/mulMul-sequential_38/lstm_151/strided_slice:output:0+sequential_38/lstm_151/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_38/lstm_151/zeros/mulН
#sequential_38/lstm_151/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2%
#sequential_38/lstm_151/zeros/Less/y√
!sequential_38/lstm_151/zeros/LessLess$sequential_38/lstm_151/zeros/mul:z:0,sequential_38/lstm_151/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_38/lstm_151/zeros/LessР
%sequential_38/lstm_151/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_38/lstm_151/zeros/packed/1я
#sequential_38/lstm_151/zeros/packedPack-sequential_38/lstm_151/strided_slice:output:0.sequential_38/lstm_151/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_38/lstm_151/zeros/packedН
"sequential_38/lstm_151/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_38/lstm_151/zeros/Const—
sequential_38/lstm_151/zerosFill,sequential_38/lstm_151/zeros/packed:output:0+sequential_38/lstm_151/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/lstm_151/zerosО
$sequential_38/lstm_151/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_38/lstm_151/zeros_1/mul/yќ
"sequential_38/lstm_151/zeros_1/mulMul-sequential_38/lstm_151/strided_slice:output:0-sequential_38/lstm_151/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_38/lstm_151/zeros_1/mulС
%sequential_38/lstm_151/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2'
%sequential_38/lstm_151/zeros_1/Less/yЋ
#sequential_38/lstm_151/zeros_1/LessLess&sequential_38/lstm_151/zeros_1/mul:z:0.sequential_38/lstm_151/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_38/lstm_151/zeros_1/LessФ
'sequential_38/lstm_151/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_38/lstm_151/zeros_1/packed/1е
%sequential_38/lstm_151/zeros_1/packedPack-sequential_38/lstm_151/strided_slice:output:00sequential_38/lstm_151/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_38/lstm_151/zeros_1/packedС
$sequential_38/lstm_151/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_38/lstm_151/zeros_1/Constў
sequential_38/lstm_151/zeros_1Fill.sequential_38/lstm_151/zeros_1/packed:output:0-sequential_38/lstm_151/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_38/lstm_151/zeros_1£
%sequential_38/lstm_151/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_38/lstm_151/transpose/permд
 sequential_38/lstm_151/transpose	Transpose+sequential_38/dropout_224/Identity:output:0.sequential_38/lstm_151/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"
 sequential_38/lstm_151/transposeФ
sequential_38/lstm_151/Shape_1Shape$sequential_38/lstm_151/transpose:y:0*
T0*
_output_shapes
:2 
sequential_38/lstm_151/Shape_1¶
,sequential_38/lstm_151/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_38/lstm_151/strided_slice_1/stack™
.sequential_38/lstm_151/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_151/strided_slice_1/stack_1™
.sequential_38/lstm_151/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_151/strided_slice_1/stack_2ш
&sequential_38/lstm_151/strided_slice_1StridedSlice'sequential_38/lstm_151/Shape_1:output:05sequential_38/lstm_151/strided_slice_1/stack:output:07sequential_38/lstm_151/strided_slice_1/stack_1:output:07sequential_38/lstm_151/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_38/lstm_151/strided_slice_1≥
2sequential_38/lstm_151/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€24
2sequential_38/lstm_151/TensorArrayV2/element_shapeО
$sequential_38/lstm_151/TensorArrayV2TensorListReserve;sequential_38/lstm_151/TensorArrayV2/element_shape:output:0/sequential_38/lstm_151/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_38/lstm_151/TensorArrayV2н
Lsequential_38/lstm_151/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2N
Lsequential_38/lstm_151/TensorArrayUnstack/TensorListFromTensor/element_shape‘
>sequential_38/lstm_151/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_38/lstm_151/transpose:y:0Usequential_38/lstm_151/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_38/lstm_151/TensorArrayUnstack/TensorListFromTensor¶
,sequential_38/lstm_151/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_38/lstm_151/strided_slice_2/stack™
.sequential_38/lstm_151/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_151/strided_slice_2/stack_1™
.sequential_38/lstm_151/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_151/strided_slice_2/stack_2Ж
&sequential_38/lstm_151/strided_slice_2StridedSlice$sequential_38/lstm_151/transpose:y:05sequential_38/lstm_151/strided_slice_2/stack:output:07sequential_38/lstm_151/strided_slice_2/stack_1:output:07sequential_38/lstm_151/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2(
&sequential_38/lstm_151/strided_slice_2ь
:sequential_38/lstm_151/lstm_cell_151/MatMul/ReadVariableOpReadVariableOpCsequential_38_lstm_151_lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_38/lstm_151/lstm_cell_151/MatMul/ReadVariableOpЛ
+sequential_38/lstm_151/lstm_cell_151/MatMulMatMul/sequential_38/lstm_151/strided_slice_2:output:0Bsequential_38/lstm_151/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2-
+sequential_38/lstm_151/lstm_cell_151/MatMulВ
<sequential_38/lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOpEsequential_38_lstm_151_lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02>
<sequential_38/lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpЗ
-sequential_38/lstm_151/lstm_cell_151/MatMul_1MatMul%sequential_38/lstm_151/zeros:output:0Dsequential_38/lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2/
-sequential_38/lstm_151/lstm_cell_151/MatMul_1€
(sequential_38/lstm_151/lstm_cell_151/addAddV25sequential_38/lstm_151/lstm_cell_151/MatMul:product:07sequential_38/lstm_151/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2*
(sequential_38/lstm_151/lstm_cell_151/addы
;sequential_38/lstm_151/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOpDsequential_38_lstm_151_lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential_38/lstm_151/lstm_cell_151/BiasAdd/ReadVariableOpМ
,sequential_38/lstm_151/lstm_cell_151/BiasAddBiasAdd,sequential_38/lstm_151/lstm_cell_151/add:z:0Csequential_38/lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_38/lstm_151/lstm_cell_151/BiasAddЃ
4sequential_38/lstm_151/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_38/lstm_151/lstm_cell_151/split/split_dim”
*sequential_38/lstm_151/lstm_cell_151/splitSplit=sequential_38/lstm_151/lstm_cell_151/split/split_dim:output:05sequential_38/lstm_151/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2,
*sequential_38/lstm_151/lstm_cell_151/splitќ
,sequential_38/lstm_151/lstm_cell_151/SigmoidSigmoid3sequential_38/lstm_151/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,sequential_38/lstm_151/lstm_cell_151/Sigmoid“
.sequential_38/lstm_151/lstm_cell_151/Sigmoid_1Sigmoid3sequential_38/lstm_151/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_151/lstm_cell_151/Sigmoid_1к
(sequential_38/lstm_151/lstm_cell_151/mulMul2sequential_38/lstm_151/lstm_cell_151/Sigmoid_1:y:0'sequential_38/lstm_151/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
(sequential_38/lstm_151/lstm_cell_151/mul≈
)sequential_38/lstm_151/lstm_cell_151/ReluRelu3sequential_38/lstm_151/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2+
)sequential_38/lstm_151/lstm_cell_151/Reluь
*sequential_38/lstm_151/lstm_cell_151/mul_1Mul0sequential_38/lstm_151/lstm_cell_151/Sigmoid:y:07sequential_38/lstm_151/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_151/lstm_cell_151/mul_1с
*sequential_38/lstm_151/lstm_cell_151/add_1AddV2,sequential_38/lstm_151/lstm_cell_151/mul:z:0.sequential_38/lstm_151/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_151/lstm_cell_151/add_1“
.sequential_38/lstm_151/lstm_cell_151/Sigmoid_2Sigmoid3sequential_38/lstm_151/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_151/lstm_cell_151/Sigmoid_2ƒ
+sequential_38/lstm_151/lstm_cell_151/Relu_1Relu.sequential_38/lstm_151/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+sequential_38/lstm_151/lstm_cell_151/Relu_1А
*sequential_38/lstm_151/lstm_cell_151/mul_2Mul2sequential_38/lstm_151/lstm_cell_151/Sigmoid_2:y:09sequential_38/lstm_151/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_151/lstm_cell_151/mul_2љ
4sequential_38/lstm_151/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   26
4sequential_38/lstm_151/TensorArrayV2_1/element_shapeФ
&sequential_38/lstm_151/TensorArrayV2_1TensorListReserve=sequential_38/lstm_151/TensorArrayV2_1/element_shape:output:0/sequential_38/lstm_151/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_38/lstm_151/TensorArrayV2_1|
sequential_38/lstm_151/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_38/lstm_151/time≠
/sequential_38/lstm_151/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€21
/sequential_38/lstm_151/while/maximum_iterationsШ
)sequential_38/lstm_151/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_38/lstm_151/while/loop_counterй
sequential_38/lstm_151/whileWhile2sequential_38/lstm_151/while/loop_counter:output:08sequential_38/lstm_151/while/maximum_iterations:output:0$sequential_38/lstm_151/time:output:0/sequential_38/lstm_151/TensorArrayV2_1:handle:0%sequential_38/lstm_151/zeros:output:0'sequential_38/lstm_151/zeros_1:output:0/sequential_38/lstm_151/strided_slice_1:output:0Nsequential_38/lstm_151/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_38_lstm_151_lstm_cell_151_matmul_readvariableop_resourceEsequential_38_lstm_151_lstm_cell_151_matmul_1_readvariableop_resourceDsequential_38_lstm_151_lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_38_lstm_151_while_body_2254401*5
cond-R+
)sequential_38_lstm_151_while_cond_2254400*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
sequential_38/lstm_151/whileг
Gsequential_38/lstm_151/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2I
Gsequential_38/lstm_151/TensorArrayV2Stack/TensorListStack/element_shapeƒ
9sequential_38/lstm_151/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_38/lstm_151/while:output:3Psequential_38/lstm_151/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02;
9sequential_38/lstm_151/TensorArrayV2Stack/TensorListStackѓ
,sequential_38/lstm_151/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2.
,sequential_38/lstm_151/strided_slice_3/stack™
.sequential_38/lstm_151/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_38/lstm_151/strided_slice_3/stack_1™
.sequential_38/lstm_151/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_151/strided_slice_3/stack_2§
&sequential_38/lstm_151/strided_slice_3StridedSliceBsequential_38/lstm_151/TensorArrayV2Stack/TensorListStack:tensor:05sequential_38/lstm_151/strided_slice_3/stack:output:07sequential_38/lstm_151/strided_slice_3/stack_1:output:07sequential_38/lstm_151/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2(
&sequential_38/lstm_151/strided_slice_3І
'sequential_38/lstm_151/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_38/lstm_151/transpose_1/permБ
"sequential_38/lstm_151/transpose_1	TransposeBsequential_38/lstm_151/TensorArrayV2Stack/TensorListStack:tensor:00sequential_38/lstm_151/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2$
"sequential_38/lstm_151/transpose_1Ф
sequential_38/lstm_151/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_38/lstm_151/runtime≤
"sequential_38/dropout_225/IdentityIdentity&sequential_38/lstm_151/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2$
"sequential_38/dropout_225/IdentityЧ
sequential_38/lstm_152/ShapeShape+sequential_38/dropout_225/Identity:output:0*
T0*
_output_shapes
:2
sequential_38/lstm_152/ShapeҐ
*sequential_38/lstm_152/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_38/lstm_152/strided_slice/stack¶
,sequential_38/lstm_152/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_38/lstm_152/strided_slice/stack_1¶
,sequential_38/lstm_152/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_38/lstm_152/strided_slice/stack_2м
$sequential_38/lstm_152/strided_sliceStridedSlice%sequential_38/lstm_152/Shape:output:03sequential_38/lstm_152/strided_slice/stack:output:05sequential_38/lstm_152/strided_slice/stack_1:output:05sequential_38/lstm_152/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_38/lstm_152/strided_sliceК
"sequential_38/lstm_152/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_38/lstm_152/zeros/mul/y»
 sequential_38/lstm_152/zeros/mulMul-sequential_38/lstm_152/strided_slice:output:0+sequential_38/lstm_152/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_38/lstm_152/zeros/mulН
#sequential_38/lstm_152/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2%
#sequential_38/lstm_152/zeros/Less/y√
!sequential_38/lstm_152/zeros/LessLess$sequential_38/lstm_152/zeros/mul:z:0,sequential_38/lstm_152/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_38/lstm_152/zeros/LessР
%sequential_38/lstm_152/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_38/lstm_152/zeros/packed/1я
#sequential_38/lstm_152/zeros/packedPack-sequential_38/lstm_152/strided_slice:output:0.sequential_38/lstm_152/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_38/lstm_152/zeros/packedН
"sequential_38/lstm_152/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_38/lstm_152/zeros/Const—
sequential_38/lstm_152/zerosFill,sequential_38/lstm_152/zeros/packed:output:0+sequential_38/lstm_152/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/lstm_152/zerosО
$sequential_38/lstm_152/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_38/lstm_152/zeros_1/mul/yќ
"sequential_38/lstm_152/zeros_1/mulMul-sequential_38/lstm_152/strided_slice:output:0-sequential_38/lstm_152/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_38/lstm_152/zeros_1/mulС
%sequential_38/lstm_152/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2'
%sequential_38/lstm_152/zeros_1/Less/yЋ
#sequential_38/lstm_152/zeros_1/LessLess&sequential_38/lstm_152/zeros_1/mul:z:0.sequential_38/lstm_152/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_38/lstm_152/zeros_1/LessФ
'sequential_38/lstm_152/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_38/lstm_152/zeros_1/packed/1е
%sequential_38/lstm_152/zeros_1/packedPack-sequential_38/lstm_152/strided_slice:output:00sequential_38/lstm_152/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_38/lstm_152/zeros_1/packedС
$sequential_38/lstm_152/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_38/lstm_152/zeros_1/Constў
sequential_38/lstm_152/zeros_1Fill.sequential_38/lstm_152/zeros_1/packed:output:0-sequential_38/lstm_152/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_38/lstm_152/zeros_1£
%sequential_38/lstm_152/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_38/lstm_152/transpose/permд
 sequential_38/lstm_152/transpose	Transpose+sequential_38/dropout_225/Identity:output:0.sequential_38/lstm_152/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"
 sequential_38/lstm_152/transposeФ
sequential_38/lstm_152/Shape_1Shape$sequential_38/lstm_152/transpose:y:0*
T0*
_output_shapes
:2 
sequential_38/lstm_152/Shape_1¶
,sequential_38/lstm_152/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_38/lstm_152/strided_slice_1/stack™
.sequential_38/lstm_152/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_152/strided_slice_1/stack_1™
.sequential_38/lstm_152/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_152/strided_slice_1/stack_2ш
&sequential_38/lstm_152/strided_slice_1StridedSlice'sequential_38/lstm_152/Shape_1:output:05sequential_38/lstm_152/strided_slice_1/stack:output:07sequential_38/lstm_152/strided_slice_1/stack_1:output:07sequential_38/lstm_152/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_38/lstm_152/strided_slice_1≥
2sequential_38/lstm_152/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€24
2sequential_38/lstm_152/TensorArrayV2/element_shapeО
$sequential_38/lstm_152/TensorArrayV2TensorListReserve;sequential_38/lstm_152/TensorArrayV2/element_shape:output:0/sequential_38/lstm_152/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_38/lstm_152/TensorArrayV2н
Lsequential_38/lstm_152/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2N
Lsequential_38/lstm_152/TensorArrayUnstack/TensorListFromTensor/element_shape‘
>sequential_38/lstm_152/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_38/lstm_152/transpose:y:0Usequential_38/lstm_152/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_38/lstm_152/TensorArrayUnstack/TensorListFromTensor¶
,sequential_38/lstm_152/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_38/lstm_152/strided_slice_2/stack™
.sequential_38/lstm_152/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_152/strided_slice_2/stack_1™
.sequential_38/lstm_152/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_152/strided_slice_2/stack_2Ж
&sequential_38/lstm_152/strided_slice_2StridedSlice$sequential_38/lstm_152/transpose:y:05sequential_38/lstm_152/strided_slice_2/stack:output:07sequential_38/lstm_152/strided_slice_2/stack_1:output:07sequential_38/lstm_152/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2(
&sequential_38/lstm_152/strided_slice_2ь
:sequential_38/lstm_152/lstm_cell_152/MatMul/ReadVariableOpReadVariableOpCsequential_38_lstm_152_lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_38/lstm_152/lstm_cell_152/MatMul/ReadVariableOpЛ
+sequential_38/lstm_152/lstm_cell_152/MatMulMatMul/sequential_38/lstm_152/strided_slice_2:output:0Bsequential_38/lstm_152/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2-
+sequential_38/lstm_152/lstm_cell_152/MatMulВ
<sequential_38/lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOpEsequential_38_lstm_152_lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02>
<sequential_38/lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpЗ
-sequential_38/lstm_152/lstm_cell_152/MatMul_1MatMul%sequential_38/lstm_152/zeros:output:0Dsequential_38/lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2/
-sequential_38/lstm_152/lstm_cell_152/MatMul_1€
(sequential_38/lstm_152/lstm_cell_152/addAddV25sequential_38/lstm_152/lstm_cell_152/MatMul:product:07sequential_38/lstm_152/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2*
(sequential_38/lstm_152/lstm_cell_152/addы
;sequential_38/lstm_152/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOpDsequential_38_lstm_152_lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential_38/lstm_152/lstm_cell_152/BiasAdd/ReadVariableOpМ
,sequential_38/lstm_152/lstm_cell_152/BiasAddBiasAdd,sequential_38/lstm_152/lstm_cell_152/add:z:0Csequential_38/lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_38/lstm_152/lstm_cell_152/BiasAddЃ
4sequential_38/lstm_152/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_38/lstm_152/lstm_cell_152/split/split_dim”
*sequential_38/lstm_152/lstm_cell_152/splitSplit=sequential_38/lstm_152/lstm_cell_152/split/split_dim:output:05sequential_38/lstm_152/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2,
*sequential_38/lstm_152/lstm_cell_152/splitќ
,sequential_38/lstm_152/lstm_cell_152/SigmoidSigmoid3sequential_38/lstm_152/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,sequential_38/lstm_152/lstm_cell_152/Sigmoid“
.sequential_38/lstm_152/lstm_cell_152/Sigmoid_1Sigmoid3sequential_38/lstm_152/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_152/lstm_cell_152/Sigmoid_1к
(sequential_38/lstm_152/lstm_cell_152/mulMul2sequential_38/lstm_152/lstm_cell_152/Sigmoid_1:y:0'sequential_38/lstm_152/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
(sequential_38/lstm_152/lstm_cell_152/mul≈
)sequential_38/lstm_152/lstm_cell_152/ReluRelu3sequential_38/lstm_152/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2+
)sequential_38/lstm_152/lstm_cell_152/Reluь
*sequential_38/lstm_152/lstm_cell_152/mul_1Mul0sequential_38/lstm_152/lstm_cell_152/Sigmoid:y:07sequential_38/lstm_152/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_152/lstm_cell_152/mul_1с
*sequential_38/lstm_152/lstm_cell_152/add_1AddV2,sequential_38/lstm_152/lstm_cell_152/mul:z:0.sequential_38/lstm_152/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_152/lstm_cell_152/add_1“
.sequential_38/lstm_152/lstm_cell_152/Sigmoid_2Sigmoid3sequential_38/lstm_152/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_38/lstm_152/lstm_cell_152/Sigmoid_2ƒ
+sequential_38/lstm_152/lstm_cell_152/Relu_1Relu.sequential_38/lstm_152/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+sequential_38/lstm_152/lstm_cell_152/Relu_1А
*sequential_38/lstm_152/lstm_cell_152/mul_2Mul2sequential_38/lstm_152/lstm_cell_152/Sigmoid_2:y:09sequential_38/lstm_152/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_38/lstm_152/lstm_cell_152/mul_2љ
4sequential_38/lstm_152/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   26
4sequential_38/lstm_152/TensorArrayV2_1/element_shapeФ
&sequential_38/lstm_152/TensorArrayV2_1TensorListReserve=sequential_38/lstm_152/TensorArrayV2_1/element_shape:output:0/sequential_38/lstm_152/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_38/lstm_152/TensorArrayV2_1|
sequential_38/lstm_152/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_38/lstm_152/time≠
/sequential_38/lstm_152/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€21
/sequential_38/lstm_152/while/maximum_iterationsШ
)sequential_38/lstm_152/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_38/lstm_152/while/loop_counterй
sequential_38/lstm_152/whileWhile2sequential_38/lstm_152/while/loop_counter:output:08sequential_38/lstm_152/while/maximum_iterations:output:0$sequential_38/lstm_152/time:output:0/sequential_38/lstm_152/TensorArrayV2_1:handle:0%sequential_38/lstm_152/zeros:output:0'sequential_38/lstm_152/zeros_1:output:0/sequential_38/lstm_152/strided_slice_1:output:0Nsequential_38/lstm_152/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_38_lstm_152_lstm_cell_152_matmul_readvariableop_resourceEsequential_38_lstm_152_lstm_cell_152_matmul_1_readvariableop_resourceDsequential_38_lstm_152_lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_38_lstm_152_while_body_2254549*5
cond-R+
)sequential_38_lstm_152_while_cond_2254548*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
sequential_38/lstm_152/whileг
Gsequential_38/lstm_152/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2I
Gsequential_38/lstm_152/TensorArrayV2Stack/TensorListStack/element_shapeƒ
9sequential_38/lstm_152/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_38/lstm_152/while:output:3Psequential_38/lstm_152/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02;
9sequential_38/lstm_152/TensorArrayV2Stack/TensorListStackѓ
,sequential_38/lstm_152/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2.
,sequential_38/lstm_152/strided_slice_3/stack™
.sequential_38/lstm_152/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_38/lstm_152/strided_slice_3/stack_1™
.sequential_38/lstm_152/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_38/lstm_152/strided_slice_3/stack_2§
&sequential_38/lstm_152/strided_slice_3StridedSliceBsequential_38/lstm_152/TensorArrayV2Stack/TensorListStack:tensor:05sequential_38/lstm_152/strided_slice_3/stack:output:07sequential_38/lstm_152/strided_slice_3/stack_1:output:07sequential_38/lstm_152/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2(
&sequential_38/lstm_152/strided_slice_3І
'sequential_38/lstm_152/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_38/lstm_152/transpose_1/permБ
"sequential_38/lstm_152/transpose_1	TransposeBsequential_38/lstm_152/TensorArrayV2Stack/TensorListStack:tensor:00sequential_38/lstm_152/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2$
"sequential_38/lstm_152/transpose_1Ф
sequential_38/lstm_152/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_38/lstm_152/runtimeЈ
"sequential_38/dropout_226/IdentityIdentity/sequential_38/lstm_152/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"sequential_38/dropout_226/Identity’
-sequential_38/dense_112/MatMul/ReadVariableOpReadVariableOp6sequential_38_dense_112_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-sequential_38/dense_112/MatMul/ReadVariableOpа
sequential_38/dense_112/MatMulMatMul+sequential_38/dropout_226/Identity:output:05sequential_38/dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_38/dense_112/MatMul‘
.sequential_38/dense_112/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_38/dense_112/BiasAdd/ReadVariableOpб
sequential_38/dense_112/BiasAddBiasAdd(sequential_38/dense_112/MatMul:product:06sequential_38/dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2!
sequential_38/dense_112/BiasAdd†
sequential_38/dense_112/ReluRelu(sequential_38/dense_112/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/dense_112/Relu≤
"sequential_38/dropout_227/IdentityIdentity*sequential_38/dense_112/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"sequential_38/dropout_227/Identity’
-sequential_38/dense_113/MatMul/ReadVariableOpReadVariableOp6sequential_38_dense_113_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-sequential_38/dense_113/MatMul/ReadVariableOpа
sequential_38/dense_113/MatMulMatMul+sequential_38/dropout_227/Identity:output:05sequential_38/dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_38/dense_113/MatMul‘
.sequential_38/dense_113/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_38/dense_113/BiasAdd/ReadVariableOpб
sequential_38/dense_113/BiasAddBiasAdd(sequential_38/dense_113/MatMul:product:06sequential_38/dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2!
sequential_38/dense_113/BiasAdd†
sequential_38/dense_113/ReluRelu(sequential_38/dense_113/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/dense_113/Relu≤
"sequential_38/dropout_228/IdentityIdentity*sequential_38/dense_113/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"sequential_38/dropout_228/Identity’
-sequential_38/dense_114/MatMul/ReadVariableOpReadVariableOp6sequential_38_dense_114_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-sequential_38/dense_114/MatMul/ReadVariableOpа
sequential_38/dense_114/MatMulMatMul+sequential_38/dropout_228/Identity:output:05sequential_38/dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_38/dense_114/MatMul‘
.sequential_38/dense_114/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_38/dense_114/BiasAdd/ReadVariableOpб
sequential_38/dense_114/BiasAddBiasAdd(sequential_38/dense_114/MatMul:product:06sequential_38/dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2!
sequential_38/dense_114/BiasAddГ
IdentityIdentity(sequential_38/dense_114/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityь
NoOpNoOp/^sequential_38/dense_112/BiasAdd/ReadVariableOp.^sequential_38/dense_112/MatMul/ReadVariableOp/^sequential_38/dense_113/BiasAdd/ReadVariableOp.^sequential_38/dense_113/MatMul/ReadVariableOp/^sequential_38/dense_114/BiasAdd/ReadVariableOp.^sequential_38/dense_114/MatMul/ReadVariableOp<^sequential_38/lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp;^sequential_38/lstm_150/lstm_cell_150/MatMul/ReadVariableOp=^sequential_38/lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp^sequential_38/lstm_150/while<^sequential_38/lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp;^sequential_38/lstm_151/lstm_cell_151/MatMul/ReadVariableOp=^sequential_38/lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp^sequential_38/lstm_151/while<^sequential_38/lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp;^sequential_38/lstm_152/lstm_cell_152/MatMul/ReadVariableOp=^sequential_38/lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp^sequential_38/lstm_152/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 2`
.sequential_38/dense_112/BiasAdd/ReadVariableOp.sequential_38/dense_112/BiasAdd/ReadVariableOp2^
-sequential_38/dense_112/MatMul/ReadVariableOp-sequential_38/dense_112/MatMul/ReadVariableOp2`
.sequential_38/dense_113/BiasAdd/ReadVariableOp.sequential_38/dense_113/BiasAdd/ReadVariableOp2^
-sequential_38/dense_113/MatMul/ReadVariableOp-sequential_38/dense_113/MatMul/ReadVariableOp2`
.sequential_38/dense_114/BiasAdd/ReadVariableOp.sequential_38/dense_114/BiasAdd/ReadVariableOp2^
-sequential_38/dense_114/MatMul/ReadVariableOp-sequential_38/dense_114/MatMul/ReadVariableOp2z
;sequential_38/lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp;sequential_38/lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp2x
:sequential_38/lstm_150/lstm_cell_150/MatMul/ReadVariableOp:sequential_38/lstm_150/lstm_cell_150/MatMul/ReadVariableOp2|
<sequential_38/lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp<sequential_38/lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp2<
sequential_38/lstm_150/whilesequential_38/lstm_150/while2z
;sequential_38/lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp;sequential_38/lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp2x
:sequential_38/lstm_151/lstm_cell_151/MatMul/ReadVariableOp:sequential_38/lstm_151/lstm_cell_151/MatMul/ReadVariableOp2|
<sequential_38/lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp<sequential_38/lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp2<
sequential_38/lstm_151/whilesequential_38/lstm_151/while2z
;sequential_38/lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp;sequential_38/lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp2x
:sequential_38/lstm_152/lstm_cell_152/MatMul/ReadVariableOp:sequential_38/lstm_152/lstm_cell_152/MatMul/ReadVariableOp2|
<sequential_38/lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp<sequential_38/lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp2<
sequential_38/lstm_152/whilesequential_38/lstm_152/while:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_namelstm_150_input
ќL
ф

lstm_150_while_body_2258230.
*lstm_150_while_lstm_150_while_loop_counter4
0lstm_150_while_lstm_150_while_maximum_iterations
lstm_150_while_placeholder 
lstm_150_while_placeholder_1 
lstm_150_while_placeholder_2 
lstm_150_while_placeholder_3-
)lstm_150_while_lstm_150_strided_slice_1_0i
elstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0:@Q
?lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0:@L
>lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0:@
lstm_150_while_identity
lstm_150_while_identity_1
lstm_150_while_identity_2
lstm_150_while_identity_3
lstm_150_while_identity_4
lstm_150_while_identity_5+
'lstm_150_while_lstm_150_strided_slice_1g
clstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensorM
;lstm_150_while_lstm_cell_150_matmul_readvariableop_resource:@O
=lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource:@J
<lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐ3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpҐ2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpҐ4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp’
@lstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2B
@lstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shapeЙ
2lstm_150/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensor_0lstm_150_while_placeholderIlstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype024
2lstm_150/while/TensorArrayV2Read/TensorListGetItemж
2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp=lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpэ
#lstm_150/while/lstm_cell_150/MatMulMatMul9lstm_150/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_150/while/lstm_cell_150/MatMulм
4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp?lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOpж
%lstm_150/while/lstm_cell_150/MatMul_1MatMullstm_150_while_placeholder_2<lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%lstm_150/while/lstm_cell_150/MatMul_1я
 lstm_150/while/lstm_cell_150/addAddV2-lstm_150/while/lstm_cell_150/MatMul:product:0/lstm_150/while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 lstm_150/while/lstm_cell_150/addе
3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp>lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpм
$lstm_150/while/lstm_cell_150/BiasAddBiasAdd$lstm_150/while/lstm_cell_150/add:z:0;lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$lstm_150/while/lstm_cell_150/BiasAddЮ
,lstm_150/while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_150/while/lstm_cell_150/split/split_dim≥
"lstm_150/while/lstm_cell_150/splitSplit5lstm_150/while/lstm_cell_150/split/split_dim:output:0-lstm_150/while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2$
"lstm_150/while/lstm_cell_150/splitґ
$lstm_150/while/lstm_cell_150/SigmoidSigmoid+lstm_150/while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2&
$lstm_150/while/lstm_cell_150/SigmoidЇ
&lstm_150/while/lstm_cell_150/Sigmoid_1Sigmoid+lstm_150/while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_150/while/lstm_cell_150/Sigmoid_1«
 lstm_150/while/lstm_cell_150/mulMul*lstm_150/while/lstm_cell_150/Sigmoid_1:y:0lstm_150_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_150/while/lstm_cell_150/mul≠
!lstm_150/while/lstm_cell_150/ReluRelu+lstm_150/while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2#
!lstm_150/while/lstm_cell_150/Relu№
"lstm_150/while/lstm_cell_150/mul_1Mul(lstm_150/while/lstm_cell_150/Sigmoid:y:0/lstm_150/while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_150/while/lstm_cell_150/mul_1—
"lstm_150/while/lstm_cell_150/add_1AddV2$lstm_150/while/lstm_cell_150/mul:z:0&lstm_150/while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_150/while/lstm_cell_150/add_1Ї
&lstm_150/while/lstm_cell_150/Sigmoid_2Sigmoid+lstm_150/while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_150/while/lstm_cell_150/Sigmoid_2ђ
#lstm_150/while/lstm_cell_150/Relu_1Relu&lstm_150/while/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#lstm_150/while/lstm_cell_150/Relu_1а
"lstm_150/while/lstm_cell_150/mul_2Mul*lstm_150/while/lstm_cell_150/Sigmoid_2:y:01lstm_150/while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_150/while/lstm_cell_150/mul_2О
3lstm_150/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_150_while_placeholder_1lstm_150_while_placeholder&lstm_150/while/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_150/while/TensorArrayV2Write/TensorListSetItemn
lstm_150/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/while/add/yН
lstm_150/while/addAddV2lstm_150_while_placeholderlstm_150/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_150/while/addr
lstm_150/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/while/add_1/y£
lstm_150/while/add_1AddV2*lstm_150_while_lstm_150_while_loop_counterlstm_150/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_150/while/add_1П
lstm_150/while/IdentityIdentitylstm_150/while/add_1:z:0^lstm_150/while/NoOp*
T0*
_output_shapes
: 2
lstm_150/while/IdentityЂ
lstm_150/while/Identity_1Identity0lstm_150_while_lstm_150_while_maximum_iterations^lstm_150/while/NoOp*
T0*
_output_shapes
: 2
lstm_150/while/Identity_1С
lstm_150/while/Identity_2Identitylstm_150/while/add:z:0^lstm_150/while/NoOp*
T0*
_output_shapes
: 2
lstm_150/while/Identity_2Њ
lstm_150/while/Identity_3IdentityClstm_150/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_150/while/NoOp*
T0*
_output_shapes
: 2
lstm_150/while/Identity_3≤
lstm_150/while/Identity_4Identity&lstm_150/while/lstm_cell_150/mul_2:z:0^lstm_150/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/while/Identity_4≤
lstm_150/while/Identity_5Identity&lstm_150/while/lstm_cell_150/add_1:z:0^lstm_150/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/while/Identity_5О
lstm_150/while/NoOpNoOp4^lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp3^lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp5^lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_150/while/NoOp";
lstm_150_while_identity lstm_150/while/Identity:output:0"?
lstm_150_while_identity_1"lstm_150/while/Identity_1:output:0"?
lstm_150_while_identity_2"lstm_150/while/Identity_2:output:0"?
lstm_150_while_identity_3"lstm_150/while/Identity_3:output:0"?
lstm_150_while_identity_4"lstm_150/while/Identity_4:output:0"?
lstm_150_while_identity_5"lstm_150/while/Identity_5:output:0"T
'lstm_150_while_lstm_150_strided_slice_1)lstm_150_while_lstm_150_strided_slice_1_0"~
<lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource>lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0"А
=lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource?lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0"|
;lstm_150_while_lstm_cell_150_matmul_readvariableop_resource=lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0"ћ
clstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensorelstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2j
3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp2h
2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp2l
4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
™\
†
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260310

inputs>
,lstm_cell_151_matmul_readvariableop_resource:@@
.lstm_cell_151_matmul_1_readvariableop_resource:@;
-lstm_cell_151_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_151/BiasAdd/ReadVariableOpҐ#lstm_cell_151/MatMul/ReadVariableOpҐ%lstm_cell_151/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_151/MatMul/ReadVariableOpѓ
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMulљ
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_151/MatMul_1/ReadVariableOpЂ
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMul_1£
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/addґ
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_151/BiasAdd/ReadVariableOp∞
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/BiasAddА
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_151/split/split_dimч
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_151/splitЙ
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/SigmoidН
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_1О
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mulА
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu†
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_1Х
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/add_1Н
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_2
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu_1§
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2260226*
condR
while_cond_2260225*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2256004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2256004___redundant_placeholder05
1while_while_cond_2256004___redundant_placeholder15
1while_while_cond_2256004___redundant_placeholder25
1while_while_cond_2256004___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ј
х
/__inference_lstm_cell_150_layer_call_fn_2261293

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_22547312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
л
Г
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_2254731

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
л
Г
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_2255507

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
Џ
»
while_cond_2259248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2259248___redundant_placeholder05
1while_while_cond_2259248___redundant_placeholder15
1while_while_cond_2259248___redundant_placeholder25
1while_while_cond_2259248___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ƒ
I
-__inference_dropout_227_layer_call_fn_2261188

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_227_layer_call_and_return_conditional_losses_22570702
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
™\
†
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260461

inputs>
,lstm_cell_151_matmul_readvariableop_resource:@@
.lstm_cell_151_matmul_1_readvariableop_resource:@;
-lstm_cell_151_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_151/BiasAdd/ReadVariableOpҐ#lstm_cell_151/MatMul/ReadVariableOpҐ%lstm_cell_151/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_151/MatMul/ReadVariableOpѓ
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMulљ
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_151/MatMul_1/ReadVariableOpЂ
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMul_1£
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/addґ
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_151/BiasAdd/ReadVariableOp∞
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/BiasAddА
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_151/split/split_dimч
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_151/splitЙ
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/SigmoidН
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_1О
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mulА
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu†
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_1Х
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/add_1Н
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_2
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu_1§
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2260377*
condR
while_cond_2260376*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Д
ч
F__inference_dense_112_layer_call_and_return_conditional_losses_2257059

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
й

ь
lstm_150_while_cond_2258229.
*lstm_150_while_lstm_150_while_loop_counter4
0lstm_150_while_lstm_150_while_maximum_iterations
lstm_150_while_placeholder 
lstm_150_while_placeholder_1 
lstm_150_while_placeholder_2 
lstm_150_while_placeholder_30
,lstm_150_while_less_lstm_150_strided_slice_1G
Clstm_150_while_lstm_150_while_cond_2258229___redundant_placeholder0G
Clstm_150_while_lstm_150_while_cond_2258229___redundant_placeholder1G
Clstm_150_while_lstm_150_while_cond_2258229___redundant_placeholder2G
Clstm_150_while_lstm_150_while_cond_2258229___redundant_placeholder3
lstm_150_while_identity
Э
lstm_150/while/LessLesslstm_150_while_placeholder,lstm_150_while_less_lstm_150_strided_slice_1*
T0*
_output_shapes
: 2
lstm_150/while/Lessx
lstm_150/while/IdentityIdentitylstm_150/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_150/while/Identity";
lstm_150_while_identity lstm_150/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
І
і
*__inference_lstm_152_layer_call_fn_2260532

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_152_layer_call_and_return_conditional_losses_22574092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
в?
‘
while_body_2259249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_150_matmul_readvariableop_resource_0:@H
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_150_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_150_matmul_readvariableop_resource:@F
4while_lstm_cell_150_matmul_1_readvariableop_resource:@A
3while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_150/BiasAdd/ReadVariableOpҐ)while/lstm_cell_150/MatMul/ReadVariableOpҐ+while/lstm_cell_150/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_150/MatMul/ReadVariableOpў
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul—
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_150/MatMul_1/ReadVariableOp¬
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul_1ї
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/add 
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_150/BiasAdd/ReadVariableOp»
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/BiasAddМ
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_150/split/split_dimП
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_150/splitЫ
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/SigmoidЯ
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_1£
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mulТ
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/ReluЄ
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_1≠
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/add_1Я
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_2С
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Relu_1Љ
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Џ
»
while_cond_2259923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2259923___redundant_placeholder05
1while_while_cond_2259923___redundant_placeholder15
1while_while_cond_2259923___redundant_placeholder25
1while_while_cond_2259923___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
бл
ј$
#__inference__traced_restore_2261927
file_prefix3
!assignvariableop_dense_112_kernel:/
!assignvariableop_1_dense_112_bias:5
#assignvariableop_2_dense_113_kernel:/
!assignvariableop_3_dense_113_bias:5
#assignvariableop_4_dense_114_kernel:/
!assignvariableop_5_dense_114_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: C
1assignvariableop_11_lstm_150_lstm_cell_150_kernel:@M
;assignvariableop_12_lstm_150_lstm_cell_150_recurrent_kernel:@=
/assignvariableop_13_lstm_150_lstm_cell_150_bias:@C
1assignvariableop_14_lstm_151_lstm_cell_151_kernel:@M
;assignvariableop_15_lstm_151_lstm_cell_151_recurrent_kernel:@=
/assignvariableop_16_lstm_151_lstm_cell_151_bias:@C
1assignvariableop_17_lstm_152_lstm_cell_152_kernel:@M
;assignvariableop_18_lstm_152_lstm_cell_152_recurrent_kernel:@=
/assignvariableop_19_lstm_152_lstm_cell_152_bias:@#
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: =
+assignvariableop_24_adam_dense_112_kernel_m:7
)assignvariableop_25_adam_dense_112_bias_m:=
+assignvariableop_26_adam_dense_113_kernel_m:7
)assignvariableop_27_adam_dense_113_bias_m:=
+assignvariableop_28_adam_dense_114_kernel_m:7
)assignvariableop_29_adam_dense_114_bias_m:J
8assignvariableop_30_adam_lstm_150_lstm_cell_150_kernel_m:@T
Bassignvariableop_31_adam_lstm_150_lstm_cell_150_recurrent_kernel_m:@D
6assignvariableop_32_adam_lstm_150_lstm_cell_150_bias_m:@J
8assignvariableop_33_adam_lstm_151_lstm_cell_151_kernel_m:@T
Bassignvariableop_34_adam_lstm_151_lstm_cell_151_recurrent_kernel_m:@D
6assignvariableop_35_adam_lstm_151_lstm_cell_151_bias_m:@J
8assignvariableop_36_adam_lstm_152_lstm_cell_152_kernel_m:@T
Bassignvariableop_37_adam_lstm_152_lstm_cell_152_recurrent_kernel_m:@D
6assignvariableop_38_adam_lstm_152_lstm_cell_152_bias_m:@=
+assignvariableop_39_adam_dense_112_kernel_v:7
)assignvariableop_40_adam_dense_112_bias_v:=
+assignvariableop_41_adam_dense_113_kernel_v:7
)assignvariableop_42_adam_dense_113_bias_v:=
+assignvariableop_43_adam_dense_114_kernel_v:7
)assignvariableop_44_adam_dense_114_bias_v:J
8assignvariableop_45_adam_lstm_150_lstm_cell_150_kernel_v:@T
Bassignvariableop_46_adam_lstm_150_lstm_cell_150_recurrent_kernel_v:@D
6assignvariableop_47_adam_lstm_150_lstm_cell_150_bias_v:@J
8assignvariableop_48_adam_lstm_151_lstm_cell_151_kernel_v:@T
Bassignvariableop_49_adam_lstm_151_lstm_cell_151_recurrent_kernel_v:@D
6assignvariableop_50_adam_lstm_151_lstm_cell_151_bias_v:@J
8assignvariableop_51_adam_lstm_152_lstm_cell_152_kernel_v:@T
Bassignvariableop_52_adam_lstm_152_lstm_cell_152_recurrent_kernel_v:@D
6assignvariableop_53_adam_lstm_152_lstm_cell_152_bias_v:@
identity_55ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9¬
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*ќ
valueƒBЅ7B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesэ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Б
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЅ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*т
_output_shapesя
№:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity†
AssignVariableOpAssignVariableOp!assignvariableop_dense_112_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_112_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2®
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_113_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_113_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4®
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_114_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_114_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6°
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7£
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ґ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ѓ
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11є
AssignVariableOp_11AssignVariableOp1assignvariableop_11_lstm_150_lstm_cell_150_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12√
AssignVariableOp_12AssignVariableOp;assignvariableop_12_lstm_150_lstm_cell_150_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ј
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_150_lstm_cell_150_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14є
AssignVariableOp_14AssignVariableOp1assignvariableop_14_lstm_151_lstm_cell_151_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15√
AssignVariableOp_15AssignVariableOp;assignvariableop_15_lstm_151_lstm_cell_151_recurrent_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ј
AssignVariableOp_16AssignVariableOp/assignvariableop_16_lstm_151_lstm_cell_151_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17є
AssignVariableOp_17AssignVariableOp1assignvariableop_17_lstm_152_lstm_cell_152_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18√
AssignVariableOp_18AssignVariableOp;assignvariableop_18_lstm_152_lstm_cell_152_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ј
AssignVariableOp_19AssignVariableOp/assignvariableop_19_lstm_152_lstm_cell_152_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20°
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21°
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22£
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23£
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24≥
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_dense_112_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25±
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_112_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26≥
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_dense_113_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27±
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_113_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28≥
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_dense_114_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29±
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_114_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30ј
AssignVariableOp_30AssignVariableOp8assignvariableop_30_adam_lstm_150_lstm_cell_150_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31 
AssignVariableOp_31AssignVariableOpBassignvariableop_31_adam_lstm_150_lstm_cell_150_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Њ
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_150_lstm_cell_150_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33ј
AssignVariableOp_33AssignVariableOp8assignvariableop_33_adam_lstm_151_lstm_cell_151_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34 
AssignVariableOp_34AssignVariableOpBassignvariableop_34_adam_lstm_151_lstm_cell_151_recurrent_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Њ
AssignVariableOp_35AssignVariableOp6assignvariableop_35_adam_lstm_151_lstm_cell_151_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36ј
AssignVariableOp_36AssignVariableOp8assignvariableop_36_adam_lstm_152_lstm_cell_152_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37 
AssignVariableOp_37AssignVariableOpBassignvariableop_37_adam_lstm_152_lstm_cell_152_recurrent_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Њ
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_lstm_152_lstm_cell_152_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39≥
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_112_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40±
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_112_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41≥
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_113_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42±
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_113_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43≥
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_114_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44±
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_114_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45ј
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_lstm_150_lstm_cell_150_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46 
AssignVariableOp_46AssignVariableOpBassignvariableop_46_adam_lstm_150_lstm_cell_150_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Њ
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_lstm_150_lstm_cell_150_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48ј
AssignVariableOp_48AssignVariableOp8assignvariableop_48_adam_lstm_151_lstm_cell_151_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49 
AssignVariableOp_49AssignVariableOpBassignvariableop_49_adam_lstm_151_lstm_cell_151_recurrent_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Њ
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_lstm_151_lstm_cell_151_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51ј
AssignVariableOp_51AssignVariableOp8assignvariableop_51_adam_lstm_152_lstm_cell_152_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52 
AssignVariableOp_52AssignVariableOpBassignvariableop_52_adam_lstm_152_lstm_cell_152_recurrent_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53Њ
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_lstm_152_lstm_cell_152_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_539
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpВ

Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_54f
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_55к	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_55Identity_55:output:0*Б
_input_shapesp
n: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Џ
»
while_cond_2259550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2259550___redundant_placeholder05
1while_while_cond_2259550___redundant_placeholder15
1while_while_cond_2259550___redundant_placeholder25
1while_while_cond_2259550___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
л
Г
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_2255361

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
Д
ч
F__inference_dense_113_layer_call_and_return_conditional_losses_2257083

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2261051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2261051___redundant_placeholder05
1while_while_cond_2261051___redundant_placeholder15
1while_while_cond_2261051___redundant_placeholder25
1while_while_cond_2261051___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
х
Ш
+__inference_dense_114_layer_call_fn_2261266

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_22571062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
®

ч
F__inference_dense_114_layer_call_and_return_conditional_losses_2261276

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Е
f
H__inference_dropout_224_layer_call_and_return_conditional_losses_2256716

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¶
f
-__inference_dropout_228_layer_call_fn_2261240

inputs
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_228_layer_call_and_return_conditional_losses_22571762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
О
Ф
)sequential_38_lstm_152_while_cond_2254548J
Fsequential_38_lstm_152_while_sequential_38_lstm_152_while_loop_counterP
Lsequential_38_lstm_152_while_sequential_38_lstm_152_while_maximum_iterations,
(sequential_38_lstm_152_while_placeholder.
*sequential_38_lstm_152_while_placeholder_1.
*sequential_38_lstm_152_while_placeholder_2.
*sequential_38_lstm_152_while_placeholder_3L
Hsequential_38_lstm_152_while_less_sequential_38_lstm_152_strided_slice_1c
_sequential_38_lstm_152_while_sequential_38_lstm_152_while_cond_2254548___redundant_placeholder0c
_sequential_38_lstm_152_while_sequential_38_lstm_152_while_cond_2254548___redundant_placeholder1c
_sequential_38_lstm_152_while_sequential_38_lstm_152_while_cond_2254548___redundant_placeholder2c
_sequential_38_lstm_152_while_sequential_38_lstm_152_while_cond_2254548___redundant_placeholder3)
%sequential_38_lstm_152_while_identity
г
!sequential_38/lstm_152/while/LessLess(sequential_38_lstm_152_while_placeholderHsequential_38_lstm_152_while_less_sequential_38_lstm_152_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_38/lstm_152/while/LessҐ
%sequential_38/lstm_152/while/IdentityIdentity%sequential_38/lstm_152/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_38/lstm_152/while/Identity"W
%sequential_38_lstm_152_while_identity.sequential_38/lstm_152/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Џ
ґ
*__inference_lstm_151_layer_call_fn_2259835
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_151_layer_call_and_return_conditional_losses_22556542
StatefulPartitionedCallИ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
в?
‘
while_body_2260226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_151_matmul_readvariableop_resource_0:@H
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_151_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_151_matmul_readvariableop_resource:@F
4while_lstm_cell_151_matmul_1_readvariableop_resource:@A
3while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_151/BiasAdd/ReadVariableOpҐ)while/lstm_cell_151/MatMul/ReadVariableOpҐ+while/lstm_cell_151/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_151/MatMul/ReadVariableOpў
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul—
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_151/MatMul_1/ReadVariableOp¬
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul_1ї
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/add 
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_151/BiasAdd/ReadVariableOp»
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/BiasAddМ
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_151/split/split_dimП
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_151/splitЫ
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/SigmoidЯ
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_1£
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mulТ
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/ReluЄ
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_1≠
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/add_1Я
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_2С
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Relu_1Љ
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
л
Г
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_2254877

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
у
Е
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_2261440

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
ЇF
Л
E__inference_lstm_150_layer_call_and_return_conditional_losses_2254814

inputs'
lstm_cell_150_2254732:@'
lstm_cell_150_2254734:@#
lstm_cell_150_2254736:@
identityИҐ%lstm_cell_150/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2І
%lstm_cell_150/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_150_2254732lstm_cell_150_2254734lstm_cell_150_2254736*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_22547312'
%lstm_cell_150/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter»
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_150_2254732lstm_cell_150_2254734lstm_cell_150_2254736*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2254745*
condR
while_cond_2254744*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity~
NoOpNoOp&^lstm_cell_150/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2N
%lstm_cell_150/StatefulPartitionedCall%lstm_cell_150/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Н
/__inference_sequential_38_layer_call_fn_2257960
lstm_150_input
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:
identityИҐStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCalllstm_150_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_38_layer_call_and_return_conditional_losses_22578922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_namelstm_150_input
в?
‘
while_body_2259924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_151_matmul_readvariableop_resource_0:@H
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_151_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_151_matmul_readvariableop_resource:@F
4while_lstm_cell_151_matmul_1_readvariableop_resource:@A
3while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_151/BiasAdd/ReadVariableOpҐ)while/lstm_cell_151/MatMul/ReadVariableOpҐ+while/lstm_cell_151/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_151/MatMul/ReadVariableOpў
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul—
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_151/MatMul_1/ReadVariableOp¬
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul_1ї
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/add 
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_151/BiasAdd/ReadVariableOp»
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/BiasAddМ
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_151/split/split_dimП
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_151/splitЫ
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/SigmoidЯ
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_1£
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mulТ
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/ReluЄ
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_1≠
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/add_1Я
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_2С
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Relu_1Љ
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Џ
»
while_cond_2260225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2260225___redundant_placeholder05
1while_while_cond_2260225___redundant_placeholder15
1while_while_cond_2260225___redundant_placeholder25
1while_while_cond_2260225___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
эб
И
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258633

inputsG
5lstm_150_lstm_cell_150_matmul_readvariableop_resource:@I
7lstm_150_lstm_cell_150_matmul_1_readvariableop_resource:@D
6lstm_150_lstm_cell_150_biasadd_readvariableop_resource:@G
5lstm_151_lstm_cell_151_matmul_readvariableop_resource:@I
7lstm_151_lstm_cell_151_matmul_1_readvariableop_resource:@D
6lstm_151_lstm_cell_151_biasadd_readvariableop_resource:@G
5lstm_152_lstm_cell_152_matmul_readvariableop_resource:@I
7lstm_152_lstm_cell_152_matmul_1_readvariableop_resource:@D
6lstm_152_lstm_cell_152_biasadd_readvariableop_resource:@:
(dense_112_matmul_readvariableop_resource:7
)dense_112_biasadd_readvariableop_resource::
(dense_113_matmul_readvariableop_resource:7
)dense_113_biasadd_readvariableop_resource::
(dense_114_matmul_readvariableop_resource:7
)dense_114_biasadd_readvariableop_resource:
identityИҐ dense_112/BiasAdd/ReadVariableOpҐdense_112/MatMul/ReadVariableOpҐ dense_113/BiasAdd/ReadVariableOpҐdense_113/MatMul/ReadVariableOpҐ dense_114/BiasAdd/ReadVariableOpҐdense_114/MatMul/ReadVariableOpҐ-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOpҐ,lstm_150/lstm_cell_150/MatMul/ReadVariableOpҐ.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpҐlstm_150/whileҐ-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOpҐ,lstm_151/lstm_cell_151/MatMul/ReadVariableOpҐ.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpҐlstm_151/whileҐ-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOpҐ,lstm_152/lstm_cell_152/MatMul/ReadVariableOpҐ.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpҐlstm_152/whileV
lstm_150/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_150/ShapeЖ
lstm_150/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_150/strided_slice/stackК
lstm_150/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_150/strided_slice/stack_1К
lstm_150/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_150/strided_slice/stack_2Ш
lstm_150/strided_sliceStridedSlicelstm_150/Shape:output:0%lstm_150/strided_slice/stack:output:0'lstm_150/strided_slice/stack_1:output:0'lstm_150/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_150/strided_slicen
lstm_150/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/zeros/mul/yР
lstm_150/zeros/mulMullstm_150/strided_slice:output:0lstm_150/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_150/zeros/mulq
lstm_150/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_150/zeros/Less/yЛ
lstm_150/zeros/LessLesslstm_150/zeros/mul:z:0lstm_150/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_150/zeros/Lesst
lstm_150/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/zeros/packed/1І
lstm_150/zeros/packedPacklstm_150/strided_slice:output:0 lstm_150/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_150/zeros/packedq
lstm_150/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_150/zeros/ConstЩ
lstm_150/zerosFilllstm_150/zeros/packed:output:0lstm_150/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/zerosr
lstm_150/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/zeros_1/mul/yЦ
lstm_150/zeros_1/mulMullstm_150/strided_slice:output:0lstm_150/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_150/zeros_1/mulu
lstm_150/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_150/zeros_1/Less/yУ
lstm_150/zeros_1/LessLesslstm_150/zeros_1/mul:z:0 lstm_150/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_150/zeros_1/Lessx
lstm_150/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/zeros_1/packed/1≠
lstm_150/zeros_1/packedPacklstm_150/strided_slice:output:0"lstm_150/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_150/zeros_1/packedu
lstm_150/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_150/zeros_1/Const°
lstm_150/zeros_1Fill lstm_150/zeros_1/packed:output:0lstm_150/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/zeros_1З
lstm_150/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_150/transpose/permХ
lstm_150/transpose	Transposeinputs lstm_150/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_150/transposej
lstm_150/Shape_1Shapelstm_150/transpose:y:0*
T0*
_output_shapes
:2
lstm_150/Shape_1К
lstm_150/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_150/strided_slice_1/stackО
 lstm_150/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_1/stack_1О
 lstm_150/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_1/stack_2§
lstm_150/strided_slice_1StridedSlicelstm_150/Shape_1:output:0'lstm_150/strided_slice_1/stack:output:0)lstm_150/strided_slice_1/stack_1:output:0)lstm_150/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_150/strided_slice_1Ч
$lstm_150/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2&
$lstm_150/TensorArrayV2/element_shape÷
lstm_150/TensorArrayV2TensorListReserve-lstm_150/TensorArrayV2/element_shape:output:0!lstm_150/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_150/TensorArrayV2—
>lstm_150/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2@
>lstm_150/TensorArrayUnstack/TensorListFromTensor/element_shapeЬ
0lstm_150/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_150/transpose:y:0Glstm_150/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_150/TensorArrayUnstack/TensorListFromTensorК
lstm_150/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_150/strided_slice_2/stackО
 lstm_150/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_2/stack_1О
 lstm_150/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_2/stack_2≤
lstm_150/strided_slice_2StridedSlicelstm_150/transpose:y:0'lstm_150/strided_slice_2/stack:output:0)lstm_150/strided_slice_2/stack_1:output:0)lstm_150/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_150/strided_slice_2“
,lstm_150/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp5lstm_150_lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_150/lstm_cell_150/MatMul/ReadVariableOp”
lstm_150/lstm_cell_150/MatMulMatMul!lstm_150/strided_slice_2:output:04lstm_150/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_150/lstm_cell_150/MatMulЎ
.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp7lstm_150_lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpѕ
lstm_150/lstm_cell_150/MatMul_1MatMullstm_150/zeros:output:06lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_150/lstm_cell_150/MatMul_1«
lstm_150/lstm_cell_150/addAddV2'lstm_150/lstm_cell_150/MatMul:product:0)lstm_150/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_150/lstm_cell_150/add—
-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp6lstm_150_lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp‘
lstm_150/lstm_cell_150/BiasAddBiasAddlstm_150/lstm_cell_150/add:z:05lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
lstm_150/lstm_cell_150/BiasAddТ
&lstm_150/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_150/lstm_cell_150/split/split_dimЫ
lstm_150/lstm_cell_150/splitSplit/lstm_150/lstm_cell_150/split/split_dim:output:0'lstm_150/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_150/lstm_cell_150/split§
lstm_150/lstm_cell_150/SigmoidSigmoid%lstm_150/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
lstm_150/lstm_cell_150/Sigmoid®
 lstm_150/lstm_cell_150/Sigmoid_1Sigmoid%lstm_150/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_150/lstm_cell_150/Sigmoid_1≤
lstm_150/lstm_cell_150/mulMul$lstm_150/lstm_cell_150/Sigmoid_1:y:0lstm_150/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/mulЫ
lstm_150/lstm_cell_150/ReluRelu%lstm_150/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/Reluƒ
lstm_150/lstm_cell_150/mul_1Mul"lstm_150/lstm_cell_150/Sigmoid:y:0)lstm_150/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/mul_1є
lstm_150/lstm_cell_150/add_1AddV2lstm_150/lstm_cell_150/mul:z:0 lstm_150/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/add_1®
 lstm_150/lstm_cell_150/Sigmoid_2Sigmoid%lstm_150/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_150/lstm_cell_150/Sigmoid_2Ъ
lstm_150/lstm_cell_150/Relu_1Relu lstm_150/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/Relu_1»
lstm_150/lstm_cell_150/mul_2Mul$lstm_150/lstm_cell_150/Sigmoid_2:y:0+lstm_150/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/mul_2°
&lstm_150/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2(
&lstm_150/TensorArrayV2_1/element_shape№
lstm_150/TensorArrayV2_1TensorListReserve/lstm_150/TensorArrayV2_1/element_shape:output:0!lstm_150/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_150/TensorArrayV2_1`
lstm_150/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_150/timeС
!lstm_150/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!lstm_150/while/maximum_iterations|
lstm_150/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_150/while/loop_counterЧ
lstm_150/whileWhile$lstm_150/while/loop_counter:output:0*lstm_150/while/maximum_iterations:output:0lstm_150/time:output:0!lstm_150/TensorArrayV2_1:handle:0lstm_150/zeros:output:0lstm_150/zeros_1:output:0!lstm_150/strided_slice_1:output:0@lstm_150/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_150_lstm_cell_150_matmul_readvariableop_resource7lstm_150_lstm_cell_150_matmul_1_readvariableop_resource6lstm_150_lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_150_while_body_2258230*'
condR
lstm_150_while_cond_2258229*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
lstm_150/while«
9lstm_150/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2;
9lstm_150/TensorArrayV2Stack/TensorListStack/element_shapeМ
+lstm_150/TensorArrayV2Stack/TensorListStackTensorListStacklstm_150/while:output:3Blstm_150/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02-
+lstm_150/TensorArrayV2Stack/TensorListStackУ
lstm_150/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2 
lstm_150/strided_slice_3/stackО
 lstm_150/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_150/strided_slice_3/stack_1О
 lstm_150/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_3/stack_2–
lstm_150/strided_slice_3StridedSlice4lstm_150/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_150/strided_slice_3/stack:output:0)lstm_150/strided_slice_3/stack_1:output:0)lstm_150/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_150/strided_slice_3Л
lstm_150/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_150/transpose_1/perm…
lstm_150/transpose_1	Transpose4lstm_150/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_150/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_150/transpose_1x
lstm_150/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_150/runtimeИ
dropout_224/IdentityIdentitylstm_150/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout_224/Identitym
lstm_151/ShapeShapedropout_224/Identity:output:0*
T0*
_output_shapes
:2
lstm_151/ShapeЖ
lstm_151/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_151/strided_slice/stackК
lstm_151/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_151/strided_slice/stack_1К
lstm_151/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_151/strided_slice/stack_2Ш
lstm_151/strided_sliceStridedSlicelstm_151/Shape:output:0%lstm_151/strided_slice/stack:output:0'lstm_151/strided_slice/stack_1:output:0'lstm_151/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_151/strided_slicen
lstm_151/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/zeros/mul/yР
lstm_151/zeros/mulMullstm_151/strided_slice:output:0lstm_151/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_151/zeros/mulq
lstm_151/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_151/zeros/Less/yЛ
lstm_151/zeros/LessLesslstm_151/zeros/mul:z:0lstm_151/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_151/zeros/Lesst
lstm_151/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/zeros/packed/1І
lstm_151/zeros/packedPacklstm_151/strided_slice:output:0 lstm_151/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_151/zeros/packedq
lstm_151/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_151/zeros/ConstЩ
lstm_151/zerosFilllstm_151/zeros/packed:output:0lstm_151/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/zerosr
lstm_151/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/zeros_1/mul/yЦ
lstm_151/zeros_1/mulMullstm_151/strided_slice:output:0lstm_151/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_151/zeros_1/mulu
lstm_151/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_151/zeros_1/Less/yУ
lstm_151/zeros_1/LessLesslstm_151/zeros_1/mul:z:0 lstm_151/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_151/zeros_1/Lessx
lstm_151/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/zeros_1/packed/1≠
lstm_151/zeros_1/packedPacklstm_151/strided_slice:output:0"lstm_151/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_151/zeros_1/packedu
lstm_151/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_151/zeros_1/Const°
lstm_151/zeros_1Fill lstm_151/zeros_1/packed:output:0lstm_151/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/zeros_1З
lstm_151/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_151/transpose/permђ
lstm_151/transpose	Transposedropout_224/Identity:output:0 lstm_151/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_151/transposej
lstm_151/Shape_1Shapelstm_151/transpose:y:0*
T0*
_output_shapes
:2
lstm_151/Shape_1К
lstm_151/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_151/strided_slice_1/stackО
 lstm_151/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_1/stack_1О
 lstm_151/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_1/stack_2§
lstm_151/strided_slice_1StridedSlicelstm_151/Shape_1:output:0'lstm_151/strided_slice_1/stack:output:0)lstm_151/strided_slice_1/stack_1:output:0)lstm_151/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_151/strided_slice_1Ч
$lstm_151/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2&
$lstm_151/TensorArrayV2/element_shape÷
lstm_151/TensorArrayV2TensorListReserve-lstm_151/TensorArrayV2/element_shape:output:0!lstm_151/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_151/TensorArrayV2—
>lstm_151/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2@
>lstm_151/TensorArrayUnstack/TensorListFromTensor/element_shapeЬ
0lstm_151/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_151/transpose:y:0Glstm_151/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_151/TensorArrayUnstack/TensorListFromTensorК
lstm_151/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_151/strided_slice_2/stackО
 lstm_151/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_2/stack_1О
 lstm_151/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_2/stack_2≤
lstm_151/strided_slice_2StridedSlicelstm_151/transpose:y:0'lstm_151/strided_slice_2/stack:output:0)lstm_151/strided_slice_2/stack_1:output:0)lstm_151/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_151/strided_slice_2“
,lstm_151/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp5lstm_151_lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_151/lstm_cell_151/MatMul/ReadVariableOp”
lstm_151/lstm_cell_151/MatMulMatMul!lstm_151/strided_slice_2:output:04lstm_151/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_151/lstm_cell_151/MatMulЎ
.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp7lstm_151_lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpѕ
lstm_151/lstm_cell_151/MatMul_1MatMullstm_151/zeros:output:06lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_151/lstm_cell_151/MatMul_1«
lstm_151/lstm_cell_151/addAddV2'lstm_151/lstm_cell_151/MatMul:product:0)lstm_151/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_151/lstm_cell_151/add—
-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp6lstm_151_lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp‘
lstm_151/lstm_cell_151/BiasAddBiasAddlstm_151/lstm_cell_151/add:z:05lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
lstm_151/lstm_cell_151/BiasAddТ
&lstm_151/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_151/lstm_cell_151/split/split_dimЫ
lstm_151/lstm_cell_151/splitSplit/lstm_151/lstm_cell_151/split/split_dim:output:0'lstm_151/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_151/lstm_cell_151/split§
lstm_151/lstm_cell_151/SigmoidSigmoid%lstm_151/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
lstm_151/lstm_cell_151/Sigmoid®
 lstm_151/lstm_cell_151/Sigmoid_1Sigmoid%lstm_151/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_151/lstm_cell_151/Sigmoid_1≤
lstm_151/lstm_cell_151/mulMul$lstm_151/lstm_cell_151/Sigmoid_1:y:0lstm_151/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/mulЫ
lstm_151/lstm_cell_151/ReluRelu%lstm_151/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/Reluƒ
lstm_151/lstm_cell_151/mul_1Mul"lstm_151/lstm_cell_151/Sigmoid:y:0)lstm_151/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/mul_1є
lstm_151/lstm_cell_151/add_1AddV2lstm_151/lstm_cell_151/mul:z:0 lstm_151/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/add_1®
 lstm_151/lstm_cell_151/Sigmoid_2Sigmoid%lstm_151/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_151/lstm_cell_151/Sigmoid_2Ъ
lstm_151/lstm_cell_151/Relu_1Relu lstm_151/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/Relu_1»
lstm_151/lstm_cell_151/mul_2Mul$lstm_151/lstm_cell_151/Sigmoid_2:y:0+lstm_151/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/mul_2°
&lstm_151/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2(
&lstm_151/TensorArrayV2_1/element_shape№
lstm_151/TensorArrayV2_1TensorListReserve/lstm_151/TensorArrayV2_1/element_shape:output:0!lstm_151/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_151/TensorArrayV2_1`
lstm_151/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_151/timeС
!lstm_151/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!lstm_151/while/maximum_iterations|
lstm_151/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_151/while/loop_counterЧ
lstm_151/whileWhile$lstm_151/while/loop_counter:output:0*lstm_151/while/maximum_iterations:output:0lstm_151/time:output:0!lstm_151/TensorArrayV2_1:handle:0lstm_151/zeros:output:0lstm_151/zeros_1:output:0!lstm_151/strided_slice_1:output:0@lstm_151/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_151_lstm_cell_151_matmul_readvariableop_resource7lstm_151_lstm_cell_151_matmul_1_readvariableop_resource6lstm_151_lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_151_while_body_2258378*'
condR
lstm_151_while_cond_2258377*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
lstm_151/while«
9lstm_151/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2;
9lstm_151/TensorArrayV2Stack/TensorListStack/element_shapeМ
+lstm_151/TensorArrayV2Stack/TensorListStackTensorListStacklstm_151/while:output:3Blstm_151/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02-
+lstm_151/TensorArrayV2Stack/TensorListStackУ
lstm_151/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2 
lstm_151/strided_slice_3/stackО
 lstm_151/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_151/strided_slice_3/stack_1О
 lstm_151/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_3/stack_2–
lstm_151/strided_slice_3StridedSlice4lstm_151/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_151/strided_slice_3/stack:output:0)lstm_151/strided_slice_3/stack_1:output:0)lstm_151/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_151/strided_slice_3Л
lstm_151/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_151/transpose_1/perm…
lstm_151/transpose_1	Transpose4lstm_151/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_151/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_151/transpose_1x
lstm_151/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_151/runtimeИ
dropout_225/IdentityIdentitylstm_151/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout_225/Identitym
lstm_152/ShapeShapedropout_225/Identity:output:0*
T0*
_output_shapes
:2
lstm_152/ShapeЖ
lstm_152/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_152/strided_slice/stackК
lstm_152/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_152/strided_slice/stack_1К
lstm_152/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_152/strided_slice/stack_2Ш
lstm_152/strided_sliceStridedSlicelstm_152/Shape:output:0%lstm_152/strided_slice/stack:output:0'lstm_152/strided_slice/stack_1:output:0'lstm_152/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_152/strided_slicen
lstm_152/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/zeros/mul/yР
lstm_152/zeros/mulMullstm_152/strided_slice:output:0lstm_152/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_152/zeros/mulq
lstm_152/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_152/zeros/Less/yЛ
lstm_152/zeros/LessLesslstm_152/zeros/mul:z:0lstm_152/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_152/zeros/Lesst
lstm_152/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/zeros/packed/1І
lstm_152/zeros/packedPacklstm_152/strided_slice:output:0 lstm_152/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_152/zeros/packedq
lstm_152/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_152/zeros/ConstЩ
lstm_152/zerosFilllstm_152/zeros/packed:output:0lstm_152/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/zerosr
lstm_152/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/zeros_1/mul/yЦ
lstm_152/zeros_1/mulMullstm_152/strided_slice:output:0lstm_152/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_152/zeros_1/mulu
lstm_152/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_152/zeros_1/Less/yУ
lstm_152/zeros_1/LessLesslstm_152/zeros_1/mul:z:0 lstm_152/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_152/zeros_1/Lessx
lstm_152/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/zeros_1/packed/1≠
lstm_152/zeros_1/packedPacklstm_152/strided_slice:output:0"lstm_152/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_152/zeros_1/packedu
lstm_152/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_152/zeros_1/Const°
lstm_152/zeros_1Fill lstm_152/zeros_1/packed:output:0lstm_152/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/zeros_1З
lstm_152/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_152/transpose/permђ
lstm_152/transpose	Transposedropout_225/Identity:output:0 lstm_152/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_152/transposej
lstm_152/Shape_1Shapelstm_152/transpose:y:0*
T0*
_output_shapes
:2
lstm_152/Shape_1К
lstm_152/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_152/strided_slice_1/stackО
 lstm_152/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_1/stack_1О
 lstm_152/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_1/stack_2§
lstm_152/strided_slice_1StridedSlicelstm_152/Shape_1:output:0'lstm_152/strided_slice_1/stack:output:0)lstm_152/strided_slice_1/stack_1:output:0)lstm_152/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_152/strided_slice_1Ч
$lstm_152/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2&
$lstm_152/TensorArrayV2/element_shape÷
lstm_152/TensorArrayV2TensorListReserve-lstm_152/TensorArrayV2/element_shape:output:0!lstm_152/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_152/TensorArrayV2—
>lstm_152/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2@
>lstm_152/TensorArrayUnstack/TensorListFromTensor/element_shapeЬ
0lstm_152/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_152/transpose:y:0Glstm_152/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_152/TensorArrayUnstack/TensorListFromTensorК
lstm_152/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_152/strided_slice_2/stackО
 lstm_152/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_2/stack_1О
 lstm_152/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_2/stack_2≤
lstm_152/strided_slice_2StridedSlicelstm_152/transpose:y:0'lstm_152/strided_slice_2/stack:output:0)lstm_152/strided_slice_2/stack_1:output:0)lstm_152/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_152/strided_slice_2“
,lstm_152/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp5lstm_152_lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_152/lstm_cell_152/MatMul/ReadVariableOp”
lstm_152/lstm_cell_152/MatMulMatMul!lstm_152/strided_slice_2:output:04lstm_152/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_152/lstm_cell_152/MatMulЎ
.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp7lstm_152_lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpѕ
lstm_152/lstm_cell_152/MatMul_1MatMullstm_152/zeros:output:06lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_152/lstm_cell_152/MatMul_1«
lstm_152/lstm_cell_152/addAddV2'lstm_152/lstm_cell_152/MatMul:product:0)lstm_152/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_152/lstm_cell_152/add—
-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp6lstm_152_lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp‘
lstm_152/lstm_cell_152/BiasAddBiasAddlstm_152/lstm_cell_152/add:z:05lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
lstm_152/lstm_cell_152/BiasAddТ
&lstm_152/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_152/lstm_cell_152/split/split_dimЫ
lstm_152/lstm_cell_152/splitSplit/lstm_152/lstm_cell_152/split/split_dim:output:0'lstm_152/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_152/lstm_cell_152/split§
lstm_152/lstm_cell_152/SigmoidSigmoid%lstm_152/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
lstm_152/lstm_cell_152/Sigmoid®
 lstm_152/lstm_cell_152/Sigmoid_1Sigmoid%lstm_152/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_152/lstm_cell_152/Sigmoid_1≤
lstm_152/lstm_cell_152/mulMul$lstm_152/lstm_cell_152/Sigmoid_1:y:0lstm_152/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/mulЫ
lstm_152/lstm_cell_152/ReluRelu%lstm_152/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/Reluƒ
lstm_152/lstm_cell_152/mul_1Mul"lstm_152/lstm_cell_152/Sigmoid:y:0)lstm_152/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/mul_1є
lstm_152/lstm_cell_152/add_1AddV2lstm_152/lstm_cell_152/mul:z:0 lstm_152/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/add_1®
 lstm_152/lstm_cell_152/Sigmoid_2Sigmoid%lstm_152/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_152/lstm_cell_152/Sigmoid_2Ъ
lstm_152/lstm_cell_152/Relu_1Relu lstm_152/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/Relu_1»
lstm_152/lstm_cell_152/mul_2Mul$lstm_152/lstm_cell_152/Sigmoid_2:y:0+lstm_152/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/mul_2°
&lstm_152/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2(
&lstm_152/TensorArrayV2_1/element_shape№
lstm_152/TensorArrayV2_1TensorListReserve/lstm_152/TensorArrayV2_1/element_shape:output:0!lstm_152/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_152/TensorArrayV2_1`
lstm_152/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_152/timeС
!lstm_152/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!lstm_152/while/maximum_iterations|
lstm_152/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_152/while/loop_counterЧ
lstm_152/whileWhile$lstm_152/while/loop_counter:output:0*lstm_152/while/maximum_iterations:output:0lstm_152/time:output:0!lstm_152/TensorArrayV2_1:handle:0lstm_152/zeros:output:0lstm_152/zeros_1:output:0!lstm_152/strided_slice_1:output:0@lstm_152/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_152_lstm_cell_152_matmul_readvariableop_resource7lstm_152_lstm_cell_152_matmul_1_readvariableop_resource6lstm_152_lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_152_while_body_2258526*'
condR
lstm_152_while_cond_2258525*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
lstm_152/while«
9lstm_152/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2;
9lstm_152/TensorArrayV2Stack/TensorListStack/element_shapeМ
+lstm_152/TensorArrayV2Stack/TensorListStackTensorListStacklstm_152/while:output:3Blstm_152/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02-
+lstm_152/TensorArrayV2Stack/TensorListStackУ
lstm_152/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2 
lstm_152/strided_slice_3/stackО
 lstm_152/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_152/strided_slice_3/stack_1О
 lstm_152/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_3/stack_2–
lstm_152/strided_slice_3StridedSlice4lstm_152/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_152/strided_slice_3/stack:output:0)lstm_152/strided_slice_3/stack_1:output:0)lstm_152/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_152/strided_slice_3Л
lstm_152/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_152/transpose_1/perm…
lstm_152/transpose_1	Transpose4lstm_152/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_152/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_152/transpose_1x
lstm_152/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_152/runtimeН
dropout_226/IdentityIdentity!lstm_152/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_226/IdentityЂ
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_112/MatMul/ReadVariableOp®
dense_112/MatMulMatMuldropout_226/Identity:output:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_112/MatMul™
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_112/BiasAdd/ReadVariableOp©
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_112/BiasAddv
dense_112/ReluReludense_112/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_112/ReluИ
dropout_227/IdentityIdentitydense_112/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_227/IdentityЂ
dense_113/MatMul/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_113/MatMul/ReadVariableOp®
dense_113/MatMulMatMuldropout_227/Identity:output:0'dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_113/MatMul™
 dense_113/BiasAdd/ReadVariableOpReadVariableOp)dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_113/BiasAdd/ReadVariableOp©
dense_113/BiasAddBiasAdddense_113/MatMul:product:0(dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_113/BiasAddv
dense_113/ReluReludense_113/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_113/ReluИ
dropout_228/IdentityIdentitydense_113/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_228/IdentityЂ
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_114/MatMul/ReadVariableOp®
dense_114/MatMulMatMuldropout_228/Identity:output:0'dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_114/MatMul™
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_114/BiasAdd/ReadVariableOp©
dense_114/BiasAddBiasAdddense_114/MatMul:product:0(dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_114/BiasAddu
IdentityIdentitydense_114/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityА
NoOpNoOp!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp!^dense_113/BiasAdd/ReadVariableOp ^dense_113/MatMul/ReadVariableOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp.^lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp-^lstm_150/lstm_cell_150/MatMul/ReadVariableOp/^lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp^lstm_150/while.^lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp-^lstm_151/lstm_cell_151/MatMul/ReadVariableOp/^lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp^lstm_151/while.^lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp-^lstm_152/lstm_cell_152/MatMul/ReadVariableOp/^lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp^lstm_152/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp2D
 dense_113/BiasAdd/ReadVariableOp dense_113/BiasAdd/ReadVariableOp2B
dense_113/MatMul/ReadVariableOpdense_113/MatMul/ReadVariableOp2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp2^
-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp2\
,lstm_150/lstm_cell_150/MatMul/ReadVariableOp,lstm_150/lstm_cell_150/MatMul/ReadVariableOp2`
.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp2 
lstm_150/whilelstm_150/while2^
-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp2\
,lstm_151/lstm_cell_151/MatMul/ReadVariableOp,lstm_151/lstm_cell_151/MatMul/ReadVariableOp2`
.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp2 
lstm_151/whilelstm_151/while2^
-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp2\
,lstm_152/lstm_cell_152/MatMul/ReadVariableOp,lstm_152/lstm_cell_152/MatMul/ReadVariableOp2`
.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp2 
lstm_152/whilelstm_152/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2254954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2254954___redundant_placeholder05
1while_while_cond_2254954___redundant_placeholder15
1while_while_cond_2254954___redundant_placeholder25
1while_while_cond_2254954___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ѓ
і
*__inference_lstm_150_layer_call_fn_2259182

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_150_layer_call_and_return_conditional_losses_22578012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
∆Т
И
J__inference_sequential_38_layer_call_and_return_conditional_losses_2259138

inputsG
5lstm_150_lstm_cell_150_matmul_readvariableop_resource:@I
7lstm_150_lstm_cell_150_matmul_1_readvariableop_resource:@D
6lstm_150_lstm_cell_150_biasadd_readvariableop_resource:@G
5lstm_151_lstm_cell_151_matmul_readvariableop_resource:@I
7lstm_151_lstm_cell_151_matmul_1_readvariableop_resource:@D
6lstm_151_lstm_cell_151_biasadd_readvariableop_resource:@G
5lstm_152_lstm_cell_152_matmul_readvariableop_resource:@I
7lstm_152_lstm_cell_152_matmul_1_readvariableop_resource:@D
6lstm_152_lstm_cell_152_biasadd_readvariableop_resource:@:
(dense_112_matmul_readvariableop_resource:7
)dense_112_biasadd_readvariableop_resource::
(dense_113_matmul_readvariableop_resource:7
)dense_113_biasadd_readvariableop_resource::
(dense_114_matmul_readvariableop_resource:7
)dense_114_biasadd_readvariableop_resource:
identityИҐ dense_112/BiasAdd/ReadVariableOpҐdense_112/MatMul/ReadVariableOpҐ dense_113/BiasAdd/ReadVariableOpҐdense_113/MatMul/ReadVariableOpҐ dense_114/BiasAdd/ReadVariableOpҐdense_114/MatMul/ReadVariableOpҐ-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOpҐ,lstm_150/lstm_cell_150/MatMul/ReadVariableOpҐ.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpҐlstm_150/whileҐ-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOpҐ,lstm_151/lstm_cell_151/MatMul/ReadVariableOpҐ.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpҐlstm_151/whileҐ-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOpҐ,lstm_152/lstm_cell_152/MatMul/ReadVariableOpҐ.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpҐlstm_152/whileV
lstm_150/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_150/ShapeЖ
lstm_150/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_150/strided_slice/stackК
lstm_150/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_150/strided_slice/stack_1К
lstm_150/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_150/strided_slice/stack_2Ш
lstm_150/strided_sliceStridedSlicelstm_150/Shape:output:0%lstm_150/strided_slice/stack:output:0'lstm_150/strided_slice/stack_1:output:0'lstm_150/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_150/strided_slicen
lstm_150/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/zeros/mul/yР
lstm_150/zeros/mulMullstm_150/strided_slice:output:0lstm_150/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_150/zeros/mulq
lstm_150/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_150/zeros/Less/yЛ
lstm_150/zeros/LessLesslstm_150/zeros/mul:z:0lstm_150/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_150/zeros/Lesst
lstm_150/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/zeros/packed/1І
lstm_150/zeros/packedPacklstm_150/strided_slice:output:0 lstm_150/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_150/zeros/packedq
lstm_150/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_150/zeros/ConstЩ
lstm_150/zerosFilllstm_150/zeros/packed:output:0lstm_150/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/zerosr
lstm_150/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/zeros_1/mul/yЦ
lstm_150/zeros_1/mulMullstm_150/strided_slice:output:0lstm_150/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_150/zeros_1/mulu
lstm_150/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_150/zeros_1/Less/yУ
lstm_150/zeros_1/LessLesslstm_150/zeros_1/mul:z:0 lstm_150/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_150/zeros_1/Lessx
lstm_150/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/zeros_1/packed/1≠
lstm_150/zeros_1/packedPacklstm_150/strided_slice:output:0"lstm_150/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_150/zeros_1/packedu
lstm_150/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_150/zeros_1/Const°
lstm_150/zeros_1Fill lstm_150/zeros_1/packed:output:0lstm_150/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/zeros_1З
lstm_150/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_150/transpose/permХ
lstm_150/transpose	Transposeinputs lstm_150/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_150/transposej
lstm_150/Shape_1Shapelstm_150/transpose:y:0*
T0*
_output_shapes
:2
lstm_150/Shape_1К
lstm_150/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_150/strided_slice_1/stackО
 lstm_150/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_1/stack_1О
 lstm_150/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_1/stack_2§
lstm_150/strided_slice_1StridedSlicelstm_150/Shape_1:output:0'lstm_150/strided_slice_1/stack:output:0)lstm_150/strided_slice_1/stack_1:output:0)lstm_150/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_150/strided_slice_1Ч
$lstm_150/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2&
$lstm_150/TensorArrayV2/element_shape÷
lstm_150/TensorArrayV2TensorListReserve-lstm_150/TensorArrayV2/element_shape:output:0!lstm_150/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_150/TensorArrayV2—
>lstm_150/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2@
>lstm_150/TensorArrayUnstack/TensorListFromTensor/element_shapeЬ
0lstm_150/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_150/transpose:y:0Glstm_150/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_150/TensorArrayUnstack/TensorListFromTensorК
lstm_150/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_150/strided_slice_2/stackО
 lstm_150/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_2/stack_1О
 lstm_150/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_2/stack_2≤
lstm_150/strided_slice_2StridedSlicelstm_150/transpose:y:0'lstm_150/strided_slice_2/stack:output:0)lstm_150/strided_slice_2/stack_1:output:0)lstm_150/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_150/strided_slice_2“
,lstm_150/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp5lstm_150_lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_150/lstm_cell_150/MatMul/ReadVariableOp”
lstm_150/lstm_cell_150/MatMulMatMul!lstm_150/strided_slice_2:output:04lstm_150/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_150/lstm_cell_150/MatMulЎ
.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp7lstm_150_lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOpѕ
lstm_150/lstm_cell_150/MatMul_1MatMullstm_150/zeros:output:06lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_150/lstm_cell_150/MatMul_1«
lstm_150/lstm_cell_150/addAddV2'lstm_150/lstm_cell_150/MatMul:product:0)lstm_150/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_150/lstm_cell_150/add—
-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp6lstm_150_lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp‘
lstm_150/lstm_cell_150/BiasAddBiasAddlstm_150/lstm_cell_150/add:z:05lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
lstm_150/lstm_cell_150/BiasAddТ
&lstm_150/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_150/lstm_cell_150/split/split_dimЫ
lstm_150/lstm_cell_150/splitSplit/lstm_150/lstm_cell_150/split/split_dim:output:0'lstm_150/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_150/lstm_cell_150/split§
lstm_150/lstm_cell_150/SigmoidSigmoid%lstm_150/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
lstm_150/lstm_cell_150/Sigmoid®
 lstm_150/lstm_cell_150/Sigmoid_1Sigmoid%lstm_150/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_150/lstm_cell_150/Sigmoid_1≤
lstm_150/lstm_cell_150/mulMul$lstm_150/lstm_cell_150/Sigmoid_1:y:0lstm_150/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/mulЫ
lstm_150/lstm_cell_150/ReluRelu%lstm_150/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/Reluƒ
lstm_150/lstm_cell_150/mul_1Mul"lstm_150/lstm_cell_150/Sigmoid:y:0)lstm_150/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/mul_1є
lstm_150/lstm_cell_150/add_1AddV2lstm_150/lstm_cell_150/mul:z:0 lstm_150/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/add_1®
 lstm_150/lstm_cell_150/Sigmoid_2Sigmoid%lstm_150/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_150/lstm_cell_150/Sigmoid_2Ъ
lstm_150/lstm_cell_150/Relu_1Relu lstm_150/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/Relu_1»
lstm_150/lstm_cell_150/mul_2Mul$lstm_150/lstm_cell_150/Sigmoid_2:y:0+lstm_150/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/lstm_cell_150/mul_2°
&lstm_150/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2(
&lstm_150/TensorArrayV2_1/element_shape№
lstm_150/TensorArrayV2_1TensorListReserve/lstm_150/TensorArrayV2_1/element_shape:output:0!lstm_150/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_150/TensorArrayV2_1`
lstm_150/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_150/timeС
!lstm_150/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!lstm_150/while/maximum_iterations|
lstm_150/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_150/while/loop_counterЧ
lstm_150/whileWhile$lstm_150/while/loop_counter:output:0*lstm_150/while/maximum_iterations:output:0lstm_150/time:output:0!lstm_150/TensorArrayV2_1:handle:0lstm_150/zeros:output:0lstm_150/zeros_1:output:0!lstm_150/strided_slice_1:output:0@lstm_150/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_150_lstm_cell_150_matmul_readvariableop_resource7lstm_150_lstm_cell_150_matmul_1_readvariableop_resource6lstm_150_lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_150_while_body_2258700*'
condR
lstm_150_while_cond_2258699*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
lstm_150/while«
9lstm_150/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2;
9lstm_150/TensorArrayV2Stack/TensorListStack/element_shapeМ
+lstm_150/TensorArrayV2Stack/TensorListStackTensorListStacklstm_150/while:output:3Blstm_150/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02-
+lstm_150/TensorArrayV2Stack/TensorListStackУ
lstm_150/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2 
lstm_150/strided_slice_3/stackО
 lstm_150/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_150/strided_slice_3/stack_1О
 lstm_150/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_150/strided_slice_3/stack_2–
lstm_150/strided_slice_3StridedSlice4lstm_150/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_150/strided_slice_3/stack:output:0)lstm_150/strided_slice_3/stack_1:output:0)lstm_150/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_150/strided_slice_3Л
lstm_150/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_150/transpose_1/perm…
lstm_150/transpose_1	Transpose4lstm_150/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_150/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_150/transpose_1x
lstm_150/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_150/runtime{
dropout_224/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_224/dropout/Const≠
dropout_224/dropout/MulMullstm_150/transpose_1:y:0"dropout_224/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout_224/dropout/Mul~
dropout_224/dropout/ShapeShapelstm_150/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_224/dropout/Shape№
0dropout_224/dropout/random_uniform/RandomUniformRandomUniform"dropout_224/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype022
0dropout_224/dropout/random_uniform/RandomUniformН
"dropout_224/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2$
"dropout_224/dropout/GreaterEqual/yт
 dropout_224/dropout/GreaterEqualGreaterEqual9dropout_224/dropout/random_uniform/RandomUniform:output:0+dropout_224/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"
 dropout_224/dropout/GreaterEqualІ
dropout_224/dropout/CastCast$dropout_224/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€2
dropout_224/dropout/CastЃ
dropout_224/dropout/Mul_1Muldropout_224/dropout/Mul:z:0dropout_224/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout_224/dropout/Mul_1m
lstm_151/ShapeShapedropout_224/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_151/ShapeЖ
lstm_151/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_151/strided_slice/stackК
lstm_151/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_151/strided_slice/stack_1К
lstm_151/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_151/strided_slice/stack_2Ш
lstm_151/strided_sliceStridedSlicelstm_151/Shape:output:0%lstm_151/strided_slice/stack:output:0'lstm_151/strided_slice/stack_1:output:0'lstm_151/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_151/strided_slicen
lstm_151/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/zeros/mul/yР
lstm_151/zeros/mulMullstm_151/strided_slice:output:0lstm_151/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_151/zeros/mulq
lstm_151/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_151/zeros/Less/yЛ
lstm_151/zeros/LessLesslstm_151/zeros/mul:z:0lstm_151/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_151/zeros/Lesst
lstm_151/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/zeros/packed/1І
lstm_151/zeros/packedPacklstm_151/strided_slice:output:0 lstm_151/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_151/zeros/packedq
lstm_151/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_151/zeros/ConstЩ
lstm_151/zerosFilllstm_151/zeros/packed:output:0lstm_151/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/zerosr
lstm_151/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/zeros_1/mul/yЦ
lstm_151/zeros_1/mulMullstm_151/strided_slice:output:0lstm_151/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_151/zeros_1/mulu
lstm_151/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_151/zeros_1/Less/yУ
lstm_151/zeros_1/LessLesslstm_151/zeros_1/mul:z:0 lstm_151/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_151/zeros_1/Lessx
lstm_151/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/zeros_1/packed/1≠
lstm_151/zeros_1/packedPacklstm_151/strided_slice:output:0"lstm_151/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_151/zeros_1/packedu
lstm_151/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_151/zeros_1/Const°
lstm_151/zeros_1Fill lstm_151/zeros_1/packed:output:0lstm_151/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/zeros_1З
lstm_151/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_151/transpose/permђ
lstm_151/transpose	Transposedropout_224/dropout/Mul_1:z:0 lstm_151/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_151/transposej
lstm_151/Shape_1Shapelstm_151/transpose:y:0*
T0*
_output_shapes
:2
lstm_151/Shape_1К
lstm_151/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_151/strided_slice_1/stackО
 lstm_151/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_1/stack_1О
 lstm_151/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_1/stack_2§
lstm_151/strided_slice_1StridedSlicelstm_151/Shape_1:output:0'lstm_151/strided_slice_1/stack:output:0)lstm_151/strided_slice_1/stack_1:output:0)lstm_151/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_151/strided_slice_1Ч
$lstm_151/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2&
$lstm_151/TensorArrayV2/element_shape÷
lstm_151/TensorArrayV2TensorListReserve-lstm_151/TensorArrayV2/element_shape:output:0!lstm_151/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_151/TensorArrayV2—
>lstm_151/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2@
>lstm_151/TensorArrayUnstack/TensorListFromTensor/element_shapeЬ
0lstm_151/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_151/transpose:y:0Glstm_151/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_151/TensorArrayUnstack/TensorListFromTensorК
lstm_151/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_151/strided_slice_2/stackО
 lstm_151/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_2/stack_1О
 lstm_151/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_2/stack_2≤
lstm_151/strided_slice_2StridedSlicelstm_151/transpose:y:0'lstm_151/strided_slice_2/stack:output:0)lstm_151/strided_slice_2/stack_1:output:0)lstm_151/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_151/strided_slice_2“
,lstm_151/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp5lstm_151_lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_151/lstm_cell_151/MatMul/ReadVariableOp”
lstm_151/lstm_cell_151/MatMulMatMul!lstm_151/strided_slice_2:output:04lstm_151/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_151/lstm_cell_151/MatMulЎ
.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp7lstm_151_lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOpѕ
lstm_151/lstm_cell_151/MatMul_1MatMullstm_151/zeros:output:06lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_151/lstm_cell_151/MatMul_1«
lstm_151/lstm_cell_151/addAddV2'lstm_151/lstm_cell_151/MatMul:product:0)lstm_151/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_151/lstm_cell_151/add—
-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp6lstm_151_lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp‘
lstm_151/lstm_cell_151/BiasAddBiasAddlstm_151/lstm_cell_151/add:z:05lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
lstm_151/lstm_cell_151/BiasAddТ
&lstm_151/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_151/lstm_cell_151/split/split_dimЫ
lstm_151/lstm_cell_151/splitSplit/lstm_151/lstm_cell_151/split/split_dim:output:0'lstm_151/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_151/lstm_cell_151/split§
lstm_151/lstm_cell_151/SigmoidSigmoid%lstm_151/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
lstm_151/lstm_cell_151/Sigmoid®
 lstm_151/lstm_cell_151/Sigmoid_1Sigmoid%lstm_151/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_151/lstm_cell_151/Sigmoid_1≤
lstm_151/lstm_cell_151/mulMul$lstm_151/lstm_cell_151/Sigmoid_1:y:0lstm_151/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/mulЫ
lstm_151/lstm_cell_151/ReluRelu%lstm_151/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/Reluƒ
lstm_151/lstm_cell_151/mul_1Mul"lstm_151/lstm_cell_151/Sigmoid:y:0)lstm_151/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/mul_1є
lstm_151/lstm_cell_151/add_1AddV2lstm_151/lstm_cell_151/mul:z:0 lstm_151/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/add_1®
 lstm_151/lstm_cell_151/Sigmoid_2Sigmoid%lstm_151/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_151/lstm_cell_151/Sigmoid_2Ъ
lstm_151/lstm_cell_151/Relu_1Relu lstm_151/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/Relu_1»
lstm_151/lstm_cell_151/mul_2Mul$lstm_151/lstm_cell_151/Sigmoid_2:y:0+lstm_151/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/lstm_cell_151/mul_2°
&lstm_151/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2(
&lstm_151/TensorArrayV2_1/element_shape№
lstm_151/TensorArrayV2_1TensorListReserve/lstm_151/TensorArrayV2_1/element_shape:output:0!lstm_151/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_151/TensorArrayV2_1`
lstm_151/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_151/timeС
!lstm_151/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!lstm_151/while/maximum_iterations|
lstm_151/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_151/while/loop_counterЧ
lstm_151/whileWhile$lstm_151/while/loop_counter:output:0*lstm_151/while/maximum_iterations:output:0lstm_151/time:output:0!lstm_151/TensorArrayV2_1:handle:0lstm_151/zeros:output:0lstm_151/zeros_1:output:0!lstm_151/strided_slice_1:output:0@lstm_151/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_151_lstm_cell_151_matmul_readvariableop_resource7lstm_151_lstm_cell_151_matmul_1_readvariableop_resource6lstm_151_lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_151_while_body_2258855*'
condR
lstm_151_while_cond_2258854*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
lstm_151/while«
9lstm_151/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2;
9lstm_151/TensorArrayV2Stack/TensorListStack/element_shapeМ
+lstm_151/TensorArrayV2Stack/TensorListStackTensorListStacklstm_151/while:output:3Blstm_151/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02-
+lstm_151/TensorArrayV2Stack/TensorListStackУ
lstm_151/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2 
lstm_151/strided_slice_3/stackО
 lstm_151/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_151/strided_slice_3/stack_1О
 lstm_151/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_151/strided_slice_3/stack_2–
lstm_151/strided_slice_3StridedSlice4lstm_151/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_151/strided_slice_3/stack:output:0)lstm_151/strided_slice_3/stack_1:output:0)lstm_151/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_151/strided_slice_3Л
lstm_151/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_151/transpose_1/perm…
lstm_151/transpose_1	Transpose4lstm_151/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_151/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_151/transpose_1x
lstm_151/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_151/runtime{
dropout_225/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_225/dropout/Const≠
dropout_225/dropout/MulMullstm_151/transpose_1:y:0"dropout_225/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout_225/dropout/Mul~
dropout_225/dropout/ShapeShapelstm_151/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_225/dropout/Shape№
0dropout_225/dropout/random_uniform/RandomUniformRandomUniform"dropout_225/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype022
0dropout_225/dropout/random_uniform/RandomUniformН
"dropout_225/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2$
"dropout_225/dropout/GreaterEqual/yт
 dropout_225/dropout/GreaterEqualGreaterEqual9dropout_225/dropout/random_uniform/RandomUniform:output:0+dropout_225/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"
 dropout_225/dropout/GreaterEqualІ
dropout_225/dropout/CastCast$dropout_225/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€2
dropout_225/dropout/CastЃ
dropout_225/dropout/Mul_1Muldropout_225/dropout/Mul:z:0dropout_225/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout_225/dropout/Mul_1m
lstm_152/ShapeShapedropout_225/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_152/ShapeЖ
lstm_152/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_152/strided_slice/stackК
lstm_152/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_152/strided_slice/stack_1К
lstm_152/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_152/strided_slice/stack_2Ш
lstm_152/strided_sliceStridedSlicelstm_152/Shape:output:0%lstm_152/strided_slice/stack:output:0'lstm_152/strided_slice/stack_1:output:0'lstm_152/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_152/strided_slicen
lstm_152/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/zeros/mul/yР
lstm_152/zeros/mulMullstm_152/strided_slice:output:0lstm_152/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_152/zeros/mulq
lstm_152/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_152/zeros/Less/yЛ
lstm_152/zeros/LessLesslstm_152/zeros/mul:z:0lstm_152/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_152/zeros/Lesst
lstm_152/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/zeros/packed/1І
lstm_152/zeros/packedPacklstm_152/strided_slice:output:0 lstm_152/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_152/zeros/packedq
lstm_152/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_152/zeros/ConstЩ
lstm_152/zerosFilllstm_152/zeros/packed:output:0lstm_152/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/zerosr
lstm_152/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/zeros_1/mul/yЦ
lstm_152/zeros_1/mulMullstm_152/strided_slice:output:0lstm_152/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_152/zeros_1/mulu
lstm_152/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_152/zeros_1/Less/yУ
lstm_152/zeros_1/LessLesslstm_152/zeros_1/mul:z:0 lstm_152/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_152/zeros_1/Lessx
lstm_152/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_152/zeros_1/packed/1≠
lstm_152/zeros_1/packedPacklstm_152/strided_slice:output:0"lstm_152/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_152/zeros_1/packedu
lstm_152/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_152/zeros_1/Const°
lstm_152/zeros_1Fill lstm_152/zeros_1/packed:output:0lstm_152/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/zeros_1З
lstm_152/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_152/transpose/permђ
lstm_152/transpose	Transposedropout_225/dropout/Mul_1:z:0 lstm_152/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_152/transposej
lstm_152/Shape_1Shapelstm_152/transpose:y:0*
T0*
_output_shapes
:2
lstm_152/Shape_1К
lstm_152/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_152/strided_slice_1/stackО
 lstm_152/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_1/stack_1О
 lstm_152/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_1/stack_2§
lstm_152/strided_slice_1StridedSlicelstm_152/Shape_1:output:0'lstm_152/strided_slice_1/stack:output:0)lstm_152/strided_slice_1/stack_1:output:0)lstm_152/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_152/strided_slice_1Ч
$lstm_152/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2&
$lstm_152/TensorArrayV2/element_shape÷
lstm_152/TensorArrayV2TensorListReserve-lstm_152/TensorArrayV2/element_shape:output:0!lstm_152/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_152/TensorArrayV2—
>lstm_152/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2@
>lstm_152/TensorArrayUnstack/TensorListFromTensor/element_shapeЬ
0lstm_152/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_152/transpose:y:0Glstm_152/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_152/TensorArrayUnstack/TensorListFromTensorК
lstm_152/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_152/strided_slice_2/stackО
 lstm_152/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_2/stack_1О
 lstm_152/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_2/stack_2≤
lstm_152/strided_slice_2StridedSlicelstm_152/transpose:y:0'lstm_152/strided_slice_2/stack:output:0)lstm_152/strided_slice_2/stack_1:output:0)lstm_152/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_152/strided_slice_2“
,lstm_152/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp5lstm_152_lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_152/lstm_cell_152/MatMul/ReadVariableOp”
lstm_152/lstm_cell_152/MatMulMatMul!lstm_152/strided_slice_2:output:04lstm_152/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_152/lstm_cell_152/MatMulЎ
.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp7lstm_152_lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOpѕ
lstm_152/lstm_cell_152/MatMul_1MatMullstm_152/zeros:output:06lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_152/lstm_cell_152/MatMul_1«
lstm_152/lstm_cell_152/addAddV2'lstm_152/lstm_cell_152/MatMul:product:0)lstm_152/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_152/lstm_cell_152/add—
-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp6lstm_152_lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp‘
lstm_152/lstm_cell_152/BiasAddBiasAddlstm_152/lstm_cell_152/add:z:05lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
lstm_152/lstm_cell_152/BiasAddТ
&lstm_152/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_152/lstm_cell_152/split/split_dimЫ
lstm_152/lstm_cell_152/splitSplit/lstm_152/lstm_cell_152/split/split_dim:output:0'lstm_152/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_152/lstm_cell_152/split§
lstm_152/lstm_cell_152/SigmoidSigmoid%lstm_152/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
lstm_152/lstm_cell_152/Sigmoid®
 lstm_152/lstm_cell_152/Sigmoid_1Sigmoid%lstm_152/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_152/lstm_cell_152/Sigmoid_1≤
lstm_152/lstm_cell_152/mulMul$lstm_152/lstm_cell_152/Sigmoid_1:y:0lstm_152/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/mulЫ
lstm_152/lstm_cell_152/ReluRelu%lstm_152/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/Reluƒ
lstm_152/lstm_cell_152/mul_1Mul"lstm_152/lstm_cell_152/Sigmoid:y:0)lstm_152/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/mul_1є
lstm_152/lstm_cell_152/add_1AddV2lstm_152/lstm_cell_152/mul:z:0 lstm_152/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/add_1®
 lstm_152/lstm_cell_152/Sigmoid_2Sigmoid%lstm_152/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_152/lstm_cell_152/Sigmoid_2Ъ
lstm_152/lstm_cell_152/Relu_1Relu lstm_152/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/Relu_1»
lstm_152/lstm_cell_152/mul_2Mul$lstm_152/lstm_cell_152/Sigmoid_2:y:0+lstm_152/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_152/lstm_cell_152/mul_2°
&lstm_152/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2(
&lstm_152/TensorArrayV2_1/element_shape№
lstm_152/TensorArrayV2_1TensorListReserve/lstm_152/TensorArrayV2_1/element_shape:output:0!lstm_152/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_152/TensorArrayV2_1`
lstm_152/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_152/timeС
!lstm_152/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!lstm_152/while/maximum_iterations|
lstm_152/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_152/while/loop_counterЧ
lstm_152/whileWhile$lstm_152/while/loop_counter:output:0*lstm_152/while/maximum_iterations:output:0lstm_152/time:output:0!lstm_152/TensorArrayV2_1:handle:0lstm_152/zeros:output:0lstm_152/zeros_1:output:0!lstm_152/strided_slice_1:output:0@lstm_152/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_152_lstm_cell_152_matmul_readvariableop_resource7lstm_152_lstm_cell_152_matmul_1_readvariableop_resource6lstm_152_lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_152_while_body_2259010*'
condR
lstm_152_while_cond_2259009*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
lstm_152/while«
9lstm_152/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2;
9lstm_152/TensorArrayV2Stack/TensorListStack/element_shapeМ
+lstm_152/TensorArrayV2Stack/TensorListStackTensorListStacklstm_152/while:output:3Blstm_152/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02-
+lstm_152/TensorArrayV2Stack/TensorListStackУ
lstm_152/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2 
lstm_152/strided_slice_3/stackО
 lstm_152/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_152/strided_slice_3/stack_1О
 lstm_152/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_152/strided_slice_3/stack_2–
lstm_152/strided_slice_3StridedSlice4lstm_152/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_152/strided_slice_3/stack:output:0)lstm_152/strided_slice_3/stack_1:output:0)lstm_152/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_152/strided_slice_3Л
lstm_152/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_152/transpose_1/perm…
lstm_152/transpose_1	Transpose4lstm_152/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_152/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_152/transpose_1x
lstm_152/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_152/runtime{
dropout_226/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_226/dropout/Const≤
dropout_226/dropout/MulMul!lstm_152/strided_slice_3:output:0"dropout_226/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_226/dropout/MulЗ
dropout_226/dropout/ShapeShape!lstm_152/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_226/dropout/ShapeЎ
0dropout_226/dropout/random_uniform/RandomUniformRandomUniform"dropout_226/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype022
0dropout_226/dropout/random_uniform/RandomUniformН
"dropout_226/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2$
"dropout_226/dropout/GreaterEqual/yо
 dropout_226/dropout/GreaterEqualGreaterEqual9dropout_226/dropout/random_uniform/RandomUniform:output:0+dropout_226/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2"
 dropout_226/dropout/GreaterEqual£
dropout_226/dropout/CastCast$dropout_226/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout_226/dropout/Cast™
dropout_226/dropout/Mul_1Muldropout_226/dropout/Mul:z:0dropout_226/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_226/dropout/Mul_1Ђ
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_112/MatMul/ReadVariableOp®
dense_112/MatMulMatMuldropout_226/dropout/Mul_1:z:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_112/MatMul™
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_112/BiasAdd/ReadVariableOp©
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_112/BiasAddv
dense_112/ReluReludense_112/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_112/Relu{
dropout_227/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_227/dropout/Const≠
dropout_227/dropout/MulMuldense_112/Relu:activations:0"dropout_227/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_227/dropout/MulВ
dropout_227/dropout/ShapeShapedense_112/Relu:activations:0*
T0*
_output_shapes
:2
dropout_227/dropout/ShapeЎ
0dropout_227/dropout/random_uniform/RandomUniformRandomUniform"dropout_227/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype022
0dropout_227/dropout/random_uniform/RandomUniformН
"dropout_227/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2$
"dropout_227/dropout/GreaterEqual/yо
 dropout_227/dropout/GreaterEqualGreaterEqual9dropout_227/dropout/random_uniform/RandomUniform:output:0+dropout_227/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2"
 dropout_227/dropout/GreaterEqual£
dropout_227/dropout/CastCast$dropout_227/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout_227/dropout/Cast™
dropout_227/dropout/Mul_1Muldropout_227/dropout/Mul:z:0dropout_227/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_227/dropout/Mul_1Ђ
dense_113/MatMul/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_113/MatMul/ReadVariableOp®
dense_113/MatMulMatMuldropout_227/dropout/Mul_1:z:0'dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_113/MatMul™
 dense_113/BiasAdd/ReadVariableOpReadVariableOp)dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_113/BiasAdd/ReadVariableOp©
dense_113/BiasAddBiasAdddense_113/MatMul:product:0(dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_113/BiasAddv
dense_113/ReluReludense_113/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_113/Relu{
dropout_228/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_228/dropout/Const≠
dropout_228/dropout/MulMuldense_113/Relu:activations:0"dropout_228/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_228/dropout/MulВ
dropout_228/dropout/ShapeShapedense_113/Relu:activations:0*
T0*
_output_shapes
:2
dropout_228/dropout/ShapeЎ
0dropout_228/dropout/random_uniform/RandomUniformRandomUniform"dropout_228/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype022
0dropout_228/dropout/random_uniform/RandomUniformН
"dropout_228/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2$
"dropout_228/dropout/GreaterEqual/yо
 dropout_228/dropout/GreaterEqualGreaterEqual9dropout_228/dropout/random_uniform/RandomUniform:output:0+dropout_228/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2"
 dropout_228/dropout/GreaterEqual£
dropout_228/dropout/CastCast$dropout_228/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout_228/dropout/Cast™
dropout_228/dropout/Mul_1Muldropout_228/dropout/Mul:z:0dropout_228/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_228/dropout/Mul_1Ђ
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_114/MatMul/ReadVariableOp®
dense_114/MatMulMatMuldropout_228/dropout/Mul_1:z:0'dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_114/MatMul™
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_114/BiasAdd/ReadVariableOp©
dense_114/BiasAddBiasAdddense_114/MatMul:product:0(dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_114/BiasAddu
IdentityIdentitydense_114/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityА
NoOpNoOp!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp!^dense_113/BiasAdd/ReadVariableOp ^dense_113/MatMul/ReadVariableOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp.^lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp-^lstm_150/lstm_cell_150/MatMul/ReadVariableOp/^lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp^lstm_150/while.^lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp-^lstm_151/lstm_cell_151/MatMul/ReadVariableOp/^lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp^lstm_151/while.^lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp-^lstm_152/lstm_cell_152/MatMul/ReadVariableOp/^lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp^lstm_152/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp2D
 dense_113/BiasAdd/ReadVariableOp dense_113/BiasAdd/ReadVariableOp2B
dense_113/MatMul/ReadVariableOpdense_113/MatMul/ReadVariableOp2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp2^
-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp-lstm_150/lstm_cell_150/BiasAdd/ReadVariableOp2\
,lstm_150/lstm_cell_150/MatMul/ReadVariableOp,lstm_150/lstm_cell_150/MatMul/ReadVariableOp2`
.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp.lstm_150/lstm_cell_150/MatMul_1/ReadVariableOp2 
lstm_150/whilelstm_150/while2^
-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp-lstm_151/lstm_cell_151/BiasAdd/ReadVariableOp2\
,lstm_151/lstm_cell_151/MatMul/ReadVariableOp,lstm_151/lstm_cell_151/MatMul/ReadVariableOp2`
.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp.lstm_151/lstm_cell_151/MatMul_1/ReadVariableOp2 
lstm_151/whilelstm_151/while2^
-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp-lstm_152/lstm_cell_152/BiasAdd/ReadVariableOp2\
,lstm_152/lstm_cell_152/MatMul/ReadVariableOp,lstm_152/lstm_cell_152/MatMul/ReadVariableOp2`
.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp.lstm_152/lstm_cell_152/MatMul_1/ReadVariableOp2 
lstm_152/whilelstm_152/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
у
Е
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_2261472

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
Ѓ3
»
J__inference_sequential_38_layer_call_and_return_conditional_losses_2257113

inputs"
lstm_150_2256704:@"
lstm_150_2256706:@
lstm_150_2256708:@"
lstm_151_2256869:@"
lstm_151_2256871:@
lstm_151_2256873:@"
lstm_152_2257034:@"
lstm_152_2257036:@
lstm_152_2257038:@#
dense_112_2257060:
dense_112_2257062:#
dense_113_2257084:
dense_113_2257086:#
dense_114_2257107:
dense_114_2257109:
identityИҐ!dense_112/StatefulPartitionedCallҐ!dense_113/StatefulPartitionedCallҐ!dense_114/StatefulPartitionedCallҐ lstm_150/StatefulPartitionedCallҐ lstm_151/StatefulPartitionedCallҐ lstm_152/StatefulPartitionedCallѓ
 lstm_150/StatefulPartitionedCallStatefulPartitionedCallinputslstm_150_2256704lstm_150_2256706lstm_150_2256708*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_150_layer_call_and_return_conditional_losses_22567032"
 lstm_150/StatefulPartitionedCallЕ
dropout_224/PartitionedCallPartitionedCall)lstm_150/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_224_layer_call_and_return_conditional_losses_22567162
dropout_224/PartitionedCallЌ
 lstm_151/StatefulPartitionedCallStatefulPartitionedCall$dropout_224/PartitionedCall:output:0lstm_151_2256869lstm_151_2256871lstm_151_2256873*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_151_layer_call_and_return_conditional_losses_22568682"
 lstm_151/StatefulPartitionedCallЕ
dropout_225/PartitionedCallPartitionedCall)lstm_151/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_225_layer_call_and_return_conditional_losses_22568812
dropout_225/PartitionedCall…
 lstm_152/StatefulPartitionedCallStatefulPartitionedCall$dropout_225/PartitionedCall:output:0lstm_152_2257034lstm_152_2257036lstm_152_2257038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_152_layer_call_and_return_conditional_losses_22570332"
 lstm_152/StatefulPartitionedCallБ
dropout_226/PartitionedCallPartitionedCall)lstm_152/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_226_layer_call_and_return_conditional_losses_22570462
dropout_226/PartitionedCallЇ
!dense_112/StatefulPartitionedCallStatefulPartitionedCall$dropout_226/PartitionedCall:output:0dense_112_2257060dense_112_2257062*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_112_layer_call_and_return_conditional_losses_22570592#
!dense_112/StatefulPartitionedCallВ
dropout_227/PartitionedCallPartitionedCall*dense_112/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_227_layer_call_and_return_conditional_losses_22570702
dropout_227/PartitionedCallЇ
!dense_113/StatefulPartitionedCallStatefulPartitionedCall$dropout_227/PartitionedCall:output:0dense_113_2257084dense_113_2257086*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_22570832#
!dense_113/StatefulPartitionedCallВ
dropout_228/PartitionedCallPartitionedCall*dense_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_228_layer_call_and_return_conditional_losses_22570942
dropout_228/PartitionedCallЇ
!dense_114/StatefulPartitionedCallStatefulPartitionedCall$dropout_228/PartitionedCall:output:0dense_114_2257107dense_114_2257109*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_22571062#
!dense_114/StatefulPartitionedCallЕ
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity£
NoOpNoOp"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall!^lstm_150/StatefulPartitionedCall!^lstm_151/StatefulPartitionedCall!^lstm_152/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2D
 lstm_150/StatefulPartitionedCall lstm_150/StatefulPartitionedCall2D
 lstm_151/StatefulPartitionedCall lstm_151/StatefulPartitionedCall2D
 lstm_152/StatefulPartitionedCall lstm_152/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
™\
†
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259635

inputs>
,lstm_cell_150_matmul_readvariableop_resource:@@
.lstm_cell_150_matmul_1_readvariableop_resource:@;
-lstm_cell_150_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_150/BiasAdd/ReadVariableOpҐ#lstm_cell_150/MatMul/ReadVariableOpҐ%lstm_cell_150/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_150/MatMul/ReadVariableOpѓ
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMulљ
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_150/MatMul_1/ReadVariableOpЂ
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/MatMul_1£
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/addґ
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_150/BiasAdd/ReadVariableOp∞
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_150/BiasAddА
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_150/split/split_dimч
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_150/splitЙ
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/SigmoidН
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_1О
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mulА
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu†
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_1Х
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/add_1Н
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Sigmoid_2
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/Relu_1§
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_150/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2259551*
condR
while_cond_2259550*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь%
л
while_body_2256215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_152_2256239_0:@/
while_lstm_cell_152_2256241_0:@+
while_lstm_cell_152_2256243_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_152_2256239:@-
while_lstm_cell_152_2256241:@)
while_lstm_cell_152_2256243:@ИҐ+while/lstm_cell_152/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
+while/lstm_cell_152/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_152_2256239_0while_lstm_cell_152_2256241_0while_lstm_cell_152_2256243_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_22561372-
+while/lstm_cell_152/StatefulPartitionedCallш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_152/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3•
while/Identity_4Identity4while/lstm_cell_152/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4•
while/Identity_5Identity4while/lstm_cell_152/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5И

while/NoOpNoOp,^while/lstm_cell_152/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_152_2256239while_lstm_cell_152_2256239_0"<
while_lstm_cell_152_2256241while_lstm_cell_152_2256241_0"<
while_lstm_cell_152_2256243while_lstm_cell_152_2256243_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Z
+while/lstm_cell_152/StatefulPartitionedCall+while/lstm_cell_152/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
‘
I
-__inference_dropout_224_layer_call_fn_2259791

inputs
identity 
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_224_layer_call_and_return_conditional_losses_22567162
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
О
Ф
)sequential_38_lstm_151_while_cond_2254400J
Fsequential_38_lstm_151_while_sequential_38_lstm_151_while_loop_counterP
Lsequential_38_lstm_151_while_sequential_38_lstm_151_while_maximum_iterations,
(sequential_38_lstm_151_while_placeholder.
*sequential_38_lstm_151_while_placeholder_1.
*sequential_38_lstm_151_while_placeholder_2.
*sequential_38_lstm_151_while_placeholder_3L
Hsequential_38_lstm_151_while_less_sequential_38_lstm_151_strided_slice_1c
_sequential_38_lstm_151_while_sequential_38_lstm_151_while_cond_2254400___redundant_placeholder0c
_sequential_38_lstm_151_while_sequential_38_lstm_151_while_cond_2254400___redundant_placeholder1c
_sequential_38_lstm_151_while_sequential_38_lstm_151_while_cond_2254400___redundant_placeholder2c
_sequential_38_lstm_151_while_sequential_38_lstm_151_while_cond_2254400___redundant_placeholder3)
%sequential_38_lstm_151_while_identity
г
!sequential_38/lstm_151/while/LessLess(sequential_38_lstm_151_while_placeholderHsequential_38_lstm_151_while_less_sequential_38_lstm_151_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_38/lstm_151/while/LessҐ
%sequential_38/lstm_151/while/IdentityIdentity%sequential_38/lstm_151/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_38/lstm_151/while/Identity"W
%sequential_38_lstm_151_while_identity.sequential_38/lstm_151/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
х
f
H__inference_dropout_226_layer_call_and_return_conditional_losses_2257046

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
g
H__inference_dropout_225_layer_call_and_return_conditional_losses_2260488

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЄ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/y¬
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqualГ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ґ
f
-__inference_dropout_224_layer_call_fn_2259796

inputs
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_224_layer_call_and_return_conditional_losses_22576342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ЇF
Л
E__inference_lstm_151_layer_call_and_return_conditional_losses_2255444

inputs'
lstm_cell_151_2255362:@'
lstm_cell_151_2255364:@#
lstm_cell_151_2255366:@
identityИҐ%lstm_cell_151/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2І
%lstm_cell_151/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_151_2255362lstm_cell_151_2255364lstm_cell_151_2255366*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_22553612'
%lstm_cell_151/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter»
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_151_2255362lstm_cell_151_2255364lstm_cell_151_2255366*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2255375*
condR
while_cond_2255374*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity~
NoOpNoOp&^lstm_cell_151/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2N
%lstm_cell_151/StatefulPartitionedCall%lstm_cell_151/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2260376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2260376___redundant_placeholder05
1while_while_cond_2260376___redundant_placeholder15
1while_while_cond_2260376___redundant_placeholder25
1while_while_cond_2260376___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ѓ
g
H__inference_dropout_228_layer_call_and_return_conditional_losses_2261257

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ќL
ф

lstm_151_while_body_2258378.
*lstm_151_while_lstm_151_while_loop_counter4
0lstm_151_while_lstm_151_while_maximum_iterations
lstm_151_while_placeholder 
lstm_151_while_placeholder_1 
lstm_151_while_placeholder_2 
lstm_151_while_placeholder_3-
)lstm_151_while_lstm_151_strided_slice_1_0i
elstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0:@Q
?lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0:@L
>lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0:@
lstm_151_while_identity
lstm_151_while_identity_1
lstm_151_while_identity_2
lstm_151_while_identity_3
lstm_151_while_identity_4
lstm_151_while_identity_5+
'lstm_151_while_lstm_151_strided_slice_1g
clstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensorM
;lstm_151_while_lstm_cell_151_matmul_readvariableop_resource:@O
=lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource:@J
<lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐ3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpҐ2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpҐ4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp’
@lstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2B
@lstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shapeЙ
2lstm_151/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensor_0lstm_151_while_placeholderIlstm_151/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype024
2lstm_151/while/TensorArrayV2Read/TensorListGetItemж
2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp=lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOpэ
#lstm_151/while/lstm_cell_151/MatMulMatMul9lstm_151/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_151/while/lstm_cell_151/MatMulм
4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp?lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOpж
%lstm_151/while/lstm_cell_151/MatMul_1MatMullstm_151_while_placeholder_2<lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%lstm_151/while/lstm_cell_151/MatMul_1я
 lstm_151/while/lstm_cell_151/addAddV2-lstm_151/while/lstm_cell_151/MatMul:product:0/lstm_151/while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 lstm_151/while/lstm_cell_151/addе
3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp>lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOpм
$lstm_151/while/lstm_cell_151/BiasAddBiasAdd$lstm_151/while/lstm_cell_151/add:z:0;lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$lstm_151/while/lstm_cell_151/BiasAddЮ
,lstm_151/while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_151/while/lstm_cell_151/split/split_dim≥
"lstm_151/while/lstm_cell_151/splitSplit5lstm_151/while/lstm_cell_151/split/split_dim:output:0-lstm_151/while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2$
"lstm_151/while/lstm_cell_151/splitґ
$lstm_151/while/lstm_cell_151/SigmoidSigmoid+lstm_151/while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2&
$lstm_151/while/lstm_cell_151/SigmoidЇ
&lstm_151/while/lstm_cell_151/Sigmoid_1Sigmoid+lstm_151/while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_151/while/lstm_cell_151/Sigmoid_1«
 lstm_151/while/lstm_cell_151/mulMul*lstm_151/while/lstm_cell_151/Sigmoid_1:y:0lstm_151_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_151/while/lstm_cell_151/mul≠
!lstm_151/while/lstm_cell_151/ReluRelu+lstm_151/while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2#
!lstm_151/while/lstm_cell_151/Relu№
"lstm_151/while/lstm_cell_151/mul_1Mul(lstm_151/while/lstm_cell_151/Sigmoid:y:0/lstm_151/while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_151/while/lstm_cell_151/mul_1—
"lstm_151/while/lstm_cell_151/add_1AddV2$lstm_151/while/lstm_cell_151/mul:z:0&lstm_151/while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_151/while/lstm_cell_151/add_1Ї
&lstm_151/while/lstm_cell_151/Sigmoid_2Sigmoid+lstm_151/while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_151/while/lstm_cell_151/Sigmoid_2ђ
#lstm_151/while/lstm_cell_151/Relu_1Relu&lstm_151/while/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#lstm_151/while/lstm_cell_151/Relu_1а
"lstm_151/while/lstm_cell_151/mul_2Mul*lstm_151/while/lstm_cell_151/Sigmoid_2:y:01lstm_151/while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_151/while/lstm_cell_151/mul_2О
3lstm_151/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_151_while_placeholder_1lstm_151_while_placeholder&lstm_151/while/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_151/while/TensorArrayV2Write/TensorListSetItemn
lstm_151/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/while/add/yН
lstm_151/while/addAddV2lstm_151_while_placeholderlstm_151/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_151/while/addr
lstm_151/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_151/while/add_1/y£
lstm_151/while/add_1AddV2*lstm_151_while_lstm_151_while_loop_counterlstm_151/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_151/while/add_1П
lstm_151/while/IdentityIdentitylstm_151/while/add_1:z:0^lstm_151/while/NoOp*
T0*
_output_shapes
: 2
lstm_151/while/IdentityЂ
lstm_151/while/Identity_1Identity0lstm_151_while_lstm_151_while_maximum_iterations^lstm_151/while/NoOp*
T0*
_output_shapes
: 2
lstm_151/while/Identity_1С
lstm_151/while/Identity_2Identitylstm_151/while/add:z:0^lstm_151/while/NoOp*
T0*
_output_shapes
: 2
lstm_151/while/Identity_2Њ
lstm_151/while/Identity_3IdentityClstm_151/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_151/while/NoOp*
T0*
_output_shapes
: 2
lstm_151/while/Identity_3≤
lstm_151/while/Identity_4Identity&lstm_151/while/lstm_cell_151/mul_2:z:0^lstm_151/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/while/Identity_4≤
lstm_151/while/Identity_5Identity&lstm_151/while/lstm_cell_151/add_1:z:0^lstm_151/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_151/while/Identity_5О
lstm_151/while/NoOpNoOp4^lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp3^lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp5^lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_151/while/NoOp";
lstm_151_while_identity lstm_151/while/Identity:output:0"?
lstm_151_while_identity_1"lstm_151/while/Identity_1:output:0"?
lstm_151_while_identity_2"lstm_151/while/Identity_2:output:0"?
lstm_151_while_identity_3"lstm_151/while/Identity_3:output:0"?
lstm_151_while_identity_4"lstm_151/while/Identity_4:output:0"?
lstm_151_while_identity_5"lstm_151/while/Identity_5:output:0"T
'lstm_151_while_lstm_151_strided_slice_1)lstm_151_while_lstm_151_strided_slice_1_0"~
<lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource>lstm_151_while_lstm_cell_151_biasadd_readvariableop_resource_0"А
=lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource?lstm_151_while_lstm_cell_151_matmul_1_readvariableop_resource_0"|
;lstm_151_while_lstm_cell_151_matmul_readvariableop_resource=lstm_151_while_lstm_cell_151_matmul_readvariableop_resource_0"ћ
clstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensorelstm_151_while_tensorarrayv2read_tensorlistgetitem_lstm_151_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2j
3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp3lstm_151/while/lstm_cell_151/BiasAdd/ReadVariableOp2h
2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp2lstm_151/while/lstm_cell_151/MatMul/ReadVariableOp2l
4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp4lstm_151/while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ќL
ф

lstm_150_while_body_2258700.
*lstm_150_while_lstm_150_while_loop_counter4
0lstm_150_while_lstm_150_while_maximum_iterations
lstm_150_while_placeholder 
lstm_150_while_placeholder_1 
lstm_150_while_placeholder_2 
lstm_150_while_placeholder_3-
)lstm_150_while_lstm_150_strided_slice_1_0i
elstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0:@Q
?lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0:@L
>lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0:@
lstm_150_while_identity
lstm_150_while_identity_1
lstm_150_while_identity_2
lstm_150_while_identity_3
lstm_150_while_identity_4
lstm_150_while_identity_5+
'lstm_150_while_lstm_150_strided_slice_1g
clstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensorM
;lstm_150_while_lstm_cell_150_matmul_readvariableop_resource:@O
=lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource:@J
<lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐ3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpҐ2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpҐ4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp’
@lstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2B
@lstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shapeЙ
2lstm_150/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensor_0lstm_150_while_placeholderIlstm_150/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype024
2lstm_150/while/TensorArrayV2Read/TensorListGetItemж
2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp=lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOpэ
#lstm_150/while/lstm_cell_150/MatMulMatMul9lstm_150/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_150/while/lstm_cell_150/MatMulм
4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp?lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOpж
%lstm_150/while/lstm_cell_150/MatMul_1MatMullstm_150_while_placeholder_2<lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%lstm_150/while/lstm_cell_150/MatMul_1я
 lstm_150/while/lstm_cell_150/addAddV2-lstm_150/while/lstm_cell_150/MatMul:product:0/lstm_150/while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 lstm_150/while/lstm_cell_150/addе
3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp>lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOpм
$lstm_150/while/lstm_cell_150/BiasAddBiasAdd$lstm_150/while/lstm_cell_150/add:z:0;lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$lstm_150/while/lstm_cell_150/BiasAddЮ
,lstm_150/while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_150/while/lstm_cell_150/split/split_dim≥
"lstm_150/while/lstm_cell_150/splitSplit5lstm_150/while/lstm_cell_150/split/split_dim:output:0-lstm_150/while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2$
"lstm_150/while/lstm_cell_150/splitґ
$lstm_150/while/lstm_cell_150/SigmoidSigmoid+lstm_150/while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2&
$lstm_150/while/lstm_cell_150/SigmoidЇ
&lstm_150/while/lstm_cell_150/Sigmoid_1Sigmoid+lstm_150/while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_150/while/lstm_cell_150/Sigmoid_1«
 lstm_150/while/lstm_cell_150/mulMul*lstm_150/while/lstm_cell_150/Sigmoid_1:y:0lstm_150_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2"
 lstm_150/while/lstm_cell_150/mul≠
!lstm_150/while/lstm_cell_150/ReluRelu+lstm_150/while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2#
!lstm_150/while/lstm_cell_150/Relu№
"lstm_150/while/lstm_cell_150/mul_1Mul(lstm_150/while/lstm_cell_150/Sigmoid:y:0/lstm_150/while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_150/while/lstm_cell_150/mul_1—
"lstm_150/while/lstm_cell_150/add_1AddV2$lstm_150/while/lstm_cell_150/mul:z:0&lstm_150/while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_150/while/lstm_cell_150/add_1Ї
&lstm_150/while/lstm_cell_150/Sigmoid_2Sigmoid+lstm_150/while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2(
&lstm_150/while/lstm_cell_150/Sigmoid_2ђ
#lstm_150/while/lstm_cell_150/Relu_1Relu&lstm_150/while/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#lstm_150/while/lstm_cell_150/Relu_1а
"lstm_150/while/lstm_cell_150/mul_2Mul*lstm_150/while/lstm_cell_150/Sigmoid_2:y:01lstm_150/while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"lstm_150/while/lstm_cell_150/mul_2О
3lstm_150/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_150_while_placeholder_1lstm_150_while_placeholder&lstm_150/while/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_150/while/TensorArrayV2Write/TensorListSetItemn
lstm_150/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/while/add/yН
lstm_150/while/addAddV2lstm_150_while_placeholderlstm_150/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_150/while/addr
lstm_150/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_150/while/add_1/y£
lstm_150/while/add_1AddV2*lstm_150_while_lstm_150_while_loop_counterlstm_150/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_150/while/add_1П
lstm_150/while/IdentityIdentitylstm_150/while/add_1:z:0^lstm_150/while/NoOp*
T0*
_output_shapes
: 2
lstm_150/while/IdentityЂ
lstm_150/while/Identity_1Identity0lstm_150_while_lstm_150_while_maximum_iterations^lstm_150/while/NoOp*
T0*
_output_shapes
: 2
lstm_150/while/Identity_1С
lstm_150/while/Identity_2Identitylstm_150/while/add:z:0^lstm_150/while/NoOp*
T0*
_output_shapes
: 2
lstm_150/while/Identity_2Њ
lstm_150/while/Identity_3IdentityClstm_150/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_150/while/NoOp*
T0*
_output_shapes
: 2
lstm_150/while/Identity_3≤
lstm_150/while/Identity_4Identity&lstm_150/while/lstm_cell_150/mul_2:z:0^lstm_150/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/while/Identity_4≤
lstm_150/while/Identity_5Identity&lstm_150/while/lstm_cell_150/add_1:z:0^lstm_150/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_150/while/Identity_5О
lstm_150/while/NoOpNoOp4^lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp3^lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp5^lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_150/while/NoOp";
lstm_150_while_identity lstm_150/while/Identity:output:0"?
lstm_150_while_identity_1"lstm_150/while/Identity_1:output:0"?
lstm_150_while_identity_2"lstm_150/while/Identity_2:output:0"?
lstm_150_while_identity_3"lstm_150/while/Identity_3:output:0"?
lstm_150_while_identity_4"lstm_150/while/Identity_4:output:0"?
lstm_150_while_identity_5"lstm_150/while/Identity_5:output:0"T
'lstm_150_while_lstm_150_strided_slice_1)lstm_150_while_lstm_150_strided_slice_1_0"~
<lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource>lstm_150_while_lstm_cell_150_biasadd_readvariableop_resource_0"А
=lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource?lstm_150_while_lstm_cell_150_matmul_1_readvariableop_resource_0"|
;lstm_150_while_lstm_cell_150_matmul_readvariableop_resource=lstm_150_while_lstm_cell_150_matmul_readvariableop_resource_0"ћ
clstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensorelstm_150_while_tensorarrayv2read_tensorlistgetitem_lstm_150_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2j
3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp3lstm_150/while/lstm_cell_150/BiasAdd/ReadVariableOp2h
2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp2lstm_150/while/lstm_cell_150/MatMul/ReadVariableOp2l
4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp4lstm_150/while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
х
f
H__inference_dropout_226_layer_call_and_return_conditional_losses_2261151

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2257520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2257520___redundant_placeholder05
1while_while_cond_2257520___redundant_placeholder15
1while_while_cond_2257520___redundant_placeholder25
1while_while_cond_2257520___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ј
х
/__inference_lstm_cell_152_layer_call_fn_2261506

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_22561372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
µ
Е
/__inference_sequential_38_layer_call_fn_2258163

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:
identityИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_38_layer_call_and_return_conditional_losses_22578922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
в?
‘
while_body_2257521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_151_matmul_readvariableop_resource_0:@H
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_151_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_151_matmul_readvariableop_resource:@F
4while_lstm_cell_151_matmul_1_readvariableop_resource:@A
3while_lstm_cell_151_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_151/BiasAdd/ReadVariableOpҐ)while/lstm_cell_151/MatMul/ReadVariableOpҐ+while/lstm_cell_151/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_151/MatMul/ReadVariableOpў
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul—
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_151/MatMul_1/ReadVariableOp¬
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/MatMul_1ї
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/add 
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_151/BiasAdd/ReadVariableOp»
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_151/BiasAddМ
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_151/split/split_dimП
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_151/splitЫ
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/SigmoidЯ
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_1£
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mulТ
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/ReluЄ
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_1≠
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/add_1Я
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Sigmoid_2С
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/Relu_1Љ
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_151/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
™\
†
E__inference_lstm_151_layer_call_and_return_conditional_losses_2256868

inputs>
,lstm_cell_151_matmul_readvariableop_resource:@@
.lstm_cell_151_matmul_1_readvariableop_resource:@;
-lstm_cell_151_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_151/BiasAdd/ReadVariableOpҐ#lstm_cell_151/MatMul/ReadVariableOpҐ%lstm_cell_151/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_151/MatMul/ReadVariableOpѓ
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMulљ
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_151/MatMul_1/ReadVariableOpЂ
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMul_1£
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/addґ
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_151/BiasAdd/ReadVariableOp∞
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/BiasAddА
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_151/split/split_dimч
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_151/splitЙ
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/SigmoidН
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_1О
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mulА
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu†
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_1Х
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/add_1Н
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_2
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu_1§
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2256784*
condR
while_cond_2256783*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2255374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2255374___redundant_placeholder05
1while_while_cond_2255374___redundant_placeholder15
1while_while_cond_2255374___redundant_placeholder25
1while_while_cond_2255374___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Џ
ґ
*__inference_lstm_150_layer_call_fn_2259160
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_150_layer_call_and_return_conditional_losses_22550242
StatefulPartitionedCallИ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
Џ
»
while_cond_2260598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2260598___redundant_placeholder05
1while_while_cond_2260598___redundant_placeholder15
1while_while_cond_2260598___redundant_placeholder25
1while_while_cond_2260598___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
у
Е
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_2261342

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2Щ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
в?
‘
while_body_2257717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_150_matmul_readvariableop_resource_0:@H
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_150_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_150_matmul_readvariableop_resource:@F
4while_lstm_cell_150_matmul_1_readvariableop_resource:@A
3while_lstm_cell_150_biasadd_readvariableop_resource:@ИҐ*while/lstm_cell_150/BiasAdd/ReadVariableOpҐ)while/lstm_cell_150/MatMul/ReadVariableOpҐ+while/lstm_cell_150/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЋ
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_150/MatMul/ReadVariableOpў
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul—
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_150/MatMul_1/ReadVariableOp¬
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/MatMul_1ї
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/add 
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_150/BiasAdd/ReadVariableOp»
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_150/BiasAddМ
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_150/split/split_dimП
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
while/lstm_cell_150/splitЫ
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/SigmoidЯ
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_1£
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mulТ
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/ReluЄ
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_1≠
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/add_1Я
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Sigmoid_2С
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/Relu_1Љ
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
while/lstm_cell_150/mul_2б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3О
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4О
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5б

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ґ
f
-__inference_dropout_225_layer_call_fn_2260471

inputs
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_225_layer_call_and_return_conditional_losses_22574382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
њ
ґ
*__inference_lstm_152_layer_call_fn_2260499
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_152_layer_call_and_return_conditional_losses_22560742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
ь%
л
while_body_2254745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_150_2254769_0:@/
while_lstm_cell_150_2254771_0:@+
while_lstm_cell_150_2254773_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_150_2254769:@-
while_lstm_cell_150_2254771:@)
while_lstm_cell_150_2254773:@ИҐ+while/lstm_cell_150/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
+while/lstm_cell_150/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_150_2254769_0while_lstm_cell_150_2254771_0while_lstm_cell_150_2254773_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_22547312-
+while/lstm_cell_150/StatefulPartitionedCallш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_150/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3•
while/Identity_4Identity4while/lstm_cell_150/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_4•
while/Identity_5Identity4while/lstm_cell_150/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2
while/Identity_5И

while/NoOpNoOp,^while/lstm_cell_150/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_150_2254769while_lstm_cell_150_2254769_0"<
while_lstm_cell_150_2254771while_lstm_cell_150_2254771_0"<
while_lstm_cell_150_2254773while_lstm_cell_150_2254773_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2Z
+while/lstm_cell_150/StatefulPartitionedCall+while/lstm_cell_150/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
й

ь
lstm_151_while_cond_2258377.
*lstm_151_while_lstm_151_while_loop_counter4
0lstm_151_while_lstm_151_while_maximum_iterations
lstm_151_while_placeholder 
lstm_151_while_placeholder_1 
lstm_151_while_placeholder_2 
lstm_151_while_placeholder_30
,lstm_151_while_less_lstm_151_strided_slice_1G
Clstm_151_while_lstm_151_while_cond_2258377___redundant_placeholder0G
Clstm_151_while_lstm_151_while_cond_2258377___redundant_placeholder1G
Clstm_151_while_lstm_151_while_cond_2258377___redundant_placeholder2G
Clstm_151_while_lstm_151_while_cond_2258377___redundant_placeholder3
lstm_151_while_identity
Э
lstm_151/while/LessLesslstm_151_while_placeholder,lstm_151_while_less_lstm_151_strided_slice_1*
T0*
_output_shapes
: 2
lstm_151/while/Lessx
lstm_151/while/IdentityIdentitylstm_151/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_151/while/Identity";
lstm_151_while_identity lstm_151/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Џ
»
while_cond_2256783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2256783___redundant_placeholder05
1while_while_cond_2256783___redundant_placeholder15
1while_while_cond_2256783___redundant_placeholder25
1while_while_cond_2256783___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Џ
»
while_cond_2259399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2259399___redundant_placeholder05
1while_while_cond_2259399___redundant_placeholder15
1while_while_cond_2259399___redundant_placeholder25
1while_while_cond_2259399___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
µ
Е
/__inference_sequential_38_layer_call_fn_2258128

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:
identityИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_38_layer_call_and_return_conditional_losses_22571132
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѓ
g
H__inference_dropout_226_layer_call_and_return_conditional_losses_2261163

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ј
х
/__inference_lstm_cell_151_layer_call_fn_2261391

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_22553612
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states/1
ѓ\
†
E__inference_lstm_152_layer_call_and_return_conditional_losses_2257409

inputs>
,lstm_cell_152_matmul_readvariableop_resource:@@
.lstm_cell_152_matmul_1_readvariableop_resource:@;
-lstm_cell_152_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_152/BiasAdd/ReadVariableOpҐ#lstm_cell_152/MatMul/ReadVariableOpҐ%lstm_cell_152/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_152/MatMul/ReadVariableOpѓ
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMulљ
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_152/MatMul_1/ReadVariableOpЂ
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/MatMul_1£
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/addґ
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_152/BiasAdd/ReadVariableOp∞
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_152/BiasAddА
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_152/split/split_dimч
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_152/splitЙ
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/SigmoidН
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_1О
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mulА
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu†
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_1Х
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/add_1Н
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Sigmoid_2
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/Relu_1§
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_152/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2257325*
condR
while_cond_2257324*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Е
f
H__inference_dropout_224_layer_call_and_return_conditional_losses_2259801

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
»
while_cond_2255584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2255584___redundant_placeholder05
1while_while_cond_2255584___redundant_placeholder15
1while_while_cond_2255584___redundant_placeholder25
1while_while_cond_2255584___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
І
і
*__inference_lstm_152_layer_call_fn_2260521

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_152_layer_call_and_return_conditional_losses_22570332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓ
і
*__inference_lstm_151_layer_call_fn_2259857

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_151_layer_call_and_return_conditional_losses_22576052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
х
f
H__inference_dropout_227_layer_call_and_return_conditional_losses_2261198

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
й\
Ґ
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260159
inputs_0>
,lstm_cell_151_matmul_readvariableop_resource:@@
.lstm_cell_151_matmul_1_readvariableop_resource:@;
-lstm_cell_151_biasadd_readvariableop_resource:@
identityИҐ$lstm_cell_151/BiasAdd/ReadVariableOpҐ#lstm_cell_151/MatMul/ReadVariableOpҐ%lstm_cell_151/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Ј
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_151/MatMul/ReadVariableOpѓ
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMulљ
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_151/MatMul_1/ReadVariableOpЂ
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/MatMul_1£
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/addґ
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_151/BiasAdd/ReadVariableOp∞
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_151/BiasAddА
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_151/split/split_dimч
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split2
lstm_cell_151/splitЙ
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/SigmoidН
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_1О
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mulА
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu†
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_1Х
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/add_1Н
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Sigmoid_2
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/Relu_1§
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
lstm_cell_151/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterР
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2260075*
condR
while_cond_2260074*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

IdentityЋ
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0"®L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Њ
serving_default™
M
lstm_150_input;
 serving_default_lstm_150_input:0€€€€€€€€€=
	dense_1140
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ґЉ
Х
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
ё__call__
я_default_save_signature
+а&call_and_return_all_conditional_losses"
_tf_keras_sequential
≈
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
І
	variables
trainable_variables
regularization_losses
	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
≈
cell

state_spec
	variables
trainable_variables
 regularization_losses
!	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
І
"	variables
#trainable_variables
$regularization_losses
%	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer
≈
&cell
'
state_spec
(	variables
)trainable_variables
*regularization_losses
+	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
І
,	variables
-trainable_variables
.regularization_losses
/	keras_api
л__call__
+м&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
н__call__
+о&call_and_return_all_conditional_losses"
_tf_keras_layer
І
6	variables
7trainable_variables
8regularization_losses
9	keras_api
п__call__
+р&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
с__call__
+т&call_and_return_all_conditional_losses"
_tf_keras_layer
І
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"
_tf_keras_layer
€
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate0mј1mЅ:m¬;m√DmƒEm≈Om∆Pm«Qm»Rm…Sm TmЋUmћVmЌWmќ0vѕ1v–:v—;v“Dv”Ev‘Ov’Pv÷Qv„RvЎSvўTvЏUvџVv№WvЁ"
	optimizer
О
O0
P1
Q2
R3
S4
T5
U6
V7
W8
09
110
:11
;12
D13
E14"
trackable_list_wrapper
О
O0
P1
Q2
R3
S4
T5
U6
V7
W8
09
110
:11
;12
D13
E14"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
	variables
trainable_variables
Xlayer_regularization_losses
Ynon_trainable_variables
regularization_losses
Zmetrics

[layers
\layer_metrics
ё__call__
я_default_save_signature
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
-
чserving_default"
signature_map
г
]
state_size

Okernel
Precurrent_kernel
Qbias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
O0
P1
Q2"
trackable_list_wrapper
5
O0
P1
Q2"
trackable_list_wrapper
 "
trackable_list_wrapper
Љ

bstates
	variables
trainable_variables
clayer_regularization_losses
dnon_trainable_variables
regularization_losses
emetrics

flayers
glayer_metrics
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
	variables
trainable_variables
hlayer_regularization_losses
inon_trainable_variables
regularization_losses
jmetrics

klayers
llayer_metrics
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
г
m
state_size

Rkernel
Srecurrent_kernel
Tbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
R0
S1
T2"
trackable_list_wrapper
5
R0
S1
T2"
trackable_list_wrapper
 "
trackable_list_wrapper
Љ

rstates
	variables
trainable_variables
slayer_regularization_losses
tnon_trainable_variables
 regularization_losses
umetrics

vlayers
wlayer_metrics
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
"	variables
#trainable_variables
xlayer_regularization_losses
ynon_trainable_variables
$regularization_losses
zmetrics

{layers
|layer_metrics
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
е
}
state_size

Ukernel
Vrecurrent_kernel
Wbias
~	variables
trainable_variables
Аregularization_losses
Б	keras_api
ь__call__
+э&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
 "
trackable_list_wrapper
¬
Вstates
(	variables
)trainable_variables
 Гlayer_regularization_losses
Дnon_trainable_variables
*regularization_losses
Еmetrics
Жlayers
Зlayer_metrics
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
,	variables
-trainable_variables
 Иlayer_regularization_losses
Йnon_trainable_variables
.regularization_losses
Кmetrics
Лlayers
Мlayer_metrics
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
": 2dense_112/kernel
:2dense_112/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
2	variables
3trainable_variables
 Нlayer_regularization_losses
Оnon_trainable_variables
4regularization_losses
Пmetrics
Рlayers
Сlayer_metrics
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
6	variables
7trainable_variables
 Тlayer_regularization_losses
Уnon_trainable_variables
8regularization_losses
Фmetrics
Хlayers
Цlayer_metrics
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
": 2dense_113/kernel
:2dense_113/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
<	variables
=trainable_variables
 Чlayer_regularization_losses
Шnon_trainable_variables
>regularization_losses
Щmetrics
Ъlayers
Ыlayer_metrics
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
@	variables
Atrainable_variables
 Ьlayer_regularization_losses
Эnon_trainable_variables
Bregularization_losses
Юmetrics
Яlayers
†layer_metrics
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
": 2dense_114/kernel
:2dense_114/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
F	variables
Gtrainable_variables
 °layer_regularization_losses
Ґnon_trainable_variables
Hregularization_losses
£metrics
§layers
•layer_metrics
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
/:-@2lstm_150/lstm_cell_150/kernel
9:7@2'lstm_150/lstm_cell_150/recurrent_kernel
):'@2lstm_150/lstm_cell_150/bias
/:-@2lstm_151/lstm_cell_151/kernel
9:7@2'lstm_151/lstm_cell_151/recurrent_kernel
):'@2lstm_151/lstm_cell_151/bias
/:-@2lstm_152/lstm_cell_152/kernel
9:7@2'lstm_152/lstm_cell_152/recurrent_kernel
):'@2lstm_152/lstm_cell_152/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
¶0
І1"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
O0
P1
Q2"
trackable_list_wrapper
5
O0
P1
Q2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
^	variables
_trainable_variables
 ®layer_regularization_losses
©non_trainable_variables
`regularization_losses
™metrics
Ђlayers
ђlayer_metrics
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
R0
S1
T2"
trackable_list_wrapper
5
R0
S1
T2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
n	variables
otrainable_variables
 ≠layer_regularization_losses
Ѓnon_trainable_variables
pregularization_losses
ѓmetrics
∞layers
±layer_metrics
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
 "
trackable_list_wrapper
ґ
~	variables
trainable_variables
 ≤layer_regularization_losses
≥non_trainable_variables
Аregularization_losses
іmetrics
µlayers
ґlayer_metrics
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
&0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Јtotal

Єcount
є	variables
Ї	keras_api"
_tf_keras_metric
c

їtotal

Љcount
љ
_fn_kwargs
Њ	variables
њ	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
Ј0
Є1"
trackable_list_wrapper
.
є	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ї0
Љ1"
trackable_list_wrapper
.
Њ	variables"
_generic_user_object
':%2Adam/dense_112/kernel/m
!:2Adam/dense_112/bias/m
':%2Adam/dense_113/kernel/m
!:2Adam/dense_113/bias/m
':%2Adam/dense_114/kernel/m
!:2Adam/dense_114/bias/m
4:2@2$Adam/lstm_150/lstm_cell_150/kernel/m
>:<@2.Adam/lstm_150/lstm_cell_150/recurrent_kernel/m
.:,@2"Adam/lstm_150/lstm_cell_150/bias/m
4:2@2$Adam/lstm_151/lstm_cell_151/kernel/m
>:<@2.Adam/lstm_151/lstm_cell_151/recurrent_kernel/m
.:,@2"Adam/lstm_151/lstm_cell_151/bias/m
4:2@2$Adam/lstm_152/lstm_cell_152/kernel/m
>:<@2.Adam/lstm_152/lstm_cell_152/recurrent_kernel/m
.:,@2"Adam/lstm_152/lstm_cell_152/bias/m
':%2Adam/dense_112/kernel/v
!:2Adam/dense_112/bias/v
':%2Adam/dense_113/kernel/v
!:2Adam/dense_113/bias/v
':%2Adam/dense_114/kernel/v
!:2Adam/dense_114/bias/v
4:2@2$Adam/lstm_150/lstm_cell_150/kernel/v
>:<@2.Adam/lstm_150/lstm_cell_150/recurrent_kernel/v
.:,@2"Adam/lstm_150/lstm_cell_150/bias/v
4:2@2$Adam/lstm_151/lstm_cell_151/kernel/v
>:<@2.Adam/lstm_151/lstm_cell_151/recurrent_kernel/v
.:,@2"Adam/lstm_151/lstm_cell_151/bias/v
4:2@2$Adam/lstm_152/lstm_cell_152/kernel/v
>:<@2.Adam/lstm_152/lstm_cell_152/recurrent_kernel/v
.:,@2"Adam/lstm_152/lstm_cell_152/bias/v
К2З
/__inference_sequential_38_layer_call_fn_2257146
/__inference_sequential_38_layer_call_fn_2258128
/__inference_sequential_38_layer_call_fn_2258163
/__inference_sequential_38_layer_call_fn_2257960ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
‘B—
"__inference__wrapped_model_2254656lstm_150_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц2у
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258633
J__inference_sequential_38_layer_call_and_return_conditional_losses_2259138
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258005
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258050ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Л2И
*__inference_lstm_150_layer_call_fn_2259149
*__inference_lstm_150_layer_call_fn_2259160
*__inference_lstm_150_layer_call_fn_2259171
*__inference_lstm_150_layer_call_fn_2259182’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ч2ф
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259333
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259484
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259635
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259786’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ш2Х
-__inference_dropout_224_layer_call_fn_2259791
-__inference_dropout_224_layer_call_fn_2259796і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
H__inference_dropout_224_layer_call_and_return_conditional_losses_2259801
H__inference_dropout_224_layer_call_and_return_conditional_losses_2259813і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Л2И
*__inference_lstm_151_layer_call_fn_2259824
*__inference_lstm_151_layer_call_fn_2259835
*__inference_lstm_151_layer_call_fn_2259846
*__inference_lstm_151_layer_call_fn_2259857’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ч2ф
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260008
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260159
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260310
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260461’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ш2Х
-__inference_dropout_225_layer_call_fn_2260466
-__inference_dropout_225_layer_call_fn_2260471і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
H__inference_dropout_225_layer_call_and_return_conditional_losses_2260476
H__inference_dropout_225_layer_call_and_return_conditional_losses_2260488і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Л2И
*__inference_lstm_152_layer_call_fn_2260499
*__inference_lstm_152_layer_call_fn_2260510
*__inference_lstm_152_layer_call_fn_2260521
*__inference_lstm_152_layer_call_fn_2260532’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ч2ф
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260683
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260834
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260985
E__inference_lstm_152_layer_call_and_return_conditional_losses_2261136’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ш2Х
-__inference_dropout_226_layer_call_fn_2261141
-__inference_dropout_226_layer_call_fn_2261146і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
H__inference_dropout_226_layer_call_and_return_conditional_losses_2261151
H__inference_dropout_226_layer_call_and_return_conditional_losses_2261163і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
’2“
+__inference_dense_112_layer_call_fn_2261172Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_dense_112_layer_call_and_return_conditional_losses_2261183Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2Х
-__inference_dropout_227_layer_call_fn_2261188
-__inference_dropout_227_layer_call_fn_2261193і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
H__inference_dropout_227_layer_call_and_return_conditional_losses_2261198
H__inference_dropout_227_layer_call_and_return_conditional_losses_2261210і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
’2“
+__inference_dense_113_layer_call_fn_2261219Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_dense_113_layer_call_and_return_conditional_losses_2261230Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2Х
-__inference_dropout_228_layer_call_fn_2261235
-__inference_dropout_228_layer_call_fn_2261240і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
H__inference_dropout_228_layer_call_and_return_conditional_losses_2261245
H__inference_dropout_228_layer_call_and_return_conditional_losses_2261257і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
’2“
+__inference_dense_114_layer_call_fn_2261266Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_dense_114_layer_call_and_return_conditional_losses_2261276Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”B–
%__inference_signature_wrapper_2258093lstm_150_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
¶2£
/__inference_lstm_cell_150_layer_call_fn_2261293
/__inference_lstm_cell_150_layer_call_fn_2261310Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
№2ў
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_2261342
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_2261374Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
¶2£
/__inference_lstm_cell_151_layer_call_fn_2261391
/__inference_lstm_cell_151_layer_call_fn_2261408Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
№2ў
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_2261440
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_2261472Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
¶2£
/__inference_lstm_cell_152_layer_call_fn_2261489
/__inference_lstm_cell_152_layer_call_fn_2261506Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
№2ў
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_2261538
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_2261570Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 ђ
"__inference__wrapped_model_2254656ЕOPQRSTUVW01:;DE;Ґ8
1Ґ.
,К)
lstm_150_input€€€€€€€€€
™ "5™2
0
	dense_114#К 
	dense_114€€€€€€€€€¶
F__inference_dense_112_layer_call_and_return_conditional_losses_2261183\01/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ ~
+__inference_dense_112_layer_call_fn_2261172O01/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€¶
F__inference_dense_113_layer_call_and_return_conditional_losses_2261230\:;/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ ~
+__inference_dense_113_layer_call_fn_2261219O:;/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€¶
F__inference_dense_114_layer_call_and_return_conditional_losses_2261276\DE/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ ~
+__inference_dense_114_layer_call_fn_2261266ODE/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€∞
H__inference_dropout_224_layer_call_and_return_conditional_losses_2259801d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p 
™ ")Ґ&
К
0€€€€€€€€€
Ъ ∞
H__inference_dropout_224_layer_call_and_return_conditional_losses_2259813d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p
™ ")Ґ&
К
0€€€€€€€€€
Ъ И
-__inference_dropout_224_layer_call_fn_2259791W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€И
-__inference_dropout_224_layer_call_fn_2259796W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p
™ "К€€€€€€€€€∞
H__inference_dropout_225_layer_call_and_return_conditional_losses_2260476d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p 
™ ")Ґ&
К
0€€€€€€€€€
Ъ ∞
H__inference_dropout_225_layer_call_and_return_conditional_losses_2260488d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p
™ ")Ґ&
К
0€€€€€€€€€
Ъ И
-__inference_dropout_225_layer_call_fn_2260466W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€И
-__inference_dropout_225_layer_call_fn_2260471W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p
™ "К€€€€€€€€€®
H__inference_dropout_226_layer_call_and_return_conditional_losses_2261151\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ®
H__inference_dropout_226_layer_call_and_return_conditional_losses_2261163\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ А
-__inference_dropout_226_layer_call_fn_2261141O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€А
-__inference_dropout_226_layer_call_fn_2261146O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "К€€€€€€€€€®
H__inference_dropout_227_layer_call_and_return_conditional_losses_2261198\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ®
H__inference_dropout_227_layer_call_and_return_conditional_losses_2261210\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ А
-__inference_dropout_227_layer_call_fn_2261188O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€А
-__inference_dropout_227_layer_call_fn_2261193O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "К€€€€€€€€€®
H__inference_dropout_228_layer_call_and_return_conditional_losses_2261245\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ®
H__inference_dropout_228_layer_call_and_return_conditional_losses_2261257\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ А
-__inference_dropout_228_layer_call_fn_2261235O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€А
-__inference_dropout_228_layer_call_fn_2261240O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "К€€€€€€€€€‘
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259333КOPQOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€
Ъ ‘
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259484КOPQOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€
Ъ Ї
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259635qOPQ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ Ї
E__inference_lstm_150_layer_call_and_return_conditional_losses_2259786qOPQ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ Ђ
*__inference_lstm_150_layer_call_fn_2259149}OPQOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€Ђ
*__inference_lstm_150_layer_call_fn_2259160}OPQOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "%К"€€€€€€€€€€€€€€€€€€Т
*__inference_lstm_150_layer_call_fn_2259171dOPQ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "К€€€€€€€€€Т
*__inference_lstm_150_layer_call_fn_2259182dOPQ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "К€€€€€€€€€‘
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260008КRSTOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€
Ъ ‘
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260159КRSTOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€
Ъ Ї
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260310qRST?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ Ї
E__inference_lstm_151_layer_call_and_return_conditional_losses_2260461qRST?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ Ђ
*__inference_lstm_151_layer_call_fn_2259824}RSTOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€Ђ
*__inference_lstm_151_layer_call_fn_2259835}RSTOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "%К"€€€€€€€€€€€€€€€€€€Т
*__inference_lstm_151_layer_call_fn_2259846dRST?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "К€€€€€€€€€Т
*__inference_lstm_151_layer_call_fn_2259857dRST?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "К€€€€€€€€€∆
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260683}UVWOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∆
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260834}UVWOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ґ
E__inference_lstm_152_layer_call_and_return_conditional_losses_2260985mUVW?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ґ
E__inference_lstm_152_layer_call_and_return_conditional_losses_2261136mUVW?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ю
*__inference_lstm_152_layer_call_fn_2260499pUVWOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "К€€€€€€€€€Ю
*__inference_lstm_152_layer_call_fn_2260510pUVWOҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "К€€€€€€€€€О
*__inference_lstm_152_layer_call_fn_2260521`UVW?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "К€€€€€€€€€О
*__inference_lstm_152_layer_call_fn_2260532`UVW?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "К€€€€€€€€€ћ
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_2261342эOPQАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€
EЪB
К
0/1/0€€€€€€€€€
К
0/1/1€€€€€€€€€
Ъ ћ
J__inference_lstm_cell_150_layer_call_and_return_conditional_losses_2261374эOPQАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€
EЪB
К
0/1/0€€€€€€€€€
К
0/1/1€€€€€€€€€
Ъ °
/__inference_lstm_cell_150_layer_call_fn_2261293нOPQАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p 
™ "cҐ`
К
0€€€€€€€€€
AЪ>
К
1/0€€€€€€€€€
К
1/1€€€€€€€€€°
/__inference_lstm_cell_150_layer_call_fn_2261310нOPQАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p
™ "cҐ`
К
0€€€€€€€€€
AЪ>
К
1/0€€€€€€€€€
К
1/1€€€€€€€€€ћ
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_2261440эRSTАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€
EЪB
К
0/1/0€€€€€€€€€
К
0/1/1€€€€€€€€€
Ъ ћ
J__inference_lstm_cell_151_layer_call_and_return_conditional_losses_2261472эRSTАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€
EЪB
К
0/1/0€€€€€€€€€
К
0/1/1€€€€€€€€€
Ъ °
/__inference_lstm_cell_151_layer_call_fn_2261391нRSTАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p 
™ "cҐ`
К
0€€€€€€€€€
AЪ>
К
1/0€€€€€€€€€
К
1/1€€€€€€€€€°
/__inference_lstm_cell_151_layer_call_fn_2261408нRSTАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p
™ "cҐ`
К
0€€€€€€€€€
AЪ>
К
1/0€€€€€€€€€
К
1/1€€€€€€€€€ћ
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_2261538эUVWАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€
EЪB
К
0/1/0€€€€€€€€€
К
0/1/1€€€€€€€€€
Ъ ћ
J__inference_lstm_cell_152_layer_call_and_return_conditional_losses_2261570эUVWАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€
EЪB
К
0/1/0€€€€€€€€€
К
0/1/1€€€€€€€€€
Ъ °
/__inference_lstm_cell_152_layer_call_fn_2261489нUVWАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p 
™ "cҐ`
К
0€€€€€€€€€
AЪ>
К
1/0€€€€€€€€€
К
1/1€€€€€€€€€°
/__inference_lstm_cell_152_layer_call_fn_2261506нUVWАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€
"К
states/1€€€€€€€€€
p
™ "cҐ`
К
0€€€€€€€€€
AЪ>
К
1/0€€€€€€€€€
К
1/1€€€€€€€€€Ћ
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258005}OPQRSTUVW01:;DECҐ@
9Ґ6
,К)
lstm_150_input€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ћ
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258050}OPQRSTUVW01:;DECҐ@
9Ґ6
,К)
lstm_150_input€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ √
J__inference_sequential_38_layer_call_and_return_conditional_losses_2258633uOPQRSTUVW01:;DE;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ √
J__inference_sequential_38_layer_call_and_return_conditional_losses_2259138uOPQRSTUVW01:;DE;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ £
/__inference_sequential_38_layer_call_fn_2257146pOPQRSTUVW01:;DECҐ@
9Ґ6
,К)
lstm_150_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€£
/__inference_sequential_38_layer_call_fn_2257960pOPQRSTUVW01:;DECҐ@
9Ґ6
,К)
lstm_150_input€€€€€€€€€
p

 
™ "К€€€€€€€€€Ы
/__inference_sequential_38_layer_call_fn_2258128hOPQRSTUVW01:;DE;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ы
/__inference_sequential_38_layer_call_fn_2258163hOPQRSTUVW01:;DE;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€Ѕ
%__inference_signature_wrapper_2258093ЧOPQRSTUVW01:;DEMҐJ
Ґ 
C™@
>
lstm_150_input,К)
lstm_150_input€€€€€€€€€"5™2
0
	dense_114#К 
	dense_114€€€€€€€€€