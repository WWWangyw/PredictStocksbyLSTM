�<
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�"serve*2.6.02v2.6.0-rc2-32-g919f693420e8��9
z
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_58/kernel
s
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel*
_output_shapes

:*
dtype0
r
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_58/bias
k
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
_output_shapes
:*
dtype0
z
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_59/kernel
s
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes

:*
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
_output_shapes
:*
dtype0
z
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_60/kernel
s
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes

:*
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
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
�
lstm_78/lstm_cell_78/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_78/lstm_cell_78/kernel
�
/lstm_78/lstm_cell_78/kernel/Read/ReadVariableOpReadVariableOplstm_78/lstm_cell_78/kernel*
_output_shapes

:@*
dtype0
�
%lstm_78/lstm_cell_78/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_78/lstm_cell_78/recurrent_kernel
�
9lstm_78/lstm_cell_78/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_78/lstm_cell_78/recurrent_kernel*
_output_shapes

:@*
dtype0
�
lstm_78/lstm_cell_78/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_78/lstm_cell_78/bias
�
-lstm_78/lstm_cell_78/bias/Read/ReadVariableOpReadVariableOplstm_78/lstm_cell_78/bias*
_output_shapes
:@*
dtype0
�
lstm_79/lstm_cell_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_79/lstm_cell_79/kernel
�
/lstm_79/lstm_cell_79/kernel/Read/ReadVariableOpReadVariableOplstm_79/lstm_cell_79/kernel*
_output_shapes

:@*
dtype0
�
%lstm_79/lstm_cell_79/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_79/lstm_cell_79/recurrent_kernel
�
9lstm_79/lstm_cell_79/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_79/lstm_cell_79/recurrent_kernel*
_output_shapes

:@*
dtype0
�
lstm_79/lstm_cell_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_79/lstm_cell_79/bias
�
-lstm_79/lstm_cell_79/bias/Read/ReadVariableOpReadVariableOplstm_79/lstm_cell_79/bias*
_output_shapes
:@*
dtype0
�
lstm_80/lstm_cell_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_80/lstm_cell_80/kernel
�
/lstm_80/lstm_cell_80/kernel/Read/ReadVariableOpReadVariableOplstm_80/lstm_cell_80/kernel*
_output_shapes

:@*
dtype0
�
%lstm_80/lstm_cell_80/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_80/lstm_cell_80/recurrent_kernel
�
9lstm_80/lstm_cell_80/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_80/lstm_cell_80/recurrent_kernel*
_output_shapes

:@*
dtype0
�
lstm_80/lstm_cell_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_80/lstm_cell_80/bias
�
-lstm_80/lstm_cell_80/bias/Read/ReadVariableOpReadVariableOplstm_80/lstm_cell_80/bias*
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
�
Adam/dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_58/kernel/m
�
*Adam/dense_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_58/bias/m
y
(Adam/dense_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_59/kernel/m
�
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/m
y
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_60/kernel/m
�
*Adam/dense_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/m
y
(Adam/dense_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_78/lstm_cell_78/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_78/lstm_cell_78/kernel/m
�
6Adam/lstm_78/lstm_cell_78/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_78/lstm_cell_78/kernel/m*
_output_shapes

:@*
dtype0
�
,Adam/lstm_78/lstm_cell_78/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_78/lstm_cell_78/recurrent_kernel/m
�
@Adam/lstm_78/lstm_cell_78/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_78/lstm_cell_78/recurrent_kernel/m*
_output_shapes

:@*
dtype0
�
 Adam/lstm_78/lstm_cell_78/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_78/lstm_cell_78/bias/m
�
4Adam/lstm_78/lstm_cell_78/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_78/lstm_cell_78/bias/m*
_output_shapes
:@*
dtype0
�
"Adam/lstm_79/lstm_cell_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_79/lstm_cell_79/kernel/m
�
6Adam/lstm_79/lstm_cell_79/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_79/lstm_cell_79/kernel/m*
_output_shapes

:@*
dtype0
�
,Adam/lstm_79/lstm_cell_79/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_79/lstm_cell_79/recurrent_kernel/m
�
@Adam/lstm_79/lstm_cell_79/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_79/lstm_cell_79/recurrent_kernel/m*
_output_shapes

:@*
dtype0
�
 Adam/lstm_79/lstm_cell_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_79/lstm_cell_79/bias/m
�
4Adam/lstm_79/lstm_cell_79/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_79/lstm_cell_79/bias/m*
_output_shapes
:@*
dtype0
�
"Adam/lstm_80/lstm_cell_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_80/lstm_cell_80/kernel/m
�
6Adam/lstm_80/lstm_cell_80/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_80/lstm_cell_80/kernel/m*
_output_shapes

:@*
dtype0
�
,Adam/lstm_80/lstm_cell_80/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m
�
@Adam/lstm_80/lstm_cell_80/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m*
_output_shapes

:@*
dtype0
�
 Adam/lstm_80/lstm_cell_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_80/lstm_cell_80/bias/m
�
4Adam/lstm_80/lstm_cell_80/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_80/lstm_cell_80/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_58/kernel/v
�
*Adam/dense_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_58/bias/v
y
(Adam/dense_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_59/kernel/v
�
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/v
y
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_60/kernel/v
�
*Adam/dense_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/v
y
(Adam/dense_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_78/lstm_cell_78/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_78/lstm_cell_78/kernel/v
�
6Adam/lstm_78/lstm_cell_78/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_78/lstm_cell_78/kernel/v*
_output_shapes

:@*
dtype0
�
,Adam/lstm_78/lstm_cell_78/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_78/lstm_cell_78/recurrent_kernel/v
�
@Adam/lstm_78/lstm_cell_78/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_78/lstm_cell_78/recurrent_kernel/v*
_output_shapes

:@*
dtype0
�
 Adam/lstm_78/lstm_cell_78/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_78/lstm_cell_78/bias/v
�
4Adam/lstm_78/lstm_cell_78/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_78/lstm_cell_78/bias/v*
_output_shapes
:@*
dtype0
�
"Adam/lstm_79/lstm_cell_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_79/lstm_cell_79/kernel/v
�
6Adam/lstm_79/lstm_cell_79/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_79/lstm_cell_79/kernel/v*
_output_shapes

:@*
dtype0
�
,Adam/lstm_79/lstm_cell_79/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_79/lstm_cell_79/recurrent_kernel/v
�
@Adam/lstm_79/lstm_cell_79/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_79/lstm_cell_79/recurrent_kernel/v*
_output_shapes

:@*
dtype0
�
 Adam/lstm_79/lstm_cell_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_79/lstm_cell_79/bias/v
�
4Adam/lstm_79/lstm_cell_79/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_79/lstm_cell_79/bias/v*
_output_shapes
:@*
dtype0
�
"Adam/lstm_80/lstm_cell_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_80/lstm_cell_80/kernel/v
�
6Adam/lstm_80/lstm_cell_80/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_80/lstm_cell_80/kernel/v*
_output_shapes

:@*
dtype0
�
,Adam/lstm_80/lstm_cell_80/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v
�
@Adam/lstm_80/lstm_cell_80/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v*
_output_shapes

:@*
dtype0
�
 Adam/lstm_80/lstm_cell_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_80/lstm_cell_80/bias/v
�
4Adam/lstm_80/lstm_cell_80/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_80/lstm_cell_80/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
�^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�^
value�^B�^ B�^
�
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
�
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate0m�1m�:m�;m�Dm�Em�Om�Pm�Qm�Rm�Sm�Tm�Um�Vm�Wm�0v�1v�:v�;v�Dv�Ev�Ov�Pv�Qv�Rv�Sv�Tv�Uv�Vv�Wv�
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
�
	variables
trainable_variables
Xlayer_regularization_losses
Ynon_trainable_variables
regularization_losses
Zmetrics

[layers
\layer_metrics
 
�
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
�

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
�
	variables
trainable_variables
hlayer_regularization_losses
inon_trainable_variables
regularization_losses
jmetrics

klayers
llayer_metrics
�
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
�

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
�
"	variables
#trainable_variables
xlayer_regularization_losses
ynon_trainable_variables
$regularization_losses
zmetrics

{layers
|layer_metrics
�
}
state_size

Ukernel
Vrecurrent_kernel
Wbias
~	variables
trainable_variables
�regularization_losses
�	keras_api
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
�
�states
(	variables
)trainable_variables
 �layer_regularization_losses
�non_trainable_variables
*regularization_losses
�metrics
�layers
�layer_metrics
 
 
 
�
,	variables
-trainable_variables
 �layer_regularization_losses
�non_trainable_variables
.regularization_losses
�metrics
�layers
�layer_metrics
[Y
VARIABLE_VALUEdense_58/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_58/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
�
2	variables
3trainable_variables
 �layer_regularization_losses
�non_trainable_variables
4regularization_losses
�metrics
�layers
�layer_metrics
 
 
 
�
6	variables
7trainable_variables
 �layer_regularization_losses
�non_trainable_variables
8regularization_losses
�metrics
�layers
�layer_metrics
[Y
VARIABLE_VALUEdense_59/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_59/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
�
<	variables
=trainable_variables
 �layer_regularization_losses
�non_trainable_variables
>regularization_losses
�metrics
�layers
�layer_metrics
 
 
 
�
@	variables
Atrainable_variables
 �layer_regularization_losses
�non_trainable_variables
Bregularization_losses
�metrics
�layers
�layer_metrics
[Y
VARIABLE_VALUEdense_60/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_60/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

D0
E1
 
�
F	variables
Gtrainable_variables
 �layer_regularization_losses
�non_trainable_variables
Hregularization_losses
�metrics
�layers
�layer_metrics
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
WU
VARIABLE_VALUElstm_78/lstm_cell_78/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_78/lstm_cell_78/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_78/lstm_cell_78/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_79/lstm_cell_79/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_79/lstm_cell_79/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_79/lstm_cell_79/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_80/lstm_cell_80/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_80/lstm_cell_80/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_80/lstm_cell_80/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 
 

�0
�1
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
�
^	variables
_trainable_variables
 �layer_regularization_losses
�non_trainable_variables
`regularization_losses
�metrics
�layers
�layer_metrics
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
�
n	variables
otrainable_variables
 �layer_regularization_losses
�non_trainable_variables
pregularization_losses
�metrics
�layers
�layer_metrics
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
�
~	variables
trainable_variables
 �layer_regularization_losses
�non_trainable_variables
�regularization_losses
�metrics
�layers
�layer_metrics
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

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
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
�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
~|
VARIABLE_VALUEAdam/dense_58/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_58/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_60/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_78/lstm_cell_78/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_78/lstm_cell_78/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_78/lstm_cell_78/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_79/lstm_cell_79/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_79/lstm_cell_79/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_79/lstm_cell_79/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_80/lstm_cell_80/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_80/lstm_cell_80/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_80/lstm_cell_80/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_58/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_58/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_60/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_78/lstm_cell_78/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_78/lstm_cell_78/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_78/lstm_cell_78/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_79/lstm_cell_79/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_79/lstm_cell_79/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_79/lstm_cell_79/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_80/lstm_cell_80/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_80/lstm_cell_80/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_80/lstm_cell_80/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_78_inputPlaceholder*+
_output_shapes
:���������
*
dtype0* 
shape:���������

�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_78_inputlstm_78/lstm_cell_78/kernel%lstm_78/lstm_cell_78/recurrent_kernellstm_78/lstm_cell_78/biaslstm_79/lstm_cell_79/kernel%lstm_79/lstm_cell_79/recurrent_kernellstm_79/lstm_cell_79/biaslstm_80/lstm_cell_80/kernel%lstm_80/lstm_cell_80/recurrent_kernellstm_80/lstm_cell_80/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/biasdense_60/kerneldense_60/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1377852
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOp#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOp#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_78/lstm_cell_78/kernel/Read/ReadVariableOp9lstm_78/lstm_cell_78/recurrent_kernel/Read/ReadVariableOp-lstm_78/lstm_cell_78/bias/Read/ReadVariableOp/lstm_79/lstm_cell_79/kernel/Read/ReadVariableOp9lstm_79/lstm_cell_79/recurrent_kernel/Read/ReadVariableOp-lstm_79/lstm_cell_79/bias/Read/ReadVariableOp/lstm_80/lstm_cell_80/kernel/Read/ReadVariableOp9lstm_80/lstm_cell_80/recurrent_kernel/Read/ReadVariableOp-lstm_80/lstm_cell_80/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_58/kernel/m/Read/ReadVariableOp(Adam/dense_58/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp*Adam/dense_60/kernel/m/Read/ReadVariableOp(Adam/dense_60/bias/m/Read/ReadVariableOp6Adam/lstm_78/lstm_cell_78/kernel/m/Read/ReadVariableOp@Adam/lstm_78/lstm_cell_78/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_78/lstm_cell_78/bias/m/Read/ReadVariableOp6Adam/lstm_79/lstm_cell_79/kernel/m/Read/ReadVariableOp@Adam/lstm_79/lstm_cell_79/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_79/lstm_cell_79/bias/m/Read/ReadVariableOp6Adam/lstm_80/lstm_cell_80/kernel/m/Read/ReadVariableOp@Adam/lstm_80/lstm_cell_80/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_80/lstm_cell_80/bias/m/Read/ReadVariableOp*Adam/dense_58/kernel/v/Read/ReadVariableOp(Adam/dense_58/bias/v/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOp*Adam/dense_60/kernel/v/Read/ReadVariableOp(Adam/dense_60/bias/v/Read/ReadVariableOp6Adam/lstm_78/lstm_cell_78/kernel/v/Read/ReadVariableOp@Adam/lstm_78/lstm_cell_78/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_78/lstm_cell_78/bias/v/Read/ReadVariableOp6Adam/lstm_79/lstm_cell_79/kernel/v/Read/ReadVariableOp@Adam/lstm_79/lstm_cell_79/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_79/lstm_cell_79/bias/v/Read/ReadVariableOp6Adam/lstm_80/lstm_cell_80/kernel/v/Read/ReadVariableOp@Adam/lstm_80/lstm_cell_80/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_80/lstm_cell_80/bias/v/Read/ReadVariableOpConst*C
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1381514
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_58/kerneldense_58/biasdense_59/kerneldense_59/biasdense_60/kerneldense_60/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_78/lstm_cell_78/kernel%lstm_78/lstm_cell_78/recurrent_kernellstm_78/lstm_cell_78/biaslstm_79/lstm_cell_79/kernel%lstm_79/lstm_cell_79/recurrent_kernellstm_79/lstm_cell_79/biaslstm_80/lstm_cell_80/kernel%lstm_80/lstm_cell_80/recurrent_kernellstm_80/lstm_cell_80/biastotalcounttotal_1count_1Adam/dense_58/kernel/mAdam/dense_58/bias/mAdam/dense_59/kernel/mAdam/dense_59/bias/mAdam/dense_60/kernel/mAdam/dense_60/bias/m"Adam/lstm_78/lstm_cell_78/kernel/m,Adam/lstm_78/lstm_cell_78/recurrent_kernel/m Adam/lstm_78/lstm_cell_78/bias/m"Adam/lstm_79/lstm_cell_79/kernel/m,Adam/lstm_79/lstm_cell_79/recurrent_kernel/m Adam/lstm_79/lstm_cell_79/bias/m"Adam/lstm_80/lstm_cell_80/kernel/m,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m Adam/lstm_80/lstm_cell_80/bias/mAdam/dense_58/kernel/vAdam/dense_58/bias/vAdam/dense_59/kernel/vAdam/dense_59/bias/vAdam/dense_60/kernel/vAdam/dense_60/bias/v"Adam/lstm_78/lstm_cell_78/kernel/v,Adam/lstm_78/lstm_cell_78/recurrent_kernel/v Adam/lstm_78/lstm_cell_78/bias/v"Adam/lstm_79/lstm_cell_79/kernel/v,Adam/lstm_79/lstm_cell_79/recurrent_kernel/v Adam/lstm_79/lstm_cell_79/bias/v"Adam/lstm_80/lstm_cell_80/kernel/v,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v Adam/lstm_80/lstm_cell_80/bias/v*B
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1381686��7
�
�
.__inference_lstm_cell_79_layer_call_fn_1381167

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_13752662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2

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
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
g
H__inference_dropout_119_layer_call_and_return_conditional_losses_1376968

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_80_while_cond_1378284,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3.
*lstm_80_while_less_lstm_80_strided_slice_1E
Alstm_80_while_lstm_80_while_cond_1378284___redundant_placeholder0E
Alstm_80_while_lstm_80_while_cond_1378284___redundant_placeholder1E
Alstm_80_while_lstm_80_while_cond_1378284___redundant_placeholder2E
Alstm_80_while_lstm_80_while_cond_1378284___redundant_placeholder3
lstm_80_while_identity
�
lstm_80/while/LessLesslstm_80_while_placeholder*lstm_80_while_less_lstm_80_strided_slice_1*
T0*
_output_shapes
: 2
lstm_80/while/Lessu
lstm_80/while/IdentityIdentitylstm_80/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_80/while/Identity"9
lstm_80_while_identitylstm_80/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1379833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1379833___redundant_placeholder05
1while_while_cond_1379833___redundant_placeholder15
1while_while_cond_1379833___redundant_placeholder25
1while_while_cond_1379833___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1379007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1379007___redundant_placeholder05
1while_while_cond_1379007___redundant_placeholder15
1while_while_cond_1379007___redundant_placeholder25
1while_while_cond_1379007___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
I
-__inference_dropout_118_layer_call_fn_1380900

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_118_layer_call_and_return_conditional_losses_13768052
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_1376378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_78_matmul_readvariableop_resource_0:@G
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_78_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_78_matmul_readvariableop_resource:@E
3while_lstm_cell_78_matmul_1_readvariableop_resource:@@
2while_lstm_cell_78_biasadd_readvariableop_resource:@��)while/lstm_cell_78/BiasAdd/ReadVariableOp�(while/lstm_cell_78/MatMul/ReadVariableOp�*while/lstm_cell_78/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_78/MatMul/ReadVariableOp�
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul�
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_78/MatMul_1/ReadVariableOp�
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul_1�
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/add�
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_78/BiasAdd/ReadVariableOp�
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/BiasAdd�
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_78/split/split_dim�
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_78/split�
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid�
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_1�
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul�
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu�
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_1�
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/add_1�
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_2�
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu_1�
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_79_layer_call_fn_1379594
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_13754132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1375343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1375343___redundant_placeholder05
1while_while_cond_1375343___redundant_placeholder15
1while_while_cond_1375343___redundant_placeholder25
1while_while_cond_1375343___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�[
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1380220

inputs=
+lstm_cell_79_matmul_readvariableop_resource:@?
-lstm_cell_79_matmul_1_readvariableop_resource:@:
,lstm_cell_79_biasadd_readvariableop_resource:@
identity��#lstm_cell_79/BiasAdd/ReadVariableOp�"lstm_cell_79/MatMul/ReadVariableOp�$lstm_cell_79/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_79/MatMul/ReadVariableOp�
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul�
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_79/MatMul_1/ReadVariableOp�
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul_1�
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/add�
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_79/BiasAdd/ReadVariableOp�
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/BiasAdd~
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_79/split/split_dim�
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_79/split�
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid�
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_1�
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul}
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu�
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_1�
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/add_1�
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_2|
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu_1�
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1380136*
condR
while_cond_1380135*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������
2

Identity�
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
f
H__inference_dropout_117_layer_call_and_return_conditional_losses_1380235

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������
2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������
2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
)__inference_lstm_79_layer_call_fn_1379583
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_13752032
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
f
H__inference_dropout_118_layer_call_and_return_conditional_losses_1376805

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1379682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1379682___redundant_placeholder05
1while_while_cond_1379682___redundant_placeholder15
1while_while_cond_1379682___redundant_placeholder25
1while_while_cond_1379682___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_sequential_20_layer_call_fn_1377922

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
identity��StatefulPartitionedCall�
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
:���������*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_13776512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�[
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1377364

inputs=
+lstm_cell_79_matmul_readvariableop_resource:@?
-lstm_cell_79_matmul_1_readvariableop_resource:@:
,lstm_cell_79_biasadd_readvariableop_resource:@
identity��#lstm_cell_79/BiasAdd/ReadVariableOp�"lstm_cell_79/MatMul/ReadVariableOp�$lstm_cell_79/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_79/MatMul/ReadVariableOp�
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul�
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_79/MatMul_1/ReadVariableOp�
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul_1�
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/add�
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_79/BiasAdd/ReadVariableOp�
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/BiasAdd~
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_79/split/split_dim�
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_79/split�
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid�
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_1�
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul}
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu�
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_1�
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/add_1�
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_2|
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu_1�
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1377280*
condR
while_cond_1377279*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������
2

Identity�
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
I
-__inference_dropout_116_layer_call_fn_1379550

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_116_layer_call_and_return_conditional_losses_13764752
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
while_cond_1380810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1380810___redundant_placeholder05
1while_while_cond_1380810___redundant_placeholder15
1while_while_cond_1380810___redundant_placeholder25
1while_while_cond_1380810___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
f
-__inference_dropout_120_layer_call_fn_1380999

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_120_layer_call_and_return_conditional_losses_13769352
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
while_body_1374504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_78_1374528_0:@.
while_lstm_cell_78_1374530_0:@*
while_lstm_cell_78_1374532_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_78_1374528:@,
while_lstm_cell_78_1374530:@(
while_lstm_cell_78_1374532:@��*while/lstm_cell_78/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_78/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_78_1374528_0while_lstm_cell_78_1374530_0while_lstm_cell_78_1374532_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_13744902,
*while/lstm_cell_78/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_78/StatefulPartitionedCall:output:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_78/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_78/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_78/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_78_1374528while_lstm_cell_78_1374528_0":
while_lstm_cell_78_1374530while_lstm_cell_78_1374530_0":
while_lstm_cell_78_1374532while_lstm_cell_78_1374532_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_78/StatefulPartitionedCall*while/lstm_cell_78/StatefulPartitionedCall: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�F
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1375413

inputs&
lstm_cell_79_1375331:@&
lstm_cell_79_1375333:@"
lstm_cell_79_1375335:@
identity��$lstm_cell_79/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_79/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_79_1375331lstm_cell_79_1375333lstm_cell_79_1375335*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_13752662&
$lstm_cell_79/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_79_1375331lstm_cell_79_1375333lstm_cell_79_1375335*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1375344*
condR
while_cond_1375343*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
 :������������������2

Identity}
NoOpNoOp%^lstm_cell_79/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_79/StatefulPartitionedCall$lstm_cell_79/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�

�
lstm_78_while_cond_1378458,
(lstm_78_while_lstm_78_while_loop_counter2
.lstm_78_while_lstm_78_while_maximum_iterations
lstm_78_while_placeholder
lstm_78_while_placeholder_1
lstm_78_while_placeholder_2
lstm_78_while_placeholder_3.
*lstm_78_while_less_lstm_78_strided_slice_1E
Alstm_78_while_lstm_78_while_cond_1378458___redundant_placeholder0E
Alstm_78_while_lstm_78_while_cond_1378458___redundant_placeholder1E
Alstm_78_while_lstm_78_while_cond_1378458___redundant_placeholder2E
Alstm_78_while_lstm_78_while_cond_1378458___redundant_placeholder3
lstm_78_while_identity
�
lstm_78/while/LessLesslstm_78_while_placeholder*lstm_78_while_less_lstm_78_strided_slice_1*
T0*
_output_shapes
: 2
lstm_78/while/Lessu
lstm_78/while/IdentityIdentitylstm_78/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_78/while/Identity"9
lstm_78_while_identitylstm_78/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1379158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1379158___redundant_placeholder05
1while_while_cond_1379158___redundant_placeholder15
1while_while_cond_1379158___redundant_placeholder25
1while_while_cond_1379158___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_1375896

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�
�
while_cond_1380357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1380357___redundant_placeholder05
1while_while_cond_1380357___redundant_placeholder15
1while_while_cond_1380357___redundant_placeholder25
1while_while_cond_1380357___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
.__inference_lstm_cell_78_layer_call_fn_1381069

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_13746362
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2

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
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
f
H__inference_dropout_118_layer_call_and_return_conditional_losses_1380910

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_78_layer_call_fn_1378930

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_78_layer_call_and_return_conditional_losses_13764622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
g
H__inference_dropout_116_layer_call_and_return_conditional_losses_1379572

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������
2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������
*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������
2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������
2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������
2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
E__inference_dense_59_layer_call_and_return_conditional_losses_1380989

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_80_layer_call_fn_1380291

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_80_layer_call_and_return_conditional_losses_13771682
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�[
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1376792

inputs=
+lstm_cell_80_matmul_readvariableop_resource:@?
-lstm_cell_80_matmul_1_readvariableop_resource:@:
,lstm_cell_80_biasadd_readvariableop_resource:@
identity��#lstm_cell_80/BiasAdd/ReadVariableOp�"lstm_cell_80/MatMul/ReadVariableOp�$lstm_cell_80/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_80/MatMul/ReadVariableOp�
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul�
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_80/MatMul_1/ReadVariableOp�
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul_1�
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/add�
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_80/BiasAdd/ReadVariableOp�
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/BiasAdd~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim�
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_80/split�
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid�
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_1�
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul}
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu�
lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_1�
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/add_1�
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu_1�
lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1376708*
condR
while_cond_1376707*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������2

Identity�
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�?
�
while_body_1377084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:@G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:@E
3while_lstm_cell_80_matmul_1_readvariableop_resource:@@
2while_lstm_cell_80_biasadd_readvariableop_resource:@��)while/lstm_cell_80/BiasAdd/ReadVariableOp�(while/lstm_cell_80/MatMul/ReadVariableOp�*while/lstm_cell_80/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_80/MatMul/ReadVariableOp�
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul�
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_80/MatMul_1/ReadVariableOp�
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul_1�
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/add�
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_80/BiasAdd/ReadVariableOp�
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/BiasAdd�
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim�
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_80/split�
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid�
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_1�
while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul�
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu�
while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_1�
while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/add_1�
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_2�
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu_1�
while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
f
H__inference_dropout_119_layer_call_and_return_conditional_losses_1380957

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
while_body_1375344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_79_1375368_0:@.
while_lstm_cell_79_1375370_0:@*
while_lstm_cell_79_1375372_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_79_1375368:@,
while_lstm_cell_79_1375370:@(
while_lstm_cell_79_1375372:@��*while/lstm_cell_79/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_79/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_79_1375368_0while_lstm_cell_79_1375370_0while_lstm_cell_79_1375372_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_13752662,
*while/lstm_cell_79/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_79/StatefulPartitionedCall:output:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_79/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_79/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_79/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_79_1375368while_lstm_cell_79_1375368_0":
while_lstm_cell_79_1375370while_lstm_cell_79_1375370_0":
while_lstm_cell_79_1375372while_lstm_cell_79_1375372_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_79/StatefulPartitionedCall*while/lstm_cell_79/StatefulPartitionedCall: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_sequential_20_layer_call_fn_1377719
lstm_78_input
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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:���������*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_13776512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������

'
_user_specified_namelstm_78_input
�
�
while_cond_1377083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377083___redundant_placeholder05
1while_while_cond_1377083___redundant_placeholder15
1while_while_cond_1377083___redundant_placeholder25
1while_while_cond_1377083___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�?
�
while_body_1380136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_79_matmul_readvariableop_resource_0:@G
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_79_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_79_matmul_readvariableop_resource:@E
3while_lstm_cell_79_matmul_1_readvariableop_resource:@@
2while_lstm_cell_79_biasadd_readvariableop_resource:@��)while/lstm_cell_79/BiasAdd/ReadVariableOp�(while/lstm_cell_79/MatMul/ReadVariableOp�*while/lstm_cell_79/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_79/MatMul/ReadVariableOp�
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul�
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_79/MatMul_1/ReadVariableOp�
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul_1�
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/add�
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_79/BiasAdd/ReadVariableOp�
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/BiasAdd�
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_79/split/split_dim�
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_79/split�
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid�
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_1�
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul�
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu�
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_1�
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/add_1�
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_2�
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu_1�
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1375763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1375763___redundant_placeholder05
1while_while_cond_1375763___redundant_placeholder15
1while_while_cond_1375763___redundant_placeholder25
1while_while_cond_1375763___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�%
�
while_body_1375134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_79_1375158_0:@.
while_lstm_cell_79_1375160_0:@*
while_lstm_cell_79_1375162_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_79_1375158:@,
while_lstm_cell_79_1375160:@(
while_lstm_cell_79_1375162:@��*while/lstm_cell_79/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_79/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_79_1375158_0while_lstm_cell_79_1375160_0while_lstm_cell_79_1375162_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_13751202,
*while/lstm_cell_79/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_79/StatefulPartitionedCall:output:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_79/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_79/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_79/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_79_1375158while_lstm_cell_79_1375158_0":
while_lstm_cell_79_1375160while_lstm_cell_79_1375160_0":
while_lstm_cell_79_1375162while_lstm_cell_79_1375162_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_79/StatefulPartitionedCall*while/lstm_cell_79/StatefulPartitionedCall: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
g
H__inference_dropout_117_layer_call_and_return_conditional_losses_1380247

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������
2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������
*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������
2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������
2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������
2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
while_cond_1376377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1376377___redundant_placeholder05
1while_while_cond_1376377___redundant_placeholder15
1while_while_cond_1376377___redundant_placeholder25
1while_while_cond_1376377___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�?
�
while_body_1377280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_79_matmul_readvariableop_resource_0:@G
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_79_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_79_matmul_readvariableop_resource:@E
3while_lstm_cell_79_matmul_1_readvariableop_resource:@@
2while_lstm_cell_79_biasadd_readvariableop_resource:@��)while/lstm_cell_79/BiasAdd/ReadVariableOp�(while/lstm_cell_79/MatMul/ReadVariableOp�*while/lstm_cell_79/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_79/MatMul/ReadVariableOp�
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul�
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_79/MatMul_1/ReadVariableOp�
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul_1�
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/add�
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_79/BiasAdd/ReadVariableOp�
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/BiasAdd�
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_79/split/split_dim�
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_79/split�
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid�
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_1�
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul�
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu�
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_1�
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/add_1�
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_2�
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu_1�
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�

�
E__inference_dense_60_layer_call_and_return_conditional_losses_1376865

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_80_while_cond_1378768,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3.
*lstm_80_while_less_lstm_80_strided_slice_1E
Alstm_80_while_lstm_80_while_cond_1378768___redundant_placeholder0E
Alstm_80_while_lstm_80_while_cond_1378768___redundant_placeholder1E
Alstm_80_while_lstm_80_while_cond_1378768___redundant_placeholder2E
Alstm_80_while_lstm_80_while_cond_1378768___redundant_placeholder3
lstm_80_while_identity
�
lstm_80/while/LessLesslstm_80_while_placeholder*lstm_80_while_less_lstm_80_strided_slice_1*
T0*
_output_shapes
: 2
lstm_80/while/Lessu
lstm_80/while/IdentityIdentitylstm_80/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_80/while/Identity"9
lstm_80_while_identitylstm_80/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
��
�
J__inference_sequential_20_layer_call_and_return_conditional_losses_1378897

inputsE
3lstm_78_lstm_cell_78_matmul_readvariableop_resource:@G
5lstm_78_lstm_cell_78_matmul_1_readvariableop_resource:@B
4lstm_78_lstm_cell_78_biasadd_readvariableop_resource:@E
3lstm_79_lstm_cell_79_matmul_readvariableop_resource:@G
5lstm_79_lstm_cell_79_matmul_1_readvariableop_resource:@B
4lstm_79_lstm_cell_79_biasadd_readvariableop_resource:@E
3lstm_80_lstm_cell_80_matmul_readvariableop_resource:@G
5lstm_80_lstm_cell_80_matmul_1_readvariableop_resource:@B
4lstm_80_lstm_cell_80_biasadd_readvariableop_resource:@9
'dense_58_matmul_readvariableop_resource:6
(dense_58_biasadd_readvariableop_resource:9
'dense_59_matmul_readvariableop_resource:6
(dense_59_biasadd_readvariableop_resource:9
'dense_60_matmul_readvariableop_resource:6
(dense_60_biasadd_readvariableop_resource:
identity��dense_58/BiasAdd/ReadVariableOp�dense_58/MatMul/ReadVariableOp�dense_59/BiasAdd/ReadVariableOp�dense_59/MatMul/ReadVariableOp�dense_60/BiasAdd/ReadVariableOp�dense_60/MatMul/ReadVariableOp�+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp�*lstm_78/lstm_cell_78/MatMul/ReadVariableOp�,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp�lstm_78/while�+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp�*lstm_79/lstm_cell_79/MatMul/ReadVariableOp�,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp�lstm_79/while�+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp�*lstm_80/lstm_cell_80/MatMul/ReadVariableOp�,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp�lstm_80/whileT
lstm_78/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_78/Shape�
lstm_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_78/strided_slice/stack�
lstm_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_78/strided_slice/stack_1�
lstm_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_78/strided_slice/stack_2�
lstm_78/strided_sliceStridedSlicelstm_78/Shape:output:0$lstm_78/strided_slice/stack:output:0&lstm_78/strided_slice/stack_1:output:0&lstm_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_78/strided_slicel
lstm_78/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/zeros/mul/y�
lstm_78/zeros/mulMullstm_78/strided_slice:output:0lstm_78/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_78/zeros/mulo
lstm_78/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_78/zeros/Less/y�
lstm_78/zeros/LessLesslstm_78/zeros/mul:z:0lstm_78/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_78/zeros/Lessr
lstm_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/zeros/packed/1�
lstm_78/zeros/packedPacklstm_78/strided_slice:output:0lstm_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_78/zeros/packedo
lstm_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_78/zeros/Const�
lstm_78/zerosFilllstm_78/zeros/packed:output:0lstm_78/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_78/zerosp
lstm_78/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/zeros_1/mul/y�
lstm_78/zeros_1/mulMullstm_78/strided_slice:output:0lstm_78/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_78/zeros_1/muls
lstm_78/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_78/zeros_1/Less/y�
lstm_78/zeros_1/LessLesslstm_78/zeros_1/mul:z:0lstm_78/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_78/zeros_1/Lessv
lstm_78/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/zeros_1/packed/1�
lstm_78/zeros_1/packedPacklstm_78/strided_slice:output:0!lstm_78/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_78/zeros_1/packeds
lstm_78/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_78/zeros_1/Const�
lstm_78/zeros_1Filllstm_78/zeros_1/packed:output:0lstm_78/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_78/zeros_1�
lstm_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_78/transpose/perm�
lstm_78/transpose	Transposeinputslstm_78/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2
lstm_78/transposeg
lstm_78/Shape_1Shapelstm_78/transpose:y:0*
T0*
_output_shapes
:2
lstm_78/Shape_1�
lstm_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_78/strided_slice_1/stack�
lstm_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_1/stack_1�
lstm_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_1/stack_2�
lstm_78/strided_slice_1StridedSlicelstm_78/Shape_1:output:0&lstm_78/strided_slice_1/stack:output:0(lstm_78/strided_slice_1/stack_1:output:0(lstm_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_78/strided_slice_1�
#lstm_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_78/TensorArrayV2/element_shape�
lstm_78/TensorArrayV2TensorListReserve,lstm_78/TensorArrayV2/element_shape:output:0 lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_78/TensorArrayV2�
=lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_78/transpose:y:0Flstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_78/TensorArrayUnstack/TensorListFromTensor�
lstm_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_78/strided_slice_2/stack�
lstm_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_2/stack_1�
lstm_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_2/stack_2�
lstm_78/strided_slice_2StridedSlicelstm_78/transpose:y:0&lstm_78/strided_slice_2/stack:output:0(lstm_78/strided_slice_2/stack_1:output:0(lstm_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_78/strided_slice_2�
*lstm_78/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3lstm_78_lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_78/lstm_cell_78/MatMul/ReadVariableOp�
lstm_78/lstm_cell_78/MatMulMatMul lstm_78/strided_slice_2:output:02lstm_78/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_78/lstm_cell_78/MatMul�
,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5lstm_78_lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp�
lstm_78/lstm_cell_78/MatMul_1MatMullstm_78/zeros:output:04lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_78/lstm_cell_78/MatMul_1�
lstm_78/lstm_cell_78/addAddV2%lstm_78/lstm_cell_78/MatMul:product:0'lstm_78/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_78/lstm_cell_78/add�
+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4lstm_78_lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp�
lstm_78/lstm_cell_78/BiasAddBiasAddlstm_78/lstm_cell_78/add:z:03lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_78/lstm_cell_78/BiasAdd�
$lstm_78/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_78/lstm_cell_78/split/split_dim�
lstm_78/lstm_cell_78/splitSplit-lstm_78/lstm_cell_78/split/split_dim:output:0%lstm_78/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_78/lstm_cell_78/split�
lstm_78/lstm_cell_78/SigmoidSigmoid#lstm_78/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/Sigmoid�
lstm_78/lstm_cell_78/Sigmoid_1Sigmoid#lstm_78/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2 
lstm_78/lstm_cell_78/Sigmoid_1�
lstm_78/lstm_cell_78/mulMul"lstm_78/lstm_cell_78/Sigmoid_1:y:0lstm_78/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/mul�
lstm_78/lstm_cell_78/ReluRelu#lstm_78/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/Relu�
lstm_78/lstm_cell_78/mul_1Mul lstm_78/lstm_cell_78/Sigmoid:y:0'lstm_78/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/mul_1�
lstm_78/lstm_cell_78/add_1AddV2lstm_78/lstm_cell_78/mul:z:0lstm_78/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/add_1�
lstm_78/lstm_cell_78/Sigmoid_2Sigmoid#lstm_78/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2 
lstm_78/lstm_cell_78/Sigmoid_2�
lstm_78/lstm_cell_78/Relu_1Relulstm_78/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/Relu_1�
lstm_78/lstm_cell_78/mul_2Mul"lstm_78/lstm_cell_78/Sigmoid_2:y:0)lstm_78/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/mul_2�
%lstm_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2'
%lstm_78/TensorArrayV2_1/element_shape�
lstm_78/TensorArrayV2_1TensorListReserve.lstm_78/TensorArrayV2_1/element_shape:output:0 lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_78/TensorArrayV2_1^
lstm_78/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_78/time�
 lstm_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_78/while/maximum_iterationsz
lstm_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_78/while/loop_counter�
lstm_78/whileWhile#lstm_78/while/loop_counter:output:0)lstm_78/while/maximum_iterations:output:0lstm_78/time:output:0 lstm_78/TensorArrayV2_1:handle:0lstm_78/zeros:output:0lstm_78/zeros_1:output:0 lstm_78/strided_slice_1:output:0?lstm_78/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_78_lstm_cell_78_matmul_readvariableop_resource5lstm_78_lstm_cell_78_matmul_1_readvariableop_resource4lstm_78_lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_78_while_body_1378459*&
condR
lstm_78_while_cond_1378458*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_78/while�
8lstm_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2:
8lstm_78/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_78/TensorArrayV2Stack/TensorListStackTensorListStacklstm_78/while:output:3Alstm_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02,
*lstm_78/TensorArrayV2Stack/TensorListStack�
lstm_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_78/strided_slice_3/stack�
lstm_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_78/strided_slice_3/stack_1�
lstm_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_3/stack_2�
lstm_78/strided_slice_3StridedSlice3lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_78/strided_slice_3/stack:output:0(lstm_78/strided_slice_3/stack_1:output:0(lstm_78/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_78/strided_slice_3�
lstm_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_78/transpose_1/perm�
lstm_78/transpose_1	Transpose3lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_78/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
lstm_78/transpose_1v
lstm_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_78/runtime{
dropout_116/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_116/dropout/Const�
dropout_116/dropout/MulMullstm_78/transpose_1:y:0"dropout_116/dropout/Const:output:0*
T0*+
_output_shapes
:���������
2
dropout_116/dropout/Mul}
dropout_116/dropout/ShapeShapelstm_78/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_116/dropout/Shape�
0dropout_116/dropout/random_uniform/RandomUniformRandomUniform"dropout_116/dropout/Shape:output:0*
T0*+
_output_shapes
:���������
*
dtype022
0dropout_116/dropout/random_uniform/RandomUniform�
"dropout_116/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_116/dropout/GreaterEqual/y�
 dropout_116/dropout/GreaterEqualGreaterEqual9dropout_116/dropout/random_uniform/RandomUniform:output:0+dropout_116/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������
2"
 dropout_116/dropout/GreaterEqual�
dropout_116/dropout/CastCast$dropout_116/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������
2
dropout_116/dropout/Cast�
dropout_116/dropout/Mul_1Muldropout_116/dropout/Mul:z:0dropout_116/dropout/Cast:y:0*
T0*+
_output_shapes
:���������
2
dropout_116/dropout/Mul_1k
lstm_79/ShapeShapedropout_116/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_79/Shape�
lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_79/strided_slice/stack�
lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_79/strided_slice/stack_1�
lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_79/strided_slice/stack_2�
lstm_79/strided_sliceStridedSlicelstm_79/Shape:output:0$lstm_79/strided_slice/stack:output:0&lstm_79/strided_slice/stack_1:output:0&lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_79/strided_slicel
lstm_79/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros/mul/y�
lstm_79/zeros/mulMullstm_79/strided_slice:output:0lstm_79/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_79/zeros/mulo
lstm_79/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_79/zeros/Less/y�
lstm_79/zeros/LessLesslstm_79/zeros/mul:z:0lstm_79/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_79/zeros/Lessr
lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros/packed/1�
lstm_79/zeros/packedPacklstm_79/strided_slice:output:0lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_79/zeros/packedo
lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_79/zeros/Const�
lstm_79/zerosFilllstm_79/zeros/packed:output:0lstm_79/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_79/zerosp
lstm_79/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros_1/mul/y�
lstm_79/zeros_1/mulMullstm_79/strided_slice:output:0lstm_79/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_79/zeros_1/muls
lstm_79/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_79/zeros_1/Less/y�
lstm_79/zeros_1/LessLesslstm_79/zeros_1/mul:z:0lstm_79/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_79/zeros_1/Lessv
lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros_1/packed/1�
lstm_79/zeros_1/packedPacklstm_79/strided_slice:output:0!lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_79/zeros_1/packeds
lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_79/zeros_1/Const�
lstm_79/zeros_1Filllstm_79/zeros_1/packed:output:0lstm_79/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_79/zeros_1�
lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_79/transpose/perm�
lstm_79/transpose	Transposedropout_116/dropout/Mul_1:z:0lstm_79/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2
lstm_79/transposeg
lstm_79/Shape_1Shapelstm_79/transpose:y:0*
T0*
_output_shapes
:2
lstm_79/Shape_1�
lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_79/strided_slice_1/stack�
lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_1/stack_1�
lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_1/stack_2�
lstm_79/strided_slice_1StridedSlicelstm_79/Shape_1:output:0&lstm_79/strided_slice_1/stack:output:0(lstm_79/strided_slice_1/stack_1:output:0(lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_79/strided_slice_1�
#lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_79/TensorArrayV2/element_shape�
lstm_79/TensorArrayV2TensorListReserve,lstm_79/TensorArrayV2/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_79/TensorArrayV2�
=lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_79/transpose:y:0Flstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_79/TensorArrayUnstack/TensorListFromTensor�
lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_79/strided_slice_2/stack�
lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_2/stack_1�
lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_2/stack_2�
lstm_79/strided_slice_2StridedSlicelstm_79/transpose:y:0&lstm_79/strided_slice_2/stack:output:0(lstm_79/strided_slice_2/stack_1:output:0(lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_79/strided_slice_2�
*lstm_79/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3lstm_79_lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_79/lstm_cell_79/MatMul/ReadVariableOp�
lstm_79/lstm_cell_79/MatMulMatMul lstm_79/strided_slice_2:output:02lstm_79/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_79/lstm_cell_79/MatMul�
,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5lstm_79_lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp�
lstm_79/lstm_cell_79/MatMul_1MatMullstm_79/zeros:output:04lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_79/lstm_cell_79/MatMul_1�
lstm_79/lstm_cell_79/addAddV2%lstm_79/lstm_cell_79/MatMul:product:0'lstm_79/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_79/lstm_cell_79/add�
+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4lstm_79_lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp�
lstm_79/lstm_cell_79/BiasAddBiasAddlstm_79/lstm_cell_79/add:z:03lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_79/lstm_cell_79/BiasAdd�
$lstm_79/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_79/lstm_cell_79/split/split_dim�
lstm_79/lstm_cell_79/splitSplit-lstm_79/lstm_cell_79/split/split_dim:output:0%lstm_79/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_79/lstm_cell_79/split�
lstm_79/lstm_cell_79/SigmoidSigmoid#lstm_79/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/Sigmoid�
lstm_79/lstm_cell_79/Sigmoid_1Sigmoid#lstm_79/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2 
lstm_79/lstm_cell_79/Sigmoid_1�
lstm_79/lstm_cell_79/mulMul"lstm_79/lstm_cell_79/Sigmoid_1:y:0lstm_79/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/mul�
lstm_79/lstm_cell_79/ReluRelu#lstm_79/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/Relu�
lstm_79/lstm_cell_79/mul_1Mul lstm_79/lstm_cell_79/Sigmoid:y:0'lstm_79/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/mul_1�
lstm_79/lstm_cell_79/add_1AddV2lstm_79/lstm_cell_79/mul:z:0lstm_79/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/add_1�
lstm_79/lstm_cell_79/Sigmoid_2Sigmoid#lstm_79/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2 
lstm_79/lstm_cell_79/Sigmoid_2�
lstm_79/lstm_cell_79/Relu_1Relulstm_79/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/Relu_1�
lstm_79/lstm_cell_79/mul_2Mul"lstm_79/lstm_cell_79/Sigmoid_2:y:0)lstm_79/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/mul_2�
%lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2'
%lstm_79/TensorArrayV2_1/element_shape�
lstm_79/TensorArrayV2_1TensorListReserve.lstm_79/TensorArrayV2_1/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_79/TensorArrayV2_1^
lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_79/time�
 lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_79/while/maximum_iterationsz
lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_79/while/loop_counter�
lstm_79/whileWhile#lstm_79/while/loop_counter:output:0)lstm_79/while/maximum_iterations:output:0lstm_79/time:output:0 lstm_79/TensorArrayV2_1:handle:0lstm_79/zeros:output:0lstm_79/zeros_1:output:0 lstm_79/strided_slice_1:output:0?lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_79_lstm_cell_79_matmul_readvariableop_resource5lstm_79_lstm_cell_79_matmul_1_readvariableop_resource4lstm_79_lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_79_while_body_1378614*&
condR
lstm_79_while_cond_1378613*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_79/while�
8lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2:
8lstm_79/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_79/TensorArrayV2Stack/TensorListStackTensorListStacklstm_79/while:output:3Alstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02,
*lstm_79/TensorArrayV2Stack/TensorListStack�
lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_79/strided_slice_3/stack�
lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_79/strided_slice_3/stack_1�
lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_3/stack_2�
lstm_79/strided_slice_3StridedSlice3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_79/strided_slice_3/stack:output:0(lstm_79/strided_slice_3/stack_1:output:0(lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_79/strided_slice_3�
lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_79/transpose_1/perm�
lstm_79/transpose_1	Transpose3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_79/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
lstm_79/transpose_1v
lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_79/runtime{
dropout_117/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_117/dropout/Const�
dropout_117/dropout/MulMullstm_79/transpose_1:y:0"dropout_117/dropout/Const:output:0*
T0*+
_output_shapes
:���������
2
dropout_117/dropout/Mul}
dropout_117/dropout/ShapeShapelstm_79/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_117/dropout/Shape�
0dropout_117/dropout/random_uniform/RandomUniformRandomUniform"dropout_117/dropout/Shape:output:0*
T0*+
_output_shapes
:���������
*
dtype022
0dropout_117/dropout/random_uniform/RandomUniform�
"dropout_117/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_117/dropout/GreaterEqual/y�
 dropout_117/dropout/GreaterEqualGreaterEqual9dropout_117/dropout/random_uniform/RandomUniform:output:0+dropout_117/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������
2"
 dropout_117/dropout/GreaterEqual�
dropout_117/dropout/CastCast$dropout_117/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������
2
dropout_117/dropout/Cast�
dropout_117/dropout/Mul_1Muldropout_117/dropout/Mul:z:0dropout_117/dropout/Cast:y:0*
T0*+
_output_shapes
:���������
2
dropout_117/dropout/Mul_1k
lstm_80/ShapeShapedropout_117/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_80/Shape�
lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice/stack�
lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_80/strided_slice/stack_1�
lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_80/strided_slice/stack_2�
lstm_80/strided_sliceStridedSlicelstm_80/Shape:output:0$lstm_80/strided_slice/stack:output:0&lstm_80/strided_slice/stack_1:output:0&lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_80/strided_slicel
lstm_80/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/zeros/mul/y�
lstm_80/zeros/mulMullstm_80/strided_slice:output:0lstm_80/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros/mulo
lstm_80/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_80/zeros/Less/y�
lstm_80/zeros/LessLesslstm_80/zeros/mul:z:0lstm_80/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros/Lessr
lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/zeros/packed/1�
lstm_80/zeros/packedPacklstm_80/strided_slice:output:0lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_80/zeros/packedo
lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/zeros/Const�
lstm_80/zerosFilllstm_80/zeros/packed:output:0lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_80/zerosp
lstm_80/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/zeros_1/mul/y�
lstm_80/zeros_1/mulMullstm_80/strided_slice:output:0lstm_80/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros_1/muls
lstm_80/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_80/zeros_1/Less/y�
lstm_80/zeros_1/LessLesslstm_80/zeros_1/mul:z:0lstm_80/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros_1/Lessv
lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/zeros_1/packed/1�
lstm_80/zeros_1/packedPacklstm_80/strided_slice:output:0!lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_80/zeros_1/packeds
lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/zeros_1/Const�
lstm_80/zeros_1Filllstm_80/zeros_1/packed:output:0lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_80/zeros_1�
lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_80/transpose/perm�
lstm_80/transpose	Transposedropout_117/dropout/Mul_1:z:0lstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2
lstm_80/transposeg
lstm_80/Shape_1Shapelstm_80/transpose:y:0*
T0*
_output_shapes
:2
lstm_80/Shape_1�
lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice_1/stack�
lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_1/stack_1�
lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_1/stack_2�
lstm_80/strided_slice_1StridedSlicelstm_80/Shape_1:output:0&lstm_80/strided_slice_1/stack:output:0(lstm_80/strided_slice_1/stack_1:output:0(lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_80/strided_slice_1�
#lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_80/TensorArrayV2/element_shape�
lstm_80/TensorArrayV2TensorListReserve,lstm_80/TensorArrayV2/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_80/TensorArrayV2�
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_80/transpose:y:0Flstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_80/TensorArrayUnstack/TensorListFromTensor�
lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice_2/stack�
lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_2/stack_1�
lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_2/stack_2�
lstm_80/strided_slice_2StridedSlicelstm_80/transpose:y:0&lstm_80/strided_slice_2/stack:output:0(lstm_80/strided_slice_2/stack_1:output:0(lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_80/strided_slice_2�
*lstm_80/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3lstm_80_lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_80/lstm_cell_80/MatMul/ReadVariableOp�
lstm_80/lstm_cell_80/MatMulMatMul lstm_80/strided_slice_2:output:02lstm_80/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_80/lstm_cell_80/MatMul�
,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5lstm_80_lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp�
lstm_80/lstm_cell_80/MatMul_1MatMullstm_80/zeros:output:04lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_80/lstm_cell_80/MatMul_1�
lstm_80/lstm_cell_80/addAddV2%lstm_80/lstm_cell_80/MatMul:product:0'lstm_80/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_80/lstm_cell_80/add�
+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4lstm_80_lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp�
lstm_80/lstm_cell_80/BiasAddBiasAddlstm_80/lstm_cell_80/add:z:03lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_80/lstm_cell_80/BiasAdd�
$lstm_80/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_80/lstm_cell_80/split/split_dim�
lstm_80/lstm_cell_80/splitSplit-lstm_80/lstm_cell_80/split/split_dim:output:0%lstm_80/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_80/lstm_cell_80/split�
lstm_80/lstm_cell_80/SigmoidSigmoid#lstm_80/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/Sigmoid�
lstm_80/lstm_cell_80/Sigmoid_1Sigmoid#lstm_80/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2 
lstm_80/lstm_cell_80/Sigmoid_1�
lstm_80/lstm_cell_80/mulMul"lstm_80/lstm_cell_80/Sigmoid_1:y:0lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/mul�
lstm_80/lstm_cell_80/ReluRelu#lstm_80/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/Relu�
lstm_80/lstm_cell_80/mul_1Mul lstm_80/lstm_cell_80/Sigmoid:y:0'lstm_80/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/mul_1�
lstm_80/lstm_cell_80/add_1AddV2lstm_80/lstm_cell_80/mul:z:0lstm_80/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/add_1�
lstm_80/lstm_cell_80/Sigmoid_2Sigmoid#lstm_80/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2 
lstm_80/lstm_cell_80/Sigmoid_2�
lstm_80/lstm_cell_80/Relu_1Relulstm_80/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/Relu_1�
lstm_80/lstm_cell_80/mul_2Mul"lstm_80/lstm_cell_80/Sigmoid_2:y:0)lstm_80/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/mul_2�
%lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2'
%lstm_80/TensorArrayV2_1/element_shape�
lstm_80/TensorArrayV2_1TensorListReserve.lstm_80/TensorArrayV2_1/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_80/TensorArrayV2_1^
lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/time�
 lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_80/while/maximum_iterationsz
lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/while/loop_counter�
lstm_80/whileWhile#lstm_80/while/loop_counter:output:0)lstm_80/while/maximum_iterations:output:0lstm_80/time:output:0 lstm_80/TensorArrayV2_1:handle:0lstm_80/zeros:output:0lstm_80/zeros_1:output:0 lstm_80/strided_slice_1:output:0?lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_80_lstm_cell_80_matmul_readvariableop_resource5lstm_80_lstm_cell_80_matmul_1_readvariableop_resource4lstm_80_lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_80_while_body_1378769*&
condR
lstm_80_while_cond_1378768*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_80/while�
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2:
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_80/TensorArrayV2Stack/TensorListStackTensorListStacklstm_80/while:output:3Alstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02,
*lstm_80/TensorArrayV2Stack/TensorListStack�
lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_80/strided_slice_3/stack�
lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_80/strided_slice_3/stack_1�
lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_3/stack_2�
lstm_80/strided_slice_3StridedSlice3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_80/strided_slice_3/stack:output:0(lstm_80/strided_slice_3/stack_1:output:0(lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_80/strided_slice_3�
lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_80/transpose_1/perm�
lstm_80/transpose_1	Transpose3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
lstm_80/transpose_1v
lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/runtime{
dropout_118/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_118/dropout/Const�
dropout_118/dropout/MulMul lstm_80/strided_slice_3:output:0"dropout_118/dropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout_118/dropout/Mul�
dropout_118/dropout/ShapeShape lstm_80/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_118/dropout/Shape�
0dropout_118/dropout/random_uniform/RandomUniformRandomUniform"dropout_118/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype022
0dropout_118/dropout/random_uniform/RandomUniform�
"dropout_118/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_118/dropout/GreaterEqual/y�
 dropout_118/dropout/GreaterEqualGreaterEqual9dropout_118/dropout/random_uniform/RandomUniform:output:0+dropout_118/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2"
 dropout_118/dropout/GreaterEqual�
dropout_118/dropout/CastCast$dropout_118/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout_118/dropout/Cast�
dropout_118/dropout/Mul_1Muldropout_118/dropout/Mul:z:0dropout_118/dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout_118/dropout/Mul_1�
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_58/MatMul/ReadVariableOp�
dense_58/MatMulMatMuldropout_118/dropout/Mul_1:z:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_58/MatMul�
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_58/BiasAdd/ReadVariableOp�
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_58/BiasAdds
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_58/Relu{
dropout_119/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_119/dropout/Const�
dropout_119/dropout/MulMuldense_58/Relu:activations:0"dropout_119/dropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout_119/dropout/Mul�
dropout_119/dropout/ShapeShapedense_58/Relu:activations:0*
T0*
_output_shapes
:2
dropout_119/dropout/Shape�
0dropout_119/dropout/random_uniform/RandomUniformRandomUniform"dropout_119/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype022
0dropout_119/dropout/random_uniform/RandomUniform�
"dropout_119/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_119/dropout/GreaterEqual/y�
 dropout_119/dropout/GreaterEqualGreaterEqual9dropout_119/dropout/random_uniform/RandomUniform:output:0+dropout_119/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2"
 dropout_119/dropout/GreaterEqual�
dropout_119/dropout/CastCast$dropout_119/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout_119/dropout/Cast�
dropout_119/dropout/Mul_1Muldropout_119/dropout/Mul:z:0dropout_119/dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout_119/dropout/Mul_1�
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_59/MatMul/ReadVariableOp�
dense_59/MatMulMatMuldropout_119/dropout/Mul_1:z:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_59/MatMul�
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_59/BiasAdd/ReadVariableOp�
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_59/BiasAdds
dense_59/ReluReludense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_59/Relu{
dropout_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_120/dropout/Const�
dropout_120/dropout/MulMuldense_59/Relu:activations:0"dropout_120/dropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout_120/dropout/Mul�
dropout_120/dropout/ShapeShapedense_59/Relu:activations:0*
T0*
_output_shapes
:2
dropout_120/dropout/Shape�
0dropout_120/dropout/random_uniform/RandomUniformRandomUniform"dropout_120/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype022
0dropout_120/dropout/random_uniform/RandomUniform�
"dropout_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_120/dropout/GreaterEqual/y�
 dropout_120/dropout/GreaterEqualGreaterEqual9dropout_120/dropout/random_uniform/RandomUniform:output:0+dropout_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2"
 dropout_120/dropout/GreaterEqual�
dropout_120/dropout/CastCast$dropout_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout_120/dropout/Cast�
dropout_120/dropout/Mul_1Muldropout_120/dropout/Mul:z:0dropout_120/dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout_120/dropout/Mul_1�
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_60/MatMul/ReadVariableOp�
dense_60/MatMulMatMuldropout_120/dropout/Mul_1:z:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_60/MatMul�
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp�
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_60/BiasAddt
IdentityIdentitydense_60/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp,^lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp+^lstm_78/lstm_cell_78/MatMul/ReadVariableOp-^lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp^lstm_78/while,^lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp+^lstm_79/lstm_cell_79/MatMul/ReadVariableOp-^lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp^lstm_79/while,^lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp+^lstm_80/lstm_cell_80/MatMul/ReadVariableOp-^lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp^lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2Z
+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp2X
*lstm_78/lstm_cell_78/MatMul/ReadVariableOp*lstm_78/lstm_cell_78/MatMul/ReadVariableOp2\
,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp2
lstm_78/whilelstm_78/while2Z
+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp2X
*lstm_79/lstm_cell_79/MatMul/ReadVariableOp*lstm_79/lstm_cell_79/MatMul/ReadVariableOp2\
,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp2
lstm_79/whilelstm_79/while2Z
+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp2X
*lstm_80/lstm_cell_80/MatMul/ReadVariableOp*lstm_80/lstm_cell_80/MatMul/ReadVariableOp2\
,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp2
lstm_80/whilelstm_80/while:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�[
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380895

inputs=
+lstm_cell_80_matmul_readvariableop_resource:@?
-lstm_cell_80_matmul_1_readvariableop_resource:@:
,lstm_cell_80_biasadd_readvariableop_resource:@
identity��#lstm_cell_80/BiasAdd/ReadVariableOp�"lstm_cell_80/MatMul/ReadVariableOp�$lstm_cell_80/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_80/MatMul/ReadVariableOp�
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul�
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_80/MatMul_1/ReadVariableOp�
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul_1�
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/add�
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_80/BiasAdd/ReadVariableOp�
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/BiasAdd~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim�
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_80/split�
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid�
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_1�
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul}
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu�
lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_1�
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/add_1�
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu_1�
lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1380811*
condR
while_cond_1380810*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������2

Identity�
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�?
�
while_body_1380358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:@G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:@E
3while_lstm_cell_80_matmul_1_readvariableop_resource:@@
2while_lstm_cell_80_biasadd_readvariableop_resource:@��)while/lstm_cell_80/BiasAdd/ReadVariableOp�(while/lstm_cell_80/MatMul/ReadVariableOp�*while/lstm_cell_80/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_80/MatMul/ReadVariableOp�
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul�
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_80/MatMul_1/ReadVariableOp�
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul_1�
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/add�
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_80/BiasAdd/ReadVariableOp�
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/BiasAdd�
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim�
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_80/split�
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid�
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_1�
while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul�
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu�
while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_1�
while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/add_1�
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_2�
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu_1�
while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
.__inference_lstm_cell_80_layer_call_fn_1381248

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_13757502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2

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
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�[
�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379394

inputs=
+lstm_cell_78_matmul_readvariableop_resource:@?
-lstm_cell_78_matmul_1_readvariableop_resource:@:
,lstm_cell_78_biasadd_readvariableop_resource:@
identity��#lstm_cell_78/BiasAdd/ReadVariableOp�"lstm_cell_78/MatMul/ReadVariableOp�$lstm_cell_78/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_78/MatMul/ReadVariableOp�
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul�
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_78/MatMul_1/ReadVariableOp�
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul_1�
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/add�
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_78/BiasAdd/ReadVariableOp�
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/BiasAdd~
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_78/split/split_dim�
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_78/split�
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid�
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_1�
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul}
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu�
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_1�
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/add_1�
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_2|
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu_1�
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1379310*
condR
while_cond_1379309*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������
2

Identity�
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
.__inference_lstm_cell_80_layer_call_fn_1381265

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_13758962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2

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
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
�
while_cond_1374713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1374713___redundant_placeholder05
1while_while_cond_1374713___redundant_placeholder15
1while_while_cond_1374713___redundant_placeholder25
1while_while_cond_1374713___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�%
�
while_body_1375764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_80_1375788_0:@.
while_lstm_cell_80_1375790_0:@*
while_lstm_cell_80_1375792_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_80_1375788:@,
while_lstm_cell_80_1375790:@(
while_lstm_cell_80_1375792:@��*while/lstm_cell_80/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_80_1375788_0while_lstm_cell_80_1375790_0while_lstm_cell_80_1375792_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_13757502,
*while/lstm_cell_80/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_80/StatefulPartitionedCall:output:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_80/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_80/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_80_1375788while_lstm_cell_80_1375788_0":
while_lstm_cell_80_1375790while_lstm_cell_80_1375790_0":
while_lstm_cell_80_1375792while_lstm_cell_80_1375792_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_80/StatefulPartitionedCall*while/lstm_cell_80/StatefulPartitionedCall: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_sequential_20_layer_call_fn_1376905
lstm_78_input
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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:���������*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_13768722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������

'
_user_specified_namelstm_78_input
�
�
E__inference_dense_59_layer_call_and_return_conditional_losses_1376842

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�[
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1377168

inputs=
+lstm_cell_80_matmul_readvariableop_resource:@?
-lstm_cell_80_matmul_1_readvariableop_resource:@:
,lstm_cell_80_biasadd_readvariableop_resource:@
identity��#lstm_cell_80/BiasAdd/ReadVariableOp�"lstm_cell_80/MatMul/ReadVariableOp�$lstm_cell_80/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_80/MatMul/ReadVariableOp�
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul�
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_80/MatMul_1/ReadVariableOp�
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul_1�
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/add�
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_80/BiasAdd/ReadVariableOp�
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/BiasAdd~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim�
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_80/split�
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid�
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_1�
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul}
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu�
lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_1�
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/add_1�
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu_1�
lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1377084*
condR
while_cond_1377083*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������2

Identity�
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
.__inference_lstm_cell_78_layer_call_fn_1381052

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_13744902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2

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
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
f
H__inference_dropout_120_layer_call_and_return_conditional_losses_1381004

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�[
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1376627

inputs=
+lstm_cell_79_matmul_readvariableop_resource:@?
-lstm_cell_79_matmul_1_readvariableop_resource:@:
,lstm_cell_79_biasadd_readvariableop_resource:@
identity��#lstm_cell_79/BiasAdd/ReadVariableOp�"lstm_cell_79/MatMul/ReadVariableOp�$lstm_cell_79/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_79/MatMul/ReadVariableOp�
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul�
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_79/MatMul_1/ReadVariableOp�
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul_1�
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/add�
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_79/BiasAdd/ReadVariableOp�
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/BiasAdd~
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_79/split/split_dim�
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_79/split�
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid�
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_1�
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul}
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu�
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_1�
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/add_1�
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_2|
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu_1�
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1376543*
condR
while_cond_1376542*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������
2

Identity�
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�?
�
while_body_1379683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_79_matmul_readvariableop_resource_0:@G
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_79_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_79_matmul_readvariableop_resource:@E
3while_lstm_cell_79_matmul_1_readvariableop_resource:@@
2while_lstm_cell_79_biasadd_readvariableop_resource:@��)while/lstm_cell_79/BiasAdd/ReadVariableOp�(while/lstm_cell_79/MatMul/ReadVariableOp�*while/lstm_cell_79/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_79/MatMul/ReadVariableOp�
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul�
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_79/MatMul_1/ReadVariableOp�
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul_1�
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/add�
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_79/BiasAdd/ReadVariableOp�
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/BiasAdd�
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_79/split/split_dim�
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_79/split�
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid�
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_1�
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul�
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu�
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_1�
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/add_1�
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_2�
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu_1�
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�[
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1380069

inputs=
+lstm_cell_79_matmul_readvariableop_resource:@?
-lstm_cell_79_matmul_1_readvariableop_resource:@:
,lstm_cell_79_biasadd_readvariableop_resource:@
identity��#lstm_cell_79/BiasAdd/ReadVariableOp�"lstm_cell_79/MatMul/ReadVariableOp�$lstm_cell_79/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_79/MatMul/ReadVariableOp�
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul�
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_79/MatMul_1/ReadVariableOp�
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul_1�
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/add�
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_79/BiasAdd/ReadVariableOp�
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/BiasAdd~
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_79/split/split_dim�
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_79/split�
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid�
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_1�
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul}
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu�
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_1�
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/add_1�
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_2|
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu_1�
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1379985*
condR
while_cond_1379984*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������
2

Identity�
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
˳
�
"__inference__wrapped_model_1374415
lstm_78_inputS
Asequential_20_lstm_78_lstm_cell_78_matmul_readvariableop_resource:@U
Csequential_20_lstm_78_lstm_cell_78_matmul_1_readvariableop_resource:@P
Bsequential_20_lstm_78_lstm_cell_78_biasadd_readvariableop_resource:@S
Asequential_20_lstm_79_lstm_cell_79_matmul_readvariableop_resource:@U
Csequential_20_lstm_79_lstm_cell_79_matmul_1_readvariableop_resource:@P
Bsequential_20_lstm_79_lstm_cell_79_biasadd_readvariableop_resource:@S
Asequential_20_lstm_80_lstm_cell_80_matmul_readvariableop_resource:@U
Csequential_20_lstm_80_lstm_cell_80_matmul_1_readvariableop_resource:@P
Bsequential_20_lstm_80_lstm_cell_80_biasadd_readvariableop_resource:@G
5sequential_20_dense_58_matmul_readvariableop_resource:D
6sequential_20_dense_58_biasadd_readvariableop_resource:G
5sequential_20_dense_59_matmul_readvariableop_resource:D
6sequential_20_dense_59_biasadd_readvariableop_resource:G
5sequential_20_dense_60_matmul_readvariableop_resource:D
6sequential_20_dense_60_biasadd_readvariableop_resource:
identity��-sequential_20/dense_58/BiasAdd/ReadVariableOp�,sequential_20/dense_58/MatMul/ReadVariableOp�-sequential_20/dense_59/BiasAdd/ReadVariableOp�,sequential_20/dense_59/MatMul/ReadVariableOp�-sequential_20/dense_60/BiasAdd/ReadVariableOp�,sequential_20/dense_60/MatMul/ReadVariableOp�9sequential_20/lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp�8sequential_20/lstm_78/lstm_cell_78/MatMul/ReadVariableOp�:sequential_20/lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp�sequential_20/lstm_78/while�9sequential_20/lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp�8sequential_20/lstm_79/lstm_cell_79/MatMul/ReadVariableOp�:sequential_20/lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp�sequential_20/lstm_79/while�9sequential_20/lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp�8sequential_20/lstm_80/lstm_cell_80/MatMul/ReadVariableOp�:sequential_20/lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp�sequential_20/lstm_80/whilew
sequential_20/lstm_78/ShapeShapelstm_78_input*
T0*
_output_shapes
:2
sequential_20/lstm_78/Shape�
)sequential_20/lstm_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_20/lstm_78/strided_slice/stack�
+sequential_20/lstm_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_20/lstm_78/strided_slice/stack_1�
+sequential_20/lstm_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_20/lstm_78/strided_slice/stack_2�
#sequential_20/lstm_78/strided_sliceStridedSlice$sequential_20/lstm_78/Shape:output:02sequential_20/lstm_78/strided_slice/stack:output:04sequential_20/lstm_78/strided_slice/stack_1:output:04sequential_20/lstm_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_20/lstm_78/strided_slice�
!sequential_20/lstm_78/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_20/lstm_78/zeros/mul/y�
sequential_20/lstm_78/zeros/mulMul,sequential_20/lstm_78/strided_slice:output:0*sequential_20/lstm_78/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_20/lstm_78/zeros/mul�
"sequential_20/lstm_78/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_20/lstm_78/zeros/Less/y�
 sequential_20/lstm_78/zeros/LessLess#sequential_20/lstm_78/zeros/mul:z:0+sequential_20/lstm_78/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_20/lstm_78/zeros/Less�
$sequential_20/lstm_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_20/lstm_78/zeros/packed/1�
"sequential_20/lstm_78/zeros/packedPack,sequential_20/lstm_78/strided_slice:output:0-sequential_20/lstm_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_20/lstm_78/zeros/packed�
!sequential_20/lstm_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_20/lstm_78/zeros/Const�
sequential_20/lstm_78/zerosFill+sequential_20/lstm_78/zeros/packed:output:0*sequential_20/lstm_78/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_20/lstm_78/zeros�
#sequential_20/lstm_78/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_20/lstm_78/zeros_1/mul/y�
!sequential_20/lstm_78/zeros_1/mulMul,sequential_20/lstm_78/strided_slice:output:0,sequential_20/lstm_78/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_20/lstm_78/zeros_1/mul�
$sequential_20/lstm_78/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential_20/lstm_78/zeros_1/Less/y�
"sequential_20/lstm_78/zeros_1/LessLess%sequential_20/lstm_78/zeros_1/mul:z:0-sequential_20/lstm_78/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_20/lstm_78/zeros_1/Less�
&sequential_20/lstm_78/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_20/lstm_78/zeros_1/packed/1�
$sequential_20/lstm_78/zeros_1/packedPack,sequential_20/lstm_78/strided_slice:output:0/sequential_20/lstm_78/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_20/lstm_78/zeros_1/packed�
#sequential_20/lstm_78/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_20/lstm_78/zeros_1/Const�
sequential_20/lstm_78/zeros_1Fill-sequential_20/lstm_78/zeros_1/packed:output:0,sequential_20/lstm_78/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_20/lstm_78/zeros_1�
$sequential_20/lstm_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_20/lstm_78/transpose/perm�
sequential_20/lstm_78/transpose	Transposelstm_78_input-sequential_20/lstm_78/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2!
sequential_20/lstm_78/transpose�
sequential_20/lstm_78/Shape_1Shape#sequential_20/lstm_78/transpose:y:0*
T0*
_output_shapes
:2
sequential_20/lstm_78/Shape_1�
+sequential_20/lstm_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_20/lstm_78/strided_slice_1/stack�
-sequential_20/lstm_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_78/strided_slice_1/stack_1�
-sequential_20/lstm_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_78/strided_slice_1/stack_2�
%sequential_20/lstm_78/strided_slice_1StridedSlice&sequential_20/lstm_78/Shape_1:output:04sequential_20/lstm_78/strided_slice_1/stack:output:06sequential_20/lstm_78/strided_slice_1/stack_1:output:06sequential_20/lstm_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_20/lstm_78/strided_slice_1�
1sequential_20/lstm_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential_20/lstm_78/TensorArrayV2/element_shape�
#sequential_20/lstm_78/TensorArrayV2TensorListReserve:sequential_20/lstm_78/TensorArrayV2/element_shape:output:0.sequential_20/lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_20/lstm_78/TensorArrayV2�
Ksequential_20/lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2M
Ksequential_20/lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential_20/lstm_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_20/lstm_78/transpose:y:0Tsequential_20/lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_20/lstm_78/TensorArrayUnstack/TensorListFromTensor�
+sequential_20/lstm_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_20/lstm_78/strided_slice_2/stack�
-sequential_20/lstm_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_78/strided_slice_2/stack_1�
-sequential_20/lstm_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_78/strided_slice_2/stack_2�
%sequential_20/lstm_78/strided_slice_2StridedSlice#sequential_20/lstm_78/transpose:y:04sequential_20/lstm_78/strided_slice_2/stack:output:06sequential_20/lstm_78/strided_slice_2/stack_1:output:06sequential_20/lstm_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential_20/lstm_78/strided_slice_2�
8sequential_20/lstm_78/lstm_cell_78/MatMul/ReadVariableOpReadVariableOpAsequential_20_lstm_78_lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02:
8sequential_20/lstm_78/lstm_cell_78/MatMul/ReadVariableOp�
)sequential_20/lstm_78/lstm_cell_78/MatMulMatMul.sequential_20/lstm_78/strided_slice_2:output:0@sequential_20/lstm_78/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2+
)sequential_20/lstm_78/lstm_cell_78/MatMul�
:sequential_20/lstm_78/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOpCsequential_20_lstm_78_lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_20/lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp�
+sequential_20/lstm_78/lstm_cell_78/MatMul_1MatMul$sequential_20/lstm_78/zeros:output:0Bsequential_20/lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2-
+sequential_20/lstm_78/lstm_cell_78/MatMul_1�
&sequential_20/lstm_78/lstm_cell_78/addAddV23sequential_20/lstm_78/lstm_cell_78/MatMul:product:05sequential_20/lstm_78/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2(
&sequential_20/lstm_78/lstm_cell_78/add�
9sequential_20/lstm_78/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOpBsequential_20_lstm_78_lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_20/lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp�
*sequential_20/lstm_78/lstm_cell_78/BiasAddBiasAdd*sequential_20/lstm_78/lstm_cell_78/add:z:0Asequential_20/lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2,
*sequential_20/lstm_78/lstm_cell_78/BiasAdd�
2sequential_20/lstm_78/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_20/lstm_78/lstm_cell_78/split/split_dim�
(sequential_20/lstm_78/lstm_cell_78/splitSplit;sequential_20/lstm_78/lstm_cell_78/split/split_dim:output:03sequential_20/lstm_78/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2*
(sequential_20/lstm_78/lstm_cell_78/split�
*sequential_20/lstm_78/lstm_cell_78/SigmoidSigmoid1sequential_20/lstm_78/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2,
*sequential_20/lstm_78/lstm_cell_78/Sigmoid�
,sequential_20/lstm_78/lstm_cell_78/Sigmoid_1Sigmoid1sequential_20/lstm_78/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_78/lstm_cell_78/Sigmoid_1�
&sequential_20/lstm_78/lstm_cell_78/mulMul0sequential_20/lstm_78/lstm_cell_78/Sigmoid_1:y:0&sequential_20/lstm_78/zeros_1:output:0*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_78/lstm_cell_78/mul�
'sequential_20/lstm_78/lstm_cell_78/ReluRelu1sequential_20/lstm_78/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2)
'sequential_20/lstm_78/lstm_cell_78/Relu�
(sequential_20/lstm_78/lstm_cell_78/mul_1Mul.sequential_20/lstm_78/lstm_cell_78/Sigmoid:y:05sequential_20/lstm_78/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_78/lstm_cell_78/mul_1�
(sequential_20/lstm_78/lstm_cell_78/add_1AddV2*sequential_20/lstm_78/lstm_cell_78/mul:z:0,sequential_20/lstm_78/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_78/lstm_cell_78/add_1�
,sequential_20/lstm_78/lstm_cell_78/Sigmoid_2Sigmoid1sequential_20/lstm_78/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_78/lstm_cell_78/Sigmoid_2�
)sequential_20/lstm_78/lstm_cell_78/Relu_1Relu,sequential_20/lstm_78/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2+
)sequential_20/lstm_78/lstm_cell_78/Relu_1�
(sequential_20/lstm_78/lstm_cell_78/mul_2Mul0sequential_20/lstm_78/lstm_cell_78/Sigmoid_2:y:07sequential_20/lstm_78/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_78/lstm_cell_78/mul_2�
3sequential_20/lstm_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   25
3sequential_20/lstm_78/TensorArrayV2_1/element_shape�
%sequential_20/lstm_78/TensorArrayV2_1TensorListReserve<sequential_20/lstm_78/TensorArrayV2_1/element_shape:output:0.sequential_20/lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_20/lstm_78/TensorArrayV2_1z
sequential_20/lstm_78/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_20/lstm_78/time�
.sequential_20/lstm_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential_20/lstm_78/while/maximum_iterations�
(sequential_20/lstm_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_20/lstm_78/while/loop_counter�
sequential_20/lstm_78/whileWhile1sequential_20/lstm_78/while/loop_counter:output:07sequential_20/lstm_78/while/maximum_iterations:output:0#sequential_20/lstm_78/time:output:0.sequential_20/lstm_78/TensorArrayV2_1:handle:0$sequential_20/lstm_78/zeros:output:0&sequential_20/lstm_78/zeros_1:output:0.sequential_20/lstm_78/strided_slice_1:output:0Msequential_20/lstm_78/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_20_lstm_78_lstm_cell_78_matmul_readvariableop_resourceCsequential_20_lstm_78_lstm_cell_78_matmul_1_readvariableop_resourceBsequential_20_lstm_78_lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_20_lstm_78_while_body_1374012*4
cond,R*
(sequential_20_lstm_78_while_cond_1374011*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
sequential_20/lstm_78/while�
Fsequential_20/lstm_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2H
Fsequential_20/lstm_78/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential_20/lstm_78/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_20/lstm_78/while:output:3Osequential_20/lstm_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02:
8sequential_20/lstm_78/TensorArrayV2Stack/TensorListStack�
+sequential_20/lstm_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential_20/lstm_78/strided_slice_3/stack�
-sequential_20/lstm_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_20/lstm_78/strided_slice_3/stack_1�
-sequential_20/lstm_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_78/strided_slice_3/stack_2�
%sequential_20/lstm_78/strided_slice_3StridedSliceAsequential_20/lstm_78/TensorArrayV2Stack/TensorListStack:tensor:04sequential_20/lstm_78/strided_slice_3/stack:output:06sequential_20/lstm_78/strided_slice_3/stack_1:output:06sequential_20/lstm_78/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential_20/lstm_78/strided_slice_3�
&sequential_20/lstm_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_20/lstm_78/transpose_1/perm�
!sequential_20/lstm_78/transpose_1	TransposeAsequential_20/lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_20/lstm_78/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2#
!sequential_20/lstm_78/transpose_1�
sequential_20/lstm_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_20/lstm_78/runtime�
"sequential_20/dropout_116/IdentityIdentity%sequential_20/lstm_78/transpose_1:y:0*
T0*+
_output_shapes
:���������
2$
"sequential_20/dropout_116/Identity�
sequential_20/lstm_79/ShapeShape+sequential_20/dropout_116/Identity:output:0*
T0*
_output_shapes
:2
sequential_20/lstm_79/Shape�
)sequential_20/lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_20/lstm_79/strided_slice/stack�
+sequential_20/lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_20/lstm_79/strided_slice/stack_1�
+sequential_20/lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_20/lstm_79/strided_slice/stack_2�
#sequential_20/lstm_79/strided_sliceStridedSlice$sequential_20/lstm_79/Shape:output:02sequential_20/lstm_79/strided_slice/stack:output:04sequential_20/lstm_79/strided_slice/stack_1:output:04sequential_20/lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_20/lstm_79/strided_slice�
!sequential_20/lstm_79/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_20/lstm_79/zeros/mul/y�
sequential_20/lstm_79/zeros/mulMul,sequential_20/lstm_79/strided_slice:output:0*sequential_20/lstm_79/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_20/lstm_79/zeros/mul�
"sequential_20/lstm_79/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_20/lstm_79/zeros/Less/y�
 sequential_20/lstm_79/zeros/LessLess#sequential_20/lstm_79/zeros/mul:z:0+sequential_20/lstm_79/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_20/lstm_79/zeros/Less�
$sequential_20/lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_20/lstm_79/zeros/packed/1�
"sequential_20/lstm_79/zeros/packedPack,sequential_20/lstm_79/strided_slice:output:0-sequential_20/lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_20/lstm_79/zeros/packed�
!sequential_20/lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_20/lstm_79/zeros/Const�
sequential_20/lstm_79/zerosFill+sequential_20/lstm_79/zeros/packed:output:0*sequential_20/lstm_79/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_20/lstm_79/zeros�
#sequential_20/lstm_79/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_20/lstm_79/zeros_1/mul/y�
!sequential_20/lstm_79/zeros_1/mulMul,sequential_20/lstm_79/strided_slice:output:0,sequential_20/lstm_79/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_20/lstm_79/zeros_1/mul�
$sequential_20/lstm_79/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential_20/lstm_79/zeros_1/Less/y�
"sequential_20/lstm_79/zeros_1/LessLess%sequential_20/lstm_79/zeros_1/mul:z:0-sequential_20/lstm_79/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_20/lstm_79/zeros_1/Less�
&sequential_20/lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_20/lstm_79/zeros_1/packed/1�
$sequential_20/lstm_79/zeros_1/packedPack,sequential_20/lstm_79/strided_slice:output:0/sequential_20/lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_20/lstm_79/zeros_1/packed�
#sequential_20/lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_20/lstm_79/zeros_1/Const�
sequential_20/lstm_79/zeros_1Fill-sequential_20/lstm_79/zeros_1/packed:output:0,sequential_20/lstm_79/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_20/lstm_79/zeros_1�
$sequential_20/lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_20/lstm_79/transpose/perm�
sequential_20/lstm_79/transpose	Transpose+sequential_20/dropout_116/Identity:output:0-sequential_20/lstm_79/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2!
sequential_20/lstm_79/transpose�
sequential_20/lstm_79/Shape_1Shape#sequential_20/lstm_79/transpose:y:0*
T0*
_output_shapes
:2
sequential_20/lstm_79/Shape_1�
+sequential_20/lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_20/lstm_79/strided_slice_1/stack�
-sequential_20/lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_79/strided_slice_1/stack_1�
-sequential_20/lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_79/strided_slice_1/stack_2�
%sequential_20/lstm_79/strided_slice_1StridedSlice&sequential_20/lstm_79/Shape_1:output:04sequential_20/lstm_79/strided_slice_1/stack:output:06sequential_20/lstm_79/strided_slice_1/stack_1:output:06sequential_20/lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_20/lstm_79/strided_slice_1�
1sequential_20/lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential_20/lstm_79/TensorArrayV2/element_shape�
#sequential_20/lstm_79/TensorArrayV2TensorListReserve:sequential_20/lstm_79/TensorArrayV2/element_shape:output:0.sequential_20/lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_20/lstm_79/TensorArrayV2�
Ksequential_20/lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2M
Ksequential_20/lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential_20/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_20/lstm_79/transpose:y:0Tsequential_20/lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_20/lstm_79/TensorArrayUnstack/TensorListFromTensor�
+sequential_20/lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_20/lstm_79/strided_slice_2/stack�
-sequential_20/lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_79/strided_slice_2/stack_1�
-sequential_20/lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_79/strided_slice_2/stack_2�
%sequential_20/lstm_79/strided_slice_2StridedSlice#sequential_20/lstm_79/transpose:y:04sequential_20/lstm_79/strided_slice_2/stack:output:06sequential_20/lstm_79/strided_slice_2/stack_1:output:06sequential_20/lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential_20/lstm_79/strided_slice_2�
8sequential_20/lstm_79/lstm_cell_79/MatMul/ReadVariableOpReadVariableOpAsequential_20_lstm_79_lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02:
8sequential_20/lstm_79/lstm_cell_79/MatMul/ReadVariableOp�
)sequential_20/lstm_79/lstm_cell_79/MatMulMatMul.sequential_20/lstm_79/strided_slice_2:output:0@sequential_20/lstm_79/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2+
)sequential_20/lstm_79/lstm_cell_79/MatMul�
:sequential_20/lstm_79/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOpCsequential_20_lstm_79_lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_20/lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp�
+sequential_20/lstm_79/lstm_cell_79/MatMul_1MatMul$sequential_20/lstm_79/zeros:output:0Bsequential_20/lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2-
+sequential_20/lstm_79/lstm_cell_79/MatMul_1�
&sequential_20/lstm_79/lstm_cell_79/addAddV23sequential_20/lstm_79/lstm_cell_79/MatMul:product:05sequential_20/lstm_79/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2(
&sequential_20/lstm_79/lstm_cell_79/add�
9sequential_20/lstm_79/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOpBsequential_20_lstm_79_lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_20/lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp�
*sequential_20/lstm_79/lstm_cell_79/BiasAddBiasAdd*sequential_20/lstm_79/lstm_cell_79/add:z:0Asequential_20/lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2,
*sequential_20/lstm_79/lstm_cell_79/BiasAdd�
2sequential_20/lstm_79/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_20/lstm_79/lstm_cell_79/split/split_dim�
(sequential_20/lstm_79/lstm_cell_79/splitSplit;sequential_20/lstm_79/lstm_cell_79/split/split_dim:output:03sequential_20/lstm_79/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2*
(sequential_20/lstm_79/lstm_cell_79/split�
*sequential_20/lstm_79/lstm_cell_79/SigmoidSigmoid1sequential_20/lstm_79/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2,
*sequential_20/lstm_79/lstm_cell_79/Sigmoid�
,sequential_20/lstm_79/lstm_cell_79/Sigmoid_1Sigmoid1sequential_20/lstm_79/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_79/lstm_cell_79/Sigmoid_1�
&sequential_20/lstm_79/lstm_cell_79/mulMul0sequential_20/lstm_79/lstm_cell_79/Sigmoid_1:y:0&sequential_20/lstm_79/zeros_1:output:0*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_79/lstm_cell_79/mul�
'sequential_20/lstm_79/lstm_cell_79/ReluRelu1sequential_20/lstm_79/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2)
'sequential_20/lstm_79/lstm_cell_79/Relu�
(sequential_20/lstm_79/lstm_cell_79/mul_1Mul.sequential_20/lstm_79/lstm_cell_79/Sigmoid:y:05sequential_20/lstm_79/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_79/lstm_cell_79/mul_1�
(sequential_20/lstm_79/lstm_cell_79/add_1AddV2*sequential_20/lstm_79/lstm_cell_79/mul:z:0,sequential_20/lstm_79/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_79/lstm_cell_79/add_1�
,sequential_20/lstm_79/lstm_cell_79/Sigmoid_2Sigmoid1sequential_20/lstm_79/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_79/lstm_cell_79/Sigmoid_2�
)sequential_20/lstm_79/lstm_cell_79/Relu_1Relu,sequential_20/lstm_79/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2+
)sequential_20/lstm_79/lstm_cell_79/Relu_1�
(sequential_20/lstm_79/lstm_cell_79/mul_2Mul0sequential_20/lstm_79/lstm_cell_79/Sigmoid_2:y:07sequential_20/lstm_79/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_79/lstm_cell_79/mul_2�
3sequential_20/lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   25
3sequential_20/lstm_79/TensorArrayV2_1/element_shape�
%sequential_20/lstm_79/TensorArrayV2_1TensorListReserve<sequential_20/lstm_79/TensorArrayV2_1/element_shape:output:0.sequential_20/lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_20/lstm_79/TensorArrayV2_1z
sequential_20/lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_20/lstm_79/time�
.sequential_20/lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential_20/lstm_79/while/maximum_iterations�
(sequential_20/lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_20/lstm_79/while/loop_counter�
sequential_20/lstm_79/whileWhile1sequential_20/lstm_79/while/loop_counter:output:07sequential_20/lstm_79/while/maximum_iterations:output:0#sequential_20/lstm_79/time:output:0.sequential_20/lstm_79/TensorArrayV2_1:handle:0$sequential_20/lstm_79/zeros:output:0&sequential_20/lstm_79/zeros_1:output:0.sequential_20/lstm_79/strided_slice_1:output:0Msequential_20/lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_20_lstm_79_lstm_cell_79_matmul_readvariableop_resourceCsequential_20_lstm_79_lstm_cell_79_matmul_1_readvariableop_resourceBsequential_20_lstm_79_lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_20_lstm_79_while_body_1374160*4
cond,R*
(sequential_20_lstm_79_while_cond_1374159*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
sequential_20/lstm_79/while�
Fsequential_20/lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2H
Fsequential_20/lstm_79/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential_20/lstm_79/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_20/lstm_79/while:output:3Osequential_20/lstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02:
8sequential_20/lstm_79/TensorArrayV2Stack/TensorListStack�
+sequential_20/lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential_20/lstm_79/strided_slice_3/stack�
-sequential_20/lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_20/lstm_79/strided_slice_3/stack_1�
-sequential_20/lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_79/strided_slice_3/stack_2�
%sequential_20/lstm_79/strided_slice_3StridedSliceAsequential_20/lstm_79/TensorArrayV2Stack/TensorListStack:tensor:04sequential_20/lstm_79/strided_slice_3/stack:output:06sequential_20/lstm_79/strided_slice_3/stack_1:output:06sequential_20/lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential_20/lstm_79/strided_slice_3�
&sequential_20/lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_20/lstm_79/transpose_1/perm�
!sequential_20/lstm_79/transpose_1	TransposeAsequential_20/lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_20/lstm_79/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2#
!sequential_20/lstm_79/transpose_1�
sequential_20/lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_20/lstm_79/runtime�
"sequential_20/dropout_117/IdentityIdentity%sequential_20/lstm_79/transpose_1:y:0*
T0*+
_output_shapes
:���������
2$
"sequential_20/dropout_117/Identity�
sequential_20/lstm_80/ShapeShape+sequential_20/dropout_117/Identity:output:0*
T0*
_output_shapes
:2
sequential_20/lstm_80/Shape�
)sequential_20/lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_20/lstm_80/strided_slice/stack�
+sequential_20/lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_20/lstm_80/strided_slice/stack_1�
+sequential_20/lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_20/lstm_80/strided_slice/stack_2�
#sequential_20/lstm_80/strided_sliceStridedSlice$sequential_20/lstm_80/Shape:output:02sequential_20/lstm_80/strided_slice/stack:output:04sequential_20/lstm_80/strided_slice/stack_1:output:04sequential_20/lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_20/lstm_80/strided_slice�
!sequential_20/lstm_80/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_20/lstm_80/zeros/mul/y�
sequential_20/lstm_80/zeros/mulMul,sequential_20/lstm_80/strided_slice:output:0*sequential_20/lstm_80/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_20/lstm_80/zeros/mul�
"sequential_20/lstm_80/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_20/lstm_80/zeros/Less/y�
 sequential_20/lstm_80/zeros/LessLess#sequential_20/lstm_80/zeros/mul:z:0+sequential_20/lstm_80/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_20/lstm_80/zeros/Less�
$sequential_20/lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_20/lstm_80/zeros/packed/1�
"sequential_20/lstm_80/zeros/packedPack,sequential_20/lstm_80/strided_slice:output:0-sequential_20/lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_20/lstm_80/zeros/packed�
!sequential_20/lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_20/lstm_80/zeros/Const�
sequential_20/lstm_80/zerosFill+sequential_20/lstm_80/zeros/packed:output:0*sequential_20/lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_20/lstm_80/zeros�
#sequential_20/lstm_80/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_20/lstm_80/zeros_1/mul/y�
!sequential_20/lstm_80/zeros_1/mulMul,sequential_20/lstm_80/strided_slice:output:0,sequential_20/lstm_80/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_20/lstm_80/zeros_1/mul�
$sequential_20/lstm_80/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential_20/lstm_80/zeros_1/Less/y�
"sequential_20/lstm_80/zeros_1/LessLess%sequential_20/lstm_80/zeros_1/mul:z:0-sequential_20/lstm_80/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_20/lstm_80/zeros_1/Less�
&sequential_20/lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_20/lstm_80/zeros_1/packed/1�
$sequential_20/lstm_80/zeros_1/packedPack,sequential_20/lstm_80/strided_slice:output:0/sequential_20/lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_20/lstm_80/zeros_1/packed�
#sequential_20/lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_20/lstm_80/zeros_1/Const�
sequential_20/lstm_80/zeros_1Fill-sequential_20/lstm_80/zeros_1/packed:output:0,sequential_20/lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_20/lstm_80/zeros_1�
$sequential_20/lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_20/lstm_80/transpose/perm�
sequential_20/lstm_80/transpose	Transpose+sequential_20/dropout_117/Identity:output:0-sequential_20/lstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2!
sequential_20/lstm_80/transpose�
sequential_20/lstm_80/Shape_1Shape#sequential_20/lstm_80/transpose:y:0*
T0*
_output_shapes
:2
sequential_20/lstm_80/Shape_1�
+sequential_20/lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_20/lstm_80/strided_slice_1/stack�
-sequential_20/lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_80/strided_slice_1/stack_1�
-sequential_20/lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_80/strided_slice_1/stack_2�
%sequential_20/lstm_80/strided_slice_1StridedSlice&sequential_20/lstm_80/Shape_1:output:04sequential_20/lstm_80/strided_slice_1/stack:output:06sequential_20/lstm_80/strided_slice_1/stack_1:output:06sequential_20/lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_20/lstm_80/strided_slice_1�
1sequential_20/lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential_20/lstm_80/TensorArrayV2/element_shape�
#sequential_20/lstm_80/TensorArrayV2TensorListReserve:sequential_20/lstm_80/TensorArrayV2/element_shape:output:0.sequential_20/lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_20/lstm_80/TensorArrayV2�
Ksequential_20/lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2M
Ksequential_20/lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential_20/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_20/lstm_80/transpose:y:0Tsequential_20/lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_20/lstm_80/TensorArrayUnstack/TensorListFromTensor�
+sequential_20/lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_20/lstm_80/strided_slice_2/stack�
-sequential_20/lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_80/strided_slice_2/stack_1�
-sequential_20/lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_80/strided_slice_2/stack_2�
%sequential_20/lstm_80/strided_slice_2StridedSlice#sequential_20/lstm_80/transpose:y:04sequential_20/lstm_80/strided_slice_2/stack:output:06sequential_20/lstm_80/strided_slice_2/stack_1:output:06sequential_20/lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential_20/lstm_80/strided_slice_2�
8sequential_20/lstm_80/lstm_cell_80/MatMul/ReadVariableOpReadVariableOpAsequential_20_lstm_80_lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02:
8sequential_20/lstm_80/lstm_cell_80/MatMul/ReadVariableOp�
)sequential_20/lstm_80/lstm_cell_80/MatMulMatMul.sequential_20/lstm_80/strided_slice_2:output:0@sequential_20/lstm_80/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2+
)sequential_20/lstm_80/lstm_cell_80/MatMul�
:sequential_20/lstm_80/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOpCsequential_20_lstm_80_lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_20/lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp�
+sequential_20/lstm_80/lstm_cell_80/MatMul_1MatMul$sequential_20/lstm_80/zeros:output:0Bsequential_20/lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2-
+sequential_20/lstm_80/lstm_cell_80/MatMul_1�
&sequential_20/lstm_80/lstm_cell_80/addAddV23sequential_20/lstm_80/lstm_cell_80/MatMul:product:05sequential_20/lstm_80/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2(
&sequential_20/lstm_80/lstm_cell_80/add�
9sequential_20/lstm_80/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOpBsequential_20_lstm_80_lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_20/lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp�
*sequential_20/lstm_80/lstm_cell_80/BiasAddBiasAdd*sequential_20/lstm_80/lstm_cell_80/add:z:0Asequential_20/lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2,
*sequential_20/lstm_80/lstm_cell_80/BiasAdd�
2sequential_20/lstm_80/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_20/lstm_80/lstm_cell_80/split/split_dim�
(sequential_20/lstm_80/lstm_cell_80/splitSplit;sequential_20/lstm_80/lstm_cell_80/split/split_dim:output:03sequential_20/lstm_80/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2*
(sequential_20/lstm_80/lstm_cell_80/split�
*sequential_20/lstm_80/lstm_cell_80/SigmoidSigmoid1sequential_20/lstm_80/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2,
*sequential_20/lstm_80/lstm_cell_80/Sigmoid�
,sequential_20/lstm_80/lstm_cell_80/Sigmoid_1Sigmoid1sequential_20/lstm_80/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_80/lstm_cell_80/Sigmoid_1�
&sequential_20/lstm_80/lstm_cell_80/mulMul0sequential_20/lstm_80/lstm_cell_80/Sigmoid_1:y:0&sequential_20/lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_80/lstm_cell_80/mul�
'sequential_20/lstm_80/lstm_cell_80/ReluRelu1sequential_20/lstm_80/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2)
'sequential_20/lstm_80/lstm_cell_80/Relu�
(sequential_20/lstm_80/lstm_cell_80/mul_1Mul.sequential_20/lstm_80/lstm_cell_80/Sigmoid:y:05sequential_20/lstm_80/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_80/lstm_cell_80/mul_1�
(sequential_20/lstm_80/lstm_cell_80/add_1AddV2*sequential_20/lstm_80/lstm_cell_80/mul:z:0,sequential_20/lstm_80/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_80/lstm_cell_80/add_1�
,sequential_20/lstm_80/lstm_cell_80/Sigmoid_2Sigmoid1sequential_20/lstm_80/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_80/lstm_cell_80/Sigmoid_2�
)sequential_20/lstm_80/lstm_cell_80/Relu_1Relu,sequential_20/lstm_80/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2+
)sequential_20/lstm_80/lstm_cell_80/Relu_1�
(sequential_20/lstm_80/lstm_cell_80/mul_2Mul0sequential_20/lstm_80/lstm_cell_80/Sigmoid_2:y:07sequential_20/lstm_80/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2*
(sequential_20/lstm_80/lstm_cell_80/mul_2�
3sequential_20/lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   25
3sequential_20/lstm_80/TensorArrayV2_1/element_shape�
%sequential_20/lstm_80/TensorArrayV2_1TensorListReserve<sequential_20/lstm_80/TensorArrayV2_1/element_shape:output:0.sequential_20/lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_20/lstm_80/TensorArrayV2_1z
sequential_20/lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_20/lstm_80/time�
.sequential_20/lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential_20/lstm_80/while/maximum_iterations�
(sequential_20/lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_20/lstm_80/while/loop_counter�
sequential_20/lstm_80/whileWhile1sequential_20/lstm_80/while/loop_counter:output:07sequential_20/lstm_80/while/maximum_iterations:output:0#sequential_20/lstm_80/time:output:0.sequential_20/lstm_80/TensorArrayV2_1:handle:0$sequential_20/lstm_80/zeros:output:0&sequential_20/lstm_80/zeros_1:output:0.sequential_20/lstm_80/strided_slice_1:output:0Msequential_20/lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_20_lstm_80_lstm_cell_80_matmul_readvariableop_resourceCsequential_20_lstm_80_lstm_cell_80_matmul_1_readvariableop_resourceBsequential_20_lstm_80_lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_20_lstm_80_while_body_1374308*4
cond,R*
(sequential_20_lstm_80_while_cond_1374307*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
sequential_20/lstm_80/while�
Fsequential_20/lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2H
Fsequential_20/lstm_80/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential_20/lstm_80/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_20/lstm_80/while:output:3Osequential_20/lstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02:
8sequential_20/lstm_80/TensorArrayV2Stack/TensorListStack�
+sequential_20/lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential_20/lstm_80/strided_slice_3/stack�
-sequential_20/lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_20/lstm_80/strided_slice_3/stack_1�
-sequential_20/lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_20/lstm_80/strided_slice_3/stack_2�
%sequential_20/lstm_80/strided_slice_3StridedSliceAsequential_20/lstm_80/TensorArrayV2Stack/TensorListStack:tensor:04sequential_20/lstm_80/strided_slice_3/stack:output:06sequential_20/lstm_80/strided_slice_3/stack_1:output:06sequential_20/lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential_20/lstm_80/strided_slice_3�
&sequential_20/lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_20/lstm_80/transpose_1/perm�
!sequential_20/lstm_80/transpose_1	TransposeAsequential_20/lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_20/lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2#
!sequential_20/lstm_80/transpose_1�
sequential_20/lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_20/lstm_80/runtime�
"sequential_20/dropout_118/IdentityIdentity.sequential_20/lstm_80/strided_slice_3:output:0*
T0*'
_output_shapes
:���������2$
"sequential_20/dropout_118/Identity�
,sequential_20/dense_58/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_58_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_20/dense_58/MatMul/ReadVariableOp�
sequential_20/dense_58/MatMulMatMul+sequential_20/dropout_118/Identity:output:04sequential_20/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_20/dense_58/MatMul�
-sequential_20/dense_58/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_20/dense_58/BiasAdd/ReadVariableOp�
sequential_20/dense_58/BiasAddBiasAdd'sequential_20/dense_58/MatMul:product:05sequential_20/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_20/dense_58/BiasAdd�
sequential_20/dense_58/ReluRelu'sequential_20/dense_58/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential_20/dense_58/Relu�
"sequential_20/dropout_119/IdentityIdentity)sequential_20/dense_58/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"sequential_20/dropout_119/Identity�
,sequential_20/dense_59/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_59_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_20/dense_59/MatMul/ReadVariableOp�
sequential_20/dense_59/MatMulMatMul+sequential_20/dropout_119/Identity:output:04sequential_20/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_20/dense_59/MatMul�
-sequential_20/dense_59/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_20/dense_59/BiasAdd/ReadVariableOp�
sequential_20/dense_59/BiasAddBiasAdd'sequential_20/dense_59/MatMul:product:05sequential_20/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_20/dense_59/BiasAdd�
sequential_20/dense_59/ReluRelu'sequential_20/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential_20/dense_59/Relu�
"sequential_20/dropout_120/IdentityIdentity)sequential_20/dense_59/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"sequential_20/dropout_120/Identity�
,sequential_20/dense_60/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_60_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_20/dense_60/MatMul/ReadVariableOp�
sequential_20/dense_60/MatMulMatMul+sequential_20/dropout_120/Identity:output:04sequential_20/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_20/dense_60/MatMul�
-sequential_20/dense_60/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_20/dense_60/BiasAdd/ReadVariableOp�
sequential_20/dense_60/BiasAddBiasAdd'sequential_20/dense_60/MatMul:product:05sequential_20/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_20/dense_60/BiasAdd�
IdentityIdentity'sequential_20/dense_60/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp.^sequential_20/dense_58/BiasAdd/ReadVariableOp-^sequential_20/dense_58/MatMul/ReadVariableOp.^sequential_20/dense_59/BiasAdd/ReadVariableOp-^sequential_20/dense_59/MatMul/ReadVariableOp.^sequential_20/dense_60/BiasAdd/ReadVariableOp-^sequential_20/dense_60/MatMul/ReadVariableOp:^sequential_20/lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp9^sequential_20/lstm_78/lstm_cell_78/MatMul/ReadVariableOp;^sequential_20/lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp^sequential_20/lstm_78/while:^sequential_20/lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp9^sequential_20/lstm_79/lstm_cell_79/MatMul/ReadVariableOp;^sequential_20/lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp^sequential_20/lstm_79/while:^sequential_20/lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp9^sequential_20/lstm_80/lstm_cell_80/MatMul/ReadVariableOp;^sequential_20/lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp^sequential_20/lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 2^
-sequential_20/dense_58/BiasAdd/ReadVariableOp-sequential_20/dense_58/BiasAdd/ReadVariableOp2\
,sequential_20/dense_58/MatMul/ReadVariableOp,sequential_20/dense_58/MatMul/ReadVariableOp2^
-sequential_20/dense_59/BiasAdd/ReadVariableOp-sequential_20/dense_59/BiasAdd/ReadVariableOp2\
,sequential_20/dense_59/MatMul/ReadVariableOp,sequential_20/dense_59/MatMul/ReadVariableOp2^
-sequential_20/dense_60/BiasAdd/ReadVariableOp-sequential_20/dense_60/BiasAdd/ReadVariableOp2\
,sequential_20/dense_60/MatMul/ReadVariableOp,sequential_20/dense_60/MatMul/ReadVariableOp2v
9sequential_20/lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp9sequential_20/lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp2t
8sequential_20/lstm_78/lstm_cell_78/MatMul/ReadVariableOp8sequential_20/lstm_78/lstm_cell_78/MatMul/ReadVariableOp2x
:sequential_20/lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp:sequential_20/lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp2:
sequential_20/lstm_78/whilesequential_20/lstm_78/while2v
9sequential_20/lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp9sequential_20/lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp2t
8sequential_20/lstm_79/lstm_cell_79/MatMul/ReadVariableOp8sequential_20/lstm_79/lstm_cell_79/MatMul/ReadVariableOp2x
:sequential_20/lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp:sequential_20/lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp2:
sequential_20/lstm_79/whilesequential_20/lstm_79/while2v
9sequential_20/lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp9sequential_20/lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp2t
8sequential_20/lstm_80/lstm_cell_80/MatMul/ReadVariableOp8sequential_20/lstm_80/lstm_cell_80/MatMul/ReadVariableOp2x
:sequential_20/lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp:sequential_20/lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp2:
sequential_20/lstm_80/whilesequential_20/lstm_80/while:Z V
+
_output_shapes
:���������

'
_user_specified_namelstm_78_input
�
�
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_1381231

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�[
�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1376462

inputs=
+lstm_cell_78_matmul_readvariableop_resource:@?
-lstm_cell_78_matmul_1_readvariableop_resource:@:
,lstm_cell_78_biasadd_readvariableop_resource:@
identity��#lstm_cell_78/BiasAdd/ReadVariableOp�"lstm_cell_78/MatMul/ReadVariableOp�$lstm_cell_78/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_78/MatMul/ReadVariableOp�
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul�
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_78/MatMul_1/ReadVariableOp�
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul_1�
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/add�
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_78/BiasAdd/ReadVariableOp�
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/BiasAdd~
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_78/split/split_dim�
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_78/split�
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid�
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_1�
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul}
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu�
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_1�
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/add_1�
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_2|
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu_1�
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1376378*
condR
while_cond_1376377*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������
2

Identity�
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�;
�
J__inference_sequential_20_layer_call_and_return_conditional_losses_1377809
lstm_78_input!
lstm_78_1377767:@!
lstm_78_1377769:@
lstm_78_1377771:@!
lstm_79_1377775:@!
lstm_79_1377777:@
lstm_79_1377779:@!
lstm_80_1377783:@!
lstm_80_1377785:@
lstm_80_1377787:@"
dense_58_1377791:
dense_58_1377793:"
dense_59_1377797:
dense_59_1377799:"
dense_60_1377803:
dense_60_1377805:
identity�� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall� dense_60/StatefulPartitionedCall�#dropout_116/StatefulPartitionedCall�#dropout_117/StatefulPartitionedCall�#dropout_118/StatefulPartitionedCall�#dropout_119/StatefulPartitionedCall�#dropout_120/StatefulPartitionedCall�lstm_78/StatefulPartitionedCall�lstm_79/StatefulPartitionedCall�lstm_80/StatefulPartitionedCall�
lstm_78/StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputlstm_78_1377767lstm_78_1377769lstm_78_1377771*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_78_layer_call_and_return_conditional_losses_13775602!
lstm_78/StatefulPartitionedCall�
#dropout_116/StatefulPartitionedCallStatefulPartitionedCall(lstm_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_116_layer_call_and_return_conditional_losses_13773932%
#dropout_116/StatefulPartitionedCall�
lstm_79/StatefulPartitionedCallStatefulPartitionedCall,dropout_116/StatefulPartitionedCall:output:0lstm_79_1377775lstm_79_1377777lstm_79_1377779*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_13773642!
lstm_79/StatefulPartitionedCall�
#dropout_117/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0$^dropout_116/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_117_layer_call_and_return_conditional_losses_13771972%
#dropout_117/StatefulPartitionedCall�
lstm_80/StatefulPartitionedCallStatefulPartitionedCall,dropout_117/StatefulPartitionedCall:output:0lstm_80_1377783lstm_80_1377785lstm_80_1377787*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_80_layer_call_and_return_conditional_losses_13771682!
lstm_80/StatefulPartitionedCall�
#dropout_118/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0$^dropout_117/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_118_layer_call_and_return_conditional_losses_13770012%
#dropout_118/StatefulPartitionedCall�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall,dropout_118/StatefulPartitionedCall:output:0dense_58_1377791dense_58_1377793*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_13768182"
 dense_58/StatefulPartitionedCall�
#dropout_119/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0$^dropout_118/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_119_layer_call_and_return_conditional_losses_13769682%
#dropout_119/StatefulPartitionedCall�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall,dropout_119/StatefulPartitionedCall:output:0dense_59_1377797dense_59_1377799*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_13768422"
 dense_59/StatefulPartitionedCall�
#dropout_120/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0$^dropout_119/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_120_layer_call_and_return_conditional_losses_13769352%
#dropout_120/StatefulPartitionedCall�
 dense_60/StatefulPartitionedCallStatefulPartitionedCall,dropout_120/StatefulPartitionedCall:output:0dense_60_1377803dense_60_1377805*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_13768652"
 dense_60/StatefulPartitionedCall�
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall$^dropout_116/StatefulPartitionedCall$^dropout_117/StatefulPartitionedCall$^dropout_118/StatefulPartitionedCall$^dropout_119/StatefulPartitionedCall$^dropout_120/StatefulPartitionedCall ^lstm_78/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCall ^lstm_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2J
#dropout_116/StatefulPartitionedCall#dropout_116/StatefulPartitionedCall2J
#dropout_117/StatefulPartitionedCall#dropout_117/StatefulPartitionedCall2J
#dropout_118/StatefulPartitionedCall#dropout_118/StatefulPartitionedCall2J
#dropout_119/StatefulPartitionedCall#dropout_119/StatefulPartitionedCall2J
#dropout_120/StatefulPartitionedCall#dropout_120/StatefulPartitionedCall2B
lstm_78/StatefulPartitionedCalllstm_78/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall:Z V
+
_output_shapes
:���������

'
_user_specified_namelstm_78_input
�

�
E__inference_dense_60_layer_call_and_return_conditional_losses_1381035

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�#
#__inference__traced_restore_1381686
file_prefix2
 assignvariableop_dense_58_kernel:.
 assignvariableop_1_dense_58_bias:4
"assignvariableop_2_dense_59_kernel:.
 assignvariableop_3_dense_59_bias:4
"assignvariableop_4_dense_60_kernel:.
 assignvariableop_5_dense_60_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: A
/assignvariableop_11_lstm_78_lstm_cell_78_kernel:@K
9assignvariableop_12_lstm_78_lstm_cell_78_recurrent_kernel:@;
-assignvariableop_13_lstm_78_lstm_cell_78_bias:@A
/assignvariableop_14_lstm_79_lstm_cell_79_kernel:@K
9assignvariableop_15_lstm_79_lstm_cell_79_recurrent_kernel:@;
-assignvariableop_16_lstm_79_lstm_cell_79_bias:@A
/assignvariableop_17_lstm_80_lstm_cell_80_kernel:@K
9assignvariableop_18_lstm_80_lstm_cell_80_recurrent_kernel:@;
-assignvariableop_19_lstm_80_lstm_cell_80_bias:@#
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: <
*assignvariableop_24_adam_dense_58_kernel_m:6
(assignvariableop_25_adam_dense_58_bias_m:<
*assignvariableop_26_adam_dense_59_kernel_m:6
(assignvariableop_27_adam_dense_59_bias_m:<
*assignvariableop_28_adam_dense_60_kernel_m:6
(assignvariableop_29_adam_dense_60_bias_m:H
6assignvariableop_30_adam_lstm_78_lstm_cell_78_kernel_m:@R
@assignvariableop_31_adam_lstm_78_lstm_cell_78_recurrent_kernel_m:@B
4assignvariableop_32_adam_lstm_78_lstm_cell_78_bias_m:@H
6assignvariableop_33_adam_lstm_79_lstm_cell_79_kernel_m:@R
@assignvariableop_34_adam_lstm_79_lstm_cell_79_recurrent_kernel_m:@B
4assignvariableop_35_adam_lstm_79_lstm_cell_79_bias_m:@H
6assignvariableop_36_adam_lstm_80_lstm_cell_80_kernel_m:@R
@assignvariableop_37_adam_lstm_80_lstm_cell_80_recurrent_kernel_m:@B
4assignvariableop_38_adam_lstm_80_lstm_cell_80_bias_m:@<
*assignvariableop_39_adam_dense_58_kernel_v:6
(assignvariableop_40_adam_dense_58_bias_v:<
*assignvariableop_41_adam_dense_59_kernel_v:6
(assignvariableop_42_adam_dense_59_bias_v:<
*assignvariableop_43_adam_dense_60_kernel_v:6
(assignvariableop_44_adam_dense_60_bias_v:H
6assignvariableop_45_adam_lstm_78_lstm_cell_78_kernel_v:@R
@assignvariableop_46_adam_lstm_78_lstm_cell_78_recurrent_kernel_v:@B
4assignvariableop_47_adam_lstm_78_lstm_cell_78_bias_v:@H
6assignvariableop_48_adam_lstm_79_lstm_cell_79_kernel_v:@R
@assignvariableop_49_adam_lstm_79_lstm_cell_79_recurrent_kernel_v:@B
4assignvariableop_50_adam_lstm_79_lstm_cell_79_bias_v:@H
6assignvariableop_51_adam_lstm_80_lstm_cell_80_kernel_v:@R
@assignvariableop_52_adam_lstm_80_lstm_cell_80_recurrent_kernel_v:@B
4assignvariableop_53_adam_lstm_80_lstm_cell_80_bias_v:@
identity_55��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
value�B�7B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_dense_58_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_58_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_59_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_59_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_60_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_60_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_78_lstm_cell_78_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp9assignvariableop_12_lstm_78_lstm_cell_78_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp-assignvariableop_13_lstm_78_lstm_cell_78_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_lstm_79_lstm_cell_79_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp9assignvariableop_15_lstm_79_lstm_cell_79_recurrent_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp-assignvariableop_16_lstm_79_lstm_cell_79_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp/assignvariableop_17_lstm_80_lstm_cell_80_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp9assignvariableop_18_lstm_80_lstm_cell_80_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp-assignvariableop_19_lstm_80_lstm_cell_80_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_58_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_58_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_59_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense_59_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_60_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense_60_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_lstm_78_lstm_cell_78_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_lstm_78_lstm_cell_78_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_lstm_78_lstm_cell_78_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_79_lstm_cell_79_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_lstm_79_lstm_cell_79_recurrent_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_lstm_79_lstm_cell_79_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_80_lstm_cell_80_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp@assignvariableop_37_adam_lstm_80_lstm_cell_80_recurrent_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp4assignvariableop_38_adam_lstm_80_lstm_cell_80_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_58_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_58_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_59_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_59_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_60_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_60_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_lstm_78_lstm_cell_78_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp@assignvariableop_46_adam_lstm_78_lstm_cell_78_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_lstm_78_lstm_cell_78_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_lstm_79_lstm_cell_79_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp@assignvariableop_49_adam_lstm_79_lstm_cell_79_recurrent_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp4assignvariableop_50_adam_lstm_79_lstm_cell_79_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_lstm_80_lstm_cell_80_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOp@assignvariableop_52_adam_lstm_80_lstm_cell_80_recurrent_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOp4assignvariableop_53_adam_lstm_80_lstm_cell_80_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_539
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_54f
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_55�	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_55Identity_55:output:0*�
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
�
g
H__inference_dropout_119_layer_call_and_return_conditional_losses_1380969

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
f
-__inference_dropout_116_layer_call_fn_1379555

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_116_layer_call_and_return_conditional_losses_13773932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
f
H__inference_dropout_117_layer_call_and_return_conditional_losses_1376640

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������
2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������
2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
while_cond_1379984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1379984___redundant_placeholder05
1while_while_cond_1379984___redundant_placeholder15
1while_while_cond_1379984___redundant_placeholder25
1while_while_cond_1379984___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1377475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377475___redundant_placeholder05
1while_while_cond_1377475___redundant_placeholder15
1while_while_cond_1377475___redundant_placeholder25
1while_while_cond_1377475___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_1381199

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
�
(sequential_20_lstm_78_while_cond_1374011H
Dsequential_20_lstm_78_while_sequential_20_lstm_78_while_loop_counterN
Jsequential_20_lstm_78_while_sequential_20_lstm_78_while_maximum_iterations+
'sequential_20_lstm_78_while_placeholder-
)sequential_20_lstm_78_while_placeholder_1-
)sequential_20_lstm_78_while_placeholder_2-
)sequential_20_lstm_78_while_placeholder_3J
Fsequential_20_lstm_78_while_less_sequential_20_lstm_78_strided_slice_1a
]sequential_20_lstm_78_while_sequential_20_lstm_78_while_cond_1374011___redundant_placeholder0a
]sequential_20_lstm_78_while_sequential_20_lstm_78_while_cond_1374011___redundant_placeholder1a
]sequential_20_lstm_78_while_sequential_20_lstm_78_while_cond_1374011___redundant_placeholder2a
]sequential_20_lstm_78_while_sequential_20_lstm_78_while_cond_1374011___redundant_placeholder3(
$sequential_20_lstm_78_while_identity
�
 sequential_20/lstm_78/while/LessLess'sequential_20_lstm_78_while_placeholderFsequential_20_lstm_78_while_less_sequential_20_lstm_78_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_20/lstm_78/while/Less�
$sequential_20/lstm_78/while/IdentityIdentity$sequential_20/lstm_78/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_20/lstm_78/while/Identity"U
$sequential_20_lstm_78_while_identity-sequential_20/lstm_78/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_1374490

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�
�
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_1375750

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�
g
H__inference_dropout_120_layer_call_and_return_conditional_losses_1376935

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_78_layer_call_fn_1378941

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_78_layer_call_and_return_conditional_losses_13775602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
)__inference_lstm_80_layer_call_fn_1380280

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_80_layer_call_and_return_conditional_losses_13767922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
lstm_78_while_cond_1377988,
(lstm_78_while_lstm_78_while_loop_counter2
.lstm_78_while_lstm_78_while_maximum_iterations
lstm_78_while_placeholder
lstm_78_while_placeholder_1
lstm_78_while_placeholder_2
lstm_78_while_placeholder_3.
*lstm_78_while_less_lstm_78_strided_slice_1E
Alstm_78_while_lstm_78_while_cond_1377988___redundant_placeholder0E
Alstm_78_while_lstm_78_while_cond_1377988___redundant_placeholder1E
Alstm_78_while_lstm_78_while_cond_1377988___redundant_placeholder2E
Alstm_78_while_lstm_78_while_cond_1377988___redundant_placeholder3
lstm_78_while_identity
�
lstm_78/while/LessLesslstm_78_while_placeholder*lstm_78_while_less_lstm_78_strided_slice_1*
T0*
_output_shapes
: 2
lstm_78/while/Lessu
lstm_78/while/IdentityIdentitylstm_78/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_78/while/Identity"9
lstm_78_while_identitylstm_78/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
E__inference_dense_58_layer_call_and_return_conditional_losses_1380942

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_79_layer_call_fn_1379605

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_13766272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�?
�
while_body_1376708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:@G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:@E
3while_lstm_cell_80_matmul_1_readvariableop_resource:@@
2while_lstm_cell_80_biasadd_readvariableop_resource:@��)while/lstm_cell_80/BiasAdd/ReadVariableOp�(while/lstm_cell_80/MatMul/ReadVariableOp�*while/lstm_cell_80/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_80/MatMul/ReadVariableOp�
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul�
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_80/MatMul_1/ReadVariableOp�
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul_1�
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/add�
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_80/BiasAdd/ReadVariableOp�
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/BiasAdd�
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim�
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_80/split�
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid�
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_1�
while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul�
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu�
while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_1�
while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/add_1�
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_2�
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu_1�
while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�J
�

lstm_80_while_body_1378285,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3+
'lstm_80_while_lstm_80_strided_slice_1_0g
clstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0:@O
=lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0:@J
<lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0:@
lstm_80_while_identity
lstm_80_while_identity_1
lstm_80_while_identity_2
lstm_80_while_identity_3
lstm_80_while_identity_4
lstm_80_while_identity_5)
%lstm_80_while_lstm_80_strided_slice_1e
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorK
9lstm_80_while_lstm_cell_80_matmul_readvariableop_resource:@M
;lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource:@H
:lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource:@��1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp�0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp�2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp�
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0lstm_80_while_placeholderHlstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_80/while/TensorArrayV2Read/TensorListGetItem�
0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp;lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp�
!lstm_80/while/lstm_cell_80/MatMulMatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2#
!lstm_80/while/lstm_cell_80/MatMul�
2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp=lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp�
#lstm_80/while/lstm_cell_80/MatMul_1MatMullstm_80_while_placeholder_2:lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_80/while/lstm_cell_80/MatMul_1�
lstm_80/while/lstm_cell_80/addAddV2+lstm_80/while/lstm_cell_80/MatMul:product:0-lstm_80/while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2 
lstm_80/while/lstm_cell_80/add�
1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp<lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype023
1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp�
"lstm_80/while/lstm_cell_80/BiasAddBiasAdd"lstm_80/while/lstm_cell_80/add:z:09lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2$
"lstm_80/while/lstm_cell_80/BiasAdd�
*lstm_80/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_80/while/lstm_cell_80/split/split_dim�
 lstm_80/while/lstm_cell_80/splitSplit3lstm_80/while/lstm_cell_80/split/split_dim:output:0+lstm_80/while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2"
 lstm_80/while/lstm_cell_80/split�
"lstm_80/while/lstm_cell_80/SigmoidSigmoid)lstm_80/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2$
"lstm_80/while/lstm_cell_80/Sigmoid�
$lstm_80/while/lstm_cell_80/Sigmoid_1Sigmoid)lstm_80/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2&
$lstm_80/while/lstm_cell_80/Sigmoid_1�
lstm_80/while/lstm_cell_80/mulMul(lstm_80/while/lstm_cell_80/Sigmoid_1:y:0lstm_80_while_placeholder_3*
T0*'
_output_shapes
:���������2 
lstm_80/while/lstm_cell_80/mul�
lstm_80/while/lstm_cell_80/ReluRelu)lstm_80/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2!
lstm_80/while/lstm_cell_80/Relu�
 lstm_80/while/lstm_cell_80/mul_1Mul&lstm_80/while/lstm_cell_80/Sigmoid:y:0-lstm_80/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_80/while/lstm_cell_80/mul_1�
 lstm_80/while/lstm_cell_80/add_1AddV2"lstm_80/while/lstm_cell_80/mul:z:0$lstm_80/while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2"
 lstm_80/while/lstm_cell_80/add_1�
$lstm_80/while/lstm_cell_80/Sigmoid_2Sigmoid)lstm_80/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2&
$lstm_80/while/lstm_cell_80/Sigmoid_2�
!lstm_80/while/lstm_cell_80/Relu_1Relu$lstm_80/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2#
!lstm_80/while/lstm_cell_80/Relu_1�
 lstm_80/while/lstm_cell_80/mul_2Mul(lstm_80/while/lstm_cell_80/Sigmoid_2:y:0/lstm_80/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_80/while/lstm_cell_80/mul_2�
2lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_80_while_placeholder_1lstm_80_while_placeholder$lstm_80/while/lstm_cell_80/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_80/while/TensorArrayV2Write/TensorListSetIteml
lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/while/add/y�
lstm_80/while/addAddV2lstm_80_while_placeholderlstm_80/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_80/while/addp
lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/while/add_1/y�
lstm_80/while/add_1AddV2(lstm_80_while_lstm_80_while_loop_counterlstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_80/while/add_1�
lstm_80/while/IdentityIdentitylstm_80/while/add_1:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity�
lstm_80/while/Identity_1Identity.lstm_80_while_lstm_80_while_maximum_iterations^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_1�
lstm_80/while/Identity_2Identitylstm_80/while/add:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_2�
lstm_80/while/Identity_3IdentityBlstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_3�
lstm_80/while/Identity_4Identity$lstm_80/while/lstm_cell_80/mul_2:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_80/while/Identity_4�
lstm_80/while/Identity_5Identity$lstm_80/while/lstm_cell_80/add_1:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_80/while/Identity_5�
lstm_80/while/NoOpNoOp2^lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp1^lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp3^lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_80/while/NoOp"9
lstm_80_while_identitylstm_80/while/Identity:output:0"=
lstm_80_while_identity_1!lstm_80/while/Identity_1:output:0"=
lstm_80_while_identity_2!lstm_80/while/Identity_2:output:0"=
lstm_80_while_identity_3!lstm_80/while/Identity_3:output:0"=
lstm_80_while_identity_4!lstm_80/while/Identity_4:output:0"=
lstm_80_while_identity_5!lstm_80/while/Identity_5:output:0"P
%lstm_80_while_lstm_80_strided_slice_1'lstm_80_while_lstm_80_strided_slice_1_0"z
:lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource<lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0"|
;lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource=lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0"x
9lstm_80_while_lstm_cell_80_matmul_readvariableop_resource;lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0"�
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2f
1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp2d
0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp2h
2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_1376543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_79_matmul_readvariableop_resource_0:@G
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_79_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_79_matmul_readvariableop_resource:@E
3while_lstm_cell_79_matmul_1_readvariableop_resource:@@
2while_lstm_cell_79_biasadd_readvariableop_resource:@��)while/lstm_cell_79/BiasAdd/ReadVariableOp�(while/lstm_cell_79/MatMul/ReadVariableOp�*while/lstm_cell_79/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_79/MatMul/ReadVariableOp�
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul�
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_79/MatMul_1/ReadVariableOp�
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul_1�
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/add�
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_79/BiasAdd/ReadVariableOp�
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/BiasAdd�
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_79/split/split_dim�
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_79/split�
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid�
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_1�
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul�
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu�
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_1�
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/add_1�
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_2�
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu_1�
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�^
�
(sequential_20_lstm_78_while_body_1374012H
Dsequential_20_lstm_78_while_sequential_20_lstm_78_while_loop_counterN
Jsequential_20_lstm_78_while_sequential_20_lstm_78_while_maximum_iterations+
'sequential_20_lstm_78_while_placeholder-
)sequential_20_lstm_78_while_placeholder_1-
)sequential_20_lstm_78_while_placeholder_2-
)sequential_20_lstm_78_while_placeholder_3G
Csequential_20_lstm_78_while_sequential_20_lstm_78_strided_slice_1_0�
sequential_20_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_78_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_20_lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0:@]
Ksequential_20_lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0:@X
Jsequential_20_lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0:@(
$sequential_20_lstm_78_while_identity*
&sequential_20_lstm_78_while_identity_1*
&sequential_20_lstm_78_while_identity_2*
&sequential_20_lstm_78_while_identity_3*
&sequential_20_lstm_78_while_identity_4*
&sequential_20_lstm_78_while_identity_5E
Asequential_20_lstm_78_while_sequential_20_lstm_78_strided_slice_1�
}sequential_20_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_78_tensorarrayunstack_tensorlistfromtensorY
Gsequential_20_lstm_78_while_lstm_cell_78_matmul_readvariableop_resource:@[
Isequential_20_lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource:@V
Hsequential_20_lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource:@��?sequential_20/lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp�>sequential_20/lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp�@sequential_20/lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp�
Msequential_20/lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2O
Msequential_20/lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential_20/lstm_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_20_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_78_tensorarrayunstack_tensorlistfromtensor_0'sequential_20_lstm_78_while_placeholderVsequential_20/lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02A
?sequential_20/lstm_78/while/TensorArrayV2Read/TensorListGetItem�
>sequential_20/lstm_78/while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOpIsequential_20_lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02@
>sequential_20/lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp�
/sequential_20/lstm_78/while/lstm_cell_78/MatMulMatMulFsequential_20/lstm_78/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_20/lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@21
/sequential_20/lstm_78/while/lstm_cell_78/MatMul�
@sequential_20/lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOpKsequential_20_lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_20/lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp�
1sequential_20/lstm_78/while/lstm_cell_78/MatMul_1MatMul)sequential_20_lstm_78_while_placeholder_2Hsequential_20/lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@23
1sequential_20/lstm_78/while/lstm_cell_78/MatMul_1�
,sequential_20/lstm_78/while/lstm_cell_78/addAddV29sequential_20/lstm_78/while/lstm_cell_78/MatMul:product:0;sequential_20/lstm_78/while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2.
,sequential_20/lstm_78/while/lstm_cell_78/add�
?sequential_20/lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOpJsequential_20_lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02A
?sequential_20/lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp�
0sequential_20/lstm_78/while/lstm_cell_78/BiasAddBiasAdd0sequential_20/lstm_78/while/lstm_cell_78/add:z:0Gsequential_20/lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@22
0sequential_20/lstm_78/while/lstm_cell_78/BiasAdd�
8sequential_20/lstm_78/while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_20/lstm_78/while/lstm_cell_78/split/split_dim�
.sequential_20/lstm_78/while/lstm_cell_78/splitSplitAsequential_20/lstm_78/while/lstm_cell_78/split/split_dim:output:09sequential_20/lstm_78/while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split20
.sequential_20/lstm_78/while/lstm_cell_78/split�
0sequential_20/lstm_78/while/lstm_cell_78/SigmoidSigmoid7sequential_20/lstm_78/while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������22
0sequential_20/lstm_78/while/lstm_cell_78/Sigmoid�
2sequential_20/lstm_78/while/lstm_cell_78/Sigmoid_1Sigmoid7sequential_20/lstm_78/while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������24
2sequential_20/lstm_78/while/lstm_cell_78/Sigmoid_1�
,sequential_20/lstm_78/while/lstm_cell_78/mulMul6sequential_20/lstm_78/while/lstm_cell_78/Sigmoid_1:y:0)sequential_20_lstm_78_while_placeholder_3*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_78/while/lstm_cell_78/mul�
-sequential_20/lstm_78/while/lstm_cell_78/ReluRelu7sequential_20/lstm_78/while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2/
-sequential_20/lstm_78/while/lstm_cell_78/Relu�
.sequential_20/lstm_78/while/lstm_cell_78/mul_1Mul4sequential_20/lstm_78/while/lstm_cell_78/Sigmoid:y:0;sequential_20/lstm_78/while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_78/while/lstm_cell_78/mul_1�
.sequential_20/lstm_78/while/lstm_cell_78/add_1AddV20sequential_20/lstm_78/while/lstm_cell_78/mul:z:02sequential_20/lstm_78/while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_78/while/lstm_cell_78/add_1�
2sequential_20/lstm_78/while/lstm_cell_78/Sigmoid_2Sigmoid7sequential_20/lstm_78/while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������24
2sequential_20/lstm_78/while/lstm_cell_78/Sigmoid_2�
/sequential_20/lstm_78/while/lstm_cell_78/Relu_1Relu2sequential_20/lstm_78/while/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������21
/sequential_20/lstm_78/while/lstm_cell_78/Relu_1�
.sequential_20/lstm_78/while/lstm_cell_78/mul_2Mul6sequential_20/lstm_78/while/lstm_cell_78/Sigmoid_2:y:0=sequential_20/lstm_78/while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_78/while/lstm_cell_78/mul_2�
@sequential_20/lstm_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_20_lstm_78_while_placeholder_1'sequential_20_lstm_78_while_placeholder2sequential_20/lstm_78/while/lstm_cell_78/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_20/lstm_78/while/TensorArrayV2Write/TensorListSetItem�
!sequential_20/lstm_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_20/lstm_78/while/add/y�
sequential_20/lstm_78/while/addAddV2'sequential_20_lstm_78_while_placeholder*sequential_20/lstm_78/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_20/lstm_78/while/add�
#sequential_20/lstm_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_20/lstm_78/while/add_1/y�
!sequential_20/lstm_78/while/add_1AddV2Dsequential_20_lstm_78_while_sequential_20_lstm_78_while_loop_counter,sequential_20/lstm_78/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_20/lstm_78/while/add_1�
$sequential_20/lstm_78/while/IdentityIdentity%sequential_20/lstm_78/while/add_1:z:0!^sequential_20/lstm_78/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_20/lstm_78/while/Identity�
&sequential_20/lstm_78/while/Identity_1IdentityJsequential_20_lstm_78_while_sequential_20_lstm_78_while_maximum_iterations!^sequential_20/lstm_78/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_78/while/Identity_1�
&sequential_20/lstm_78/while/Identity_2Identity#sequential_20/lstm_78/while/add:z:0!^sequential_20/lstm_78/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_78/while/Identity_2�
&sequential_20/lstm_78/while/Identity_3IdentityPsequential_20/lstm_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_20/lstm_78/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_78/while/Identity_3�
&sequential_20/lstm_78/while/Identity_4Identity2sequential_20/lstm_78/while/lstm_cell_78/mul_2:z:0!^sequential_20/lstm_78/while/NoOp*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_78/while/Identity_4�
&sequential_20/lstm_78/while/Identity_5Identity2sequential_20/lstm_78/while/lstm_cell_78/add_1:z:0!^sequential_20/lstm_78/while/NoOp*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_78/while/Identity_5�
 sequential_20/lstm_78/while/NoOpNoOp@^sequential_20/lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp?^sequential_20/lstm_78/while/lstm_cell_78/MatMul/ReadVariableOpA^sequential_20/lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_20/lstm_78/while/NoOp"U
$sequential_20_lstm_78_while_identity-sequential_20/lstm_78/while/Identity:output:0"Y
&sequential_20_lstm_78_while_identity_1/sequential_20/lstm_78/while/Identity_1:output:0"Y
&sequential_20_lstm_78_while_identity_2/sequential_20/lstm_78/while/Identity_2:output:0"Y
&sequential_20_lstm_78_while_identity_3/sequential_20/lstm_78/while/Identity_3:output:0"Y
&sequential_20_lstm_78_while_identity_4/sequential_20/lstm_78/while/Identity_4:output:0"Y
&sequential_20_lstm_78_while_identity_5/sequential_20/lstm_78/while/Identity_5:output:0"�
Hsequential_20_lstm_78_while_lstm_cell_78_biasadd_readvariableop_resourceJsequential_20_lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0"�
Isequential_20_lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resourceKsequential_20_lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0"�
Gsequential_20_lstm_78_while_lstm_cell_78_matmul_readvariableop_resourceIsequential_20_lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0"�
Asequential_20_lstm_78_while_sequential_20_lstm_78_strided_slice_1Csequential_20_lstm_78_while_sequential_20_lstm_78_strided_slice_1_0"�
}sequential_20_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_78_tensorarrayunstack_tensorlistfromtensorsequential_20_lstm_78_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2�
?sequential_20/lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp?sequential_20/lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp2�
>sequential_20/lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp>sequential_20/lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp2�
@sequential_20/lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp@sequential_20/lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�[
�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379545

inputs=
+lstm_cell_78_matmul_readvariableop_resource:@?
-lstm_cell_78_matmul_1_readvariableop_resource:@:
,lstm_cell_78_biasadd_readvariableop_resource:@
identity��#lstm_cell_78/BiasAdd/ReadVariableOp�"lstm_cell_78/MatMul/ReadVariableOp�$lstm_cell_78/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_78/MatMul/ReadVariableOp�
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul�
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_78/MatMul_1/ReadVariableOp�
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul_1�
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/add�
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_78/BiasAdd/ReadVariableOp�
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/BiasAdd~
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_78/split/split_dim�
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_78/split�
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid�
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_1�
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul}
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu�
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_1�
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/add_1�
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_2|
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu_1�
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1379461*
condR
while_cond_1379460*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������
2

Identity�
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�J
�

lstm_79_while_body_1378614,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3+
'lstm_79_while_lstm_79_strided_slice_1_0g
clstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0:@O
=lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0:@J
<lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0:@
lstm_79_while_identity
lstm_79_while_identity_1
lstm_79_while_identity_2
lstm_79_while_identity_3
lstm_79_while_identity_4
lstm_79_while_identity_5)
%lstm_79_while_lstm_79_strided_slice_1e
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorK
9lstm_79_while_lstm_cell_79_matmul_readvariableop_resource:@M
;lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource:@H
:lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource:@��1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp�0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp�2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp�
?lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0lstm_79_while_placeholderHlstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_79/while/TensorArrayV2Read/TensorListGetItem�
0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp;lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp�
!lstm_79/while/lstm_cell_79/MatMulMatMul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2#
!lstm_79/while/lstm_cell_79/MatMul�
2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp=lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp�
#lstm_79/while/lstm_cell_79/MatMul_1MatMullstm_79_while_placeholder_2:lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_79/while/lstm_cell_79/MatMul_1�
lstm_79/while/lstm_cell_79/addAddV2+lstm_79/while/lstm_cell_79/MatMul:product:0-lstm_79/while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2 
lstm_79/while/lstm_cell_79/add�
1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp<lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype023
1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp�
"lstm_79/while/lstm_cell_79/BiasAddBiasAdd"lstm_79/while/lstm_cell_79/add:z:09lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2$
"lstm_79/while/lstm_cell_79/BiasAdd�
*lstm_79/while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_79/while/lstm_cell_79/split/split_dim�
 lstm_79/while/lstm_cell_79/splitSplit3lstm_79/while/lstm_cell_79/split/split_dim:output:0+lstm_79/while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2"
 lstm_79/while/lstm_cell_79/split�
"lstm_79/while/lstm_cell_79/SigmoidSigmoid)lstm_79/while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2$
"lstm_79/while/lstm_cell_79/Sigmoid�
$lstm_79/while/lstm_cell_79/Sigmoid_1Sigmoid)lstm_79/while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2&
$lstm_79/while/lstm_cell_79/Sigmoid_1�
lstm_79/while/lstm_cell_79/mulMul(lstm_79/while/lstm_cell_79/Sigmoid_1:y:0lstm_79_while_placeholder_3*
T0*'
_output_shapes
:���������2 
lstm_79/while/lstm_cell_79/mul�
lstm_79/while/lstm_cell_79/ReluRelu)lstm_79/while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2!
lstm_79/while/lstm_cell_79/Relu�
 lstm_79/while/lstm_cell_79/mul_1Mul&lstm_79/while/lstm_cell_79/Sigmoid:y:0-lstm_79/while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_79/while/lstm_cell_79/mul_1�
 lstm_79/while/lstm_cell_79/add_1AddV2"lstm_79/while/lstm_cell_79/mul:z:0$lstm_79/while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2"
 lstm_79/while/lstm_cell_79/add_1�
$lstm_79/while/lstm_cell_79/Sigmoid_2Sigmoid)lstm_79/while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2&
$lstm_79/while/lstm_cell_79/Sigmoid_2�
!lstm_79/while/lstm_cell_79/Relu_1Relu$lstm_79/while/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2#
!lstm_79/while/lstm_cell_79/Relu_1�
 lstm_79/while/lstm_cell_79/mul_2Mul(lstm_79/while/lstm_cell_79/Sigmoid_2:y:0/lstm_79/while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_79/while/lstm_cell_79/mul_2�
2lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_79_while_placeholder_1lstm_79_while_placeholder$lstm_79/while/lstm_cell_79/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_79/while/TensorArrayV2Write/TensorListSetIteml
lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/while/add/y�
lstm_79/while/addAddV2lstm_79_while_placeholderlstm_79/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_79/while/addp
lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/while/add_1/y�
lstm_79/while/add_1AddV2(lstm_79_while_lstm_79_while_loop_counterlstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_79/while/add_1�
lstm_79/while/IdentityIdentitylstm_79/while/add_1:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 2
lstm_79/while/Identity�
lstm_79/while/Identity_1Identity.lstm_79_while_lstm_79_while_maximum_iterations^lstm_79/while/NoOp*
T0*
_output_shapes
: 2
lstm_79/while/Identity_1�
lstm_79/while/Identity_2Identitylstm_79/while/add:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 2
lstm_79/while/Identity_2�
lstm_79/while/Identity_3IdentityBlstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 2
lstm_79/while/Identity_3�
lstm_79/while/Identity_4Identity$lstm_79/while/lstm_cell_79/mul_2:z:0^lstm_79/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_79/while/Identity_4�
lstm_79/while/Identity_5Identity$lstm_79/while/lstm_cell_79/add_1:z:0^lstm_79/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_79/while/Identity_5�
lstm_79/while/NoOpNoOp2^lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp1^lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp3^lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_79/while/NoOp"9
lstm_79_while_identitylstm_79/while/Identity:output:0"=
lstm_79_while_identity_1!lstm_79/while/Identity_1:output:0"=
lstm_79_while_identity_2!lstm_79/while/Identity_2:output:0"=
lstm_79_while_identity_3!lstm_79/while/Identity_3:output:0"=
lstm_79_while_identity_4!lstm_79/while/Identity_4:output:0"=
lstm_79_while_identity_5!lstm_79/while/Identity_5:output:0"P
%lstm_79_while_lstm_79_strided_slice_1'lstm_79_while_lstm_79_strided_slice_1_0"z
:lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource<lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0"|
;lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource=lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0"x
9lstm_79_while_lstm_cell_79_matmul_readvariableop_resource;lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0"�
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2f
1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp2d
0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp2h
2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_1379008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_78_matmul_readvariableop_resource_0:@G
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_78_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_78_matmul_readvariableop_resource:@E
3while_lstm_cell_78_matmul_1_readvariableop_resource:@@
2while_lstm_cell_78_biasadd_readvariableop_resource:@��)while/lstm_cell_78/BiasAdd/ReadVariableOp�(while/lstm_cell_78/MatMul/ReadVariableOp�*while/lstm_cell_78/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_78/MatMul/ReadVariableOp�
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul�
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_78/MatMul_1/ReadVariableOp�
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul_1�
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/add�
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_78/BiasAdd/ReadVariableOp�
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/BiasAdd�
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_78/split/split_dim�
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_78/split�
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid�
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_1�
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul�
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu�
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_1�
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/add_1�
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_2�
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu_1�
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
f
H__inference_dropout_116_layer_call_and_return_conditional_losses_1379560

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������
2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������
2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�\
�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379092
inputs_0=
+lstm_cell_78_matmul_readvariableop_resource:@?
-lstm_cell_78_matmul_1_readvariableop_resource:@:
,lstm_cell_78_biasadd_readvariableop_resource:@
identity��#lstm_cell_78/BiasAdd/ReadVariableOp�"lstm_cell_78/MatMul/ReadVariableOp�$lstm_cell_78/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_78/MatMul/ReadVariableOp�
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul�
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_78/MatMul_1/ReadVariableOp�
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul_1�
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/add�
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_78/BiasAdd/ReadVariableOp�
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/BiasAdd~
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_78/split/split_dim�
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_78/split�
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid�
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_1�
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul}
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu�
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_1�
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/add_1�
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_2|
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu_1�
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1379008*
condR
while_cond_1379007*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
 :������������������2

Identity�
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�?
�
while_body_1377476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_78_matmul_readvariableop_resource_0:@G
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_78_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_78_matmul_readvariableop_resource:@E
3while_lstm_cell_78_matmul_1_readvariableop_resource:@@
2while_lstm_cell_78_biasadd_readvariableop_resource:@��)while/lstm_cell_78/BiasAdd/ReadVariableOp�(while/lstm_cell_78/MatMul/ReadVariableOp�*while/lstm_cell_78/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_78/MatMul/ReadVariableOp�
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul�
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_78/MatMul_1/ReadVariableOp�
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul_1�
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/add�
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_78/BiasAdd/ReadVariableOp�
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/BiasAdd�
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_78/split/split_dim�
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_78/split�
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid�
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_1�
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul�
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu�
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_1�
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/add_1�
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_2�
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu_1�
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�F
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1375203

inputs&
lstm_cell_79_1375121:@&
lstm_cell_79_1375123:@"
lstm_cell_79_1375125:@
identity��$lstm_cell_79/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_79/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_79_1375121lstm_cell_79_1375123lstm_cell_79_1375125*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_13751202&
$lstm_cell_79/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_79_1375121lstm_cell_79_1375123lstm_cell_79_1375125*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1375134*
condR
while_cond_1375133*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
 :������������������2

Identity}
NoOpNoOp%^lstm_cell_79/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_79/StatefulPartitionedCall$lstm_cell_79/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�

�
lstm_79_while_cond_1378136,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3.
*lstm_79_while_less_lstm_79_strided_slice_1E
Alstm_79_while_lstm_79_while_cond_1378136___redundant_placeholder0E
Alstm_79_while_lstm_79_while_cond_1378136___redundant_placeholder1E
Alstm_79_while_lstm_79_while_cond_1378136___redundant_placeholder2E
Alstm_79_while_lstm_79_while_cond_1378136___redundant_placeholder3
lstm_79_while_identity
�
lstm_79/while/LessLesslstm_79_while_placeholder*lstm_79_while_less_lstm_79_strided_slice_1*
T0*
_output_shapes
: 2
lstm_79/while/Lessu
lstm_79/while/IdentityIdentitylstm_79/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_79/while/Identity"9
lstm_79_while_identitylstm_79/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�J
�

lstm_79_while_body_1378137,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3+
'lstm_79_while_lstm_79_strided_slice_1_0g
clstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0:@O
=lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0:@J
<lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0:@
lstm_79_while_identity
lstm_79_while_identity_1
lstm_79_while_identity_2
lstm_79_while_identity_3
lstm_79_while_identity_4
lstm_79_while_identity_5)
%lstm_79_while_lstm_79_strided_slice_1e
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorK
9lstm_79_while_lstm_cell_79_matmul_readvariableop_resource:@M
;lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource:@H
:lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource:@��1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp�0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp�2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp�
?lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0lstm_79_while_placeholderHlstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_79/while/TensorArrayV2Read/TensorListGetItem�
0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp;lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp�
!lstm_79/while/lstm_cell_79/MatMulMatMul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2#
!lstm_79/while/lstm_cell_79/MatMul�
2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp=lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp�
#lstm_79/while/lstm_cell_79/MatMul_1MatMullstm_79_while_placeholder_2:lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_79/while/lstm_cell_79/MatMul_1�
lstm_79/while/lstm_cell_79/addAddV2+lstm_79/while/lstm_cell_79/MatMul:product:0-lstm_79/while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2 
lstm_79/while/lstm_cell_79/add�
1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp<lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype023
1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp�
"lstm_79/while/lstm_cell_79/BiasAddBiasAdd"lstm_79/while/lstm_cell_79/add:z:09lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2$
"lstm_79/while/lstm_cell_79/BiasAdd�
*lstm_79/while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_79/while/lstm_cell_79/split/split_dim�
 lstm_79/while/lstm_cell_79/splitSplit3lstm_79/while/lstm_cell_79/split/split_dim:output:0+lstm_79/while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2"
 lstm_79/while/lstm_cell_79/split�
"lstm_79/while/lstm_cell_79/SigmoidSigmoid)lstm_79/while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2$
"lstm_79/while/lstm_cell_79/Sigmoid�
$lstm_79/while/lstm_cell_79/Sigmoid_1Sigmoid)lstm_79/while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2&
$lstm_79/while/lstm_cell_79/Sigmoid_1�
lstm_79/while/lstm_cell_79/mulMul(lstm_79/while/lstm_cell_79/Sigmoid_1:y:0lstm_79_while_placeholder_3*
T0*'
_output_shapes
:���������2 
lstm_79/while/lstm_cell_79/mul�
lstm_79/while/lstm_cell_79/ReluRelu)lstm_79/while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2!
lstm_79/while/lstm_cell_79/Relu�
 lstm_79/while/lstm_cell_79/mul_1Mul&lstm_79/while/lstm_cell_79/Sigmoid:y:0-lstm_79/while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_79/while/lstm_cell_79/mul_1�
 lstm_79/while/lstm_cell_79/add_1AddV2"lstm_79/while/lstm_cell_79/mul:z:0$lstm_79/while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2"
 lstm_79/while/lstm_cell_79/add_1�
$lstm_79/while/lstm_cell_79/Sigmoid_2Sigmoid)lstm_79/while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2&
$lstm_79/while/lstm_cell_79/Sigmoid_2�
!lstm_79/while/lstm_cell_79/Relu_1Relu$lstm_79/while/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2#
!lstm_79/while/lstm_cell_79/Relu_1�
 lstm_79/while/lstm_cell_79/mul_2Mul(lstm_79/while/lstm_cell_79/Sigmoid_2:y:0/lstm_79/while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_79/while/lstm_cell_79/mul_2�
2lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_79_while_placeholder_1lstm_79_while_placeholder$lstm_79/while/lstm_cell_79/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_79/while/TensorArrayV2Write/TensorListSetIteml
lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/while/add/y�
lstm_79/while/addAddV2lstm_79_while_placeholderlstm_79/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_79/while/addp
lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/while/add_1/y�
lstm_79/while/add_1AddV2(lstm_79_while_lstm_79_while_loop_counterlstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_79/while/add_1�
lstm_79/while/IdentityIdentitylstm_79/while/add_1:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 2
lstm_79/while/Identity�
lstm_79/while/Identity_1Identity.lstm_79_while_lstm_79_while_maximum_iterations^lstm_79/while/NoOp*
T0*
_output_shapes
: 2
lstm_79/while/Identity_1�
lstm_79/while/Identity_2Identitylstm_79/while/add:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 2
lstm_79/while/Identity_2�
lstm_79/while/Identity_3IdentityBlstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_79/while/NoOp*
T0*
_output_shapes
: 2
lstm_79/while/Identity_3�
lstm_79/while/Identity_4Identity$lstm_79/while/lstm_cell_79/mul_2:z:0^lstm_79/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_79/while/Identity_4�
lstm_79/while/Identity_5Identity$lstm_79/while/lstm_cell_79/add_1:z:0^lstm_79/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_79/while/Identity_5�
lstm_79/while/NoOpNoOp2^lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp1^lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp3^lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_79/while/NoOp"9
lstm_79_while_identitylstm_79/while/Identity:output:0"=
lstm_79_while_identity_1!lstm_79/while/Identity_1:output:0"=
lstm_79_while_identity_2!lstm_79/while/Identity_2:output:0"=
lstm_79_while_identity_3!lstm_79/while/Identity_3:output:0"=
lstm_79_while_identity_4!lstm_79/while/Identity_4:output:0"=
lstm_79_while_identity_5!lstm_79/while/Identity_5:output:0"P
%lstm_79_while_lstm_79_strided_slice_1'lstm_79_while_lstm_79_strided_slice_1_0"z
:lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource<lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0"|
;lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource=lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0"x
9lstm_79_while_lstm_cell_79_matmul_readvariableop_resource;lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0"�
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2f
1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp1lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp2d
0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp0lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp2h
2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp2lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�2
�
J__inference_sequential_20_layer_call_and_return_conditional_losses_1377764
lstm_78_input!
lstm_78_1377722:@!
lstm_78_1377724:@
lstm_78_1377726:@!
lstm_79_1377730:@!
lstm_79_1377732:@
lstm_79_1377734:@!
lstm_80_1377738:@!
lstm_80_1377740:@
lstm_80_1377742:@"
dense_58_1377746:
dense_58_1377748:"
dense_59_1377752:
dense_59_1377754:"
dense_60_1377758:
dense_60_1377760:
identity�� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall� dense_60/StatefulPartitionedCall�lstm_78/StatefulPartitionedCall�lstm_79/StatefulPartitionedCall�lstm_80/StatefulPartitionedCall�
lstm_78/StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputlstm_78_1377722lstm_78_1377724lstm_78_1377726*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_78_layer_call_and_return_conditional_losses_13764622!
lstm_78/StatefulPartitionedCall�
dropout_116/PartitionedCallPartitionedCall(lstm_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_116_layer_call_and_return_conditional_losses_13764752
dropout_116/PartitionedCall�
lstm_79/StatefulPartitionedCallStatefulPartitionedCall$dropout_116/PartitionedCall:output:0lstm_79_1377730lstm_79_1377732lstm_79_1377734*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_13766272!
lstm_79/StatefulPartitionedCall�
dropout_117/PartitionedCallPartitionedCall(lstm_79/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_117_layer_call_and_return_conditional_losses_13766402
dropout_117/PartitionedCall�
lstm_80/StatefulPartitionedCallStatefulPartitionedCall$dropout_117/PartitionedCall:output:0lstm_80_1377738lstm_80_1377740lstm_80_1377742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_80_layer_call_and_return_conditional_losses_13767922!
lstm_80/StatefulPartitionedCall�
dropout_118/PartitionedCallPartitionedCall(lstm_80/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_118_layer_call_and_return_conditional_losses_13768052
dropout_118/PartitionedCall�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall$dropout_118/PartitionedCall:output:0dense_58_1377746dense_58_1377748*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_13768182"
 dense_58/StatefulPartitionedCall�
dropout_119/PartitionedCallPartitionedCall)dense_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_119_layer_call_and_return_conditional_losses_13768292
dropout_119/PartitionedCall�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall$dropout_119/PartitionedCall:output:0dense_59_1377752dense_59_1377754*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_13768422"
 dense_59/StatefulPartitionedCall�
dropout_120/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_120_layer_call_and_return_conditional_losses_13768532
dropout_120/PartitionedCall�
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$dropout_120/PartitionedCall:output:0dense_60_1377758dense_60_1377760*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_13768652"
 dense_60/StatefulPartitionedCall�
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall ^lstm_78/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCall ^lstm_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2B
lstm_78/StatefulPartitionedCalllstm_78/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall:Z V
+
_output_shapes
:���������

'
_user_specified_namelstm_78_input
�
�
while_cond_1374503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1374503___redundant_placeholder05
1while_while_cond_1374503___redundant_placeholder15
1while_while_cond_1374503___redundant_placeholder25
1while_while_cond_1374503___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_79_layer_call_fn_1379616

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_13773642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�\
�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379243
inputs_0=
+lstm_cell_78_matmul_readvariableop_resource:@?
-lstm_cell_78_matmul_1_readvariableop_resource:@:
,lstm_cell_78_biasadd_readvariableop_resource:@
identity��#lstm_cell_78/BiasAdd/ReadVariableOp�"lstm_cell_78/MatMul/ReadVariableOp�$lstm_cell_78/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_78/MatMul/ReadVariableOp�
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul�
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_78/MatMul_1/ReadVariableOp�
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul_1�
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/add�
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_78/BiasAdd/ReadVariableOp�
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/BiasAdd~
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_78/split/split_dim�
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_78/split�
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid�
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_1�
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul}
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu�
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_1�
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/add_1�
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_2|
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu_1�
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1379159*
condR
while_cond_1379158*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
 :������������������2

Identity�
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_1374636

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�
I
-__inference_dropout_119_layer_call_fn_1380947

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_119_layer_call_and_return_conditional_losses_13768292
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1374783

inputs&
lstm_cell_78_1374701:@&
lstm_cell_78_1374703:@"
lstm_cell_78_1374705:@
identity��$lstm_cell_78/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_78/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_78_1374701lstm_cell_78_1374703lstm_cell_78_1374705*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_13746362&
$lstm_cell_78/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_78_1374701lstm_cell_78_1374703lstm_cell_78_1374705*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1374714*
condR
while_cond_1374713*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
 :������������������2

Identity}
NoOpNoOp%^lstm_cell_78/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_78/StatefulPartitionedCall$lstm_cell_78/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
f
H__inference_dropout_120_layer_call_and_return_conditional_losses_1376853

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�

lstm_78_while_body_1377989,
(lstm_78_while_lstm_78_while_loop_counter2
.lstm_78_while_lstm_78_while_maximum_iterations
lstm_78_while_placeholder
lstm_78_while_placeholder_1
lstm_78_while_placeholder_2
lstm_78_while_placeholder_3+
'lstm_78_while_lstm_78_strided_slice_1_0g
clstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0:@O
=lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0:@J
<lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0:@
lstm_78_while_identity
lstm_78_while_identity_1
lstm_78_while_identity_2
lstm_78_while_identity_3
lstm_78_while_identity_4
lstm_78_while_identity_5)
%lstm_78_while_lstm_78_strided_slice_1e
alstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensorK
9lstm_78_while_lstm_cell_78_matmul_readvariableop_resource:@M
;lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource:@H
:lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource:@��1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp�0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp�2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp�
?lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0lstm_78_while_placeholderHlstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_78/while/TensorArrayV2Read/TensorListGetItem�
0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp;lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp�
!lstm_78/while/lstm_cell_78/MatMulMatMul8lstm_78/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2#
!lstm_78/while/lstm_cell_78/MatMul�
2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp=lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp�
#lstm_78/while/lstm_cell_78/MatMul_1MatMullstm_78_while_placeholder_2:lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_78/while/lstm_cell_78/MatMul_1�
lstm_78/while/lstm_cell_78/addAddV2+lstm_78/while/lstm_cell_78/MatMul:product:0-lstm_78/while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2 
lstm_78/while/lstm_cell_78/add�
1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp<lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype023
1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp�
"lstm_78/while/lstm_cell_78/BiasAddBiasAdd"lstm_78/while/lstm_cell_78/add:z:09lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2$
"lstm_78/while/lstm_cell_78/BiasAdd�
*lstm_78/while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_78/while/lstm_cell_78/split/split_dim�
 lstm_78/while/lstm_cell_78/splitSplit3lstm_78/while/lstm_cell_78/split/split_dim:output:0+lstm_78/while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2"
 lstm_78/while/lstm_cell_78/split�
"lstm_78/while/lstm_cell_78/SigmoidSigmoid)lstm_78/while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2$
"lstm_78/while/lstm_cell_78/Sigmoid�
$lstm_78/while/lstm_cell_78/Sigmoid_1Sigmoid)lstm_78/while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2&
$lstm_78/while/lstm_cell_78/Sigmoid_1�
lstm_78/while/lstm_cell_78/mulMul(lstm_78/while/lstm_cell_78/Sigmoid_1:y:0lstm_78_while_placeholder_3*
T0*'
_output_shapes
:���������2 
lstm_78/while/lstm_cell_78/mul�
lstm_78/while/lstm_cell_78/ReluRelu)lstm_78/while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2!
lstm_78/while/lstm_cell_78/Relu�
 lstm_78/while/lstm_cell_78/mul_1Mul&lstm_78/while/lstm_cell_78/Sigmoid:y:0-lstm_78/while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_78/while/lstm_cell_78/mul_1�
 lstm_78/while/lstm_cell_78/add_1AddV2"lstm_78/while/lstm_cell_78/mul:z:0$lstm_78/while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2"
 lstm_78/while/lstm_cell_78/add_1�
$lstm_78/while/lstm_cell_78/Sigmoid_2Sigmoid)lstm_78/while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2&
$lstm_78/while/lstm_cell_78/Sigmoid_2�
!lstm_78/while/lstm_cell_78/Relu_1Relu$lstm_78/while/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2#
!lstm_78/while/lstm_cell_78/Relu_1�
 lstm_78/while/lstm_cell_78/mul_2Mul(lstm_78/while/lstm_cell_78/Sigmoid_2:y:0/lstm_78/while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_78/while/lstm_cell_78/mul_2�
2lstm_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_78_while_placeholder_1lstm_78_while_placeholder$lstm_78/while/lstm_cell_78/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_78/while/TensorArrayV2Write/TensorListSetIteml
lstm_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/while/add/y�
lstm_78/while/addAddV2lstm_78_while_placeholderlstm_78/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_78/while/addp
lstm_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/while/add_1/y�
lstm_78/while/add_1AddV2(lstm_78_while_lstm_78_while_loop_counterlstm_78/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_78/while/add_1�
lstm_78/while/IdentityIdentitylstm_78/while/add_1:z:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 2
lstm_78/while/Identity�
lstm_78/while/Identity_1Identity.lstm_78_while_lstm_78_while_maximum_iterations^lstm_78/while/NoOp*
T0*
_output_shapes
: 2
lstm_78/while/Identity_1�
lstm_78/while/Identity_2Identitylstm_78/while/add:z:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 2
lstm_78/while/Identity_2�
lstm_78/while/Identity_3IdentityBlstm_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 2
lstm_78/while/Identity_3�
lstm_78/while/Identity_4Identity$lstm_78/while/lstm_cell_78/mul_2:z:0^lstm_78/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_78/while/Identity_4�
lstm_78/while/Identity_5Identity$lstm_78/while/lstm_cell_78/add_1:z:0^lstm_78/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_78/while/Identity_5�
lstm_78/while/NoOpNoOp2^lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp1^lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp3^lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_78/while/NoOp"9
lstm_78_while_identitylstm_78/while/Identity:output:0"=
lstm_78_while_identity_1!lstm_78/while/Identity_1:output:0"=
lstm_78_while_identity_2!lstm_78/while/Identity_2:output:0"=
lstm_78_while_identity_3!lstm_78/while/Identity_3:output:0"=
lstm_78_while_identity_4!lstm_78/while/Identity_4:output:0"=
lstm_78_while_identity_5!lstm_78/while/Identity_5:output:0"P
%lstm_78_while_lstm_78_strided_slice_1'lstm_78_while_lstm_78_strided_slice_1_0"z
:lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource<lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0"|
;lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource=lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0"x
9lstm_78_while_lstm_cell_78_matmul_readvariableop_resource;lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0"�
alstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensorclstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2f
1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp2d
0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp2h
2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_1375120

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�[
�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1377560

inputs=
+lstm_cell_78_matmul_readvariableop_resource:@?
-lstm_cell_78_matmul_1_readvariableop_resource:@:
,lstm_cell_78_biasadd_readvariableop_resource:@
identity��#lstm_cell_78/BiasAdd/ReadVariableOp�"lstm_cell_78/MatMul/ReadVariableOp�$lstm_cell_78/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_78/MatMul/ReadVariableOpReadVariableOp+lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_78/MatMul/ReadVariableOp�
lstm_cell_78/MatMulMatMulstrided_slice_2:output:0*lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul�
$lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_78/MatMul_1/ReadVariableOp�
lstm_cell_78/MatMul_1MatMulzeros:output:0,lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/MatMul_1�
lstm_cell_78/addAddV2lstm_cell_78/MatMul:product:0lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/add�
#lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_78/BiasAdd/ReadVariableOp�
lstm_cell_78/BiasAddBiasAddlstm_cell_78/add:z:0+lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_78/BiasAdd~
lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_78/split/split_dim�
lstm_cell_78/splitSplit%lstm_cell_78/split/split_dim:output:0lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_78/split�
lstm_cell_78/SigmoidSigmoidlstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid�
lstm_cell_78/Sigmoid_1Sigmoidlstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_1�
lstm_cell_78/mulMullstm_cell_78/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul}
lstm_cell_78/ReluRelulstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu�
lstm_cell_78/mul_1Mullstm_cell_78/Sigmoid:y:0lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_1�
lstm_cell_78/add_1AddV2lstm_cell_78/mul:z:0lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/add_1�
lstm_cell_78/Sigmoid_2Sigmoidlstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_78/Sigmoid_2|
lstm_cell_78/Relu_1Relulstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/Relu_1�
lstm_cell_78/mul_2Mullstm_cell_78/Sigmoid_2:y:0!lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_78/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_78_matmul_readvariableop_resource-lstm_cell_78_matmul_1_readvariableop_resource,lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1377476*
condR
while_cond_1377475*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������
2

Identity�
NoOpNoOp$^lstm_cell_78/BiasAdd/ReadVariableOp#^lstm_cell_78/MatMul/ReadVariableOp%^lstm_cell_78/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_78/BiasAdd/ReadVariableOp#lstm_cell_78/BiasAdd/ReadVariableOp2H
"lstm_cell_78/MatMul/ReadVariableOp"lstm_cell_78/MatMul/ReadVariableOp2L
$lstm_cell_78/MatMul_1/ReadVariableOp$lstm_cell_78/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
lstm_79_while_cond_1378613,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3.
*lstm_79_while_less_lstm_79_strided_slice_1E
Alstm_79_while_lstm_79_while_cond_1378613___redundant_placeholder0E
Alstm_79_while_lstm_79_while_cond_1378613___redundant_placeholder1E
Alstm_79_while_lstm_79_while_cond_1378613___redundant_placeholder2E
Alstm_79_while_lstm_79_while_cond_1378613___redundant_placeholder3
lstm_79_while_identity
�
lstm_79/while/LessLesslstm_79_while_placeholder*lstm_79_while_less_lstm_79_strided_slice_1*
T0*
_output_shapes
: 2
lstm_79/while/Lessu
lstm_79/while/IdentityIdentitylstm_79/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_79/while/Identity"9
lstm_79_while_identitylstm_79/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�\
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1379918
inputs_0=
+lstm_cell_79_matmul_readvariableop_resource:@?
-lstm_cell_79_matmul_1_readvariableop_resource:@:
,lstm_cell_79_biasadd_readvariableop_resource:@
identity��#lstm_cell_79/BiasAdd/ReadVariableOp�"lstm_cell_79/MatMul/ReadVariableOp�$lstm_cell_79/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_79/MatMul/ReadVariableOp�
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul�
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_79/MatMul_1/ReadVariableOp�
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul_1�
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/add�
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_79/BiasAdd/ReadVariableOp�
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/BiasAdd~
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_79/split/split_dim�
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_79/split�
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid�
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_1�
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul}
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu�
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_1�
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/add_1�
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_2|
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu_1�
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1379834*
condR
while_cond_1379833*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
 :������������������2

Identity�
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�2
�
J__inference_sequential_20_layer_call_and_return_conditional_losses_1376872

inputs!
lstm_78_1376463:@!
lstm_78_1376465:@
lstm_78_1376467:@!
lstm_79_1376628:@!
lstm_79_1376630:@
lstm_79_1376632:@!
lstm_80_1376793:@!
lstm_80_1376795:@
lstm_80_1376797:@"
dense_58_1376819:
dense_58_1376821:"
dense_59_1376843:
dense_59_1376845:"
dense_60_1376866:
dense_60_1376868:
identity�� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall� dense_60/StatefulPartitionedCall�lstm_78/StatefulPartitionedCall�lstm_79/StatefulPartitionedCall�lstm_80/StatefulPartitionedCall�
lstm_78/StatefulPartitionedCallStatefulPartitionedCallinputslstm_78_1376463lstm_78_1376465lstm_78_1376467*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_78_layer_call_and_return_conditional_losses_13764622!
lstm_78/StatefulPartitionedCall�
dropout_116/PartitionedCallPartitionedCall(lstm_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_116_layer_call_and_return_conditional_losses_13764752
dropout_116/PartitionedCall�
lstm_79/StatefulPartitionedCallStatefulPartitionedCall$dropout_116/PartitionedCall:output:0lstm_79_1376628lstm_79_1376630lstm_79_1376632*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_13766272!
lstm_79/StatefulPartitionedCall�
dropout_117/PartitionedCallPartitionedCall(lstm_79/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_117_layer_call_and_return_conditional_losses_13766402
dropout_117/PartitionedCall�
lstm_80/StatefulPartitionedCallStatefulPartitionedCall$dropout_117/PartitionedCall:output:0lstm_80_1376793lstm_80_1376795lstm_80_1376797*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_80_layer_call_and_return_conditional_losses_13767922!
lstm_80/StatefulPartitionedCall�
dropout_118/PartitionedCallPartitionedCall(lstm_80/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_118_layer_call_and_return_conditional_losses_13768052
dropout_118/PartitionedCall�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall$dropout_118/PartitionedCall:output:0dense_58_1376819dense_58_1376821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_13768182"
 dense_58/StatefulPartitionedCall�
dropout_119/PartitionedCallPartitionedCall)dense_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_119_layer_call_and_return_conditional_losses_13768292
dropout_119/PartitionedCall�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall$dropout_119/PartitionedCall:output:0dense_59_1376843dense_59_1376845*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_13768422"
 dense_59/StatefulPartitionedCall�
dropout_120/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_120_layer_call_and_return_conditional_losses_13768532
dropout_120/PartitionedCall�
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$dropout_120/PartitionedCall:output:0dense_60_1376866dense_60_1376868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_13768652"
 dense_60/StatefulPartitionedCall�
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall ^lstm_78/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCall ^lstm_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2B
lstm_78/StatefulPartitionedCalllstm_78/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
(sequential_20_lstm_80_while_cond_1374307H
Dsequential_20_lstm_80_while_sequential_20_lstm_80_while_loop_counterN
Jsequential_20_lstm_80_while_sequential_20_lstm_80_while_maximum_iterations+
'sequential_20_lstm_80_while_placeholder-
)sequential_20_lstm_80_while_placeholder_1-
)sequential_20_lstm_80_while_placeholder_2-
)sequential_20_lstm_80_while_placeholder_3J
Fsequential_20_lstm_80_while_less_sequential_20_lstm_80_strided_slice_1a
]sequential_20_lstm_80_while_sequential_20_lstm_80_while_cond_1374307___redundant_placeholder0a
]sequential_20_lstm_80_while_sequential_20_lstm_80_while_cond_1374307___redundant_placeholder1a
]sequential_20_lstm_80_while_sequential_20_lstm_80_while_cond_1374307___redundant_placeholder2a
]sequential_20_lstm_80_while_sequential_20_lstm_80_while_cond_1374307___redundant_placeholder3(
$sequential_20_lstm_80_while_identity
�
 sequential_20/lstm_80/while/LessLess'sequential_20_lstm_80_while_placeholderFsequential_20_lstm_80_while_less_sequential_20_lstm_80_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_20/lstm_80/while/Less�
$sequential_20/lstm_80/while/IdentityIdentity$sequential_20/lstm_80/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_20/lstm_80/while/Identity"U
$sequential_20_lstm_80_while_identity-sequential_20/lstm_80/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�?
�
while_body_1379461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_78_matmul_readvariableop_resource_0:@G
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_78_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_78_matmul_readvariableop_resource:@E
3while_lstm_cell_78_matmul_1_readvariableop_resource:@@
2while_lstm_cell_78_biasadd_readvariableop_resource:@��)while/lstm_cell_78/BiasAdd/ReadVariableOp�(while/lstm_cell_78/MatMul/ReadVariableOp�*while/lstm_cell_78/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_78/MatMul/ReadVariableOp�
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul�
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_78/MatMul_1/ReadVariableOp�
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul_1�
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/add�
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_78/BiasAdd/ReadVariableOp�
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/BiasAdd�
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_78/split/split_dim�
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_78/split�
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid�
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_1�
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul�
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu�
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_1�
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/add_1�
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_2�
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu_1�
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�J
�

lstm_78_while_body_1378459,
(lstm_78_while_lstm_78_while_loop_counter2
.lstm_78_while_lstm_78_while_maximum_iterations
lstm_78_while_placeholder
lstm_78_while_placeholder_1
lstm_78_while_placeholder_2
lstm_78_while_placeholder_3+
'lstm_78_while_lstm_78_strided_slice_1_0g
clstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0:@O
=lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0:@J
<lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0:@
lstm_78_while_identity
lstm_78_while_identity_1
lstm_78_while_identity_2
lstm_78_while_identity_3
lstm_78_while_identity_4
lstm_78_while_identity_5)
%lstm_78_while_lstm_78_strided_slice_1e
alstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensorK
9lstm_78_while_lstm_cell_78_matmul_readvariableop_resource:@M
;lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource:@H
:lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource:@��1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp�0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp�2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp�
?lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0lstm_78_while_placeholderHlstm_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_78/while/TensorArrayV2Read/TensorListGetItem�
0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp;lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp�
!lstm_78/while/lstm_cell_78/MatMulMatMul8lstm_78/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2#
!lstm_78/while/lstm_cell_78/MatMul�
2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp=lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp�
#lstm_78/while/lstm_cell_78/MatMul_1MatMullstm_78_while_placeholder_2:lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_78/while/lstm_cell_78/MatMul_1�
lstm_78/while/lstm_cell_78/addAddV2+lstm_78/while/lstm_cell_78/MatMul:product:0-lstm_78/while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2 
lstm_78/while/lstm_cell_78/add�
1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp<lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype023
1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp�
"lstm_78/while/lstm_cell_78/BiasAddBiasAdd"lstm_78/while/lstm_cell_78/add:z:09lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2$
"lstm_78/while/lstm_cell_78/BiasAdd�
*lstm_78/while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_78/while/lstm_cell_78/split/split_dim�
 lstm_78/while/lstm_cell_78/splitSplit3lstm_78/while/lstm_cell_78/split/split_dim:output:0+lstm_78/while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2"
 lstm_78/while/lstm_cell_78/split�
"lstm_78/while/lstm_cell_78/SigmoidSigmoid)lstm_78/while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2$
"lstm_78/while/lstm_cell_78/Sigmoid�
$lstm_78/while/lstm_cell_78/Sigmoid_1Sigmoid)lstm_78/while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2&
$lstm_78/while/lstm_cell_78/Sigmoid_1�
lstm_78/while/lstm_cell_78/mulMul(lstm_78/while/lstm_cell_78/Sigmoid_1:y:0lstm_78_while_placeholder_3*
T0*'
_output_shapes
:���������2 
lstm_78/while/lstm_cell_78/mul�
lstm_78/while/lstm_cell_78/ReluRelu)lstm_78/while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2!
lstm_78/while/lstm_cell_78/Relu�
 lstm_78/while/lstm_cell_78/mul_1Mul&lstm_78/while/lstm_cell_78/Sigmoid:y:0-lstm_78/while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_78/while/lstm_cell_78/mul_1�
 lstm_78/while/lstm_cell_78/add_1AddV2"lstm_78/while/lstm_cell_78/mul:z:0$lstm_78/while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2"
 lstm_78/while/lstm_cell_78/add_1�
$lstm_78/while/lstm_cell_78/Sigmoid_2Sigmoid)lstm_78/while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2&
$lstm_78/while/lstm_cell_78/Sigmoid_2�
!lstm_78/while/lstm_cell_78/Relu_1Relu$lstm_78/while/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2#
!lstm_78/while/lstm_cell_78/Relu_1�
 lstm_78/while/lstm_cell_78/mul_2Mul(lstm_78/while/lstm_cell_78/Sigmoid_2:y:0/lstm_78/while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_78/while/lstm_cell_78/mul_2�
2lstm_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_78_while_placeholder_1lstm_78_while_placeholder$lstm_78/while/lstm_cell_78/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_78/while/TensorArrayV2Write/TensorListSetIteml
lstm_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/while/add/y�
lstm_78/while/addAddV2lstm_78_while_placeholderlstm_78/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_78/while/addp
lstm_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/while/add_1/y�
lstm_78/while/add_1AddV2(lstm_78_while_lstm_78_while_loop_counterlstm_78/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_78/while/add_1�
lstm_78/while/IdentityIdentitylstm_78/while/add_1:z:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 2
lstm_78/while/Identity�
lstm_78/while/Identity_1Identity.lstm_78_while_lstm_78_while_maximum_iterations^lstm_78/while/NoOp*
T0*
_output_shapes
: 2
lstm_78/while/Identity_1�
lstm_78/while/Identity_2Identitylstm_78/while/add:z:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 2
lstm_78/while/Identity_2�
lstm_78/while/Identity_3IdentityBlstm_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_78/while/NoOp*
T0*
_output_shapes
: 2
lstm_78/while/Identity_3�
lstm_78/while/Identity_4Identity$lstm_78/while/lstm_cell_78/mul_2:z:0^lstm_78/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_78/while/Identity_4�
lstm_78/while/Identity_5Identity$lstm_78/while/lstm_cell_78/add_1:z:0^lstm_78/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_78/while/Identity_5�
lstm_78/while/NoOpNoOp2^lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp1^lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp3^lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_78/while/NoOp"9
lstm_78_while_identitylstm_78/while/Identity:output:0"=
lstm_78_while_identity_1!lstm_78/while/Identity_1:output:0"=
lstm_78_while_identity_2!lstm_78/while/Identity_2:output:0"=
lstm_78_while_identity_3!lstm_78/while/Identity_3:output:0"=
lstm_78_while_identity_4!lstm_78/while/Identity_4:output:0"=
lstm_78_while_identity_5!lstm_78/while/Identity_5:output:0"P
%lstm_78_while_lstm_78_strided_slice_1'lstm_78_while_lstm_78_strided_slice_1_0"z
:lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource<lstm_78_while_lstm_cell_78_biasadd_readvariableop_resource_0"|
;lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource=lstm_78_while_lstm_cell_78_matmul_1_readvariableop_resource_0"x
9lstm_78_while_lstm_cell_78_matmul_readvariableop_resource;lstm_78_while_lstm_cell_78_matmul_readvariableop_resource_0"�
alstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensorclstm_78_while_tensorarrayv2read_tensorlistgetitem_lstm_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2f
1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp1lstm_78/while/lstm_cell_78/BiasAdd/ReadVariableOp2d
0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp0lstm_78/while/lstm_cell_78/MatMul/ReadVariableOp2h
2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp2lstm_78/while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1379309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1379309___redundant_placeholder05
1while_while_cond_1379309___redundant_placeholder15
1while_while_cond_1379309___redundant_placeholder25
1while_while_cond_1379309___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
(sequential_20_lstm_79_while_cond_1374159H
Dsequential_20_lstm_79_while_sequential_20_lstm_79_while_loop_counterN
Jsequential_20_lstm_79_while_sequential_20_lstm_79_while_maximum_iterations+
'sequential_20_lstm_79_while_placeholder-
)sequential_20_lstm_79_while_placeholder_1-
)sequential_20_lstm_79_while_placeholder_2-
)sequential_20_lstm_79_while_placeholder_3J
Fsequential_20_lstm_79_while_less_sequential_20_lstm_79_strided_slice_1a
]sequential_20_lstm_79_while_sequential_20_lstm_79_while_cond_1374159___redundant_placeholder0a
]sequential_20_lstm_79_while_sequential_20_lstm_79_while_cond_1374159___redundant_placeholder1a
]sequential_20_lstm_79_while_sequential_20_lstm_79_while_cond_1374159___redundant_placeholder2a
]sequential_20_lstm_79_while_sequential_20_lstm_79_while_cond_1374159___redundant_placeholder3(
$sequential_20_lstm_79_while_identity
�
 sequential_20/lstm_79/while/LessLess'sequential_20_lstm_79_while_placeholderFsequential_20_lstm_79_while_less_sequential_20_lstm_79_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_20/lstm_79/while/Less�
$sequential_20/lstm_79/while/IdentityIdentity$sequential_20/lstm_79/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_20/lstm_79/while/Identity"U
$sequential_20_lstm_79_while_identity-sequential_20/lstm_79/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�\
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380593
inputs_0=
+lstm_cell_80_matmul_readvariableop_resource:@?
-lstm_cell_80_matmul_1_readvariableop_resource:@:
,lstm_cell_80_biasadd_readvariableop_resource:@
identity��#lstm_cell_80/BiasAdd/ReadVariableOp�"lstm_cell_80/MatMul/ReadVariableOp�$lstm_cell_80/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_80/MatMul/ReadVariableOp�
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul�
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_80/MatMul_1/ReadVariableOp�
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul_1�
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/add�
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_80/BiasAdd/ReadVariableOp�
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/BiasAdd~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim�
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_80/split�
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid�
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_1�
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul}
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu�
lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_1�
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/add_1�
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu_1�
lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1380509*
condR
while_cond_1380508*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
:���������2

Identity�
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�[
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380744

inputs=
+lstm_cell_80_matmul_readvariableop_resource:@?
-lstm_cell_80_matmul_1_readvariableop_resource:@:
,lstm_cell_80_biasadd_readvariableop_resource:@
identity��#lstm_cell_80/BiasAdd/ReadVariableOp�"lstm_cell_80/MatMul/ReadVariableOp�$lstm_cell_80/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
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
:
���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_80/MatMul/ReadVariableOp�
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul�
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_80/MatMul_1/ReadVariableOp�
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul_1�
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/add�
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_80/BiasAdd/ReadVariableOp�
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/BiasAdd~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim�
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_80/split�
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid�
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_1�
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul}
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu�
lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_1�
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/add_1�
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu_1�
lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1380660*
condR
while_cond_1380659*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
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
:���������2

Identity�
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
f
-__inference_dropout_117_layer_call_fn_1380230

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_117_layer_call_and_return_conditional_losses_13771972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
f
-__inference_dropout_118_layer_call_fn_1380905

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_118_layer_call_and_return_conditional_losses_13770012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1375973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1375973___redundant_placeholder05
1while_while_cond_1375973___redundant_placeholder15
1while_while_cond_1375973___redundant_placeholder25
1while_while_cond_1375973___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_1381133

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�?
�
while_body_1379985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_79_matmul_readvariableop_resource_0:@G
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_79_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_79_matmul_readvariableop_resource:@E
3while_lstm_cell_79_matmul_1_readvariableop_resource:@@
2while_lstm_cell_79_biasadd_readvariableop_resource:@��)while/lstm_cell_79/BiasAdd/ReadVariableOp�(while/lstm_cell_79/MatMul/ReadVariableOp�*while/lstm_cell_79/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_79/MatMul/ReadVariableOp�
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul�
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_79/MatMul_1/ReadVariableOp�
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul_1�
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/add�
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_79/BiasAdd/ReadVariableOp�
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/BiasAdd�
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_79/split/split_dim�
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_79/split�
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid�
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_1�
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul�
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu�
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_1�
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/add_1�
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_2�
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu_1�
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1379460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1379460___redundant_placeholder05
1while_while_cond_1379460___redundant_placeholder15
1while_while_cond_1379460___redundant_placeholder25
1while_while_cond_1379460___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
g
H__inference_dropout_118_layer_call_and_return_conditional_losses_1377001

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_78_layer_call_fn_1378908
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_78_layer_call_and_return_conditional_losses_13745732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�F
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1375833

inputs&
lstm_cell_80_1375751:@&
lstm_cell_80_1375753:@"
lstm_cell_80_1375755:@
identity��$lstm_cell_80/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_80_1375751lstm_cell_80_1375753lstm_cell_80_1375755*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_13757502&
$lstm_cell_80/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_80_1375751lstm_cell_80_1375753lstm_cell_80_1375755*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1375764*
condR
while_cond_1375763*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
:���������2

Identity}
NoOpNoOp%^lstm_cell_80/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_80/StatefulPartitionedCall$lstm_cell_80/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�;
�
J__inference_sequential_20_layer_call_and_return_conditional_losses_1377651

inputs!
lstm_78_1377609:@!
lstm_78_1377611:@
lstm_78_1377613:@!
lstm_79_1377617:@!
lstm_79_1377619:@
lstm_79_1377621:@!
lstm_80_1377625:@!
lstm_80_1377627:@
lstm_80_1377629:@"
dense_58_1377633:
dense_58_1377635:"
dense_59_1377639:
dense_59_1377641:"
dense_60_1377645:
dense_60_1377647:
identity�� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall� dense_60/StatefulPartitionedCall�#dropout_116/StatefulPartitionedCall�#dropout_117/StatefulPartitionedCall�#dropout_118/StatefulPartitionedCall�#dropout_119/StatefulPartitionedCall�#dropout_120/StatefulPartitionedCall�lstm_78/StatefulPartitionedCall�lstm_79/StatefulPartitionedCall�lstm_80/StatefulPartitionedCall�
lstm_78/StatefulPartitionedCallStatefulPartitionedCallinputslstm_78_1377609lstm_78_1377611lstm_78_1377613*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_78_layer_call_and_return_conditional_losses_13775602!
lstm_78/StatefulPartitionedCall�
#dropout_116/StatefulPartitionedCallStatefulPartitionedCall(lstm_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_116_layer_call_and_return_conditional_losses_13773932%
#dropout_116/StatefulPartitionedCall�
lstm_79/StatefulPartitionedCallStatefulPartitionedCall,dropout_116/StatefulPartitionedCall:output:0lstm_79_1377617lstm_79_1377619lstm_79_1377621*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_13773642!
lstm_79/StatefulPartitionedCall�
#dropout_117/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0$^dropout_116/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_117_layer_call_and_return_conditional_losses_13771972%
#dropout_117/StatefulPartitionedCall�
lstm_80/StatefulPartitionedCallStatefulPartitionedCall,dropout_117/StatefulPartitionedCall:output:0lstm_80_1377625lstm_80_1377627lstm_80_1377629*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_80_layer_call_and_return_conditional_losses_13771682!
lstm_80/StatefulPartitionedCall�
#dropout_118/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0$^dropout_117/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_118_layer_call_and_return_conditional_losses_13770012%
#dropout_118/StatefulPartitionedCall�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall,dropout_118/StatefulPartitionedCall:output:0dense_58_1377633dense_58_1377635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_13768182"
 dense_58/StatefulPartitionedCall�
#dropout_119/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0$^dropout_118/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_119_layer_call_and_return_conditional_losses_13769682%
#dropout_119/StatefulPartitionedCall�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall,dropout_119/StatefulPartitionedCall:output:0dense_59_1377639dense_59_1377641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_13768422"
 dense_59/StatefulPartitionedCall�
#dropout_120/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0$^dropout_119/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_120_layer_call_and_return_conditional_losses_13769352%
#dropout_120/StatefulPartitionedCall�
 dense_60/StatefulPartitionedCallStatefulPartitionedCall,dropout_120/StatefulPartitionedCall:output:0dense_60_1377645dense_60_1377647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_13768652"
 dense_60/StatefulPartitionedCall�
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall$^dropout_116/StatefulPartitionedCall$^dropout_117/StatefulPartitionedCall$^dropout_118/StatefulPartitionedCall$^dropout_119/StatefulPartitionedCall$^dropout_120/StatefulPartitionedCall ^lstm_78/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCall ^lstm_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2J
#dropout_116/StatefulPartitionedCall#dropout_116/StatefulPartitionedCall2J
#dropout_117/StatefulPartitionedCall#dropout_117/StatefulPartitionedCall2J
#dropout_118/StatefulPartitionedCall#dropout_118/StatefulPartitionedCall2J
#dropout_119/StatefulPartitionedCall#dropout_119/StatefulPartitionedCall2J
#dropout_120/StatefulPartitionedCall#dropout_120/StatefulPartitionedCall2B
lstm_78/StatefulPartitionedCalllstm_78/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
f
-__inference_dropout_119_layer_call_fn_1380952

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_119_layer_call_and_return_conditional_losses_13769682
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_1381329

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�?
�
while_body_1380509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:@G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:@E
3while_lstm_cell_80_matmul_1_readvariableop_resource:@@
2while_lstm_cell_80_biasadd_readvariableop_resource:@��)while/lstm_cell_80/BiasAdd/ReadVariableOp�(while/lstm_cell_80/MatMul/ReadVariableOp�*while/lstm_cell_80/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_80/MatMul/ReadVariableOp�
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul�
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_80/MatMul_1/ReadVariableOp�
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul_1�
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/add�
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_80/BiasAdd/ReadVariableOp�
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/BiasAdd�
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim�
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_80/split�
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid�
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_1�
while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul�
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu�
while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_1�
while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/add_1�
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_2�
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu_1�
while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_80_layer_call_fn_1380269
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_80_layer_call_and_return_conditional_losses_13760432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
*__inference_dense_58_layer_call_fn_1380931

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_13768182
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1377279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377279___redundant_placeholder05
1while_while_cond_1377279___redundant_placeholder15
1while_while_cond_1377279___redundant_placeholder25
1while_while_cond_1377279___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�?
�
while_body_1379159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_78_matmul_readvariableop_resource_0:@G
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_78_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_78_matmul_readvariableop_resource:@E
3while_lstm_cell_78_matmul_1_readvariableop_resource:@@
2while_lstm_cell_78_biasadd_readvariableop_resource:@��)while/lstm_cell_78/BiasAdd/ReadVariableOp�(while/lstm_cell_78/MatMul/ReadVariableOp�*while/lstm_cell_78/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_78/MatMul/ReadVariableOp�
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul�
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_78/MatMul_1/ReadVariableOp�
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul_1�
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/add�
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_78/BiasAdd/ReadVariableOp�
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/BiasAdd�
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_78/split/split_dim�
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_78/split�
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid�
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_1�
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul�
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu�
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_1�
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/add_1�
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_2�
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu_1�
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_1380660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:@G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:@E
3while_lstm_cell_80_matmul_1_readvariableop_resource:@@
2while_lstm_cell_80_biasadd_readvariableop_resource:@��)while/lstm_cell_80/BiasAdd/ReadVariableOp�(while/lstm_cell_80/MatMul/ReadVariableOp�*while/lstm_cell_80/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_80/MatMul/ReadVariableOp�
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul�
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_80/MatMul_1/ReadVariableOp�
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul_1�
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/add�
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_80/BiasAdd/ReadVariableOp�
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/BiasAdd�
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim�
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_80/split�
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid�
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_1�
while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul�
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu�
while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_1�
while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/add_1�
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_2�
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu_1�
while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_1375266

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�
g
H__inference_dropout_118_layer_call_and_return_conditional_losses_1380922

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_dropout_120_layer_call_fn_1380994

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_120_layer_call_and_return_conditional_losses_13768532
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1374573

inputs&
lstm_cell_78_1374491:@&
lstm_cell_78_1374493:@"
lstm_cell_78_1374495:@
identity��$lstm_cell_78/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_78/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_78_1374491lstm_cell_78_1374493lstm_cell_78_1374495*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_13744902&
$lstm_cell_78/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_78_1374491lstm_cell_78_1374493lstm_cell_78_1374495*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1374504*
condR
while_cond_1374503*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
 :������������������2

Identity}
NoOpNoOp%^lstm_cell_78/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_78/StatefulPartitionedCall$lstm_cell_78/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
f
H__inference_dropout_116_layer_call_and_return_conditional_losses_1376475

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������
2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������
2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
g
H__inference_dropout_116_layer_call_and_return_conditional_losses_1377393

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������
2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������
*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������
2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������
2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������
2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�%
�
while_body_1375974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_80_1375998_0:@.
while_lstm_cell_80_1376000_0:@*
while_lstm_cell_80_1376002_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_80_1375998:@,
while_lstm_cell_80_1376000:@(
while_lstm_cell_80_1376002:@��*while/lstm_cell_80/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_80_1375998_0while_lstm_cell_80_1376000_0while_lstm_cell_80_1376002_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_13758962,
*while/lstm_cell_80/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_80/StatefulPartitionedCall:output:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_80/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_80/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_80/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_80_1375998while_lstm_cell_80_1375998_0":
while_lstm_cell_80_1376000while_lstm_cell_80_1376000_0":
while_lstm_cell_80_1376002while_lstm_cell_80_1376002_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_80/StatefulPartitionedCall*while/lstm_cell_80/StatefulPartitionedCall: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_sequential_20_layer_call_fn_1377887

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
identity��StatefulPartitionedCall�
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
:���������*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_13768722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�\
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1379767
inputs_0=
+lstm_cell_79_matmul_readvariableop_resource:@?
-lstm_cell_79_matmul_1_readvariableop_resource:@:
,lstm_cell_79_biasadd_readvariableop_resource:@
identity��#lstm_cell_79/BiasAdd/ReadVariableOp�"lstm_cell_79/MatMul/ReadVariableOp�$lstm_cell_79/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_79/MatMul/ReadVariableOpReadVariableOp+lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_79/MatMul/ReadVariableOp�
lstm_cell_79/MatMulMatMulstrided_slice_2:output:0*lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul�
$lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_79/MatMul_1/ReadVariableOp�
lstm_cell_79/MatMul_1MatMulzeros:output:0,lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/MatMul_1�
lstm_cell_79/addAddV2lstm_cell_79/MatMul:product:0lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/add�
#lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_79/BiasAdd/ReadVariableOp�
lstm_cell_79/BiasAddBiasAddlstm_cell_79/add:z:0+lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_79/BiasAdd~
lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_79/split/split_dim�
lstm_cell_79/splitSplit%lstm_cell_79/split/split_dim:output:0lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_79/split�
lstm_cell_79/SigmoidSigmoidlstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid�
lstm_cell_79/Sigmoid_1Sigmoidlstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_1�
lstm_cell_79/mulMullstm_cell_79/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul}
lstm_cell_79/ReluRelulstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu�
lstm_cell_79/mul_1Mullstm_cell_79/Sigmoid:y:0lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_1�
lstm_cell_79/add_1AddV2lstm_cell_79/mul:z:0lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/add_1�
lstm_cell_79/Sigmoid_2Sigmoidlstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_79/Sigmoid_2|
lstm_cell_79/Relu_1Relulstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/Relu_1�
lstm_cell_79/mul_2Mullstm_cell_79/Sigmoid_2:y:0!lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_79/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_79_matmul_readvariableop_resource-lstm_cell_79_matmul_1_readvariableop_resource,lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1379683*
condR
while_cond_1379682*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
 :������������������2

Identity�
NoOpNoOp$^lstm_cell_79/BiasAdd/ReadVariableOp#^lstm_cell_79/MatMul/ReadVariableOp%^lstm_cell_79/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_79/BiasAdd/ReadVariableOp#lstm_cell_79/BiasAdd/ReadVariableOp2H
"lstm_cell_79/MatMul/ReadVariableOp"lstm_cell_79/MatMul/ReadVariableOp2L
$lstm_cell_79/MatMul_1/ReadVariableOp$lstm_cell_79/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�p
�
 __inference__traced_save_1381514
file_prefix.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_78_lstm_cell_78_kernel_read_readvariableopD
@savev2_lstm_78_lstm_cell_78_recurrent_kernel_read_readvariableop8
4savev2_lstm_78_lstm_cell_78_bias_read_readvariableop:
6savev2_lstm_79_lstm_cell_79_kernel_read_readvariableopD
@savev2_lstm_79_lstm_cell_79_recurrent_kernel_read_readvariableop8
4savev2_lstm_79_lstm_cell_79_bias_read_readvariableop:
6savev2_lstm_80_lstm_cell_80_kernel_read_readvariableopD
@savev2_lstm_80_lstm_cell_80_recurrent_kernel_read_readvariableop8
4savev2_lstm_80_lstm_cell_80_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_58_kernel_m_read_readvariableop3
/savev2_adam_dense_58_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableop5
1savev2_adam_dense_60_kernel_m_read_readvariableop3
/savev2_adam_dense_60_bias_m_read_readvariableopA
=savev2_adam_lstm_78_lstm_cell_78_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_78_lstm_cell_78_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_78_lstm_cell_78_bias_m_read_readvariableopA
=savev2_adam_lstm_79_lstm_cell_79_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_79_lstm_cell_79_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_79_lstm_cell_79_bias_m_read_readvariableopA
=savev2_adam_lstm_80_lstm_cell_80_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_80_lstm_cell_80_bias_m_read_readvariableop5
1savev2_adam_dense_58_kernel_v_read_readvariableop3
/savev2_adam_dense_58_bias_v_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableop5
1savev2_adam_dense_60_kernel_v_read_readvariableop3
/savev2_adam_dense_60_bias_v_read_readvariableopA
=savev2_adam_lstm_78_lstm_cell_78_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_78_lstm_cell_78_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_78_lstm_cell_78_bias_v_read_readvariableopA
=savev2_adam_lstm_79_lstm_cell_79_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_79_lstm_cell_79_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_79_lstm_cell_79_bias_v_read_readvariableopA
=savev2_adam_lstm_80_lstm_cell_80_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_80_lstm_cell_80_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
value�B�7B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_78_lstm_cell_78_kernel_read_readvariableop@savev2_lstm_78_lstm_cell_78_recurrent_kernel_read_readvariableop4savev2_lstm_78_lstm_cell_78_bias_read_readvariableop6savev2_lstm_79_lstm_cell_79_kernel_read_readvariableop@savev2_lstm_79_lstm_cell_79_recurrent_kernel_read_readvariableop4savev2_lstm_79_lstm_cell_79_bias_read_readvariableop6savev2_lstm_80_lstm_cell_80_kernel_read_readvariableop@savev2_lstm_80_lstm_cell_80_recurrent_kernel_read_readvariableop4savev2_lstm_80_lstm_cell_80_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_58_kernel_m_read_readvariableop/savev2_adam_dense_58_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop1savev2_adam_dense_60_kernel_m_read_readvariableop/savev2_adam_dense_60_bias_m_read_readvariableop=savev2_adam_lstm_78_lstm_cell_78_kernel_m_read_readvariableopGsavev2_adam_lstm_78_lstm_cell_78_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_78_lstm_cell_78_bias_m_read_readvariableop=savev2_adam_lstm_79_lstm_cell_79_kernel_m_read_readvariableopGsavev2_adam_lstm_79_lstm_cell_79_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_79_lstm_cell_79_bias_m_read_readvariableop=savev2_adam_lstm_80_lstm_cell_80_kernel_m_read_readvariableopGsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_80_lstm_cell_80_bias_m_read_readvariableop1savev2_adam_dense_58_kernel_v_read_readvariableop/savev2_adam_dense_58_bias_v_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableop1savev2_adam_dense_60_kernel_v_read_readvariableop/savev2_adam_dense_60_bias_v_read_readvariableop=savev2_adam_lstm_78_lstm_cell_78_kernel_v_read_readvariableopGsavev2_adam_lstm_78_lstm_cell_78_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_78_lstm_cell_78_bias_v_read_readvariableop=savev2_adam_lstm_79_lstm_cell_79_kernel_v_read_readvariableopGsavev2_adam_lstm_79_lstm_cell_79_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_79_lstm_cell_79_bias_v_read_readvariableop=savev2_adam_lstm_80_lstm_cell_80_kernel_v_read_readvariableopGsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_80_lstm_cell_80_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *E
dtypes;
927	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::: : : : : :@:@:@:@:@:@:@:@:@: : : : :::::::@:@:@:@:@:@:@:@:@:::::::@:@:@:@:@:@:@:@:@: 2(
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
�?
�
while_body_1379834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_79_matmul_readvariableop_resource_0:@G
5while_lstm_cell_79_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_79_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_79_matmul_readvariableop_resource:@E
3while_lstm_cell_79_matmul_1_readvariableop_resource:@@
2while_lstm_cell_79_biasadd_readvariableop_resource:@��)while/lstm_cell_79/BiasAdd/ReadVariableOp�(while/lstm_cell_79/MatMul/ReadVariableOp�*while/lstm_cell_79/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_79/MatMul/ReadVariableOp�
while/lstm_cell_79/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul�
*while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_79/MatMul_1/ReadVariableOp�
while/lstm_cell_79/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/MatMul_1�
while/lstm_cell_79/addAddV2#while/lstm_cell_79/MatMul:product:0%while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/add�
)while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_79/BiasAdd/ReadVariableOp�
while/lstm_cell_79/BiasAddBiasAddwhile/lstm_cell_79/add:z:01while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_79/BiasAdd�
"while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_79/split/split_dim�
while/lstm_cell_79/splitSplit+while/lstm_cell_79/split/split_dim:output:0#while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_79/split�
while/lstm_cell_79/SigmoidSigmoid!while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid�
while/lstm_cell_79/Sigmoid_1Sigmoid!while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_1�
while/lstm_cell_79/mulMul while/lstm_cell_79/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul�
while/lstm_cell_79/ReluRelu!while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu�
while/lstm_cell_79/mul_1Mulwhile/lstm_cell_79/Sigmoid:y:0%while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_1�
while/lstm_cell_79/add_1AddV2while/lstm_cell_79/mul:z:0while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/add_1�
while/lstm_cell_79/Sigmoid_2Sigmoid!while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Sigmoid_2�
while/lstm_cell_79/Relu_1Reluwhile/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/Relu_1�
while/lstm_cell_79/mul_2Mul while/lstm_cell_79/Sigmoid_2:y:0'while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_79/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_79/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_79/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_79/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_79/BiasAdd/ReadVariableOp)^while/lstm_cell_79/MatMul/ReadVariableOp+^while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_79_biasadd_readvariableop_resource4while_lstm_cell_79_biasadd_readvariableop_resource_0"l
3while_lstm_cell_79_matmul_1_readvariableop_resource5while_lstm_cell_79_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_79_matmul_readvariableop_resource3while_lstm_cell_79_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_79/BiasAdd/ReadVariableOp)while/lstm_cell_79/BiasAdd/ReadVariableOp2T
(while/lstm_cell_79/MatMul/ReadVariableOp(while/lstm_cell_79/MatMul/ReadVariableOp2X
*while/lstm_cell_79/MatMul_1/ReadVariableOp*while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_1381101

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
�
while_cond_1380135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1380135___redundant_placeholder05
1while_while_cond_1380135___redundant_placeholder15
1while_while_cond_1380135___redundant_placeholder25
1while_while_cond_1380135___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_1381297

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity_2�
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
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
�
%__inference_signature_wrapper_1377852
lstm_78_input
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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:���������*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_13744152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������

'
_user_specified_namelstm_78_input
�
g
H__inference_dropout_120_layer_call_and_return_conditional_losses_1381016

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_dense_59_layer_call_fn_1380978

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_13768422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�^
�
(sequential_20_lstm_80_while_body_1374308H
Dsequential_20_lstm_80_while_sequential_20_lstm_80_while_loop_counterN
Jsequential_20_lstm_80_while_sequential_20_lstm_80_while_maximum_iterations+
'sequential_20_lstm_80_while_placeholder-
)sequential_20_lstm_80_while_placeholder_1-
)sequential_20_lstm_80_while_placeholder_2-
)sequential_20_lstm_80_while_placeholder_3G
Csequential_20_lstm_80_while_sequential_20_lstm_80_strided_slice_1_0�
sequential_20_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_80_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_20_lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0:@]
Ksequential_20_lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0:@X
Jsequential_20_lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0:@(
$sequential_20_lstm_80_while_identity*
&sequential_20_lstm_80_while_identity_1*
&sequential_20_lstm_80_while_identity_2*
&sequential_20_lstm_80_while_identity_3*
&sequential_20_lstm_80_while_identity_4*
&sequential_20_lstm_80_while_identity_5E
Asequential_20_lstm_80_while_sequential_20_lstm_80_strided_slice_1�
}sequential_20_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_80_tensorarrayunstack_tensorlistfromtensorY
Gsequential_20_lstm_80_while_lstm_cell_80_matmul_readvariableop_resource:@[
Isequential_20_lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource:@V
Hsequential_20_lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource:@��?sequential_20/lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp�>sequential_20/lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp�@sequential_20/lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp�
Msequential_20/lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2O
Msequential_20/lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential_20/lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_20_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_80_tensorarrayunstack_tensorlistfromtensor_0'sequential_20_lstm_80_while_placeholderVsequential_20/lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02A
?sequential_20/lstm_80/while/TensorArrayV2Read/TensorListGetItem�
>sequential_20/lstm_80/while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOpIsequential_20_lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02@
>sequential_20/lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp�
/sequential_20/lstm_80/while/lstm_cell_80/MatMulMatMulFsequential_20/lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_20/lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@21
/sequential_20/lstm_80/while/lstm_cell_80/MatMul�
@sequential_20/lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOpKsequential_20_lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_20/lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp�
1sequential_20/lstm_80/while/lstm_cell_80/MatMul_1MatMul)sequential_20_lstm_80_while_placeholder_2Hsequential_20/lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@23
1sequential_20/lstm_80/while/lstm_cell_80/MatMul_1�
,sequential_20/lstm_80/while/lstm_cell_80/addAddV29sequential_20/lstm_80/while/lstm_cell_80/MatMul:product:0;sequential_20/lstm_80/while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2.
,sequential_20/lstm_80/while/lstm_cell_80/add�
?sequential_20/lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOpJsequential_20_lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02A
?sequential_20/lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp�
0sequential_20/lstm_80/while/lstm_cell_80/BiasAddBiasAdd0sequential_20/lstm_80/while/lstm_cell_80/add:z:0Gsequential_20/lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@22
0sequential_20/lstm_80/while/lstm_cell_80/BiasAdd�
8sequential_20/lstm_80/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_20/lstm_80/while/lstm_cell_80/split/split_dim�
.sequential_20/lstm_80/while/lstm_cell_80/splitSplitAsequential_20/lstm_80/while/lstm_cell_80/split/split_dim:output:09sequential_20/lstm_80/while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split20
.sequential_20/lstm_80/while/lstm_cell_80/split�
0sequential_20/lstm_80/while/lstm_cell_80/SigmoidSigmoid7sequential_20/lstm_80/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������22
0sequential_20/lstm_80/while/lstm_cell_80/Sigmoid�
2sequential_20/lstm_80/while/lstm_cell_80/Sigmoid_1Sigmoid7sequential_20/lstm_80/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������24
2sequential_20/lstm_80/while/lstm_cell_80/Sigmoid_1�
,sequential_20/lstm_80/while/lstm_cell_80/mulMul6sequential_20/lstm_80/while/lstm_cell_80/Sigmoid_1:y:0)sequential_20_lstm_80_while_placeholder_3*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_80/while/lstm_cell_80/mul�
-sequential_20/lstm_80/while/lstm_cell_80/ReluRelu7sequential_20/lstm_80/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2/
-sequential_20/lstm_80/while/lstm_cell_80/Relu�
.sequential_20/lstm_80/while/lstm_cell_80/mul_1Mul4sequential_20/lstm_80/while/lstm_cell_80/Sigmoid:y:0;sequential_20/lstm_80/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_80/while/lstm_cell_80/mul_1�
.sequential_20/lstm_80/while/lstm_cell_80/add_1AddV20sequential_20/lstm_80/while/lstm_cell_80/mul:z:02sequential_20/lstm_80/while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_80/while/lstm_cell_80/add_1�
2sequential_20/lstm_80/while/lstm_cell_80/Sigmoid_2Sigmoid7sequential_20/lstm_80/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������24
2sequential_20/lstm_80/while/lstm_cell_80/Sigmoid_2�
/sequential_20/lstm_80/while/lstm_cell_80/Relu_1Relu2sequential_20/lstm_80/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������21
/sequential_20/lstm_80/while/lstm_cell_80/Relu_1�
.sequential_20/lstm_80/while/lstm_cell_80/mul_2Mul6sequential_20/lstm_80/while/lstm_cell_80/Sigmoid_2:y:0=sequential_20/lstm_80/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_80/while/lstm_cell_80/mul_2�
@sequential_20/lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_20_lstm_80_while_placeholder_1'sequential_20_lstm_80_while_placeholder2sequential_20/lstm_80/while/lstm_cell_80/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_20/lstm_80/while/TensorArrayV2Write/TensorListSetItem�
!sequential_20/lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_20/lstm_80/while/add/y�
sequential_20/lstm_80/while/addAddV2'sequential_20_lstm_80_while_placeholder*sequential_20/lstm_80/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_20/lstm_80/while/add�
#sequential_20/lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_20/lstm_80/while/add_1/y�
!sequential_20/lstm_80/while/add_1AddV2Dsequential_20_lstm_80_while_sequential_20_lstm_80_while_loop_counter,sequential_20/lstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_20/lstm_80/while/add_1�
$sequential_20/lstm_80/while/IdentityIdentity%sequential_20/lstm_80/while/add_1:z:0!^sequential_20/lstm_80/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_20/lstm_80/while/Identity�
&sequential_20/lstm_80/while/Identity_1IdentityJsequential_20_lstm_80_while_sequential_20_lstm_80_while_maximum_iterations!^sequential_20/lstm_80/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_80/while/Identity_1�
&sequential_20/lstm_80/while/Identity_2Identity#sequential_20/lstm_80/while/add:z:0!^sequential_20/lstm_80/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_80/while/Identity_2�
&sequential_20/lstm_80/while/Identity_3IdentityPsequential_20/lstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_20/lstm_80/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_80/while/Identity_3�
&sequential_20/lstm_80/while/Identity_4Identity2sequential_20/lstm_80/while/lstm_cell_80/mul_2:z:0!^sequential_20/lstm_80/while/NoOp*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_80/while/Identity_4�
&sequential_20/lstm_80/while/Identity_5Identity2sequential_20/lstm_80/while/lstm_cell_80/add_1:z:0!^sequential_20/lstm_80/while/NoOp*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_80/while/Identity_5�
 sequential_20/lstm_80/while/NoOpNoOp@^sequential_20/lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp?^sequential_20/lstm_80/while/lstm_cell_80/MatMul/ReadVariableOpA^sequential_20/lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_20/lstm_80/while/NoOp"U
$sequential_20_lstm_80_while_identity-sequential_20/lstm_80/while/Identity:output:0"Y
&sequential_20_lstm_80_while_identity_1/sequential_20/lstm_80/while/Identity_1:output:0"Y
&sequential_20_lstm_80_while_identity_2/sequential_20/lstm_80/while/Identity_2:output:0"Y
&sequential_20_lstm_80_while_identity_3/sequential_20/lstm_80/while/Identity_3:output:0"Y
&sequential_20_lstm_80_while_identity_4/sequential_20/lstm_80/while/Identity_4:output:0"Y
&sequential_20_lstm_80_while_identity_5/sequential_20/lstm_80/while/Identity_5:output:0"�
Hsequential_20_lstm_80_while_lstm_cell_80_biasadd_readvariableop_resourceJsequential_20_lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0"�
Isequential_20_lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resourceKsequential_20_lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0"�
Gsequential_20_lstm_80_while_lstm_cell_80_matmul_readvariableop_resourceIsequential_20_lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0"�
Asequential_20_lstm_80_while_sequential_20_lstm_80_strided_slice_1Csequential_20_lstm_80_while_sequential_20_lstm_80_strided_slice_1_0"�
}sequential_20_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_80_tensorarrayunstack_tensorlistfromtensorsequential_20_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2�
?sequential_20/lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp?sequential_20/lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp2�
>sequential_20/lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp>sequential_20/lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp2�
@sequential_20/lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp@sequential_20/lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_dense_60_layer_call_fn_1381025

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_60_layer_call_and_return_conditional_losses_13768652
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
H__inference_dropout_117_layer_call_and_return_conditional_losses_1377197

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������
2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������
*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������
2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������
2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������
2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�J
�

lstm_80_while_body_1378769,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3+
'lstm_80_while_lstm_80_strided_slice_1_0g
clstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0:@O
=lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0:@J
<lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0:@
lstm_80_while_identity
lstm_80_while_identity_1
lstm_80_while_identity_2
lstm_80_while_identity_3
lstm_80_while_identity_4
lstm_80_while_identity_5)
%lstm_80_while_lstm_80_strided_slice_1e
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorK
9lstm_80_while_lstm_cell_80_matmul_readvariableop_resource:@M
;lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource:@H
:lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource:@��1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp�0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp�2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp�
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0lstm_80_while_placeholderHlstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_80/while/TensorArrayV2Read/TensorListGetItem�
0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp;lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp�
!lstm_80/while/lstm_cell_80/MatMulMatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2#
!lstm_80/while/lstm_cell_80/MatMul�
2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp=lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp�
#lstm_80/while/lstm_cell_80/MatMul_1MatMullstm_80_while_placeholder_2:lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_80/while/lstm_cell_80/MatMul_1�
lstm_80/while/lstm_cell_80/addAddV2+lstm_80/while/lstm_cell_80/MatMul:product:0-lstm_80/while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2 
lstm_80/while/lstm_cell_80/add�
1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp<lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype023
1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp�
"lstm_80/while/lstm_cell_80/BiasAddBiasAdd"lstm_80/while/lstm_cell_80/add:z:09lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2$
"lstm_80/while/lstm_cell_80/BiasAdd�
*lstm_80/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_80/while/lstm_cell_80/split/split_dim�
 lstm_80/while/lstm_cell_80/splitSplit3lstm_80/while/lstm_cell_80/split/split_dim:output:0+lstm_80/while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2"
 lstm_80/while/lstm_cell_80/split�
"lstm_80/while/lstm_cell_80/SigmoidSigmoid)lstm_80/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2$
"lstm_80/while/lstm_cell_80/Sigmoid�
$lstm_80/while/lstm_cell_80/Sigmoid_1Sigmoid)lstm_80/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2&
$lstm_80/while/lstm_cell_80/Sigmoid_1�
lstm_80/while/lstm_cell_80/mulMul(lstm_80/while/lstm_cell_80/Sigmoid_1:y:0lstm_80_while_placeholder_3*
T0*'
_output_shapes
:���������2 
lstm_80/while/lstm_cell_80/mul�
lstm_80/while/lstm_cell_80/ReluRelu)lstm_80/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2!
lstm_80/while/lstm_cell_80/Relu�
 lstm_80/while/lstm_cell_80/mul_1Mul&lstm_80/while/lstm_cell_80/Sigmoid:y:0-lstm_80/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_80/while/lstm_cell_80/mul_1�
 lstm_80/while/lstm_cell_80/add_1AddV2"lstm_80/while/lstm_cell_80/mul:z:0$lstm_80/while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2"
 lstm_80/while/lstm_cell_80/add_1�
$lstm_80/while/lstm_cell_80/Sigmoid_2Sigmoid)lstm_80/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2&
$lstm_80/while/lstm_cell_80/Sigmoid_2�
!lstm_80/while/lstm_cell_80/Relu_1Relu$lstm_80/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2#
!lstm_80/while/lstm_cell_80/Relu_1�
 lstm_80/while/lstm_cell_80/mul_2Mul(lstm_80/while/lstm_cell_80/Sigmoid_2:y:0/lstm_80/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2"
 lstm_80/while/lstm_cell_80/mul_2�
2lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_80_while_placeholder_1lstm_80_while_placeholder$lstm_80/while/lstm_cell_80/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_80/while/TensorArrayV2Write/TensorListSetIteml
lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/while/add/y�
lstm_80/while/addAddV2lstm_80_while_placeholderlstm_80/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_80/while/addp
lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/while/add_1/y�
lstm_80/while/add_1AddV2(lstm_80_while_lstm_80_while_loop_counterlstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_80/while/add_1�
lstm_80/while/IdentityIdentitylstm_80/while/add_1:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity�
lstm_80/while/Identity_1Identity.lstm_80_while_lstm_80_while_maximum_iterations^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_1�
lstm_80/while/Identity_2Identitylstm_80/while/add:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_2�
lstm_80/while/Identity_3IdentityBlstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_3�
lstm_80/while/Identity_4Identity$lstm_80/while/lstm_cell_80/mul_2:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_80/while/Identity_4�
lstm_80/while/Identity_5Identity$lstm_80/while/lstm_cell_80/add_1:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_80/while/Identity_5�
lstm_80/while/NoOpNoOp2^lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp1^lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp3^lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_80/while/NoOp"9
lstm_80_while_identitylstm_80/while/Identity:output:0"=
lstm_80_while_identity_1!lstm_80/while/Identity_1:output:0"=
lstm_80_while_identity_2!lstm_80/while/Identity_2:output:0"=
lstm_80_while_identity_3!lstm_80/while/Identity_3:output:0"=
lstm_80_while_identity_4!lstm_80/while/Identity_4:output:0"=
lstm_80_while_identity_5!lstm_80/while/Identity_5:output:0"P
%lstm_80_while_lstm_80_strided_slice_1'lstm_80_while_lstm_80_strided_slice_1_0"z
:lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource<lstm_80_while_lstm_cell_80_biasadd_readvariableop_resource_0"|
;lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource=lstm_80_while_lstm_cell_80_matmul_1_readvariableop_resource_0"x
9lstm_80_while_lstm_cell_80_matmul_readvariableop_resource;lstm_80_while_lstm_cell_80_matmul_readvariableop_resource_0"�
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2f
1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp1lstm_80/while/lstm_cell_80/BiasAdd/ReadVariableOp2d
0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp0lstm_80/while/lstm_cell_80/MatMul/ReadVariableOp2h
2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp2lstm_80/while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_1379310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_78_matmul_readvariableop_resource_0:@G
5while_lstm_cell_78_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_78_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_78_matmul_readvariableop_resource:@E
3while_lstm_cell_78_matmul_1_readvariableop_resource:@@
2while_lstm_cell_78_biasadd_readvariableop_resource:@��)while/lstm_cell_78/BiasAdd/ReadVariableOp�(while/lstm_cell_78/MatMul/ReadVariableOp�*while/lstm_cell_78/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_78_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_78/MatMul/ReadVariableOp�
while/lstm_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul�
*while/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_78_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_78/MatMul_1/ReadVariableOp�
while/lstm_cell_78/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/MatMul_1�
while/lstm_cell_78/addAddV2#while/lstm_cell_78/MatMul:product:0%while/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/add�
)while/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_78_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_78/BiasAdd/ReadVariableOp�
while/lstm_cell_78/BiasAddBiasAddwhile/lstm_cell_78/add:z:01while/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_78/BiasAdd�
"while/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_78/split/split_dim�
while/lstm_cell_78/splitSplit+while/lstm_cell_78/split/split_dim:output:0#while/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_78/split�
while/lstm_cell_78/SigmoidSigmoid!while/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid�
while/lstm_cell_78/Sigmoid_1Sigmoid!while/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_1�
while/lstm_cell_78/mulMul while/lstm_cell_78/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul�
while/lstm_cell_78/ReluRelu!while/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu�
while/lstm_cell_78/mul_1Mulwhile/lstm_cell_78/Sigmoid:y:0%while/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_1�
while/lstm_cell_78/add_1AddV2while/lstm_cell_78/mul:z:0while/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/add_1�
while/lstm_cell_78/Sigmoid_2Sigmoid!while/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Sigmoid_2�
while/lstm_cell_78/Relu_1Reluwhile/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/Relu_1�
while/lstm_cell_78/mul_2Mul while/lstm_cell_78/Sigmoid_2:y:0'while/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_78/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_78/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_78/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_78/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_78/BiasAdd/ReadVariableOp)^while/lstm_cell_78/MatMul/ReadVariableOp+^while/lstm_cell_78/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_78_biasadd_readvariableop_resource4while_lstm_cell_78_biasadd_readvariableop_resource_0"l
3while_lstm_cell_78_matmul_1_readvariableop_resource5while_lstm_cell_78_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_78_matmul_readvariableop_resource3while_lstm_cell_78_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_78/BiasAdd/ReadVariableOp)while/lstm_cell_78/BiasAdd/ReadVariableOp2T
(while/lstm_cell_78/MatMul/ReadVariableOp(while/lstm_cell_78/MatMul/ReadVariableOp2X
*while/lstm_cell_78/MatMul_1/ReadVariableOp*while/lstm_cell_78/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�F
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1376043

inputs&
lstm_cell_80_1375961:@&
lstm_cell_80_1375963:@"
lstm_cell_80_1375965:@
identity��$lstm_cell_80/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_80_1375961lstm_cell_80_1375963lstm_cell_80_1375965*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_13758962&
$lstm_cell_80/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_80_1375961lstm_cell_80_1375963lstm_cell_80_1375965*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1375974*
condR
while_cond_1375973*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
:���������2

Identity}
NoOpNoOp%^lstm_cell_80/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_80/StatefulPartitionedCall$lstm_cell_80/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
f
H__inference_dropout_119_layer_call_and_return_conditional_losses_1376829

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_1380811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_80_matmul_readvariableop_resource_0:@G
5while_lstm_cell_80_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_80_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_80_matmul_readvariableop_resource:@E
3while_lstm_cell_80_matmul_1_readvariableop_resource:@@
2while_lstm_cell_80_biasadd_readvariableop_resource:@��)while/lstm_cell_80/BiasAdd/ReadVariableOp�(while/lstm_cell_80/MatMul/ReadVariableOp�*while/lstm_cell_80/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_80_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_80/MatMul/ReadVariableOp�
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul�
*while/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_80_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_80/MatMul_1/ReadVariableOp�
while/lstm_cell_80/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/MatMul_1�
while/lstm_cell_80/addAddV2#while/lstm_cell_80/MatMul:product:0%while/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/add�
)while/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_80_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_80/BiasAdd/ReadVariableOp�
while/lstm_cell_80/BiasAddBiasAddwhile/lstm_cell_80/add:z:01while/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_80/BiasAdd�
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim�
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0#while/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_80/split�
while/lstm_cell_80/SigmoidSigmoid!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid�
while/lstm_cell_80/Sigmoid_1Sigmoid!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_1�
while/lstm_cell_80/mulMul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul�
while/lstm_cell_80/ReluRelu!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu�
while/lstm_cell_80/mul_1Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_1�
while/lstm_cell_80/add_1AddV2while/lstm_cell_80/mul:z:0while/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/add_1�
while/lstm_cell_80/Sigmoid_2Sigmoid!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Sigmoid_2�
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/Relu_1�
while/lstm_cell_80/mul_2Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_80/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_2:z:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_80/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_80/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_80/BiasAdd/ReadVariableOp)^while/lstm_cell_80/MatMul/ReadVariableOp+^while/lstm_cell_80/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_80_biasadd_readvariableop_resource4while_lstm_cell_80_biasadd_readvariableop_resource_0"l
3while_lstm_cell_80_matmul_1_readvariableop_resource5while_lstm_cell_80_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_80_matmul_readvariableop_resource3while_lstm_cell_80_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_80/BiasAdd/ReadVariableOp)while/lstm_cell_80/BiasAdd/ReadVariableOp2T
(while/lstm_cell_80/MatMul/ReadVariableOp(while/lstm_cell_80/MatMul/ReadVariableOp2X
*while/lstm_cell_80/MatMul_1/ReadVariableOp*while/lstm_cell_80/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_78_layer_call_fn_1378919
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_78_layer_call_and_return_conditional_losses_13747832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1376707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1376707___redundant_placeholder05
1while_while_cond_1376707___redundant_placeholder15
1while_while_cond_1376707___redundant_placeholder25
1while_while_cond_1376707___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_80_layer_call_fn_1380258
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_80_layer_call_and_return_conditional_losses_13758332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1376542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1376542___redundant_placeholder05
1while_while_cond_1376542___redundant_placeholder15
1while_while_cond_1376542___redundant_placeholder25
1while_while_cond_1376542___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
I
-__inference_dropout_117_layer_call_fn_1380225

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_117_layer_call_and_return_conditional_losses_13766402
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
.__inference_lstm_cell_79_layer_call_fn_1381150

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_13751202
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2

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
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
�
while_cond_1380659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1380659___redundant_placeholder05
1while_while_cond_1380659___redundant_placeholder15
1while_while_cond_1380659___redundant_placeholder25
1while_while_cond_1380659___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�\
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380442
inputs_0=
+lstm_cell_80_matmul_readvariableop_resource:@?
-lstm_cell_80_matmul_1_readvariableop_resource:@:
,lstm_cell_80_biasadd_readvariableop_resource:@
identity��#lstm_cell_80/BiasAdd/ReadVariableOp�"lstm_cell_80/MatMul/ReadVariableOp�$lstm_cell_80/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������2
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
B :�2
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
zeros_1/packed/1�
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
:���������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_80/MatMul/ReadVariableOpReadVariableOp+lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_80/MatMul/ReadVariableOp�
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0*lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul�
$lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_80/MatMul_1/ReadVariableOp�
lstm_cell_80/MatMul_1MatMulzeros:output:0,lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/MatMul_1�
lstm_cell_80/addAddV2lstm_cell_80/MatMul:product:0lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/add�
#lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_80/BiasAdd/ReadVariableOp�
lstm_cell_80/BiasAddBiasAddlstm_cell_80/add:z:0+lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_80/BiasAdd~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim�
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_80/split�
lstm_cell_80/SigmoidSigmoidlstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid�
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_1�
lstm_cell_80/mulMullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul}
lstm_cell_80/ReluRelulstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu�
lstm_cell_80/mul_1Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_1�
lstm_cell_80/add_1AddV2lstm_cell_80/mul:z:0lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/add_1�
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/Relu_1�
lstm_cell_80/mul_2Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_80/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_80_matmul_readvariableop_resource-lstm_cell_80_matmul_1_readvariableop_resource,lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1380358*
condR
while_cond_1380357*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
:���������2

Identity�
NoOpNoOp$^lstm_cell_80/BiasAdd/ReadVariableOp#^lstm_cell_80/MatMul/ReadVariableOp%^lstm_cell_80/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_80/BiasAdd/ReadVariableOp#lstm_cell_80/BiasAdd/ReadVariableOp2H
"lstm_cell_80/MatMul/ReadVariableOp"lstm_cell_80/MatMul/ReadVariableOp2L
$lstm_cell_80/MatMul_1/ReadVariableOp$lstm_cell_80/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1375133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1375133___redundant_placeholder05
1while_while_cond_1375133___redundant_placeholder15
1while_while_cond_1375133___redundant_placeholder25
1while_while_cond_1375133___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
��
�
J__inference_sequential_20_layer_call_and_return_conditional_losses_1378392

inputsE
3lstm_78_lstm_cell_78_matmul_readvariableop_resource:@G
5lstm_78_lstm_cell_78_matmul_1_readvariableop_resource:@B
4lstm_78_lstm_cell_78_biasadd_readvariableop_resource:@E
3lstm_79_lstm_cell_79_matmul_readvariableop_resource:@G
5lstm_79_lstm_cell_79_matmul_1_readvariableop_resource:@B
4lstm_79_lstm_cell_79_biasadd_readvariableop_resource:@E
3lstm_80_lstm_cell_80_matmul_readvariableop_resource:@G
5lstm_80_lstm_cell_80_matmul_1_readvariableop_resource:@B
4lstm_80_lstm_cell_80_biasadd_readvariableop_resource:@9
'dense_58_matmul_readvariableop_resource:6
(dense_58_biasadd_readvariableop_resource:9
'dense_59_matmul_readvariableop_resource:6
(dense_59_biasadd_readvariableop_resource:9
'dense_60_matmul_readvariableop_resource:6
(dense_60_biasadd_readvariableop_resource:
identity��dense_58/BiasAdd/ReadVariableOp�dense_58/MatMul/ReadVariableOp�dense_59/BiasAdd/ReadVariableOp�dense_59/MatMul/ReadVariableOp�dense_60/BiasAdd/ReadVariableOp�dense_60/MatMul/ReadVariableOp�+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp�*lstm_78/lstm_cell_78/MatMul/ReadVariableOp�,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp�lstm_78/while�+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp�*lstm_79/lstm_cell_79/MatMul/ReadVariableOp�,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp�lstm_79/while�+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp�*lstm_80/lstm_cell_80/MatMul/ReadVariableOp�,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp�lstm_80/whileT
lstm_78/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_78/Shape�
lstm_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_78/strided_slice/stack�
lstm_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_78/strided_slice/stack_1�
lstm_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_78/strided_slice/stack_2�
lstm_78/strided_sliceStridedSlicelstm_78/Shape:output:0$lstm_78/strided_slice/stack:output:0&lstm_78/strided_slice/stack_1:output:0&lstm_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_78/strided_slicel
lstm_78/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/zeros/mul/y�
lstm_78/zeros/mulMullstm_78/strided_slice:output:0lstm_78/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_78/zeros/mulo
lstm_78/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_78/zeros/Less/y�
lstm_78/zeros/LessLesslstm_78/zeros/mul:z:0lstm_78/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_78/zeros/Lessr
lstm_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/zeros/packed/1�
lstm_78/zeros/packedPacklstm_78/strided_slice:output:0lstm_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_78/zeros/packedo
lstm_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_78/zeros/Const�
lstm_78/zerosFilllstm_78/zeros/packed:output:0lstm_78/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_78/zerosp
lstm_78/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/zeros_1/mul/y�
lstm_78/zeros_1/mulMullstm_78/strided_slice:output:0lstm_78/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_78/zeros_1/muls
lstm_78/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_78/zeros_1/Less/y�
lstm_78/zeros_1/LessLesslstm_78/zeros_1/mul:z:0lstm_78/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_78/zeros_1/Lessv
lstm_78/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_78/zeros_1/packed/1�
lstm_78/zeros_1/packedPacklstm_78/strided_slice:output:0!lstm_78/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_78/zeros_1/packeds
lstm_78/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_78/zeros_1/Const�
lstm_78/zeros_1Filllstm_78/zeros_1/packed:output:0lstm_78/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_78/zeros_1�
lstm_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_78/transpose/perm�
lstm_78/transpose	Transposeinputslstm_78/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2
lstm_78/transposeg
lstm_78/Shape_1Shapelstm_78/transpose:y:0*
T0*
_output_shapes
:2
lstm_78/Shape_1�
lstm_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_78/strided_slice_1/stack�
lstm_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_1/stack_1�
lstm_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_1/stack_2�
lstm_78/strided_slice_1StridedSlicelstm_78/Shape_1:output:0&lstm_78/strided_slice_1/stack:output:0(lstm_78/strided_slice_1/stack_1:output:0(lstm_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_78/strided_slice_1�
#lstm_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_78/TensorArrayV2/element_shape�
lstm_78/TensorArrayV2TensorListReserve,lstm_78/TensorArrayV2/element_shape:output:0 lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_78/TensorArrayV2�
=lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_78/transpose:y:0Flstm_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_78/TensorArrayUnstack/TensorListFromTensor�
lstm_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_78/strided_slice_2/stack�
lstm_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_2/stack_1�
lstm_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_2/stack_2�
lstm_78/strided_slice_2StridedSlicelstm_78/transpose:y:0&lstm_78/strided_slice_2/stack:output:0(lstm_78/strided_slice_2/stack_1:output:0(lstm_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_78/strided_slice_2�
*lstm_78/lstm_cell_78/MatMul/ReadVariableOpReadVariableOp3lstm_78_lstm_cell_78_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_78/lstm_cell_78/MatMul/ReadVariableOp�
lstm_78/lstm_cell_78/MatMulMatMul lstm_78/strided_slice_2:output:02lstm_78/lstm_cell_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_78/lstm_cell_78/MatMul�
,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOpReadVariableOp5lstm_78_lstm_cell_78_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp�
lstm_78/lstm_cell_78/MatMul_1MatMullstm_78/zeros:output:04lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_78/lstm_cell_78/MatMul_1�
lstm_78/lstm_cell_78/addAddV2%lstm_78/lstm_cell_78/MatMul:product:0'lstm_78/lstm_cell_78/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_78/lstm_cell_78/add�
+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOpReadVariableOp4lstm_78_lstm_cell_78_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp�
lstm_78/lstm_cell_78/BiasAddBiasAddlstm_78/lstm_cell_78/add:z:03lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_78/lstm_cell_78/BiasAdd�
$lstm_78/lstm_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_78/lstm_cell_78/split/split_dim�
lstm_78/lstm_cell_78/splitSplit-lstm_78/lstm_cell_78/split/split_dim:output:0%lstm_78/lstm_cell_78/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_78/lstm_cell_78/split�
lstm_78/lstm_cell_78/SigmoidSigmoid#lstm_78/lstm_cell_78/split:output:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/Sigmoid�
lstm_78/lstm_cell_78/Sigmoid_1Sigmoid#lstm_78/lstm_cell_78/split:output:1*
T0*'
_output_shapes
:���������2 
lstm_78/lstm_cell_78/Sigmoid_1�
lstm_78/lstm_cell_78/mulMul"lstm_78/lstm_cell_78/Sigmoid_1:y:0lstm_78/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/mul�
lstm_78/lstm_cell_78/ReluRelu#lstm_78/lstm_cell_78/split:output:2*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/Relu�
lstm_78/lstm_cell_78/mul_1Mul lstm_78/lstm_cell_78/Sigmoid:y:0'lstm_78/lstm_cell_78/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/mul_1�
lstm_78/lstm_cell_78/add_1AddV2lstm_78/lstm_cell_78/mul:z:0lstm_78/lstm_cell_78/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/add_1�
lstm_78/lstm_cell_78/Sigmoid_2Sigmoid#lstm_78/lstm_cell_78/split:output:3*
T0*'
_output_shapes
:���������2 
lstm_78/lstm_cell_78/Sigmoid_2�
lstm_78/lstm_cell_78/Relu_1Relulstm_78/lstm_cell_78/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/Relu_1�
lstm_78/lstm_cell_78/mul_2Mul"lstm_78/lstm_cell_78/Sigmoid_2:y:0)lstm_78/lstm_cell_78/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_78/lstm_cell_78/mul_2�
%lstm_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2'
%lstm_78/TensorArrayV2_1/element_shape�
lstm_78/TensorArrayV2_1TensorListReserve.lstm_78/TensorArrayV2_1/element_shape:output:0 lstm_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_78/TensorArrayV2_1^
lstm_78/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_78/time�
 lstm_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_78/while/maximum_iterationsz
lstm_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_78/while/loop_counter�
lstm_78/whileWhile#lstm_78/while/loop_counter:output:0)lstm_78/while/maximum_iterations:output:0lstm_78/time:output:0 lstm_78/TensorArrayV2_1:handle:0lstm_78/zeros:output:0lstm_78/zeros_1:output:0 lstm_78/strided_slice_1:output:0?lstm_78/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_78_lstm_cell_78_matmul_readvariableop_resource5lstm_78_lstm_cell_78_matmul_1_readvariableop_resource4lstm_78_lstm_cell_78_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_78_while_body_1377989*&
condR
lstm_78_while_cond_1377988*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_78/while�
8lstm_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2:
8lstm_78/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_78/TensorArrayV2Stack/TensorListStackTensorListStacklstm_78/while:output:3Alstm_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02,
*lstm_78/TensorArrayV2Stack/TensorListStack�
lstm_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_78/strided_slice_3/stack�
lstm_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_78/strided_slice_3/stack_1�
lstm_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_78/strided_slice_3/stack_2�
lstm_78/strided_slice_3StridedSlice3lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_78/strided_slice_3/stack:output:0(lstm_78/strided_slice_3/stack_1:output:0(lstm_78/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_78/strided_slice_3�
lstm_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_78/transpose_1/perm�
lstm_78/transpose_1	Transpose3lstm_78/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_78/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
lstm_78/transpose_1v
lstm_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_78/runtime�
dropout_116/IdentityIdentitylstm_78/transpose_1:y:0*
T0*+
_output_shapes
:���������
2
dropout_116/Identityk
lstm_79/ShapeShapedropout_116/Identity:output:0*
T0*
_output_shapes
:2
lstm_79/Shape�
lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_79/strided_slice/stack�
lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_79/strided_slice/stack_1�
lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_79/strided_slice/stack_2�
lstm_79/strided_sliceStridedSlicelstm_79/Shape:output:0$lstm_79/strided_slice/stack:output:0&lstm_79/strided_slice/stack_1:output:0&lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_79/strided_slicel
lstm_79/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros/mul/y�
lstm_79/zeros/mulMullstm_79/strided_slice:output:0lstm_79/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_79/zeros/mulo
lstm_79/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_79/zeros/Less/y�
lstm_79/zeros/LessLesslstm_79/zeros/mul:z:0lstm_79/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_79/zeros/Lessr
lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros/packed/1�
lstm_79/zeros/packedPacklstm_79/strided_slice:output:0lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_79/zeros/packedo
lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_79/zeros/Const�
lstm_79/zerosFilllstm_79/zeros/packed:output:0lstm_79/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_79/zerosp
lstm_79/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros_1/mul/y�
lstm_79/zeros_1/mulMullstm_79/strided_slice:output:0lstm_79/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_79/zeros_1/muls
lstm_79/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_79/zeros_1/Less/y�
lstm_79/zeros_1/LessLesslstm_79/zeros_1/mul:z:0lstm_79/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_79/zeros_1/Lessv
lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_79/zeros_1/packed/1�
lstm_79/zeros_1/packedPacklstm_79/strided_slice:output:0!lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_79/zeros_1/packeds
lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_79/zeros_1/Const�
lstm_79/zeros_1Filllstm_79/zeros_1/packed:output:0lstm_79/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_79/zeros_1�
lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_79/transpose/perm�
lstm_79/transpose	Transposedropout_116/Identity:output:0lstm_79/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2
lstm_79/transposeg
lstm_79/Shape_1Shapelstm_79/transpose:y:0*
T0*
_output_shapes
:2
lstm_79/Shape_1�
lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_79/strided_slice_1/stack�
lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_1/stack_1�
lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_1/stack_2�
lstm_79/strided_slice_1StridedSlicelstm_79/Shape_1:output:0&lstm_79/strided_slice_1/stack:output:0(lstm_79/strided_slice_1/stack_1:output:0(lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_79/strided_slice_1�
#lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_79/TensorArrayV2/element_shape�
lstm_79/TensorArrayV2TensorListReserve,lstm_79/TensorArrayV2/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_79/TensorArrayV2�
=lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_79/transpose:y:0Flstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_79/TensorArrayUnstack/TensorListFromTensor�
lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_79/strided_slice_2/stack�
lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_2/stack_1�
lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_2/stack_2�
lstm_79/strided_slice_2StridedSlicelstm_79/transpose:y:0&lstm_79/strided_slice_2/stack:output:0(lstm_79/strided_slice_2/stack_1:output:0(lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_79/strided_slice_2�
*lstm_79/lstm_cell_79/MatMul/ReadVariableOpReadVariableOp3lstm_79_lstm_cell_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_79/lstm_cell_79/MatMul/ReadVariableOp�
lstm_79/lstm_cell_79/MatMulMatMul lstm_79/strided_slice_2:output:02lstm_79/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_79/lstm_cell_79/MatMul�
,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOp5lstm_79_lstm_cell_79_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp�
lstm_79/lstm_cell_79/MatMul_1MatMullstm_79/zeros:output:04lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_79/lstm_cell_79/MatMul_1�
lstm_79/lstm_cell_79/addAddV2%lstm_79/lstm_cell_79/MatMul:product:0'lstm_79/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_79/lstm_cell_79/add�
+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOp4lstm_79_lstm_cell_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp�
lstm_79/lstm_cell_79/BiasAddBiasAddlstm_79/lstm_cell_79/add:z:03lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_79/lstm_cell_79/BiasAdd�
$lstm_79/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_79/lstm_cell_79/split/split_dim�
lstm_79/lstm_cell_79/splitSplit-lstm_79/lstm_cell_79/split/split_dim:output:0%lstm_79/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_79/lstm_cell_79/split�
lstm_79/lstm_cell_79/SigmoidSigmoid#lstm_79/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/Sigmoid�
lstm_79/lstm_cell_79/Sigmoid_1Sigmoid#lstm_79/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������2 
lstm_79/lstm_cell_79/Sigmoid_1�
lstm_79/lstm_cell_79/mulMul"lstm_79/lstm_cell_79/Sigmoid_1:y:0lstm_79/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/mul�
lstm_79/lstm_cell_79/ReluRelu#lstm_79/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/Relu�
lstm_79/lstm_cell_79/mul_1Mul lstm_79/lstm_cell_79/Sigmoid:y:0'lstm_79/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/mul_1�
lstm_79/lstm_cell_79/add_1AddV2lstm_79/lstm_cell_79/mul:z:0lstm_79/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/add_1�
lstm_79/lstm_cell_79/Sigmoid_2Sigmoid#lstm_79/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������2 
lstm_79/lstm_cell_79/Sigmoid_2�
lstm_79/lstm_cell_79/Relu_1Relulstm_79/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/Relu_1�
lstm_79/lstm_cell_79/mul_2Mul"lstm_79/lstm_cell_79/Sigmoid_2:y:0)lstm_79/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_79/lstm_cell_79/mul_2�
%lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2'
%lstm_79/TensorArrayV2_1/element_shape�
lstm_79/TensorArrayV2_1TensorListReserve.lstm_79/TensorArrayV2_1/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_79/TensorArrayV2_1^
lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_79/time�
 lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_79/while/maximum_iterationsz
lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_79/while/loop_counter�
lstm_79/whileWhile#lstm_79/while/loop_counter:output:0)lstm_79/while/maximum_iterations:output:0lstm_79/time:output:0 lstm_79/TensorArrayV2_1:handle:0lstm_79/zeros:output:0lstm_79/zeros_1:output:0 lstm_79/strided_slice_1:output:0?lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_79_lstm_cell_79_matmul_readvariableop_resource5lstm_79_lstm_cell_79_matmul_1_readvariableop_resource4lstm_79_lstm_cell_79_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_79_while_body_1378137*&
condR
lstm_79_while_cond_1378136*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_79/while�
8lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2:
8lstm_79/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_79/TensorArrayV2Stack/TensorListStackTensorListStacklstm_79/while:output:3Alstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02,
*lstm_79/TensorArrayV2Stack/TensorListStack�
lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_79/strided_slice_3/stack�
lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_79/strided_slice_3/stack_1�
lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_79/strided_slice_3/stack_2�
lstm_79/strided_slice_3StridedSlice3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_79/strided_slice_3/stack:output:0(lstm_79/strided_slice_3/stack_1:output:0(lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_79/strided_slice_3�
lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_79/transpose_1/perm�
lstm_79/transpose_1	Transpose3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_79/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
lstm_79/transpose_1v
lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_79/runtime�
dropout_117/IdentityIdentitylstm_79/transpose_1:y:0*
T0*+
_output_shapes
:���������
2
dropout_117/Identityk
lstm_80/ShapeShapedropout_117/Identity:output:0*
T0*
_output_shapes
:2
lstm_80/Shape�
lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice/stack�
lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_80/strided_slice/stack_1�
lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_80/strided_slice/stack_2�
lstm_80/strided_sliceStridedSlicelstm_80/Shape:output:0$lstm_80/strided_slice/stack:output:0&lstm_80/strided_slice/stack_1:output:0&lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_80/strided_slicel
lstm_80/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/zeros/mul/y�
lstm_80/zeros/mulMullstm_80/strided_slice:output:0lstm_80/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros/mulo
lstm_80/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_80/zeros/Less/y�
lstm_80/zeros/LessLesslstm_80/zeros/mul:z:0lstm_80/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros/Lessr
lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/zeros/packed/1�
lstm_80/zeros/packedPacklstm_80/strided_slice:output:0lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_80/zeros/packedo
lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/zeros/Const�
lstm_80/zerosFilllstm_80/zeros/packed:output:0lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_80/zerosp
lstm_80/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/zeros_1/mul/y�
lstm_80/zeros_1/mulMullstm_80/strided_slice:output:0lstm_80/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros_1/muls
lstm_80/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_80/zeros_1/Less/y�
lstm_80/zeros_1/LessLesslstm_80/zeros_1/mul:z:0lstm_80/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros_1/Lessv
lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/zeros_1/packed/1�
lstm_80/zeros_1/packedPacklstm_80/strided_slice:output:0!lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_80/zeros_1/packeds
lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/zeros_1/Const�
lstm_80/zeros_1Filllstm_80/zeros_1/packed:output:0lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_80/zeros_1�
lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_80/transpose/perm�
lstm_80/transpose	Transposedropout_117/Identity:output:0lstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:
���������2
lstm_80/transposeg
lstm_80/Shape_1Shapelstm_80/transpose:y:0*
T0*
_output_shapes
:2
lstm_80/Shape_1�
lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice_1/stack�
lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_1/stack_1�
lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_1/stack_2�
lstm_80/strided_slice_1StridedSlicelstm_80/Shape_1:output:0&lstm_80/strided_slice_1/stack:output:0(lstm_80/strided_slice_1/stack_1:output:0(lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_80/strided_slice_1�
#lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_80/TensorArrayV2/element_shape�
lstm_80/TensorArrayV2TensorListReserve,lstm_80/TensorArrayV2/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_80/TensorArrayV2�
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_80/transpose:y:0Flstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_80/TensorArrayUnstack/TensorListFromTensor�
lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice_2/stack�
lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_2/stack_1�
lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_2/stack_2�
lstm_80/strided_slice_2StridedSlicelstm_80/transpose:y:0&lstm_80/strided_slice_2/stack:output:0(lstm_80/strided_slice_2/stack_1:output:0(lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_80/strided_slice_2�
*lstm_80/lstm_cell_80/MatMul/ReadVariableOpReadVariableOp3lstm_80_lstm_cell_80_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_80/lstm_cell_80/MatMul/ReadVariableOp�
lstm_80/lstm_cell_80/MatMulMatMul lstm_80/strided_slice_2:output:02lstm_80/lstm_cell_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_80/lstm_cell_80/MatMul�
,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOpReadVariableOp5lstm_80_lstm_cell_80_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp�
lstm_80/lstm_cell_80/MatMul_1MatMullstm_80/zeros:output:04lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_80/lstm_cell_80/MatMul_1�
lstm_80/lstm_cell_80/addAddV2%lstm_80/lstm_cell_80/MatMul:product:0'lstm_80/lstm_cell_80/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_80/lstm_cell_80/add�
+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOpReadVariableOp4lstm_80_lstm_cell_80_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp�
lstm_80/lstm_cell_80/BiasAddBiasAddlstm_80/lstm_cell_80/add:z:03lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_80/lstm_cell_80/BiasAdd�
$lstm_80/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_80/lstm_cell_80/split/split_dim�
lstm_80/lstm_cell_80/splitSplit-lstm_80/lstm_cell_80/split/split_dim:output:0%lstm_80/lstm_cell_80/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_80/lstm_cell_80/split�
lstm_80/lstm_cell_80/SigmoidSigmoid#lstm_80/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/Sigmoid�
lstm_80/lstm_cell_80/Sigmoid_1Sigmoid#lstm_80/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:���������2 
lstm_80/lstm_cell_80/Sigmoid_1�
lstm_80/lstm_cell_80/mulMul"lstm_80/lstm_cell_80/Sigmoid_1:y:0lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/mul�
lstm_80/lstm_cell_80/ReluRelu#lstm_80/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/Relu�
lstm_80/lstm_cell_80/mul_1Mul lstm_80/lstm_cell_80/Sigmoid:y:0'lstm_80/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/mul_1�
lstm_80/lstm_cell_80/add_1AddV2lstm_80/lstm_cell_80/mul:z:0lstm_80/lstm_cell_80/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/add_1�
lstm_80/lstm_cell_80/Sigmoid_2Sigmoid#lstm_80/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:���������2 
lstm_80/lstm_cell_80/Sigmoid_2�
lstm_80/lstm_cell_80/Relu_1Relulstm_80/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/Relu_1�
lstm_80/lstm_cell_80/mul_2Mul"lstm_80/lstm_cell_80/Sigmoid_2:y:0)lstm_80/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_80/lstm_cell_80/mul_2�
%lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2'
%lstm_80/TensorArrayV2_1/element_shape�
lstm_80/TensorArrayV2_1TensorListReserve.lstm_80/TensorArrayV2_1/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_80/TensorArrayV2_1^
lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/time�
 lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_80/while/maximum_iterationsz
lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/while/loop_counter�
lstm_80/whileWhile#lstm_80/while/loop_counter:output:0)lstm_80/while/maximum_iterations:output:0lstm_80/time:output:0 lstm_80/TensorArrayV2_1:handle:0lstm_80/zeros:output:0lstm_80/zeros_1:output:0 lstm_80/strided_slice_1:output:0?lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_80_lstm_cell_80_matmul_readvariableop_resource5lstm_80_lstm_cell_80_matmul_1_readvariableop_resource4lstm_80_lstm_cell_80_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_80_while_body_1378285*&
condR
lstm_80_while_cond_1378284*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_80/while�
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2:
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_80/TensorArrayV2Stack/TensorListStackTensorListStacklstm_80/while:output:3Alstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������*
element_dtype02,
*lstm_80/TensorArrayV2Stack/TensorListStack�
lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_80/strided_slice_3/stack�
lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_80/strided_slice_3/stack_1�
lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_3/stack_2�
lstm_80/strided_slice_3StridedSlice3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_80/strided_slice_3/stack:output:0(lstm_80/strided_slice_3/stack_1:output:0(lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_80/strided_slice_3�
lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_80/transpose_1/perm�
lstm_80/transpose_1	Transpose3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
2
lstm_80/transpose_1v
lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/runtime�
dropout_118/IdentityIdentity lstm_80/strided_slice_3:output:0*
T0*'
_output_shapes
:���������2
dropout_118/Identity�
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_58/MatMul/ReadVariableOp�
dense_58/MatMulMatMuldropout_118/Identity:output:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_58/MatMul�
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_58/BiasAdd/ReadVariableOp�
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_58/BiasAdds
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_58/Relu�
dropout_119/IdentityIdentitydense_58/Relu:activations:0*
T0*'
_output_shapes
:���������2
dropout_119/Identity�
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_59/MatMul/ReadVariableOp�
dense_59/MatMulMatMuldropout_119/Identity:output:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_59/MatMul�
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_59/BiasAdd/ReadVariableOp�
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_59/BiasAdds
dense_59/ReluReludense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_59/Relu�
dropout_120/IdentityIdentitydense_59/Relu:activations:0*
T0*'
_output_shapes
:���������2
dropout_120/Identity�
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_60/MatMul/ReadVariableOp�
dense_60/MatMulMatMuldropout_120/Identity:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_60/MatMul�
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp�
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_60/BiasAddt
IdentityIdentitydense_60/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp,^lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp+^lstm_78/lstm_cell_78/MatMul/ReadVariableOp-^lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp^lstm_78/while,^lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp+^lstm_79/lstm_cell_79/MatMul/ReadVariableOp-^lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp^lstm_79/while,^lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp+^lstm_80/lstm_cell_80/MatMul/ReadVariableOp-^lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp^lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������
: : : : : : : : : : : : : : : 2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2Z
+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp+lstm_78/lstm_cell_78/BiasAdd/ReadVariableOp2X
*lstm_78/lstm_cell_78/MatMul/ReadVariableOp*lstm_78/lstm_cell_78/MatMul/ReadVariableOp2\
,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp,lstm_78/lstm_cell_78/MatMul_1/ReadVariableOp2
lstm_78/whilelstm_78/while2Z
+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp+lstm_79/lstm_cell_79/BiasAdd/ReadVariableOp2X
*lstm_79/lstm_cell_79/MatMul/ReadVariableOp*lstm_79/lstm_cell_79/MatMul/ReadVariableOp2\
,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp,lstm_79/lstm_cell_79/MatMul_1/ReadVariableOp2
lstm_79/whilelstm_79/while2Z
+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp+lstm_80/lstm_cell_80/BiasAdd/ReadVariableOp2X
*lstm_80/lstm_cell_80/MatMul/ReadVariableOp*lstm_80/lstm_cell_80/MatMul/ReadVariableOp2\
,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp,lstm_80/lstm_cell_80/MatMul_1/ReadVariableOp2
lstm_80/whilelstm_80/while:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
E__inference_dense_58_layer_call_and_return_conditional_losses_1376818

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�^
�
(sequential_20_lstm_79_while_body_1374160H
Dsequential_20_lstm_79_while_sequential_20_lstm_79_while_loop_counterN
Jsequential_20_lstm_79_while_sequential_20_lstm_79_while_maximum_iterations+
'sequential_20_lstm_79_while_placeholder-
)sequential_20_lstm_79_while_placeholder_1-
)sequential_20_lstm_79_while_placeholder_2-
)sequential_20_lstm_79_while_placeholder_3G
Csequential_20_lstm_79_while_sequential_20_lstm_79_strided_slice_1_0�
sequential_20_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_79_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_20_lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0:@]
Ksequential_20_lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0:@X
Jsequential_20_lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0:@(
$sequential_20_lstm_79_while_identity*
&sequential_20_lstm_79_while_identity_1*
&sequential_20_lstm_79_while_identity_2*
&sequential_20_lstm_79_while_identity_3*
&sequential_20_lstm_79_while_identity_4*
&sequential_20_lstm_79_while_identity_5E
Asequential_20_lstm_79_while_sequential_20_lstm_79_strided_slice_1�
}sequential_20_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_79_tensorarrayunstack_tensorlistfromtensorY
Gsequential_20_lstm_79_while_lstm_cell_79_matmul_readvariableop_resource:@[
Isequential_20_lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource:@V
Hsequential_20_lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource:@��?sequential_20/lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp�>sequential_20/lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp�@sequential_20/lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp�
Msequential_20/lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2O
Msequential_20/lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential_20/lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_20_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_79_tensorarrayunstack_tensorlistfromtensor_0'sequential_20_lstm_79_while_placeholderVsequential_20/lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02A
?sequential_20/lstm_79/while/TensorArrayV2Read/TensorListGetItem�
>sequential_20/lstm_79/while/lstm_cell_79/MatMul/ReadVariableOpReadVariableOpIsequential_20_lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02@
>sequential_20/lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp�
/sequential_20/lstm_79/while/lstm_cell_79/MatMulMatMulFsequential_20/lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_20/lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@21
/sequential_20/lstm_79/while/lstm_cell_79/MatMul�
@sequential_20/lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOpReadVariableOpKsequential_20_lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_20/lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp�
1sequential_20/lstm_79/while/lstm_cell_79/MatMul_1MatMul)sequential_20_lstm_79_while_placeholder_2Hsequential_20/lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@23
1sequential_20/lstm_79/while/lstm_cell_79/MatMul_1�
,sequential_20/lstm_79/while/lstm_cell_79/addAddV29sequential_20/lstm_79/while/lstm_cell_79/MatMul:product:0;sequential_20/lstm_79/while/lstm_cell_79/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2.
,sequential_20/lstm_79/while/lstm_cell_79/add�
?sequential_20/lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOpReadVariableOpJsequential_20_lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02A
?sequential_20/lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp�
0sequential_20/lstm_79/while/lstm_cell_79/BiasAddBiasAdd0sequential_20/lstm_79/while/lstm_cell_79/add:z:0Gsequential_20/lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@22
0sequential_20/lstm_79/while/lstm_cell_79/BiasAdd�
8sequential_20/lstm_79/while/lstm_cell_79/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_20/lstm_79/while/lstm_cell_79/split/split_dim�
.sequential_20/lstm_79/while/lstm_cell_79/splitSplitAsequential_20/lstm_79/while/lstm_cell_79/split/split_dim:output:09sequential_20/lstm_79/while/lstm_cell_79/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split20
.sequential_20/lstm_79/while/lstm_cell_79/split�
0sequential_20/lstm_79/while/lstm_cell_79/SigmoidSigmoid7sequential_20/lstm_79/while/lstm_cell_79/split:output:0*
T0*'
_output_shapes
:���������22
0sequential_20/lstm_79/while/lstm_cell_79/Sigmoid�
2sequential_20/lstm_79/while/lstm_cell_79/Sigmoid_1Sigmoid7sequential_20/lstm_79/while/lstm_cell_79/split:output:1*
T0*'
_output_shapes
:���������24
2sequential_20/lstm_79/while/lstm_cell_79/Sigmoid_1�
,sequential_20/lstm_79/while/lstm_cell_79/mulMul6sequential_20/lstm_79/while/lstm_cell_79/Sigmoid_1:y:0)sequential_20_lstm_79_while_placeholder_3*
T0*'
_output_shapes
:���������2.
,sequential_20/lstm_79/while/lstm_cell_79/mul�
-sequential_20/lstm_79/while/lstm_cell_79/ReluRelu7sequential_20/lstm_79/while/lstm_cell_79/split:output:2*
T0*'
_output_shapes
:���������2/
-sequential_20/lstm_79/while/lstm_cell_79/Relu�
.sequential_20/lstm_79/while/lstm_cell_79/mul_1Mul4sequential_20/lstm_79/while/lstm_cell_79/Sigmoid:y:0;sequential_20/lstm_79/while/lstm_cell_79/Relu:activations:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_79/while/lstm_cell_79/mul_1�
.sequential_20/lstm_79/while/lstm_cell_79/add_1AddV20sequential_20/lstm_79/while/lstm_cell_79/mul:z:02sequential_20/lstm_79/while/lstm_cell_79/mul_1:z:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_79/while/lstm_cell_79/add_1�
2sequential_20/lstm_79/while/lstm_cell_79/Sigmoid_2Sigmoid7sequential_20/lstm_79/while/lstm_cell_79/split:output:3*
T0*'
_output_shapes
:���������24
2sequential_20/lstm_79/while/lstm_cell_79/Sigmoid_2�
/sequential_20/lstm_79/while/lstm_cell_79/Relu_1Relu2sequential_20/lstm_79/while/lstm_cell_79/add_1:z:0*
T0*'
_output_shapes
:���������21
/sequential_20/lstm_79/while/lstm_cell_79/Relu_1�
.sequential_20/lstm_79/while/lstm_cell_79/mul_2Mul6sequential_20/lstm_79/while/lstm_cell_79/Sigmoid_2:y:0=sequential_20/lstm_79/while/lstm_cell_79/Relu_1:activations:0*
T0*'
_output_shapes
:���������20
.sequential_20/lstm_79/while/lstm_cell_79/mul_2�
@sequential_20/lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_20_lstm_79_while_placeholder_1'sequential_20_lstm_79_while_placeholder2sequential_20/lstm_79/while/lstm_cell_79/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_20/lstm_79/while/TensorArrayV2Write/TensorListSetItem�
!sequential_20/lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_20/lstm_79/while/add/y�
sequential_20/lstm_79/while/addAddV2'sequential_20_lstm_79_while_placeholder*sequential_20/lstm_79/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_20/lstm_79/while/add�
#sequential_20/lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_20/lstm_79/while/add_1/y�
!sequential_20/lstm_79/while/add_1AddV2Dsequential_20_lstm_79_while_sequential_20_lstm_79_while_loop_counter,sequential_20/lstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_20/lstm_79/while/add_1�
$sequential_20/lstm_79/while/IdentityIdentity%sequential_20/lstm_79/while/add_1:z:0!^sequential_20/lstm_79/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_20/lstm_79/while/Identity�
&sequential_20/lstm_79/while/Identity_1IdentityJsequential_20_lstm_79_while_sequential_20_lstm_79_while_maximum_iterations!^sequential_20/lstm_79/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_79/while/Identity_1�
&sequential_20/lstm_79/while/Identity_2Identity#sequential_20/lstm_79/while/add:z:0!^sequential_20/lstm_79/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_79/while/Identity_2�
&sequential_20/lstm_79/while/Identity_3IdentityPsequential_20/lstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_20/lstm_79/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_20/lstm_79/while/Identity_3�
&sequential_20/lstm_79/while/Identity_4Identity2sequential_20/lstm_79/while/lstm_cell_79/mul_2:z:0!^sequential_20/lstm_79/while/NoOp*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_79/while/Identity_4�
&sequential_20/lstm_79/while/Identity_5Identity2sequential_20/lstm_79/while/lstm_cell_79/add_1:z:0!^sequential_20/lstm_79/while/NoOp*
T0*'
_output_shapes
:���������2(
&sequential_20/lstm_79/while/Identity_5�
 sequential_20/lstm_79/while/NoOpNoOp@^sequential_20/lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp?^sequential_20/lstm_79/while/lstm_cell_79/MatMul/ReadVariableOpA^sequential_20/lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_20/lstm_79/while/NoOp"U
$sequential_20_lstm_79_while_identity-sequential_20/lstm_79/while/Identity:output:0"Y
&sequential_20_lstm_79_while_identity_1/sequential_20/lstm_79/while/Identity_1:output:0"Y
&sequential_20_lstm_79_while_identity_2/sequential_20/lstm_79/while/Identity_2:output:0"Y
&sequential_20_lstm_79_while_identity_3/sequential_20/lstm_79/while/Identity_3:output:0"Y
&sequential_20_lstm_79_while_identity_4/sequential_20/lstm_79/while/Identity_4:output:0"Y
&sequential_20_lstm_79_while_identity_5/sequential_20/lstm_79/while/Identity_5:output:0"�
Hsequential_20_lstm_79_while_lstm_cell_79_biasadd_readvariableop_resourceJsequential_20_lstm_79_while_lstm_cell_79_biasadd_readvariableop_resource_0"�
Isequential_20_lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resourceKsequential_20_lstm_79_while_lstm_cell_79_matmul_1_readvariableop_resource_0"�
Gsequential_20_lstm_79_while_lstm_cell_79_matmul_readvariableop_resourceIsequential_20_lstm_79_while_lstm_cell_79_matmul_readvariableop_resource_0"�
Asequential_20_lstm_79_while_sequential_20_lstm_79_strided_slice_1Csequential_20_lstm_79_while_sequential_20_lstm_79_strided_slice_1_0"�
}sequential_20_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_79_tensorarrayunstack_tensorlistfromtensorsequential_20_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_20_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2�
?sequential_20/lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp?sequential_20/lstm_79/while/lstm_cell_79/BiasAdd/ReadVariableOp2�
>sequential_20/lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp>sequential_20/lstm_79/while/lstm_cell_79/MatMul/ReadVariableOp2�
@sequential_20/lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp@sequential_20/lstm_79/while/lstm_cell_79/MatMul_1/ReadVariableOp: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�%
�
while_body_1374714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_78_1374738_0:@.
while_lstm_cell_78_1374740_0:@*
while_lstm_cell_78_1374742_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_78_1374738:@,
while_lstm_cell_78_1374740:@(
while_lstm_cell_78_1374742:@��*while/lstm_cell_78/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_78/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_78_1374738_0while_lstm_cell_78_1374740_0while_lstm_cell_78_1374742_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_13746362,
*while/lstm_cell_78/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_78/StatefulPartitionedCall:output:0*
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
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_78/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_78/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_78/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_78_1374738while_lstm_cell_78_1374738_0":
while_lstm_cell_78_1374740while_lstm_cell_78_1374740_0":
while_lstm_cell_78_1374742while_lstm_cell_78_1374742_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_78/StatefulPartitionedCall*while/lstm_cell_78/StatefulPartitionedCall: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1380508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1380508___redundant_placeholder05
1while_while_cond_1380508___redundant_placeholder15
1while_while_cond_1380508___redundant_placeholder25
1while_while_cond_1380508___redundant_placeholder3
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
@: : : : :���������:���������: ::::: 
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
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_78_input:
serving_default_lstm_78_input:0���������
<
dense_600
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
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
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
cell

state_spec
	variables
trainable_variables
 regularization_losses
!	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&cell
'
state_spec
(	variables
)trainable_variables
*regularization_losses
+	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate0m�1m�:m�;m�Dm�Em�Om�Pm�Qm�Rm�Sm�Tm�Um�Vm�Wm�0v�1v�:v�;v�Dv�Ev�Ov�Pv�Qv�Rv�Sv�Tv�Uv�Vv�Wv�"
	optimizer
�
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
�
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
�
	variables
trainable_variables
Xlayer_regularization_losses
Ynon_trainable_variables
regularization_losses
Zmetrics

[layers
\layer_metrics
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�
]
state_size

Okernel
Precurrent_kernel
Qbias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�

bstates
	variables
trainable_variables
clayer_regularization_losses
dnon_trainable_variables
regularization_losses
emetrics

flayers
glayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
trainable_variables
hlayer_regularization_losses
inon_trainable_variables
regularization_losses
jmetrics

klayers
llayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
m
state_size

Rkernel
Srecurrent_kernel
Tbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�

rstates
	variables
trainable_variables
slayer_regularization_losses
tnon_trainable_variables
 regularization_losses
umetrics

vlayers
wlayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
"	variables
#trainable_variables
xlayer_regularization_losses
ynon_trainable_variables
$regularization_losses
zmetrics

{layers
|layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
}
state_size

Ukernel
Vrecurrent_kernel
Wbias
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�
�states
(	variables
)trainable_variables
 �layer_regularization_losses
�non_trainable_variables
*regularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
,	variables
-trainable_variables
 �layer_regularization_losses
�non_trainable_variables
.regularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:2dense_58/kernel
:2dense_58/bias
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
�
2	variables
3trainable_variables
 �layer_regularization_losses
�non_trainable_variables
4regularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
6	variables
7trainable_variables
 �layer_regularization_losses
�non_trainable_variables
8regularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:2dense_59/kernel
:2dense_59/bias
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
�
<	variables
=trainable_variables
 �layer_regularization_losses
�non_trainable_variables
>regularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
@	variables
Atrainable_variables
 �layer_regularization_losses
�non_trainable_variables
Bregularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:2dense_60/kernel
:2dense_60/bias
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
�
F	variables
Gtrainable_variables
 �layer_regularization_losses
�non_trainable_variables
Hregularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@2lstm_78/lstm_cell_78/kernel
7:5@2%lstm_78/lstm_cell_78/recurrent_kernel
':%@2lstm_78/lstm_cell_78/bias
-:+@2lstm_79/lstm_cell_79/kernel
7:5@2%lstm_79/lstm_cell_79/recurrent_kernel
':%@2lstm_79/lstm_cell_79/bias
-:+@2lstm_80/lstm_cell_80/kernel
7:5@2%lstm_80/lstm_cell_80/recurrent_kernel
':%@2lstm_80/lstm_cell_80/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
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
�
^	variables
_trainable_variables
 �layer_regularization_losses
�non_trainable_variables
`regularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
�
n	variables
otrainable_variables
 �layer_regularization_losses
�non_trainable_variables
pregularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
�
~	variables
trainable_variables
 �layer_regularization_losses
�non_trainable_variables
�regularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
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
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
&:$2Adam/dense_58/kernel/m
 :2Adam/dense_58/bias/m
&:$2Adam/dense_59/kernel/m
 :2Adam/dense_59/bias/m
&:$2Adam/dense_60/kernel/m
 :2Adam/dense_60/bias/m
2:0@2"Adam/lstm_78/lstm_cell_78/kernel/m
<::@2,Adam/lstm_78/lstm_cell_78/recurrent_kernel/m
,:*@2 Adam/lstm_78/lstm_cell_78/bias/m
2:0@2"Adam/lstm_79/lstm_cell_79/kernel/m
<::@2,Adam/lstm_79/lstm_cell_79/recurrent_kernel/m
,:*@2 Adam/lstm_79/lstm_cell_79/bias/m
2:0@2"Adam/lstm_80/lstm_cell_80/kernel/m
<::@2,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m
,:*@2 Adam/lstm_80/lstm_cell_80/bias/m
&:$2Adam/dense_58/kernel/v
 :2Adam/dense_58/bias/v
&:$2Adam/dense_59/kernel/v
 :2Adam/dense_59/bias/v
&:$2Adam/dense_60/kernel/v
 :2Adam/dense_60/bias/v
2:0@2"Adam/lstm_78/lstm_cell_78/kernel/v
<::@2,Adam/lstm_78/lstm_cell_78/recurrent_kernel/v
,:*@2 Adam/lstm_78/lstm_cell_78/bias/v
2:0@2"Adam/lstm_79/lstm_cell_79/kernel/v
<::@2,Adam/lstm_79/lstm_cell_79/recurrent_kernel/v
,:*@2 Adam/lstm_79/lstm_cell_79/bias/v
2:0@2"Adam/lstm_80/lstm_cell_80/kernel/v
<::@2,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v
,:*@2 Adam/lstm_80/lstm_cell_80/bias/v
�2�
/__inference_sequential_20_layer_call_fn_1376905
/__inference_sequential_20_layer_call_fn_1377887
/__inference_sequential_20_layer_call_fn_1377922
/__inference_sequential_20_layer_call_fn_1377719�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_1374415lstm_78_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_sequential_20_layer_call_and_return_conditional_losses_1378392
J__inference_sequential_20_layer_call_and_return_conditional_losses_1378897
J__inference_sequential_20_layer_call_and_return_conditional_losses_1377764
J__inference_sequential_20_layer_call_and_return_conditional_losses_1377809�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_lstm_78_layer_call_fn_1378908
)__inference_lstm_78_layer_call_fn_1378919
)__inference_lstm_78_layer_call_fn_1378930
)__inference_lstm_78_layer_call_fn_1378941�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379092
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379243
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379394
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379545�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_dropout_116_layer_call_fn_1379550
-__inference_dropout_116_layer_call_fn_1379555�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_116_layer_call_and_return_conditional_losses_1379560
H__inference_dropout_116_layer_call_and_return_conditional_losses_1379572�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_lstm_79_layer_call_fn_1379583
)__inference_lstm_79_layer_call_fn_1379594
)__inference_lstm_79_layer_call_fn_1379605
)__inference_lstm_79_layer_call_fn_1379616�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1379767
D__inference_lstm_79_layer_call_and_return_conditional_losses_1379918
D__inference_lstm_79_layer_call_and_return_conditional_losses_1380069
D__inference_lstm_79_layer_call_and_return_conditional_losses_1380220�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_dropout_117_layer_call_fn_1380225
-__inference_dropout_117_layer_call_fn_1380230�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_117_layer_call_and_return_conditional_losses_1380235
H__inference_dropout_117_layer_call_and_return_conditional_losses_1380247�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_lstm_80_layer_call_fn_1380258
)__inference_lstm_80_layer_call_fn_1380269
)__inference_lstm_80_layer_call_fn_1380280
)__inference_lstm_80_layer_call_fn_1380291�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380442
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380593
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380744
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380895�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_dropout_118_layer_call_fn_1380900
-__inference_dropout_118_layer_call_fn_1380905�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_118_layer_call_and_return_conditional_losses_1380910
H__inference_dropout_118_layer_call_and_return_conditional_losses_1380922�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dense_58_layer_call_fn_1380931�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_58_layer_call_and_return_conditional_losses_1380942�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_dropout_119_layer_call_fn_1380947
-__inference_dropout_119_layer_call_fn_1380952�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_119_layer_call_and_return_conditional_losses_1380957
H__inference_dropout_119_layer_call_and_return_conditional_losses_1380969�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dense_59_layer_call_fn_1380978�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_59_layer_call_and_return_conditional_losses_1380989�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_dropout_120_layer_call_fn_1380994
-__inference_dropout_120_layer_call_fn_1380999�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_120_layer_call_and_return_conditional_losses_1381004
H__inference_dropout_120_layer_call_and_return_conditional_losses_1381016�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dense_60_layer_call_fn_1381025�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_60_layer_call_and_return_conditional_losses_1381035�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_1377852lstm_78_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_lstm_cell_78_layer_call_fn_1381052
.__inference_lstm_cell_78_layer_call_fn_1381069�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_1381101
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_1381133�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
.__inference_lstm_cell_79_layer_call_fn_1381150
.__inference_lstm_cell_79_layer_call_fn_1381167�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_1381199
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_1381231�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
.__inference_lstm_cell_80_layer_call_fn_1381248
.__inference_lstm_cell_80_layer_call_fn_1381265�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_1381297
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_1381329�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
"__inference__wrapped_model_1374415�OPQRSTUVW01:;DE:�7
0�-
+�(
lstm_78_input���������

� "3�0
.
dense_60"�
dense_60����������
E__inference_dense_58_layer_call_and_return_conditional_losses_1380942\01/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
*__inference_dense_58_layer_call_fn_1380931O01/�,
%�"
 �
inputs���������
� "�����������
E__inference_dense_59_layer_call_and_return_conditional_losses_1380989\:;/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
*__inference_dense_59_layer_call_fn_1380978O:;/�,
%�"
 �
inputs���������
� "�����������
E__inference_dense_60_layer_call_and_return_conditional_losses_1381035\DE/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
*__inference_dense_60_layer_call_fn_1381025ODE/�,
%�"
 �
inputs���������
� "�����������
H__inference_dropout_116_layer_call_and_return_conditional_losses_1379560d7�4
-�*
$�!
inputs���������

p 
� ")�&
�
0���������

� �
H__inference_dropout_116_layer_call_and_return_conditional_losses_1379572d7�4
-�*
$�!
inputs���������

p
� ")�&
�
0���������

� �
-__inference_dropout_116_layer_call_fn_1379550W7�4
-�*
$�!
inputs���������

p 
� "����������
�
-__inference_dropout_116_layer_call_fn_1379555W7�4
-�*
$�!
inputs���������

p
� "����������
�
H__inference_dropout_117_layer_call_and_return_conditional_losses_1380235d7�4
-�*
$�!
inputs���������

p 
� ")�&
�
0���������

� �
H__inference_dropout_117_layer_call_and_return_conditional_losses_1380247d7�4
-�*
$�!
inputs���������

p
� ")�&
�
0���������

� �
-__inference_dropout_117_layer_call_fn_1380225W7�4
-�*
$�!
inputs���������

p 
� "����������
�
-__inference_dropout_117_layer_call_fn_1380230W7�4
-�*
$�!
inputs���������

p
� "����������
�
H__inference_dropout_118_layer_call_and_return_conditional_losses_1380910\3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
H__inference_dropout_118_layer_call_and_return_conditional_losses_1380922\3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
-__inference_dropout_118_layer_call_fn_1380900O3�0
)�&
 �
inputs���������
p 
� "�����������
-__inference_dropout_118_layer_call_fn_1380905O3�0
)�&
 �
inputs���������
p
� "�����������
H__inference_dropout_119_layer_call_and_return_conditional_losses_1380957\3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
H__inference_dropout_119_layer_call_and_return_conditional_losses_1380969\3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
-__inference_dropout_119_layer_call_fn_1380947O3�0
)�&
 �
inputs���������
p 
� "�����������
-__inference_dropout_119_layer_call_fn_1380952O3�0
)�&
 �
inputs���������
p
� "�����������
H__inference_dropout_120_layer_call_and_return_conditional_losses_1381004\3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
H__inference_dropout_120_layer_call_and_return_conditional_losses_1381016\3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
-__inference_dropout_120_layer_call_fn_1380994O3�0
)�&
 �
inputs���������
p 
� "�����������
-__inference_dropout_120_layer_call_fn_1380999O3�0
)�&
 �
inputs���������
p
� "�����������
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379092�OPQO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������
� �
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379243�OPQO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������
� �
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379394qOPQ?�<
5�2
$�!
inputs���������


 
p 

 
� ")�&
�
0���������

� �
D__inference_lstm_78_layer_call_and_return_conditional_losses_1379545qOPQ?�<
5�2
$�!
inputs���������


 
p

 
� ")�&
�
0���������

� �
)__inference_lstm_78_layer_call_fn_1378908}OPQO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"�������������������
)__inference_lstm_78_layer_call_fn_1378919}OPQO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"�������������������
)__inference_lstm_78_layer_call_fn_1378930dOPQ?�<
5�2
$�!
inputs���������


 
p 

 
� "����������
�
)__inference_lstm_78_layer_call_fn_1378941dOPQ?�<
5�2
$�!
inputs���������


 
p

 
� "����������
�
D__inference_lstm_79_layer_call_and_return_conditional_losses_1379767�RSTO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������
� �
D__inference_lstm_79_layer_call_and_return_conditional_losses_1379918�RSTO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������
� �
D__inference_lstm_79_layer_call_and_return_conditional_losses_1380069qRST?�<
5�2
$�!
inputs���������


 
p 

 
� ")�&
�
0���������

� �
D__inference_lstm_79_layer_call_and_return_conditional_losses_1380220qRST?�<
5�2
$�!
inputs���������


 
p

 
� ")�&
�
0���������

� �
)__inference_lstm_79_layer_call_fn_1379583}RSTO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"�������������������
)__inference_lstm_79_layer_call_fn_1379594}RSTO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"�������������������
)__inference_lstm_79_layer_call_fn_1379605dRST?�<
5�2
$�!
inputs���������


 
p 

 
� "����������
�
)__inference_lstm_79_layer_call_fn_1379616dRST?�<
5�2
$�!
inputs���������


 
p

 
� "����������
�
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380442}UVWO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"
�
0���������
� �
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380593}UVWO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"
�
0���������
� �
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380744mUVW?�<
5�2
$�!
inputs���������


 
p 

 
� "%�"
�
0���������
� �
D__inference_lstm_80_layer_call_and_return_conditional_losses_1380895mUVW?�<
5�2
$�!
inputs���������


 
p

 
� "%�"
�
0���������
� �
)__inference_lstm_80_layer_call_fn_1380258pUVWO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "�����������
)__inference_lstm_80_layer_call_fn_1380269pUVWO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "�����������
)__inference_lstm_80_layer_call_fn_1380280`UVW?�<
5�2
$�!
inputs���������


 
p 

 
� "�����������
)__inference_lstm_80_layer_call_fn_1380291`UVW?�<
5�2
$�!
inputs���������


 
p

 
� "�����������
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_1381101�OPQ��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p 
� "s�p
i�f
�
0/0���������
E�B
�
0/1/0���������
�
0/1/1���������
� �
I__inference_lstm_cell_78_layer_call_and_return_conditional_losses_1381133�OPQ��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p
� "s�p
i�f
�
0/0���������
E�B
�
0/1/0���������
�
0/1/1���������
� �
.__inference_lstm_cell_78_layer_call_fn_1381052�OPQ��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p 
� "c�`
�
0���������
A�>
�
1/0���������
�
1/1����������
.__inference_lstm_cell_78_layer_call_fn_1381069�OPQ��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p
� "c�`
�
0���������
A�>
�
1/0���������
�
1/1����������
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_1381199�RST��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p 
� "s�p
i�f
�
0/0���������
E�B
�
0/1/0���������
�
0/1/1���������
� �
I__inference_lstm_cell_79_layer_call_and_return_conditional_losses_1381231�RST��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p
� "s�p
i�f
�
0/0���������
E�B
�
0/1/0���������
�
0/1/1���������
� �
.__inference_lstm_cell_79_layer_call_fn_1381150�RST��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p 
� "c�`
�
0���������
A�>
�
1/0���������
�
1/1����������
.__inference_lstm_cell_79_layer_call_fn_1381167�RST��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p
� "c�`
�
0���������
A�>
�
1/0���������
�
1/1����������
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_1381297�UVW��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p 
� "s�p
i�f
�
0/0���������
E�B
�
0/1/0���������
�
0/1/1���������
� �
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_1381329�UVW��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p
� "s�p
i�f
�
0/0���������
E�B
�
0/1/0���������
�
0/1/1���������
� �
.__inference_lstm_cell_80_layer_call_fn_1381248�UVW��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p 
� "c�`
�
0���������
A�>
�
1/0���������
�
1/1����������
.__inference_lstm_cell_80_layer_call_fn_1381265�UVW��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p
� "c�`
�
0���������
A�>
�
1/0���������
�
1/1����������
J__inference_sequential_20_layer_call_and_return_conditional_losses_1377764|OPQRSTUVW01:;DEB�?
8�5
+�(
lstm_78_input���������

p 

 
� "%�"
�
0���������
� �
J__inference_sequential_20_layer_call_and_return_conditional_losses_1377809|OPQRSTUVW01:;DEB�?
8�5
+�(
lstm_78_input���������

p

 
� "%�"
�
0���������
� �
J__inference_sequential_20_layer_call_and_return_conditional_losses_1378392uOPQRSTUVW01:;DE;�8
1�.
$�!
inputs���������

p 

 
� "%�"
�
0���������
� �
J__inference_sequential_20_layer_call_and_return_conditional_losses_1378897uOPQRSTUVW01:;DE;�8
1�.
$�!
inputs���������

p

 
� "%�"
�
0���������
� �
/__inference_sequential_20_layer_call_fn_1376905oOPQRSTUVW01:;DEB�?
8�5
+�(
lstm_78_input���������

p 

 
� "�����������
/__inference_sequential_20_layer_call_fn_1377719oOPQRSTUVW01:;DEB�?
8�5
+�(
lstm_78_input���������

p

 
� "�����������
/__inference_sequential_20_layer_call_fn_1377887hOPQRSTUVW01:;DE;�8
1�.
$�!
inputs���������

p 

 
� "�����������
/__inference_sequential_20_layer_call_fn_1377922hOPQRSTUVW01:;DE;�8
1�.
$�!
inputs���������

p

 
� "�����������
%__inference_signature_wrapper_1377852�OPQRSTUVW01:;DEK�H
� 
A�>
<
lstm_78_input+�(
lstm_78_input���������
"3�0
.
dense_60"�
dense_60���������