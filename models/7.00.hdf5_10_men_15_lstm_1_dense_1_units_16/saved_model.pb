��:
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
�"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ƾ8
|
dense_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_108/kernel
u
$dense_108/kernel/Read/ReadVariableOpReadVariableOpdense_108/kernel*
_output_shapes

:*
dtype0
t
dense_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_108/bias
m
"dense_108/bias/Read/ReadVariableOpReadVariableOpdense_108/bias*
_output_shapes
:*
dtype0
|
dense_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_109/kernel
u
$dense_109/kernel/Read/ReadVariableOpReadVariableOpdense_109/kernel*
_output_shapes

:*
dtype0
t
dense_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_109/bias
m
"dense_109/bias/Read/ReadVariableOpReadVariableOpdense_109/bias*
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
lstm_144/lstm_cell_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*.
shared_namelstm_144/lstm_cell_144/kernel
�
1lstm_144/lstm_cell_144/kernel/Read/ReadVariableOpReadVariableOplstm_144/lstm_cell_144/kernel*
_output_shapes

:@*
dtype0
�
'lstm_144/lstm_cell_144/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'lstm_144/lstm_cell_144/recurrent_kernel
�
;lstm_144/lstm_cell_144/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_144/lstm_cell_144/recurrent_kernel*
_output_shapes

:@*
dtype0
�
lstm_144/lstm_cell_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelstm_144/lstm_cell_144/bias
�
/lstm_144/lstm_cell_144/bias/Read/ReadVariableOpReadVariableOplstm_144/lstm_cell_144/bias*
_output_shapes
:@*
dtype0
�
lstm_145/lstm_cell_145/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*.
shared_namelstm_145/lstm_cell_145/kernel
�
1lstm_145/lstm_cell_145/kernel/Read/ReadVariableOpReadVariableOplstm_145/lstm_cell_145/kernel*
_output_shapes

:@*
dtype0
�
'lstm_145/lstm_cell_145/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'lstm_145/lstm_cell_145/recurrent_kernel
�
;lstm_145/lstm_cell_145/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_145/lstm_cell_145/recurrent_kernel*
_output_shapes

:@*
dtype0
�
lstm_145/lstm_cell_145/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelstm_145/lstm_cell_145/bias
�
/lstm_145/lstm_cell_145/bias/Read/ReadVariableOpReadVariableOplstm_145/lstm_cell_145/bias*
_output_shapes
:@*
dtype0
�
lstm_146/lstm_cell_146/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*.
shared_namelstm_146/lstm_cell_146/kernel
�
1lstm_146/lstm_cell_146/kernel/Read/ReadVariableOpReadVariableOplstm_146/lstm_cell_146/kernel*
_output_shapes

:@*
dtype0
�
'lstm_146/lstm_cell_146/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'lstm_146/lstm_cell_146/recurrent_kernel
�
;lstm_146/lstm_cell_146/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_146/lstm_cell_146/recurrent_kernel*
_output_shapes

:@*
dtype0
�
lstm_146/lstm_cell_146/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelstm_146/lstm_cell_146/bias
�
/lstm_146/lstm_cell_146/bias/Read/ReadVariableOpReadVariableOplstm_146/lstm_cell_146/bias*
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
Adam/dense_108/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_108/kernel/m
�
+Adam/dense_108/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_108/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_108/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_108/bias/m
{
)Adam/dense_108/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_108/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_109/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_109/kernel/m
�
+Adam/dense_109/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_109/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_109/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_109/bias/m
{
)Adam/dense_109/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_109/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_144/lstm_cell_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_144/lstm_cell_144/kernel/m
�
8Adam/lstm_144/lstm_cell_144/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_144/lstm_cell_144/kernel/m*
_output_shapes

:@*
dtype0
�
.Adam/lstm_144/lstm_cell_144/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_144/lstm_cell_144/recurrent_kernel/m
�
BAdam/lstm_144/lstm_cell_144/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_144/lstm_cell_144/recurrent_kernel/m*
_output_shapes

:@*
dtype0
�
"Adam/lstm_144/lstm_cell_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_144/lstm_cell_144/bias/m
�
6Adam/lstm_144/lstm_cell_144/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_144/lstm_cell_144/bias/m*
_output_shapes
:@*
dtype0
�
$Adam/lstm_145/lstm_cell_145/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_145/lstm_cell_145/kernel/m
�
8Adam/lstm_145/lstm_cell_145/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_145/lstm_cell_145/kernel/m*
_output_shapes

:@*
dtype0
�
.Adam/lstm_145/lstm_cell_145/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_145/lstm_cell_145/recurrent_kernel/m
�
BAdam/lstm_145/lstm_cell_145/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_145/lstm_cell_145/recurrent_kernel/m*
_output_shapes

:@*
dtype0
�
"Adam/lstm_145/lstm_cell_145/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_145/lstm_cell_145/bias/m
�
6Adam/lstm_145/lstm_cell_145/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_145/lstm_cell_145/bias/m*
_output_shapes
:@*
dtype0
�
$Adam/lstm_146/lstm_cell_146/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_146/lstm_cell_146/kernel/m
�
8Adam/lstm_146/lstm_cell_146/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_146/lstm_cell_146/kernel/m*
_output_shapes

:@*
dtype0
�
.Adam/lstm_146/lstm_cell_146/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_146/lstm_cell_146/recurrent_kernel/m
�
BAdam/lstm_146/lstm_cell_146/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_146/lstm_cell_146/recurrent_kernel/m*
_output_shapes

:@*
dtype0
�
"Adam/lstm_146/lstm_cell_146/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_146/lstm_cell_146/bias/m
�
6Adam/lstm_146/lstm_cell_146/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_146/lstm_cell_146/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_108/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_108/kernel/v
�
+Adam/dense_108/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_108/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_108/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_108/bias/v
{
)Adam/dense_108/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_108/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_109/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_109/kernel/v
�
+Adam/dense_109/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_109/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_109/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_109/bias/v
{
)Adam/dense_109/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_109/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_144/lstm_cell_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_144/lstm_cell_144/kernel/v
�
8Adam/lstm_144/lstm_cell_144/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_144/lstm_cell_144/kernel/v*
_output_shapes

:@*
dtype0
�
.Adam/lstm_144/lstm_cell_144/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_144/lstm_cell_144/recurrent_kernel/v
�
BAdam/lstm_144/lstm_cell_144/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_144/lstm_cell_144/recurrent_kernel/v*
_output_shapes

:@*
dtype0
�
"Adam/lstm_144/lstm_cell_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_144/lstm_cell_144/bias/v
�
6Adam/lstm_144/lstm_cell_144/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_144/lstm_cell_144/bias/v*
_output_shapes
:@*
dtype0
�
$Adam/lstm_145/lstm_cell_145/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_145/lstm_cell_145/kernel/v
�
8Adam/lstm_145/lstm_cell_145/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_145/lstm_cell_145/kernel/v*
_output_shapes

:@*
dtype0
�
.Adam/lstm_145/lstm_cell_145/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_145/lstm_cell_145/recurrent_kernel/v
�
BAdam/lstm_145/lstm_cell_145/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_145/lstm_cell_145/recurrent_kernel/v*
_output_shapes

:@*
dtype0
�
"Adam/lstm_145/lstm_cell_145/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_145/lstm_cell_145/bias/v
�
6Adam/lstm_145/lstm_cell_145/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_145/lstm_cell_145/bias/v*
_output_shapes
:@*
dtype0
�
$Adam/lstm_146/lstm_cell_146/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*5
shared_name&$Adam/lstm_146/lstm_cell_146/kernel/v
�
8Adam/lstm_146/lstm_cell_146/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_146/lstm_cell_146/kernel/v*
_output_shapes

:@*
dtype0
�
.Adam/lstm_146/lstm_cell_146/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_146/lstm_cell_146/recurrent_kernel/v
�
BAdam/lstm_146/lstm_cell_146/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_146/lstm_cell_146/recurrent_kernel/v*
_output_shapes

:@*
dtype0
�
"Adam/lstm_146/lstm_cell_146/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_146/lstm_cell_146/bias/v
�
6Adam/lstm_146/lstm_cell_146/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_146/lstm_cell_146/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
�T
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�S
value�SB�S B�S
�
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
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
l
$cell
%
state_spec
&	variables
'trainable_variables
(regularization_losses
)	keras_api
R
*	variables
+trainable_variables
,regularization_losses
-	keras_api
h

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
R
4	variables
5trainable_variables
6regularization_losses
7	keras_api
h

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
�
>iter

?beta_1

@beta_2
	Adecay
Blearning_rate.m�/m�8m�9m�Cm�Dm�Em�Fm�Gm�Hm�Im�Jm�Km�.v�/v�8v�9v�Cv�Dv�Ev�Fv�Gv�Hv�Iv�Jv�Kv�
^
C0
D1
E2
F3
G4
H5
I6
J7
K8
.9
/10
811
912
^
C0
D1
E2
F3
G4
H5
I6
J7
K8
.9
/10
811
912
 
�
	variables
trainable_variables
Llayer_regularization_losses
Mnon_trainable_variables
regularization_losses
Nmetrics

Olayers
Player_metrics
 
�
Q
state_size

Ckernel
Drecurrent_kernel
Ebias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
 

C0
D1
E2

C0
D1
E2
 
�

Vstates
	variables
trainable_variables
Wlayer_regularization_losses
Xnon_trainable_variables
regularization_losses
Ymetrics

Zlayers
[layer_metrics
 
 
 
�
	variables
trainable_variables
\layer_regularization_losses
]non_trainable_variables
regularization_losses
^metrics

_layers
`layer_metrics
�
a
state_size

Fkernel
Grecurrent_kernel
Hbias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
 

F0
G1
H2

F0
G1
H2
 
�

fstates
	variables
trainable_variables
glayer_regularization_losses
hnon_trainable_variables
regularization_losses
imetrics

jlayers
klayer_metrics
 
 
 
�
 	variables
!trainable_variables
llayer_regularization_losses
mnon_trainable_variables
"regularization_losses
nmetrics

olayers
player_metrics
�
q
state_size

Ikernel
Jrecurrent_kernel
Kbias
r	variables
strainable_variables
tregularization_losses
u	keras_api
 

I0
J1
K2

I0
J1
K2
 
�

vstates
&	variables
'trainable_variables
wlayer_regularization_losses
xnon_trainable_variables
(regularization_losses
ymetrics

zlayers
{layer_metrics
 
 
 
�
*	variables
+trainable_variables
|layer_regularization_losses
}non_trainable_variables
,regularization_losses
~metrics

layers
�layer_metrics
\Z
VARIABLE_VALUEdense_108/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_108/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
�
0	variables
1trainable_variables
 �layer_regularization_losses
�non_trainable_variables
2regularization_losses
�metrics
�layers
�layer_metrics
 
 
 
�
4	variables
5trainable_variables
 �layer_regularization_losses
�non_trainable_variables
6regularization_losses
�metrics
�layers
�layer_metrics
\Z
VARIABLE_VALUEdense_109/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_109/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91

80
91
 
�
:	variables
;trainable_variables
 �layer_regularization_losses
�non_trainable_variables
<regularization_losses
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
YW
VARIABLE_VALUElstm_144/lstm_cell_144/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_144/lstm_cell_144/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_144/lstm_cell_144/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_145/lstm_cell_145/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_145/lstm_cell_145/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_145/lstm_cell_145/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_146/lstm_cell_146/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_146/lstm_cell_146/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_146/lstm_cell_146/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 
 

�0
�1
?
0
1
2
3
4
5
6
7
	8
 
 

C0
D1
E2

C0
D1
E2
 
�
R	variables
Strainable_variables
 �layer_regularization_losses
�non_trainable_variables
Tregularization_losses
�metrics
�layers
�layer_metrics
 
 
 
 

0
 
 
 
 
 
 
 

F0
G1
H2

F0
G1
H2
 
�
b	variables
ctrainable_variables
 �layer_regularization_losses
�non_trainable_variables
dregularization_losses
�metrics
�layers
�layer_metrics
 
 
 
 

0
 
 
 
 
 
 
 

I0
J1
K2

I0
J1
K2
 
�
r	variables
strainable_variables
 �layer_regularization_losses
�non_trainable_variables
tregularization_losses
�metrics
�layers
�layer_metrics
 
 
 
 

$0
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
}
VARIABLE_VALUEAdam/dense_108/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_108/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_109/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_109/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_144/lstm_cell_144/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_144/lstm_cell_144/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_144/lstm_cell_144/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_145/lstm_cell_145/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_145/lstm_cell_145/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_145/lstm_cell_145/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_146/lstm_cell_146/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_146/lstm_cell_146/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_146/lstm_cell_146/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_108/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_108/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_109/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_109/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_144/lstm_cell_144/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_144/lstm_cell_144/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_144/lstm_cell_144/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_145/lstm_cell_145/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_145/lstm_cell_145/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_145/lstm_cell_145/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_146/lstm_cell_146/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_146/lstm_cell_146/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_146/lstm_cell_146/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_144_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_144_inputlstm_144/lstm_cell_144/kernel'lstm_144/lstm_cell_144/recurrent_kernellstm_144/lstm_cell_144/biaslstm_145/lstm_cell_145/kernel'lstm_145/lstm_cell_145/recurrent_kernellstm_145/lstm_cell_145/biaslstm_146/lstm_cell_146/kernel'lstm_146/lstm_cell_146/recurrent_kernellstm_146/lstm_cell_146/biasdense_108/kerneldense_108/biasdense_109/kerneldense_109/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_2137561
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_108/kernel/Read/ReadVariableOp"dense_108/bias/Read/ReadVariableOp$dense_109/kernel/Read/ReadVariableOp"dense_109/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_144/lstm_cell_144/kernel/Read/ReadVariableOp;lstm_144/lstm_cell_144/recurrent_kernel/Read/ReadVariableOp/lstm_144/lstm_cell_144/bias/Read/ReadVariableOp1lstm_145/lstm_cell_145/kernel/Read/ReadVariableOp;lstm_145/lstm_cell_145/recurrent_kernel/Read/ReadVariableOp/lstm_145/lstm_cell_145/bias/Read/ReadVariableOp1lstm_146/lstm_cell_146/kernel/Read/ReadVariableOp;lstm_146/lstm_cell_146/recurrent_kernel/Read/ReadVariableOp/lstm_146/lstm_cell_146/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_108/kernel/m/Read/ReadVariableOp)Adam/dense_108/bias/m/Read/ReadVariableOp+Adam/dense_109/kernel/m/Read/ReadVariableOp)Adam/dense_109/bias/m/Read/ReadVariableOp8Adam/lstm_144/lstm_cell_144/kernel/m/Read/ReadVariableOpBAdam/lstm_144/lstm_cell_144/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_144/lstm_cell_144/bias/m/Read/ReadVariableOp8Adam/lstm_145/lstm_cell_145/kernel/m/Read/ReadVariableOpBAdam/lstm_145/lstm_cell_145/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_145/lstm_cell_145/bias/m/Read/ReadVariableOp8Adam/lstm_146/lstm_cell_146/kernel/m/Read/ReadVariableOpBAdam/lstm_146/lstm_cell_146/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_146/lstm_cell_146/bias/m/Read/ReadVariableOp+Adam/dense_108/kernel/v/Read/ReadVariableOp)Adam/dense_108/bias/v/Read/ReadVariableOp+Adam/dense_109/kernel/v/Read/ReadVariableOp)Adam/dense_109/bias/v/Read/ReadVariableOp8Adam/lstm_144/lstm_cell_144/kernel/v/Read/ReadVariableOpBAdam/lstm_144/lstm_cell_144/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_144/lstm_cell_144/bias/v/Read/ReadVariableOp8Adam/lstm_145/lstm_cell_145/kernel/v/Read/ReadVariableOpBAdam/lstm_145/lstm_cell_145/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_145/lstm_cell_145/bias/v/Read/ReadVariableOp8Adam/lstm_146/lstm_cell_146/kernel/v/Read/ReadVariableOpBAdam/lstm_146/lstm_cell_146/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_146/lstm_cell_146/bias/v/Read/ReadVariableOpConst*=
Tin6
422	*
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
 __inference__traced_save_2141127
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_108/kerneldense_108/biasdense_109/kerneldense_109/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_144/lstm_cell_144/kernel'lstm_144/lstm_cell_144/recurrent_kernellstm_144/lstm_cell_144/biaslstm_145/lstm_cell_145/kernel'lstm_145/lstm_cell_145/recurrent_kernellstm_145/lstm_cell_145/biaslstm_146/lstm_cell_146/kernel'lstm_146/lstm_cell_146/recurrent_kernellstm_146/lstm_cell_146/biastotalcounttotal_1count_1Adam/dense_108/kernel/mAdam/dense_108/bias/mAdam/dense_109/kernel/mAdam/dense_109/bias/m$Adam/lstm_144/lstm_cell_144/kernel/m.Adam/lstm_144/lstm_cell_144/recurrent_kernel/m"Adam/lstm_144/lstm_cell_144/bias/m$Adam/lstm_145/lstm_cell_145/kernel/m.Adam/lstm_145/lstm_cell_145/recurrent_kernel/m"Adam/lstm_145/lstm_cell_145/bias/m$Adam/lstm_146/lstm_cell_146/kernel/m.Adam/lstm_146/lstm_cell_146/recurrent_kernel/m"Adam/lstm_146/lstm_cell_146/bias/mAdam/dense_108/kernel/vAdam/dense_108/bias/vAdam/dense_109/kernel/vAdam/dense_109/bias/v$Adam/lstm_144/lstm_cell_144/kernel/v.Adam/lstm_144/lstm_cell_144/recurrent_kernel/v"Adam/lstm_144/lstm_cell_144/bias/v$Adam/lstm_145/lstm_cell_145/kernel/v.Adam/lstm_145/lstm_cell_145/recurrent_kernel/v"Adam/lstm_145/lstm_cell_145/bias/v$Adam/lstm_146/lstm_cell_146/kernel/v.Adam/lstm_146/lstm_cell_146/recurrent_kernel/v"Adam/lstm_146/lstm_cell_146/bias/v*<
Tin5
321*
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
#__inference__traced_restore_2141281��6
��
�
J__inference_sequential_36_layer_call_and_return_conditional_losses_2138085

inputsG
5lstm_144_lstm_cell_144_matmul_readvariableop_resource:@I
7lstm_144_lstm_cell_144_matmul_1_readvariableop_resource:@D
6lstm_144_lstm_cell_144_biasadd_readvariableop_resource:@G
5lstm_145_lstm_cell_145_matmul_readvariableop_resource:@I
7lstm_145_lstm_cell_145_matmul_1_readvariableop_resource:@D
6lstm_145_lstm_cell_145_biasadd_readvariableop_resource:@G
5lstm_146_lstm_cell_146_matmul_readvariableop_resource:@I
7lstm_146_lstm_cell_146_matmul_1_readvariableop_resource:@D
6lstm_146_lstm_cell_146_biasadd_readvariableop_resource:@:
(dense_108_matmul_readvariableop_resource:7
)dense_108_biasadd_readvariableop_resource::
(dense_109_matmul_readvariableop_resource:7
)dense_109_biasadd_readvariableop_resource:
identity�� dense_108/BiasAdd/ReadVariableOp�dense_108/MatMul/ReadVariableOp� dense_109/BiasAdd/ReadVariableOp�dense_109/MatMul/ReadVariableOp�-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp�,lstm_144/lstm_cell_144/MatMul/ReadVariableOp�.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp�lstm_144/while�-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp�,lstm_145/lstm_cell_145/MatMul/ReadVariableOp�.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp�lstm_145/while�-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp�,lstm_146/lstm_cell_146/MatMul/ReadVariableOp�.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp�lstm_146/whileV
lstm_144/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_144/Shape�
lstm_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_144/strided_slice/stack�
lstm_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_144/strided_slice/stack_1�
lstm_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_144/strided_slice/stack_2�
lstm_144/strided_sliceStridedSlicelstm_144/Shape:output:0%lstm_144/strided_slice/stack:output:0'lstm_144/strided_slice/stack_1:output:0'lstm_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_144/strided_slicen
lstm_144/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/zeros/mul/y�
lstm_144/zeros/mulMullstm_144/strided_slice:output:0lstm_144/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_144/zeros/mulq
lstm_144/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_144/zeros/Less/y�
lstm_144/zeros/LessLesslstm_144/zeros/mul:z:0lstm_144/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_144/zeros/Lesst
lstm_144/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/zeros/packed/1�
lstm_144/zeros/packedPacklstm_144/strided_slice:output:0 lstm_144/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_144/zeros/packedq
lstm_144/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_144/zeros/Const�
lstm_144/zerosFilllstm_144/zeros/packed:output:0lstm_144/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_144/zerosr
lstm_144/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/zeros_1/mul/y�
lstm_144/zeros_1/mulMullstm_144/strided_slice:output:0lstm_144/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_144/zeros_1/mulu
lstm_144/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_144/zeros_1/Less/y�
lstm_144/zeros_1/LessLesslstm_144/zeros_1/mul:z:0 lstm_144/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_144/zeros_1/Lessx
lstm_144/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/zeros_1/packed/1�
lstm_144/zeros_1/packedPacklstm_144/strided_slice:output:0"lstm_144/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_144/zeros_1/packedu
lstm_144/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_144/zeros_1/Const�
lstm_144/zeros_1Fill lstm_144/zeros_1/packed:output:0lstm_144/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_144/zeros_1�
lstm_144/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_144/transpose/perm�
lstm_144/transpose	Transposeinputs lstm_144/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_144/transposej
lstm_144/Shape_1Shapelstm_144/transpose:y:0*
T0*
_output_shapes
:2
lstm_144/Shape_1�
lstm_144/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_144/strided_slice_1/stack�
 lstm_144/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_1/stack_1�
 lstm_144/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_1/stack_2�
lstm_144/strided_slice_1StridedSlicelstm_144/Shape_1:output:0'lstm_144/strided_slice_1/stack:output:0)lstm_144/strided_slice_1/stack_1:output:0)lstm_144/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_144/strided_slice_1�
$lstm_144/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_144/TensorArrayV2/element_shape�
lstm_144/TensorArrayV2TensorListReserve-lstm_144/TensorArrayV2/element_shape:output:0!lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_144/TensorArrayV2�
>lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_144/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_144/transpose:y:0Glstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_144/TensorArrayUnstack/TensorListFromTensor�
lstm_144/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_144/strided_slice_2/stack�
 lstm_144/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_2/stack_1�
 lstm_144/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_2/stack_2�
lstm_144/strided_slice_2StridedSlicelstm_144/transpose:y:0'lstm_144/strided_slice_2/stack:output:0)lstm_144/strided_slice_2/stack_1:output:0)lstm_144/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_144/strided_slice_2�
,lstm_144/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp5lstm_144_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_144/lstm_cell_144/MatMul/ReadVariableOp�
lstm_144/lstm_cell_144/MatMulMatMul!lstm_144/strided_slice_2:output:04lstm_144/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_144/lstm_cell_144/MatMul�
.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp7lstm_144_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp�
lstm_144/lstm_cell_144/MatMul_1MatMullstm_144/zeros:output:06lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
lstm_144/lstm_cell_144/MatMul_1�
lstm_144/lstm_cell_144/addAddV2'lstm_144/lstm_cell_144/MatMul:product:0)lstm_144/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_144/lstm_cell_144/add�
-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp6lstm_144_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp�
lstm_144/lstm_cell_144/BiasAddBiasAddlstm_144/lstm_cell_144/add:z:05lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
lstm_144/lstm_cell_144/BiasAdd�
&lstm_144/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_144/lstm_cell_144/split/split_dim�
lstm_144/lstm_cell_144/splitSplit/lstm_144/lstm_cell_144/split/split_dim:output:0'lstm_144/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_144/lstm_cell_144/split�
lstm_144/lstm_cell_144/SigmoidSigmoid%lstm_144/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2 
lstm_144/lstm_cell_144/Sigmoid�
 lstm_144/lstm_cell_144/Sigmoid_1Sigmoid%lstm_144/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2"
 lstm_144/lstm_cell_144/Sigmoid_1�
lstm_144/lstm_cell_144/mulMul$lstm_144/lstm_cell_144/Sigmoid_1:y:0lstm_144/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/mul�
lstm_144/lstm_cell_144/ReluRelu%lstm_144/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/Relu�
lstm_144/lstm_cell_144/mul_1Mul"lstm_144/lstm_cell_144/Sigmoid:y:0)lstm_144/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/mul_1�
lstm_144/lstm_cell_144/add_1AddV2lstm_144/lstm_cell_144/mul:z:0 lstm_144/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/add_1�
 lstm_144/lstm_cell_144/Sigmoid_2Sigmoid%lstm_144/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2"
 lstm_144/lstm_cell_144/Sigmoid_2�
lstm_144/lstm_cell_144/Relu_1Relu lstm_144/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/Relu_1�
lstm_144/lstm_cell_144/mul_2Mul$lstm_144/lstm_cell_144/Sigmoid_2:y:0+lstm_144/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/mul_2�
&lstm_144/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2(
&lstm_144/TensorArrayV2_1/element_shape�
lstm_144/TensorArrayV2_1TensorListReserve/lstm_144/TensorArrayV2_1/element_shape:output:0!lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_144/TensorArrayV2_1`
lstm_144/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_144/time�
!lstm_144/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_144/while/maximum_iterations|
lstm_144/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_144/while/loop_counter�
lstm_144/whileWhile$lstm_144/while/loop_counter:output:0*lstm_144/while/maximum_iterations:output:0lstm_144/time:output:0!lstm_144/TensorArrayV2_1:handle:0lstm_144/zeros:output:0lstm_144/zeros_1:output:0!lstm_144/strided_slice_1:output:0@lstm_144/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_144_lstm_cell_144_matmul_readvariableop_resource7lstm_144_lstm_cell_144_matmul_1_readvariableop_resource6lstm_144_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_144_while_body_2137690*'
condR
lstm_144_while_cond_2137689*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_144/while�
9lstm_144/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9lstm_144/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_144/TensorArrayV2Stack/TensorListStackTensorListStacklstm_144/while:output:3Blstm_144/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02-
+lstm_144/TensorArrayV2Stack/TensorListStack�
lstm_144/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_144/strided_slice_3/stack�
 lstm_144/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_144/strided_slice_3/stack_1�
 lstm_144/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_3/stack_2�
lstm_144/strided_slice_3StridedSlice4lstm_144/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_144/strided_slice_3/stack:output:0)lstm_144/strided_slice_3/stack_1:output:0)lstm_144/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_144/strided_slice_3�
lstm_144/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_144/transpose_1/perm�
lstm_144/transpose_1	Transpose4lstm_144/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_144/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_144/transpose_1x
lstm_144/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_144/runtime�
dropout_216/IdentityIdentitylstm_144/transpose_1:y:0*
T0*+
_output_shapes
:���������2
dropout_216/Identitym
lstm_145/ShapeShapedropout_216/Identity:output:0*
T0*
_output_shapes
:2
lstm_145/Shape�
lstm_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_145/strided_slice/stack�
lstm_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_145/strided_slice/stack_1�
lstm_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_145/strided_slice/stack_2�
lstm_145/strided_sliceStridedSlicelstm_145/Shape:output:0%lstm_145/strided_slice/stack:output:0'lstm_145/strided_slice/stack_1:output:0'lstm_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_145/strided_slicen
lstm_145/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/zeros/mul/y�
lstm_145/zeros/mulMullstm_145/strided_slice:output:0lstm_145/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_145/zeros/mulq
lstm_145/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_145/zeros/Less/y�
lstm_145/zeros/LessLesslstm_145/zeros/mul:z:0lstm_145/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_145/zeros/Lesst
lstm_145/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/zeros/packed/1�
lstm_145/zeros/packedPacklstm_145/strided_slice:output:0 lstm_145/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_145/zeros/packedq
lstm_145/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_145/zeros/Const�
lstm_145/zerosFilllstm_145/zeros/packed:output:0lstm_145/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_145/zerosr
lstm_145/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/zeros_1/mul/y�
lstm_145/zeros_1/mulMullstm_145/strided_slice:output:0lstm_145/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_145/zeros_1/mulu
lstm_145/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_145/zeros_1/Less/y�
lstm_145/zeros_1/LessLesslstm_145/zeros_1/mul:z:0 lstm_145/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_145/zeros_1/Lessx
lstm_145/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/zeros_1/packed/1�
lstm_145/zeros_1/packedPacklstm_145/strided_slice:output:0"lstm_145/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_145/zeros_1/packedu
lstm_145/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_145/zeros_1/Const�
lstm_145/zeros_1Fill lstm_145/zeros_1/packed:output:0lstm_145/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_145/zeros_1�
lstm_145/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_145/transpose/perm�
lstm_145/transpose	Transposedropout_216/Identity:output:0 lstm_145/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_145/transposej
lstm_145/Shape_1Shapelstm_145/transpose:y:0*
T0*
_output_shapes
:2
lstm_145/Shape_1�
lstm_145/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_145/strided_slice_1/stack�
 lstm_145/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_1/stack_1�
 lstm_145/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_1/stack_2�
lstm_145/strided_slice_1StridedSlicelstm_145/Shape_1:output:0'lstm_145/strided_slice_1/stack:output:0)lstm_145/strided_slice_1/stack_1:output:0)lstm_145/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_145/strided_slice_1�
$lstm_145/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_145/TensorArrayV2/element_shape�
lstm_145/TensorArrayV2TensorListReserve-lstm_145/TensorArrayV2/element_shape:output:0!lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_145/TensorArrayV2�
>lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_145/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_145/transpose:y:0Glstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_145/TensorArrayUnstack/TensorListFromTensor�
lstm_145/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_145/strided_slice_2/stack�
 lstm_145/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_2/stack_1�
 lstm_145/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_2/stack_2�
lstm_145/strided_slice_2StridedSlicelstm_145/transpose:y:0'lstm_145/strided_slice_2/stack:output:0)lstm_145/strided_slice_2/stack_1:output:0)lstm_145/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_145/strided_slice_2�
,lstm_145/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp5lstm_145_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_145/lstm_cell_145/MatMul/ReadVariableOp�
lstm_145/lstm_cell_145/MatMulMatMul!lstm_145/strided_slice_2:output:04lstm_145/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_145/lstm_cell_145/MatMul�
.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp7lstm_145_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp�
lstm_145/lstm_cell_145/MatMul_1MatMullstm_145/zeros:output:06lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
lstm_145/lstm_cell_145/MatMul_1�
lstm_145/lstm_cell_145/addAddV2'lstm_145/lstm_cell_145/MatMul:product:0)lstm_145/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_145/lstm_cell_145/add�
-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp6lstm_145_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp�
lstm_145/lstm_cell_145/BiasAddBiasAddlstm_145/lstm_cell_145/add:z:05lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
lstm_145/lstm_cell_145/BiasAdd�
&lstm_145/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_145/lstm_cell_145/split/split_dim�
lstm_145/lstm_cell_145/splitSplit/lstm_145/lstm_cell_145/split/split_dim:output:0'lstm_145/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_145/lstm_cell_145/split�
lstm_145/lstm_cell_145/SigmoidSigmoid%lstm_145/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2 
lstm_145/lstm_cell_145/Sigmoid�
 lstm_145/lstm_cell_145/Sigmoid_1Sigmoid%lstm_145/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2"
 lstm_145/lstm_cell_145/Sigmoid_1�
lstm_145/lstm_cell_145/mulMul$lstm_145/lstm_cell_145/Sigmoid_1:y:0lstm_145/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/mul�
lstm_145/lstm_cell_145/ReluRelu%lstm_145/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/Relu�
lstm_145/lstm_cell_145/mul_1Mul"lstm_145/lstm_cell_145/Sigmoid:y:0)lstm_145/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/mul_1�
lstm_145/lstm_cell_145/add_1AddV2lstm_145/lstm_cell_145/mul:z:0 lstm_145/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/add_1�
 lstm_145/lstm_cell_145/Sigmoid_2Sigmoid%lstm_145/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2"
 lstm_145/lstm_cell_145/Sigmoid_2�
lstm_145/lstm_cell_145/Relu_1Relu lstm_145/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/Relu_1�
lstm_145/lstm_cell_145/mul_2Mul$lstm_145/lstm_cell_145/Sigmoid_2:y:0+lstm_145/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/mul_2�
&lstm_145/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2(
&lstm_145/TensorArrayV2_1/element_shape�
lstm_145/TensorArrayV2_1TensorListReserve/lstm_145/TensorArrayV2_1/element_shape:output:0!lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_145/TensorArrayV2_1`
lstm_145/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_145/time�
!lstm_145/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_145/while/maximum_iterations|
lstm_145/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_145/while/loop_counter�
lstm_145/whileWhile$lstm_145/while/loop_counter:output:0*lstm_145/while/maximum_iterations:output:0lstm_145/time:output:0!lstm_145/TensorArrayV2_1:handle:0lstm_145/zeros:output:0lstm_145/zeros_1:output:0!lstm_145/strided_slice_1:output:0@lstm_145/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_145_lstm_cell_145_matmul_readvariableop_resource7lstm_145_lstm_cell_145_matmul_1_readvariableop_resource6lstm_145_lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_145_while_body_2137838*'
condR
lstm_145_while_cond_2137837*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_145/while�
9lstm_145/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9lstm_145/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_145/TensorArrayV2Stack/TensorListStackTensorListStacklstm_145/while:output:3Blstm_145/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02-
+lstm_145/TensorArrayV2Stack/TensorListStack�
lstm_145/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_145/strided_slice_3/stack�
 lstm_145/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_145/strided_slice_3/stack_1�
 lstm_145/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_3/stack_2�
lstm_145/strided_slice_3StridedSlice4lstm_145/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_145/strided_slice_3/stack:output:0)lstm_145/strided_slice_3/stack_1:output:0)lstm_145/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_145/strided_slice_3�
lstm_145/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_145/transpose_1/perm�
lstm_145/transpose_1	Transpose4lstm_145/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_145/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_145/transpose_1x
lstm_145/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_145/runtime�
dropout_217/IdentityIdentitylstm_145/transpose_1:y:0*
T0*+
_output_shapes
:���������2
dropout_217/Identitym
lstm_146/ShapeShapedropout_217/Identity:output:0*
T0*
_output_shapes
:2
lstm_146/Shape�
lstm_146/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_146/strided_slice/stack�
lstm_146/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_146/strided_slice/stack_1�
lstm_146/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_146/strided_slice/stack_2�
lstm_146/strided_sliceStridedSlicelstm_146/Shape:output:0%lstm_146/strided_slice/stack:output:0'lstm_146/strided_slice/stack_1:output:0'lstm_146/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_146/strided_slicen
lstm_146/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/zeros/mul/y�
lstm_146/zeros/mulMullstm_146/strided_slice:output:0lstm_146/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_146/zeros/mulq
lstm_146/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_146/zeros/Less/y�
lstm_146/zeros/LessLesslstm_146/zeros/mul:z:0lstm_146/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_146/zeros/Lesst
lstm_146/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/zeros/packed/1�
lstm_146/zeros/packedPacklstm_146/strided_slice:output:0 lstm_146/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_146/zeros/packedq
lstm_146/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_146/zeros/Const�
lstm_146/zerosFilllstm_146/zeros/packed:output:0lstm_146/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_146/zerosr
lstm_146/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/zeros_1/mul/y�
lstm_146/zeros_1/mulMullstm_146/strided_slice:output:0lstm_146/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_146/zeros_1/mulu
lstm_146/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_146/zeros_1/Less/y�
lstm_146/zeros_1/LessLesslstm_146/zeros_1/mul:z:0 lstm_146/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_146/zeros_1/Lessx
lstm_146/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/zeros_1/packed/1�
lstm_146/zeros_1/packedPacklstm_146/strided_slice:output:0"lstm_146/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_146/zeros_1/packedu
lstm_146/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_146/zeros_1/Const�
lstm_146/zeros_1Fill lstm_146/zeros_1/packed:output:0lstm_146/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_146/zeros_1�
lstm_146/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_146/transpose/perm�
lstm_146/transpose	Transposedropout_217/Identity:output:0 lstm_146/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_146/transposej
lstm_146/Shape_1Shapelstm_146/transpose:y:0*
T0*
_output_shapes
:2
lstm_146/Shape_1�
lstm_146/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_146/strided_slice_1/stack�
 lstm_146/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_1/stack_1�
 lstm_146/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_1/stack_2�
lstm_146/strided_slice_1StridedSlicelstm_146/Shape_1:output:0'lstm_146/strided_slice_1/stack:output:0)lstm_146/strided_slice_1/stack_1:output:0)lstm_146/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_146/strided_slice_1�
$lstm_146/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_146/TensorArrayV2/element_shape�
lstm_146/TensorArrayV2TensorListReserve-lstm_146/TensorArrayV2/element_shape:output:0!lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_146/TensorArrayV2�
>lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_146/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_146/transpose:y:0Glstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_146/TensorArrayUnstack/TensorListFromTensor�
lstm_146/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_146/strided_slice_2/stack�
 lstm_146/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_2/stack_1�
 lstm_146/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_2/stack_2�
lstm_146/strided_slice_2StridedSlicelstm_146/transpose:y:0'lstm_146/strided_slice_2/stack:output:0)lstm_146/strided_slice_2/stack_1:output:0)lstm_146/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_146/strided_slice_2�
,lstm_146/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp5lstm_146_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_146/lstm_cell_146/MatMul/ReadVariableOp�
lstm_146/lstm_cell_146/MatMulMatMul!lstm_146/strided_slice_2:output:04lstm_146/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_146/lstm_cell_146/MatMul�
.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp7lstm_146_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp�
lstm_146/lstm_cell_146/MatMul_1MatMullstm_146/zeros:output:06lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
lstm_146/lstm_cell_146/MatMul_1�
lstm_146/lstm_cell_146/addAddV2'lstm_146/lstm_cell_146/MatMul:product:0)lstm_146/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_146/lstm_cell_146/add�
-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp6lstm_146_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp�
lstm_146/lstm_cell_146/BiasAddBiasAddlstm_146/lstm_cell_146/add:z:05lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
lstm_146/lstm_cell_146/BiasAdd�
&lstm_146/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_146/lstm_cell_146/split/split_dim�
lstm_146/lstm_cell_146/splitSplit/lstm_146/lstm_cell_146/split/split_dim:output:0'lstm_146/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_146/lstm_cell_146/split�
lstm_146/lstm_cell_146/SigmoidSigmoid%lstm_146/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2 
lstm_146/lstm_cell_146/Sigmoid�
 lstm_146/lstm_cell_146/Sigmoid_1Sigmoid%lstm_146/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2"
 lstm_146/lstm_cell_146/Sigmoid_1�
lstm_146/lstm_cell_146/mulMul$lstm_146/lstm_cell_146/Sigmoid_1:y:0lstm_146/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/mul�
lstm_146/lstm_cell_146/ReluRelu%lstm_146/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/Relu�
lstm_146/lstm_cell_146/mul_1Mul"lstm_146/lstm_cell_146/Sigmoid:y:0)lstm_146/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/mul_1�
lstm_146/lstm_cell_146/add_1AddV2lstm_146/lstm_cell_146/mul:z:0 lstm_146/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/add_1�
 lstm_146/lstm_cell_146/Sigmoid_2Sigmoid%lstm_146/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2"
 lstm_146/lstm_cell_146/Sigmoid_2�
lstm_146/lstm_cell_146/Relu_1Relu lstm_146/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/Relu_1�
lstm_146/lstm_cell_146/mul_2Mul$lstm_146/lstm_cell_146/Sigmoid_2:y:0+lstm_146/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/mul_2�
&lstm_146/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2(
&lstm_146/TensorArrayV2_1/element_shape�
lstm_146/TensorArrayV2_1TensorListReserve/lstm_146/TensorArrayV2_1/element_shape:output:0!lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_146/TensorArrayV2_1`
lstm_146/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_146/time�
!lstm_146/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_146/while/maximum_iterations|
lstm_146/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_146/while/loop_counter�
lstm_146/whileWhile$lstm_146/while/loop_counter:output:0*lstm_146/while/maximum_iterations:output:0lstm_146/time:output:0!lstm_146/TensorArrayV2_1:handle:0lstm_146/zeros:output:0lstm_146/zeros_1:output:0!lstm_146/strided_slice_1:output:0@lstm_146/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_146_lstm_cell_146_matmul_readvariableop_resource7lstm_146_lstm_cell_146_matmul_1_readvariableop_resource6lstm_146_lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_146_while_body_2137986*'
condR
lstm_146_while_cond_2137985*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_146/while�
9lstm_146/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9lstm_146/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_146/TensorArrayV2Stack/TensorListStackTensorListStacklstm_146/while:output:3Blstm_146/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02-
+lstm_146/TensorArrayV2Stack/TensorListStack�
lstm_146/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_146/strided_slice_3/stack�
 lstm_146/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_146/strided_slice_3/stack_1�
 lstm_146/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_3/stack_2�
lstm_146/strided_slice_3StridedSlice4lstm_146/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_146/strided_slice_3/stack:output:0)lstm_146/strided_slice_3/stack_1:output:0)lstm_146/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_146/strided_slice_3�
lstm_146/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_146/transpose_1/perm�
lstm_146/transpose_1	Transpose4lstm_146/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_146/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_146/transpose_1x
lstm_146/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_146/runtime�
dropout_218/IdentityIdentity!lstm_146/strided_slice_3:output:0*
T0*'
_output_shapes
:���������2
dropout_218/Identity�
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_108/MatMul/ReadVariableOp�
dense_108/MatMulMatMuldropout_218/Identity:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_108/MatMul�
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_108/BiasAdd/ReadVariableOp�
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_108/BiasAddv
dense_108/ReluReludense_108/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_108/Relu�
dropout_219/IdentityIdentitydense_108/Relu:activations:0*
T0*'
_output_shapes
:���������2
dropout_219/Identity�
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_109/MatMul/ReadVariableOp�
dense_109/MatMulMatMuldropout_219/Identity:output:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_109/MatMul�
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_109/BiasAdd/ReadVariableOp�
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_109/BiasAddu
IdentityIdentitydense_109/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp.^lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp-^lstm_144/lstm_cell_144/MatMul/ReadVariableOp/^lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp^lstm_144/while.^lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp-^lstm_145/lstm_cell_145/MatMul/ReadVariableOp/^lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp^lstm_145/while.^lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp-^lstm_146/lstm_cell_146/MatMul/ReadVariableOp/^lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp^lstm_146/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2^
-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp2\
,lstm_144/lstm_cell_144/MatMul/ReadVariableOp,lstm_144/lstm_cell_144/MatMul/ReadVariableOp2`
.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp2 
lstm_144/whilelstm_144/while2^
-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp2\
,lstm_145/lstm_cell_145/MatMul/ReadVariableOp,lstm_145/lstm_cell_145/MatMul/ReadVariableOp2`
.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp2 
lstm_145/whilelstm_145/while2^
-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp2\
,lstm_146/lstm_cell_146/MatMul/ReadVariableOp,lstm_146/lstm_cell_146/MatMul/ReadVariableOp2`
.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp2 
lstm_146/whilelstm_146/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2136346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136346___redundant_placeholder05
1while_while_cond_2136346___redundant_placeholder15
1while_while_cond_2136346___redundant_placeholder25
1while_while_cond_2136346___redundant_placeholder3
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
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2140732

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
�

�
lstm_146_while_cond_2137985.
*lstm_146_while_lstm_146_while_loop_counter4
0lstm_146_while_lstm_146_while_maximum_iterations
lstm_146_while_placeholder 
lstm_146_while_placeholder_1 
lstm_146_while_placeholder_2 
lstm_146_while_placeholder_30
,lstm_146_while_less_lstm_146_strided_slice_1G
Clstm_146_while_lstm_146_while_cond_2137985___redundant_placeholder0G
Clstm_146_while_lstm_146_while_cond_2137985___redundant_placeholder1G
Clstm_146_while_lstm_146_while_cond_2137985___redundant_placeholder2G
Clstm_146_while_lstm_146_while_cond_2137985___redundant_placeholder3
lstm_146_while_identity
�
lstm_146/while/LessLesslstm_146_while_placeholder,lstm_146_while_less_lstm_146_strided_slice_1*
T0*
_output_shapes
: 2
lstm_146/while/Lessx
lstm_146/while/IdentityIdentitylstm_146/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_146/while/Identity";
lstm_146_while_identity lstm_146/while/Identity:output:0*(
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
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2140830

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
�
f
H__inference_dropout_219_layer_call_and_return_conditional_losses_2140635

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
*__inference_lstm_145_layer_call_fn_2139294

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
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_21371072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2134517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2134517___redundant_placeholder05
1while_while_cond_2134517___redundant_placeholder15
1while_while_cond_2134517___redundant_placeholder25
1while_while_cond_2134517___redundant_placeholder3
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
/__inference_lstm_cell_144_layer_call_fn_2140700

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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_21344402
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
�
�
/__inference_lstm_cell_144_layer_call_fn_2140683

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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_21342942
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
�

�
lstm_144_while_cond_2138151.
*lstm_144_while_lstm_144_while_loop_counter4
0lstm_144_while_lstm_144_while_maximum_iterations
lstm_144_while_placeholder 
lstm_144_while_placeholder_1 
lstm_144_while_placeholder_2 
lstm_144_while_placeholder_30
,lstm_144_while_less_lstm_144_strided_slice_1G
Clstm_144_while_lstm_144_while_cond_2138151___redundant_placeholder0G
Clstm_144_while_lstm_144_while_cond_2138151___redundant_placeholder1G
Clstm_144_while_lstm_144_while_cond_2138151___redundant_placeholder2G
Clstm_144_while_lstm_144_while_cond_2138151___redundant_placeholder3
lstm_144_while_identity
�
lstm_144/while/LessLesslstm_144_while_placeholder,lstm_144_while_less_lstm_144_strided_slice_1*
T0*
_output_shapes
: 2
lstm_144/while/Lessx
lstm_144/while/IdentityIdentitylstm_144/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_144/while/Identity";
lstm_144_while_identity lstm_144/while/Identity:output:0*(
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
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2135700

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

�
F__inference_dense_109_layer_call_and_return_conditional_losses_2136645

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
�
�
"__inference__wrapped_model_2134219
lstm_144_inputU
Csequential_36_lstm_144_lstm_cell_144_matmul_readvariableop_resource:@W
Esequential_36_lstm_144_lstm_cell_144_matmul_1_readvariableop_resource:@R
Dsequential_36_lstm_144_lstm_cell_144_biasadd_readvariableop_resource:@U
Csequential_36_lstm_145_lstm_cell_145_matmul_readvariableop_resource:@W
Esequential_36_lstm_145_lstm_cell_145_matmul_1_readvariableop_resource:@R
Dsequential_36_lstm_145_lstm_cell_145_biasadd_readvariableop_resource:@U
Csequential_36_lstm_146_lstm_cell_146_matmul_readvariableop_resource:@W
Esequential_36_lstm_146_lstm_cell_146_matmul_1_readvariableop_resource:@R
Dsequential_36_lstm_146_lstm_cell_146_biasadd_readvariableop_resource:@H
6sequential_36_dense_108_matmul_readvariableop_resource:E
7sequential_36_dense_108_biasadd_readvariableop_resource:H
6sequential_36_dense_109_matmul_readvariableop_resource:E
7sequential_36_dense_109_biasadd_readvariableop_resource:
identity��.sequential_36/dense_108/BiasAdd/ReadVariableOp�-sequential_36/dense_108/MatMul/ReadVariableOp�.sequential_36/dense_109/BiasAdd/ReadVariableOp�-sequential_36/dense_109/MatMul/ReadVariableOp�;sequential_36/lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp�:sequential_36/lstm_144/lstm_cell_144/MatMul/ReadVariableOp�<sequential_36/lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp�sequential_36/lstm_144/while�;sequential_36/lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp�:sequential_36/lstm_145/lstm_cell_145/MatMul/ReadVariableOp�<sequential_36/lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp�sequential_36/lstm_145/while�;sequential_36/lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp�:sequential_36/lstm_146/lstm_cell_146/MatMul/ReadVariableOp�<sequential_36/lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp�sequential_36/lstm_146/whilez
sequential_36/lstm_144/ShapeShapelstm_144_input*
T0*
_output_shapes
:2
sequential_36/lstm_144/Shape�
*sequential_36/lstm_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_36/lstm_144/strided_slice/stack�
,sequential_36/lstm_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_36/lstm_144/strided_slice/stack_1�
,sequential_36/lstm_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_36/lstm_144/strided_slice/stack_2�
$sequential_36/lstm_144/strided_sliceStridedSlice%sequential_36/lstm_144/Shape:output:03sequential_36/lstm_144/strided_slice/stack:output:05sequential_36/lstm_144/strided_slice/stack_1:output:05sequential_36/lstm_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_36/lstm_144/strided_slice�
"sequential_36/lstm_144/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_36/lstm_144/zeros/mul/y�
 sequential_36/lstm_144/zeros/mulMul-sequential_36/lstm_144/strided_slice:output:0+sequential_36/lstm_144/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_36/lstm_144/zeros/mul�
#sequential_36/lstm_144/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2%
#sequential_36/lstm_144/zeros/Less/y�
!sequential_36/lstm_144/zeros/LessLess$sequential_36/lstm_144/zeros/mul:z:0,sequential_36/lstm_144/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_36/lstm_144/zeros/Less�
%sequential_36/lstm_144/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_36/lstm_144/zeros/packed/1�
#sequential_36/lstm_144/zeros/packedPack-sequential_36/lstm_144/strided_slice:output:0.sequential_36/lstm_144/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_36/lstm_144/zeros/packed�
"sequential_36/lstm_144/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_36/lstm_144/zeros/Const�
sequential_36/lstm_144/zerosFill,sequential_36/lstm_144/zeros/packed:output:0+sequential_36/lstm_144/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_36/lstm_144/zeros�
$sequential_36/lstm_144/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_36/lstm_144/zeros_1/mul/y�
"sequential_36/lstm_144/zeros_1/mulMul-sequential_36/lstm_144/strided_slice:output:0-sequential_36/lstm_144/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_36/lstm_144/zeros_1/mul�
%sequential_36/lstm_144/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2'
%sequential_36/lstm_144/zeros_1/Less/y�
#sequential_36/lstm_144/zeros_1/LessLess&sequential_36/lstm_144/zeros_1/mul:z:0.sequential_36/lstm_144/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_36/lstm_144/zeros_1/Less�
'sequential_36/lstm_144/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_36/lstm_144/zeros_1/packed/1�
%sequential_36/lstm_144/zeros_1/packedPack-sequential_36/lstm_144/strided_slice:output:00sequential_36/lstm_144/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_36/lstm_144/zeros_1/packed�
$sequential_36/lstm_144/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_36/lstm_144/zeros_1/Const�
sequential_36/lstm_144/zeros_1Fill.sequential_36/lstm_144/zeros_1/packed:output:0-sequential_36/lstm_144/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2 
sequential_36/lstm_144/zeros_1�
%sequential_36/lstm_144/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_36/lstm_144/transpose/perm�
 sequential_36/lstm_144/transpose	Transposelstm_144_input.sequential_36/lstm_144/transpose/perm:output:0*
T0*+
_output_shapes
:���������2"
 sequential_36/lstm_144/transpose�
sequential_36/lstm_144/Shape_1Shape$sequential_36/lstm_144/transpose:y:0*
T0*
_output_shapes
:2 
sequential_36/lstm_144/Shape_1�
,sequential_36/lstm_144/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_36/lstm_144/strided_slice_1/stack�
.sequential_36/lstm_144/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_144/strided_slice_1/stack_1�
.sequential_36/lstm_144/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_144/strided_slice_1/stack_2�
&sequential_36/lstm_144/strided_slice_1StridedSlice'sequential_36/lstm_144/Shape_1:output:05sequential_36/lstm_144/strided_slice_1/stack:output:07sequential_36/lstm_144/strided_slice_1/stack_1:output:07sequential_36/lstm_144/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_36/lstm_144/strided_slice_1�
2sequential_36/lstm_144/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������24
2sequential_36/lstm_144/TensorArrayV2/element_shape�
$sequential_36/lstm_144/TensorArrayV2TensorListReserve;sequential_36/lstm_144/TensorArrayV2/element_shape:output:0/sequential_36/lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_36/lstm_144/TensorArrayV2�
Lsequential_36/lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2N
Lsequential_36/lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape�
>sequential_36/lstm_144/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_36/lstm_144/transpose:y:0Usequential_36/lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_36/lstm_144/TensorArrayUnstack/TensorListFromTensor�
,sequential_36/lstm_144/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_36/lstm_144/strided_slice_2/stack�
.sequential_36/lstm_144/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_144/strided_slice_2/stack_1�
.sequential_36/lstm_144/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_144/strided_slice_2/stack_2�
&sequential_36/lstm_144/strided_slice_2StridedSlice$sequential_36/lstm_144/transpose:y:05sequential_36/lstm_144/strided_slice_2/stack:output:07sequential_36/lstm_144/strided_slice_2/stack_1:output:07sequential_36/lstm_144/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2(
&sequential_36/lstm_144/strided_slice_2�
:sequential_36/lstm_144/lstm_cell_144/MatMul/ReadVariableOpReadVariableOpCsequential_36_lstm_144_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_36/lstm_144/lstm_cell_144/MatMul/ReadVariableOp�
+sequential_36/lstm_144/lstm_cell_144/MatMulMatMul/sequential_36/lstm_144/strided_slice_2:output:0Bsequential_36/lstm_144/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2-
+sequential_36/lstm_144/lstm_cell_144/MatMul�
<sequential_36/lstm_144/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOpEsequential_36_lstm_144_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02>
<sequential_36/lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp�
-sequential_36/lstm_144/lstm_cell_144/MatMul_1MatMul%sequential_36/lstm_144/zeros:output:0Dsequential_36/lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-sequential_36/lstm_144/lstm_cell_144/MatMul_1�
(sequential_36/lstm_144/lstm_cell_144/addAddV25sequential_36/lstm_144/lstm_cell_144/MatMul:product:07sequential_36/lstm_144/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2*
(sequential_36/lstm_144/lstm_cell_144/add�
;sequential_36/lstm_144/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOpDsequential_36_lstm_144_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential_36/lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp�
,sequential_36/lstm_144/lstm_cell_144/BiasAddBiasAdd,sequential_36/lstm_144/lstm_cell_144/add:z:0Csequential_36/lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,sequential_36/lstm_144/lstm_cell_144/BiasAdd�
4sequential_36/lstm_144/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_36/lstm_144/lstm_cell_144/split/split_dim�
*sequential_36/lstm_144/lstm_cell_144/splitSplit=sequential_36/lstm_144/lstm_cell_144/split/split_dim:output:05sequential_36/lstm_144/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2,
*sequential_36/lstm_144/lstm_cell_144/split�
,sequential_36/lstm_144/lstm_cell_144/SigmoidSigmoid3sequential_36/lstm_144/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2.
,sequential_36/lstm_144/lstm_cell_144/Sigmoid�
.sequential_36/lstm_144/lstm_cell_144/Sigmoid_1Sigmoid3sequential_36/lstm_144/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_144/lstm_cell_144/Sigmoid_1�
(sequential_36/lstm_144/lstm_cell_144/mulMul2sequential_36/lstm_144/lstm_cell_144/Sigmoid_1:y:0'sequential_36/lstm_144/zeros_1:output:0*
T0*'
_output_shapes
:���������2*
(sequential_36/lstm_144/lstm_cell_144/mul�
)sequential_36/lstm_144/lstm_cell_144/ReluRelu3sequential_36/lstm_144/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2+
)sequential_36/lstm_144/lstm_cell_144/Relu�
*sequential_36/lstm_144/lstm_cell_144/mul_1Mul0sequential_36/lstm_144/lstm_cell_144/Sigmoid:y:07sequential_36/lstm_144/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_144/lstm_cell_144/mul_1�
*sequential_36/lstm_144/lstm_cell_144/add_1AddV2,sequential_36/lstm_144/lstm_cell_144/mul:z:0.sequential_36/lstm_144/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_144/lstm_cell_144/add_1�
.sequential_36/lstm_144/lstm_cell_144/Sigmoid_2Sigmoid3sequential_36/lstm_144/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_144/lstm_cell_144/Sigmoid_2�
+sequential_36/lstm_144/lstm_cell_144/Relu_1Relu.sequential_36/lstm_144/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2-
+sequential_36/lstm_144/lstm_cell_144/Relu_1�
*sequential_36/lstm_144/lstm_cell_144/mul_2Mul2sequential_36/lstm_144/lstm_cell_144/Sigmoid_2:y:09sequential_36/lstm_144/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_144/lstm_cell_144/mul_2�
4sequential_36/lstm_144/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   26
4sequential_36/lstm_144/TensorArrayV2_1/element_shape�
&sequential_36/lstm_144/TensorArrayV2_1TensorListReserve=sequential_36/lstm_144/TensorArrayV2_1/element_shape:output:0/sequential_36/lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_36/lstm_144/TensorArrayV2_1|
sequential_36/lstm_144/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_36/lstm_144/time�
/sequential_36/lstm_144/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������21
/sequential_36/lstm_144/while/maximum_iterations�
)sequential_36/lstm_144/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_36/lstm_144/while/loop_counter�
sequential_36/lstm_144/whileWhile2sequential_36/lstm_144/while/loop_counter:output:08sequential_36/lstm_144/while/maximum_iterations:output:0$sequential_36/lstm_144/time:output:0/sequential_36/lstm_144/TensorArrayV2_1:handle:0%sequential_36/lstm_144/zeros:output:0'sequential_36/lstm_144/zeros_1:output:0/sequential_36/lstm_144/strided_slice_1:output:0Nsequential_36/lstm_144/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_36_lstm_144_lstm_cell_144_matmul_readvariableop_resourceEsequential_36_lstm_144_lstm_cell_144_matmul_1_readvariableop_resourceDsequential_36_lstm_144_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_36_lstm_144_while_body_2133824*5
cond-R+
)sequential_36_lstm_144_while_cond_2133823*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
sequential_36/lstm_144/while�
Gsequential_36/lstm_144/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2I
Gsequential_36/lstm_144/TensorArrayV2Stack/TensorListStack/element_shape�
9sequential_36/lstm_144/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_36/lstm_144/while:output:3Psequential_36/lstm_144/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02;
9sequential_36/lstm_144/TensorArrayV2Stack/TensorListStack�
,sequential_36/lstm_144/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2.
,sequential_36/lstm_144/strided_slice_3/stack�
.sequential_36/lstm_144/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_36/lstm_144/strided_slice_3/stack_1�
.sequential_36/lstm_144/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_144/strided_slice_3/stack_2�
&sequential_36/lstm_144/strided_slice_3StridedSliceBsequential_36/lstm_144/TensorArrayV2Stack/TensorListStack:tensor:05sequential_36/lstm_144/strided_slice_3/stack:output:07sequential_36/lstm_144/strided_slice_3/stack_1:output:07sequential_36/lstm_144/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2(
&sequential_36/lstm_144/strided_slice_3�
'sequential_36/lstm_144/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_36/lstm_144/transpose_1/perm�
"sequential_36/lstm_144/transpose_1	TransposeBsequential_36/lstm_144/TensorArrayV2Stack/TensorListStack:tensor:00sequential_36/lstm_144/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2$
"sequential_36/lstm_144/transpose_1�
sequential_36/lstm_144/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_36/lstm_144/runtime�
"sequential_36/dropout_216/IdentityIdentity&sequential_36/lstm_144/transpose_1:y:0*
T0*+
_output_shapes
:���������2$
"sequential_36/dropout_216/Identity�
sequential_36/lstm_145/ShapeShape+sequential_36/dropout_216/Identity:output:0*
T0*
_output_shapes
:2
sequential_36/lstm_145/Shape�
*sequential_36/lstm_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_36/lstm_145/strided_slice/stack�
,sequential_36/lstm_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_36/lstm_145/strided_slice/stack_1�
,sequential_36/lstm_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_36/lstm_145/strided_slice/stack_2�
$sequential_36/lstm_145/strided_sliceStridedSlice%sequential_36/lstm_145/Shape:output:03sequential_36/lstm_145/strided_slice/stack:output:05sequential_36/lstm_145/strided_slice/stack_1:output:05sequential_36/lstm_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_36/lstm_145/strided_slice�
"sequential_36/lstm_145/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_36/lstm_145/zeros/mul/y�
 sequential_36/lstm_145/zeros/mulMul-sequential_36/lstm_145/strided_slice:output:0+sequential_36/lstm_145/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_36/lstm_145/zeros/mul�
#sequential_36/lstm_145/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2%
#sequential_36/lstm_145/zeros/Less/y�
!sequential_36/lstm_145/zeros/LessLess$sequential_36/lstm_145/zeros/mul:z:0,sequential_36/lstm_145/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_36/lstm_145/zeros/Less�
%sequential_36/lstm_145/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_36/lstm_145/zeros/packed/1�
#sequential_36/lstm_145/zeros/packedPack-sequential_36/lstm_145/strided_slice:output:0.sequential_36/lstm_145/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_36/lstm_145/zeros/packed�
"sequential_36/lstm_145/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_36/lstm_145/zeros/Const�
sequential_36/lstm_145/zerosFill,sequential_36/lstm_145/zeros/packed:output:0+sequential_36/lstm_145/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_36/lstm_145/zeros�
$sequential_36/lstm_145/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_36/lstm_145/zeros_1/mul/y�
"sequential_36/lstm_145/zeros_1/mulMul-sequential_36/lstm_145/strided_slice:output:0-sequential_36/lstm_145/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_36/lstm_145/zeros_1/mul�
%sequential_36/lstm_145/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2'
%sequential_36/lstm_145/zeros_1/Less/y�
#sequential_36/lstm_145/zeros_1/LessLess&sequential_36/lstm_145/zeros_1/mul:z:0.sequential_36/lstm_145/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_36/lstm_145/zeros_1/Less�
'sequential_36/lstm_145/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_36/lstm_145/zeros_1/packed/1�
%sequential_36/lstm_145/zeros_1/packedPack-sequential_36/lstm_145/strided_slice:output:00sequential_36/lstm_145/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_36/lstm_145/zeros_1/packed�
$sequential_36/lstm_145/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_36/lstm_145/zeros_1/Const�
sequential_36/lstm_145/zeros_1Fill.sequential_36/lstm_145/zeros_1/packed:output:0-sequential_36/lstm_145/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2 
sequential_36/lstm_145/zeros_1�
%sequential_36/lstm_145/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_36/lstm_145/transpose/perm�
 sequential_36/lstm_145/transpose	Transpose+sequential_36/dropout_216/Identity:output:0.sequential_36/lstm_145/transpose/perm:output:0*
T0*+
_output_shapes
:���������2"
 sequential_36/lstm_145/transpose�
sequential_36/lstm_145/Shape_1Shape$sequential_36/lstm_145/transpose:y:0*
T0*
_output_shapes
:2 
sequential_36/lstm_145/Shape_1�
,sequential_36/lstm_145/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_36/lstm_145/strided_slice_1/stack�
.sequential_36/lstm_145/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_145/strided_slice_1/stack_1�
.sequential_36/lstm_145/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_145/strided_slice_1/stack_2�
&sequential_36/lstm_145/strided_slice_1StridedSlice'sequential_36/lstm_145/Shape_1:output:05sequential_36/lstm_145/strided_slice_1/stack:output:07sequential_36/lstm_145/strided_slice_1/stack_1:output:07sequential_36/lstm_145/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_36/lstm_145/strided_slice_1�
2sequential_36/lstm_145/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������24
2sequential_36/lstm_145/TensorArrayV2/element_shape�
$sequential_36/lstm_145/TensorArrayV2TensorListReserve;sequential_36/lstm_145/TensorArrayV2/element_shape:output:0/sequential_36/lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_36/lstm_145/TensorArrayV2�
Lsequential_36/lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2N
Lsequential_36/lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape�
>sequential_36/lstm_145/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_36/lstm_145/transpose:y:0Usequential_36/lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_36/lstm_145/TensorArrayUnstack/TensorListFromTensor�
,sequential_36/lstm_145/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_36/lstm_145/strided_slice_2/stack�
.sequential_36/lstm_145/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_145/strided_slice_2/stack_1�
.sequential_36/lstm_145/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_145/strided_slice_2/stack_2�
&sequential_36/lstm_145/strided_slice_2StridedSlice$sequential_36/lstm_145/transpose:y:05sequential_36/lstm_145/strided_slice_2/stack:output:07sequential_36/lstm_145/strided_slice_2/stack_1:output:07sequential_36/lstm_145/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2(
&sequential_36/lstm_145/strided_slice_2�
:sequential_36/lstm_145/lstm_cell_145/MatMul/ReadVariableOpReadVariableOpCsequential_36_lstm_145_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_36/lstm_145/lstm_cell_145/MatMul/ReadVariableOp�
+sequential_36/lstm_145/lstm_cell_145/MatMulMatMul/sequential_36/lstm_145/strided_slice_2:output:0Bsequential_36/lstm_145/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2-
+sequential_36/lstm_145/lstm_cell_145/MatMul�
<sequential_36/lstm_145/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOpEsequential_36_lstm_145_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02>
<sequential_36/lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp�
-sequential_36/lstm_145/lstm_cell_145/MatMul_1MatMul%sequential_36/lstm_145/zeros:output:0Dsequential_36/lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-sequential_36/lstm_145/lstm_cell_145/MatMul_1�
(sequential_36/lstm_145/lstm_cell_145/addAddV25sequential_36/lstm_145/lstm_cell_145/MatMul:product:07sequential_36/lstm_145/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2*
(sequential_36/lstm_145/lstm_cell_145/add�
;sequential_36/lstm_145/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOpDsequential_36_lstm_145_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential_36/lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp�
,sequential_36/lstm_145/lstm_cell_145/BiasAddBiasAdd,sequential_36/lstm_145/lstm_cell_145/add:z:0Csequential_36/lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,sequential_36/lstm_145/lstm_cell_145/BiasAdd�
4sequential_36/lstm_145/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_36/lstm_145/lstm_cell_145/split/split_dim�
*sequential_36/lstm_145/lstm_cell_145/splitSplit=sequential_36/lstm_145/lstm_cell_145/split/split_dim:output:05sequential_36/lstm_145/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2,
*sequential_36/lstm_145/lstm_cell_145/split�
,sequential_36/lstm_145/lstm_cell_145/SigmoidSigmoid3sequential_36/lstm_145/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2.
,sequential_36/lstm_145/lstm_cell_145/Sigmoid�
.sequential_36/lstm_145/lstm_cell_145/Sigmoid_1Sigmoid3sequential_36/lstm_145/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_145/lstm_cell_145/Sigmoid_1�
(sequential_36/lstm_145/lstm_cell_145/mulMul2sequential_36/lstm_145/lstm_cell_145/Sigmoid_1:y:0'sequential_36/lstm_145/zeros_1:output:0*
T0*'
_output_shapes
:���������2*
(sequential_36/lstm_145/lstm_cell_145/mul�
)sequential_36/lstm_145/lstm_cell_145/ReluRelu3sequential_36/lstm_145/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2+
)sequential_36/lstm_145/lstm_cell_145/Relu�
*sequential_36/lstm_145/lstm_cell_145/mul_1Mul0sequential_36/lstm_145/lstm_cell_145/Sigmoid:y:07sequential_36/lstm_145/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_145/lstm_cell_145/mul_1�
*sequential_36/lstm_145/lstm_cell_145/add_1AddV2,sequential_36/lstm_145/lstm_cell_145/mul:z:0.sequential_36/lstm_145/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_145/lstm_cell_145/add_1�
.sequential_36/lstm_145/lstm_cell_145/Sigmoid_2Sigmoid3sequential_36/lstm_145/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_145/lstm_cell_145/Sigmoid_2�
+sequential_36/lstm_145/lstm_cell_145/Relu_1Relu.sequential_36/lstm_145/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2-
+sequential_36/lstm_145/lstm_cell_145/Relu_1�
*sequential_36/lstm_145/lstm_cell_145/mul_2Mul2sequential_36/lstm_145/lstm_cell_145/Sigmoid_2:y:09sequential_36/lstm_145/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_145/lstm_cell_145/mul_2�
4sequential_36/lstm_145/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   26
4sequential_36/lstm_145/TensorArrayV2_1/element_shape�
&sequential_36/lstm_145/TensorArrayV2_1TensorListReserve=sequential_36/lstm_145/TensorArrayV2_1/element_shape:output:0/sequential_36/lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_36/lstm_145/TensorArrayV2_1|
sequential_36/lstm_145/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_36/lstm_145/time�
/sequential_36/lstm_145/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������21
/sequential_36/lstm_145/while/maximum_iterations�
)sequential_36/lstm_145/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_36/lstm_145/while/loop_counter�
sequential_36/lstm_145/whileWhile2sequential_36/lstm_145/while/loop_counter:output:08sequential_36/lstm_145/while/maximum_iterations:output:0$sequential_36/lstm_145/time:output:0/sequential_36/lstm_145/TensorArrayV2_1:handle:0%sequential_36/lstm_145/zeros:output:0'sequential_36/lstm_145/zeros_1:output:0/sequential_36/lstm_145/strided_slice_1:output:0Nsequential_36/lstm_145/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_36_lstm_145_lstm_cell_145_matmul_readvariableop_resourceEsequential_36_lstm_145_lstm_cell_145_matmul_1_readvariableop_resourceDsequential_36_lstm_145_lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_36_lstm_145_while_body_2133972*5
cond-R+
)sequential_36_lstm_145_while_cond_2133971*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
sequential_36/lstm_145/while�
Gsequential_36/lstm_145/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2I
Gsequential_36/lstm_145/TensorArrayV2Stack/TensorListStack/element_shape�
9sequential_36/lstm_145/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_36/lstm_145/while:output:3Psequential_36/lstm_145/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02;
9sequential_36/lstm_145/TensorArrayV2Stack/TensorListStack�
,sequential_36/lstm_145/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2.
,sequential_36/lstm_145/strided_slice_3/stack�
.sequential_36/lstm_145/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_36/lstm_145/strided_slice_3/stack_1�
.sequential_36/lstm_145/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_145/strided_slice_3/stack_2�
&sequential_36/lstm_145/strided_slice_3StridedSliceBsequential_36/lstm_145/TensorArrayV2Stack/TensorListStack:tensor:05sequential_36/lstm_145/strided_slice_3/stack:output:07sequential_36/lstm_145/strided_slice_3/stack_1:output:07sequential_36/lstm_145/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2(
&sequential_36/lstm_145/strided_slice_3�
'sequential_36/lstm_145/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_36/lstm_145/transpose_1/perm�
"sequential_36/lstm_145/transpose_1	TransposeBsequential_36/lstm_145/TensorArrayV2Stack/TensorListStack:tensor:00sequential_36/lstm_145/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2$
"sequential_36/lstm_145/transpose_1�
sequential_36/lstm_145/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_36/lstm_145/runtime�
"sequential_36/dropout_217/IdentityIdentity&sequential_36/lstm_145/transpose_1:y:0*
T0*+
_output_shapes
:���������2$
"sequential_36/dropout_217/Identity�
sequential_36/lstm_146/ShapeShape+sequential_36/dropout_217/Identity:output:0*
T0*
_output_shapes
:2
sequential_36/lstm_146/Shape�
*sequential_36/lstm_146/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_36/lstm_146/strided_slice/stack�
,sequential_36/lstm_146/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_36/lstm_146/strided_slice/stack_1�
,sequential_36/lstm_146/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_36/lstm_146/strided_slice/stack_2�
$sequential_36/lstm_146/strided_sliceStridedSlice%sequential_36/lstm_146/Shape:output:03sequential_36/lstm_146/strided_slice/stack:output:05sequential_36/lstm_146/strided_slice/stack_1:output:05sequential_36/lstm_146/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_36/lstm_146/strided_slice�
"sequential_36/lstm_146/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_36/lstm_146/zeros/mul/y�
 sequential_36/lstm_146/zeros/mulMul-sequential_36/lstm_146/strided_slice:output:0+sequential_36/lstm_146/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_36/lstm_146/zeros/mul�
#sequential_36/lstm_146/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2%
#sequential_36/lstm_146/zeros/Less/y�
!sequential_36/lstm_146/zeros/LessLess$sequential_36/lstm_146/zeros/mul:z:0,sequential_36/lstm_146/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_36/lstm_146/zeros/Less�
%sequential_36/lstm_146/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_36/lstm_146/zeros/packed/1�
#sequential_36/lstm_146/zeros/packedPack-sequential_36/lstm_146/strided_slice:output:0.sequential_36/lstm_146/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_36/lstm_146/zeros/packed�
"sequential_36/lstm_146/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_36/lstm_146/zeros/Const�
sequential_36/lstm_146/zerosFill,sequential_36/lstm_146/zeros/packed:output:0+sequential_36/lstm_146/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
sequential_36/lstm_146/zeros�
$sequential_36/lstm_146/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_36/lstm_146/zeros_1/mul/y�
"sequential_36/lstm_146/zeros_1/mulMul-sequential_36/lstm_146/strided_slice:output:0-sequential_36/lstm_146/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_36/lstm_146/zeros_1/mul�
%sequential_36/lstm_146/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2'
%sequential_36/lstm_146/zeros_1/Less/y�
#sequential_36/lstm_146/zeros_1/LessLess&sequential_36/lstm_146/zeros_1/mul:z:0.sequential_36/lstm_146/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_36/lstm_146/zeros_1/Less�
'sequential_36/lstm_146/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_36/lstm_146/zeros_1/packed/1�
%sequential_36/lstm_146/zeros_1/packedPack-sequential_36/lstm_146/strided_slice:output:00sequential_36/lstm_146/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_36/lstm_146/zeros_1/packed�
$sequential_36/lstm_146/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_36/lstm_146/zeros_1/Const�
sequential_36/lstm_146/zeros_1Fill.sequential_36/lstm_146/zeros_1/packed:output:0-sequential_36/lstm_146/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2 
sequential_36/lstm_146/zeros_1�
%sequential_36/lstm_146/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_36/lstm_146/transpose/perm�
 sequential_36/lstm_146/transpose	Transpose+sequential_36/dropout_217/Identity:output:0.sequential_36/lstm_146/transpose/perm:output:0*
T0*+
_output_shapes
:���������2"
 sequential_36/lstm_146/transpose�
sequential_36/lstm_146/Shape_1Shape$sequential_36/lstm_146/transpose:y:0*
T0*
_output_shapes
:2 
sequential_36/lstm_146/Shape_1�
,sequential_36/lstm_146/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_36/lstm_146/strided_slice_1/stack�
.sequential_36/lstm_146/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_146/strided_slice_1/stack_1�
.sequential_36/lstm_146/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_146/strided_slice_1/stack_2�
&sequential_36/lstm_146/strided_slice_1StridedSlice'sequential_36/lstm_146/Shape_1:output:05sequential_36/lstm_146/strided_slice_1/stack:output:07sequential_36/lstm_146/strided_slice_1/stack_1:output:07sequential_36/lstm_146/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_36/lstm_146/strided_slice_1�
2sequential_36/lstm_146/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������24
2sequential_36/lstm_146/TensorArrayV2/element_shape�
$sequential_36/lstm_146/TensorArrayV2TensorListReserve;sequential_36/lstm_146/TensorArrayV2/element_shape:output:0/sequential_36/lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_36/lstm_146/TensorArrayV2�
Lsequential_36/lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2N
Lsequential_36/lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape�
>sequential_36/lstm_146/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_36/lstm_146/transpose:y:0Usequential_36/lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_36/lstm_146/TensorArrayUnstack/TensorListFromTensor�
,sequential_36/lstm_146/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_36/lstm_146/strided_slice_2/stack�
.sequential_36/lstm_146/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_146/strided_slice_2/stack_1�
.sequential_36/lstm_146/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_146/strided_slice_2/stack_2�
&sequential_36/lstm_146/strided_slice_2StridedSlice$sequential_36/lstm_146/transpose:y:05sequential_36/lstm_146/strided_slice_2/stack:output:07sequential_36/lstm_146/strided_slice_2/stack_1:output:07sequential_36/lstm_146/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2(
&sequential_36/lstm_146/strided_slice_2�
:sequential_36/lstm_146/lstm_cell_146/MatMul/ReadVariableOpReadVariableOpCsequential_36_lstm_146_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_36/lstm_146/lstm_cell_146/MatMul/ReadVariableOp�
+sequential_36/lstm_146/lstm_cell_146/MatMulMatMul/sequential_36/lstm_146/strided_slice_2:output:0Bsequential_36/lstm_146/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2-
+sequential_36/lstm_146/lstm_cell_146/MatMul�
<sequential_36/lstm_146/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOpEsequential_36_lstm_146_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02>
<sequential_36/lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp�
-sequential_36/lstm_146/lstm_cell_146/MatMul_1MatMul%sequential_36/lstm_146/zeros:output:0Dsequential_36/lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-sequential_36/lstm_146/lstm_cell_146/MatMul_1�
(sequential_36/lstm_146/lstm_cell_146/addAddV25sequential_36/lstm_146/lstm_cell_146/MatMul:product:07sequential_36/lstm_146/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2*
(sequential_36/lstm_146/lstm_cell_146/add�
;sequential_36/lstm_146/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOpDsequential_36_lstm_146_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential_36/lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp�
,sequential_36/lstm_146/lstm_cell_146/BiasAddBiasAdd,sequential_36/lstm_146/lstm_cell_146/add:z:0Csequential_36/lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,sequential_36/lstm_146/lstm_cell_146/BiasAdd�
4sequential_36/lstm_146/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_36/lstm_146/lstm_cell_146/split/split_dim�
*sequential_36/lstm_146/lstm_cell_146/splitSplit=sequential_36/lstm_146/lstm_cell_146/split/split_dim:output:05sequential_36/lstm_146/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2,
*sequential_36/lstm_146/lstm_cell_146/split�
,sequential_36/lstm_146/lstm_cell_146/SigmoidSigmoid3sequential_36/lstm_146/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2.
,sequential_36/lstm_146/lstm_cell_146/Sigmoid�
.sequential_36/lstm_146/lstm_cell_146/Sigmoid_1Sigmoid3sequential_36/lstm_146/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_146/lstm_cell_146/Sigmoid_1�
(sequential_36/lstm_146/lstm_cell_146/mulMul2sequential_36/lstm_146/lstm_cell_146/Sigmoid_1:y:0'sequential_36/lstm_146/zeros_1:output:0*
T0*'
_output_shapes
:���������2*
(sequential_36/lstm_146/lstm_cell_146/mul�
)sequential_36/lstm_146/lstm_cell_146/ReluRelu3sequential_36/lstm_146/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2+
)sequential_36/lstm_146/lstm_cell_146/Relu�
*sequential_36/lstm_146/lstm_cell_146/mul_1Mul0sequential_36/lstm_146/lstm_cell_146/Sigmoid:y:07sequential_36/lstm_146/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_146/lstm_cell_146/mul_1�
*sequential_36/lstm_146/lstm_cell_146/add_1AddV2,sequential_36/lstm_146/lstm_cell_146/mul:z:0.sequential_36/lstm_146/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_146/lstm_cell_146/add_1�
.sequential_36/lstm_146/lstm_cell_146/Sigmoid_2Sigmoid3sequential_36/lstm_146/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_146/lstm_cell_146/Sigmoid_2�
+sequential_36/lstm_146/lstm_cell_146/Relu_1Relu.sequential_36/lstm_146/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2-
+sequential_36/lstm_146/lstm_cell_146/Relu_1�
*sequential_36/lstm_146/lstm_cell_146/mul_2Mul2sequential_36/lstm_146/lstm_cell_146/Sigmoid_2:y:09sequential_36/lstm_146/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2,
*sequential_36/lstm_146/lstm_cell_146/mul_2�
4sequential_36/lstm_146/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   26
4sequential_36/lstm_146/TensorArrayV2_1/element_shape�
&sequential_36/lstm_146/TensorArrayV2_1TensorListReserve=sequential_36/lstm_146/TensorArrayV2_1/element_shape:output:0/sequential_36/lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_36/lstm_146/TensorArrayV2_1|
sequential_36/lstm_146/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_36/lstm_146/time�
/sequential_36/lstm_146/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������21
/sequential_36/lstm_146/while/maximum_iterations�
)sequential_36/lstm_146/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_36/lstm_146/while/loop_counter�
sequential_36/lstm_146/whileWhile2sequential_36/lstm_146/while/loop_counter:output:08sequential_36/lstm_146/while/maximum_iterations:output:0$sequential_36/lstm_146/time:output:0/sequential_36/lstm_146/TensorArrayV2_1:handle:0%sequential_36/lstm_146/zeros:output:0'sequential_36/lstm_146/zeros_1:output:0/sequential_36/lstm_146/strided_slice_1:output:0Nsequential_36/lstm_146/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_36_lstm_146_lstm_cell_146_matmul_readvariableop_resourceEsequential_36_lstm_146_lstm_cell_146_matmul_1_readvariableop_resourceDsequential_36_lstm_146_lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_36_lstm_146_while_body_2134120*5
cond-R+
)sequential_36_lstm_146_while_cond_2134119*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
sequential_36/lstm_146/while�
Gsequential_36/lstm_146/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2I
Gsequential_36/lstm_146/TensorArrayV2Stack/TensorListStack/element_shape�
9sequential_36/lstm_146/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_36/lstm_146/while:output:3Psequential_36/lstm_146/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02;
9sequential_36/lstm_146/TensorArrayV2Stack/TensorListStack�
,sequential_36/lstm_146/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2.
,sequential_36/lstm_146/strided_slice_3/stack�
.sequential_36/lstm_146/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_36/lstm_146/strided_slice_3/stack_1�
.sequential_36/lstm_146/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_36/lstm_146/strided_slice_3/stack_2�
&sequential_36/lstm_146/strided_slice_3StridedSliceBsequential_36/lstm_146/TensorArrayV2Stack/TensorListStack:tensor:05sequential_36/lstm_146/strided_slice_3/stack:output:07sequential_36/lstm_146/strided_slice_3/stack_1:output:07sequential_36/lstm_146/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2(
&sequential_36/lstm_146/strided_slice_3�
'sequential_36/lstm_146/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_36/lstm_146/transpose_1/perm�
"sequential_36/lstm_146/transpose_1	TransposeBsequential_36/lstm_146/TensorArrayV2Stack/TensorListStack:tensor:00sequential_36/lstm_146/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2$
"sequential_36/lstm_146/transpose_1�
sequential_36/lstm_146/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_36/lstm_146/runtime�
"sequential_36/dropout_218/IdentityIdentity/sequential_36/lstm_146/strided_slice_3:output:0*
T0*'
_output_shapes
:���������2$
"sequential_36/dropout_218/Identity�
-sequential_36/dense_108/MatMul/ReadVariableOpReadVariableOp6sequential_36_dense_108_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-sequential_36/dense_108/MatMul/ReadVariableOp�
sequential_36/dense_108/MatMulMatMul+sequential_36/dropout_218/Identity:output:05sequential_36/dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_36/dense_108/MatMul�
.sequential_36/dense_108/BiasAdd/ReadVariableOpReadVariableOp7sequential_36_dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_36/dense_108/BiasAdd/ReadVariableOp�
sequential_36/dense_108/BiasAddBiasAdd(sequential_36/dense_108/MatMul:product:06sequential_36/dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2!
sequential_36/dense_108/BiasAdd�
sequential_36/dense_108/ReluRelu(sequential_36/dense_108/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential_36/dense_108/Relu�
"sequential_36/dropout_219/IdentityIdentity*sequential_36/dense_108/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"sequential_36/dropout_219/Identity�
-sequential_36/dense_109/MatMul/ReadVariableOpReadVariableOp6sequential_36_dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-sequential_36/dense_109/MatMul/ReadVariableOp�
sequential_36/dense_109/MatMulMatMul+sequential_36/dropout_219/Identity:output:05sequential_36/dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_36/dense_109/MatMul�
.sequential_36/dense_109/BiasAdd/ReadVariableOpReadVariableOp7sequential_36_dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_36/dense_109/BiasAdd/ReadVariableOp�
sequential_36/dense_109/BiasAddBiasAdd(sequential_36/dense_109/MatMul:product:06sequential_36/dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2!
sequential_36/dense_109/BiasAdd�
IdentityIdentity(sequential_36/dense_109/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp/^sequential_36/dense_108/BiasAdd/ReadVariableOp.^sequential_36/dense_108/MatMul/ReadVariableOp/^sequential_36/dense_109/BiasAdd/ReadVariableOp.^sequential_36/dense_109/MatMul/ReadVariableOp<^sequential_36/lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp;^sequential_36/lstm_144/lstm_cell_144/MatMul/ReadVariableOp=^sequential_36/lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp^sequential_36/lstm_144/while<^sequential_36/lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp;^sequential_36/lstm_145/lstm_cell_145/MatMul/ReadVariableOp=^sequential_36/lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp^sequential_36/lstm_145/while<^sequential_36/lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp;^sequential_36/lstm_146/lstm_cell_146/MatMul/ReadVariableOp=^sequential_36/lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp^sequential_36/lstm_146/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 2`
.sequential_36/dense_108/BiasAdd/ReadVariableOp.sequential_36/dense_108/BiasAdd/ReadVariableOp2^
-sequential_36/dense_108/MatMul/ReadVariableOp-sequential_36/dense_108/MatMul/ReadVariableOp2`
.sequential_36/dense_109/BiasAdd/ReadVariableOp.sequential_36/dense_109/BiasAdd/ReadVariableOp2^
-sequential_36/dense_109/MatMul/ReadVariableOp-sequential_36/dense_109/MatMul/ReadVariableOp2z
;sequential_36/lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp;sequential_36/lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp2x
:sequential_36/lstm_144/lstm_cell_144/MatMul/ReadVariableOp:sequential_36/lstm_144/lstm_cell_144/MatMul/ReadVariableOp2|
<sequential_36/lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp<sequential_36/lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp2<
sequential_36/lstm_144/whilesequential_36/lstm_144/while2z
;sequential_36/lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp;sequential_36/lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp2x
:sequential_36/lstm_145/lstm_cell_145/MatMul/ReadVariableOp:sequential_36/lstm_145/lstm_cell_145/MatMul/ReadVariableOp2|
<sequential_36/lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp<sequential_36/lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp2<
sequential_36/lstm_145/whilesequential_36/lstm_145/while2z
;sequential_36/lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp;sequential_36/lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp2x
:sequential_36/lstm_146/lstm_cell_146/MatMul/ReadVariableOp:sequential_36/lstm_146/lstm_cell_146/MatMul/ReadVariableOp2|
<sequential_36/lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp<sequential_36/lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp2<
sequential_36/lstm_146/whilesequential_36/lstm_146/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_144_input
�\
�
E__inference_lstm_144_layer_call_and_return_conditional_losses_2138770
inputs_0>
,lstm_cell_144_matmul_readvariableop_resource:@@
.lstm_cell_144_matmul_1_readvariableop_resource:@;
-lstm_cell_144_biasadd_readvariableop_resource:@
identity��$lstm_cell_144/BiasAdd/ReadVariableOp�#lstm_cell_144/MatMul/ReadVariableOp�%lstm_cell_144/MatMul_1/ReadVariableOp�whileF
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp�
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul�
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp�
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul_1�
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/add�
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp�
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/BiasAdd�
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim�
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_144/split�
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid�
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_1�
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul�
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu�
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_1�
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/add_1�
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu_1�
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_2138686*
condR
while_cond_2138685*K
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
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�%
�
while_body_2135148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_145_2135172_0:@/
while_lstm_cell_145_2135174_0:@+
while_lstm_cell_145_2135176_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_145_2135172:@-
while_lstm_cell_145_2135174:@)
while_lstm_cell_145_2135176:@��+while/lstm_cell_145/StatefulPartitionedCall�
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
+while/lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_145_2135172_0while_lstm_cell_145_2135174_0while_lstm_cell_145_2135176_0*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_21350702-
+while/lstm_cell_145/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_145/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_145/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_145/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_145/StatefulPartitionedCall*"
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
while_lstm_cell_145_2135172while_lstm_cell_145_2135172_0"<
while_lstm_cell_145_2135174while_lstm_cell_145_2135174_0"<
while_lstm_cell_145_2135176while_lstm_cell_145_2135176_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2Z
+while/lstm_cell_145/StatefulPartitionedCall+while/lstm_cell_145/StatefulPartitionedCall: 
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
while_body_2140489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:@H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:@F
4while_lstm_cell_146_matmul_1_readvariableop_resource:@A
3while_lstm_cell_146_biasadd_readvariableop_resource:@��*while/lstm_cell_146/BiasAdd/ReadVariableOp�)while/lstm_cell_146/MatMul/ReadVariableOp�+while/lstm_cell_146/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp�
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul�
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp�
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul_1�
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/add�
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp�
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/BiasAdd�
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim�
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_146/split�
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid�
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_1�
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul�
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu�
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_1�
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/add_1�
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_2�
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu_1�
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
�L
�

lstm_145_while_body_2138307.
*lstm_145_while_lstm_145_while_loop_counter4
0lstm_145_while_lstm_145_while_maximum_iterations
lstm_145_while_placeholder 
lstm_145_while_placeholder_1 
lstm_145_while_placeholder_2 
lstm_145_while_placeholder_3-
)lstm_145_while_lstm_145_strided_slice_1_0i
elstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0:@Q
?lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0:@L
>lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0:@
lstm_145_while_identity
lstm_145_while_identity_1
lstm_145_while_identity_2
lstm_145_while_identity_3
lstm_145_while_identity_4
lstm_145_while_identity_5+
'lstm_145_while_lstm_145_strided_slice_1g
clstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensorM
;lstm_145_while_lstm_cell_145_matmul_readvariableop_resource:@O
=lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource:@J
<lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource:@��3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp�2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp�4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp�
@lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_145/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0lstm_145_while_placeholderIlstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype024
2lstm_145/while/TensorArrayV2Read/TensorListGetItem�
2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp=lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp�
#lstm_145/while/lstm_cell_145/MatMulMatMul9lstm_145/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_145/while/lstm_cell_145/MatMul�
4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp?lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp�
%lstm_145/while/lstm_cell_145/MatMul_1MatMullstm_145_while_placeholder_2<lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2'
%lstm_145/while/lstm_cell_145/MatMul_1�
 lstm_145/while/lstm_cell_145/addAddV2-lstm_145/while/lstm_cell_145/MatMul:product:0/lstm_145/while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2"
 lstm_145/while/lstm_cell_145/add�
3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp>lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp�
$lstm_145/while/lstm_cell_145/BiasAddBiasAdd$lstm_145/while/lstm_cell_145/add:z:0;lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2&
$lstm_145/while/lstm_cell_145/BiasAdd�
,lstm_145/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_145/while/lstm_cell_145/split/split_dim�
"lstm_145/while/lstm_cell_145/splitSplit5lstm_145/while/lstm_cell_145/split/split_dim:output:0-lstm_145/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2$
"lstm_145/while/lstm_cell_145/split�
$lstm_145/while/lstm_cell_145/SigmoidSigmoid+lstm_145/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2&
$lstm_145/while/lstm_cell_145/Sigmoid�
&lstm_145/while/lstm_cell_145/Sigmoid_1Sigmoid+lstm_145/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2(
&lstm_145/while/lstm_cell_145/Sigmoid_1�
 lstm_145/while/lstm_cell_145/mulMul*lstm_145/while/lstm_cell_145/Sigmoid_1:y:0lstm_145_while_placeholder_3*
T0*'
_output_shapes
:���������2"
 lstm_145/while/lstm_cell_145/mul�
!lstm_145/while/lstm_cell_145/ReluRelu+lstm_145/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2#
!lstm_145/while/lstm_cell_145/Relu�
"lstm_145/while/lstm_cell_145/mul_1Mul(lstm_145/while/lstm_cell_145/Sigmoid:y:0/lstm_145/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_145/while/lstm_cell_145/mul_1�
"lstm_145/while/lstm_cell_145/add_1AddV2$lstm_145/while/lstm_cell_145/mul:z:0&lstm_145/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2$
"lstm_145/while/lstm_cell_145/add_1�
&lstm_145/while/lstm_cell_145/Sigmoid_2Sigmoid+lstm_145/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2(
&lstm_145/while/lstm_cell_145/Sigmoid_2�
#lstm_145/while/lstm_cell_145/Relu_1Relu&lstm_145/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2%
#lstm_145/while/lstm_cell_145/Relu_1�
"lstm_145/while/lstm_cell_145/mul_2Mul*lstm_145/while/lstm_cell_145/Sigmoid_2:y:01lstm_145/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_145/while/lstm_cell_145/mul_2�
3lstm_145/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_145_while_placeholder_1lstm_145_while_placeholder&lstm_145/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_145/while/TensorArrayV2Write/TensorListSetItemn
lstm_145/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/while/add/y�
lstm_145/while/addAddV2lstm_145_while_placeholderlstm_145/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_145/while/addr
lstm_145/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/while/add_1/y�
lstm_145/while/add_1AddV2*lstm_145_while_lstm_145_while_loop_counterlstm_145/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_145/while/add_1�
lstm_145/while/IdentityIdentitylstm_145/while/add_1:z:0^lstm_145/while/NoOp*
T0*
_output_shapes
: 2
lstm_145/while/Identity�
lstm_145/while/Identity_1Identity0lstm_145_while_lstm_145_while_maximum_iterations^lstm_145/while/NoOp*
T0*
_output_shapes
: 2
lstm_145/while/Identity_1�
lstm_145/while/Identity_2Identitylstm_145/while/add:z:0^lstm_145/while/NoOp*
T0*
_output_shapes
: 2
lstm_145/while/Identity_2�
lstm_145/while/Identity_3IdentityClstm_145/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_145/while/NoOp*
T0*
_output_shapes
: 2
lstm_145/while/Identity_3�
lstm_145/while/Identity_4Identity&lstm_145/while/lstm_cell_145/mul_2:z:0^lstm_145/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_145/while/Identity_4�
lstm_145/while/Identity_5Identity&lstm_145/while/lstm_cell_145/add_1:z:0^lstm_145/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_145/while/Identity_5�
lstm_145/while/NoOpNoOp4^lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp3^lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp5^lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_145/while/NoOp";
lstm_145_while_identity lstm_145/while/Identity:output:0"?
lstm_145_while_identity_1"lstm_145/while/Identity_1:output:0"?
lstm_145_while_identity_2"lstm_145/while/Identity_2:output:0"?
lstm_145_while_identity_3"lstm_145/while/Identity_3:output:0"?
lstm_145_while_identity_4"lstm_145/while/Identity_4:output:0"?
lstm_145_while_identity_5"lstm_145/while/Identity_5:output:0"T
'lstm_145_while_lstm_145_strided_slice_1)lstm_145_while_lstm_145_strided_slice_1_0"~
<lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource>lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0"�
=lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource?lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0"|
;lstm_145_while_lstm_cell_145_matmul_readvariableop_resource=lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0"�
clstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensorelstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2j
3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp2h
2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp2l
4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_145_layer_call_fn_2140781

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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_21349242
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
�
f
H__inference_dropout_218_layer_call_and_return_conditional_losses_2140588

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
while_cond_2138836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2138836___redundant_placeholder05
1while_while_cond_2138836___redundant_placeholder15
1while_while_cond_2138836___redundant_placeholder25
1while_while_cond_2138836___redundant_placeholder3
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
�`
�
)sequential_36_lstm_144_while_body_2133824J
Fsequential_36_lstm_144_while_sequential_36_lstm_144_while_loop_counterP
Lsequential_36_lstm_144_while_sequential_36_lstm_144_while_maximum_iterations,
(sequential_36_lstm_144_while_placeholder.
*sequential_36_lstm_144_while_placeholder_1.
*sequential_36_lstm_144_while_placeholder_2.
*sequential_36_lstm_144_while_placeholder_3I
Esequential_36_lstm_144_while_sequential_36_lstm_144_strided_slice_1_0�
�sequential_36_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_144_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_36_lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0:@_
Msequential_36_lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0:@Z
Lsequential_36_lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0:@)
%sequential_36_lstm_144_while_identity+
'sequential_36_lstm_144_while_identity_1+
'sequential_36_lstm_144_while_identity_2+
'sequential_36_lstm_144_while_identity_3+
'sequential_36_lstm_144_while_identity_4+
'sequential_36_lstm_144_while_identity_5G
Csequential_36_lstm_144_while_sequential_36_lstm_144_strided_slice_1�
sequential_36_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_144_tensorarrayunstack_tensorlistfromtensor[
Isequential_36_lstm_144_while_lstm_cell_144_matmul_readvariableop_resource:@]
Ksequential_36_lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource:@X
Jsequential_36_lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource:@��Asequential_36/lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp�@sequential_36/lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp�Bsequential_36/lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp�
Nsequential_36/lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2P
Nsequential_36/lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape�
@sequential_36/lstm_144/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_36_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_144_tensorarrayunstack_tensorlistfromtensor_0(sequential_36_lstm_144_while_placeholderWsequential_36/lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02B
@sequential_36/lstm_144/while/TensorArrayV2Read/TensorListGetItem�
@sequential_36/lstm_144/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOpKsequential_36_lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_36/lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp�
1sequential_36/lstm_144/while/lstm_cell_144/MatMulMatMulGsequential_36/lstm_144/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_36/lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@23
1sequential_36/lstm_144/while/lstm_cell_144/MatMul�
Bsequential_36/lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOpMsequential_36_lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02D
Bsequential_36/lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp�
3sequential_36/lstm_144/while/lstm_cell_144/MatMul_1MatMul*sequential_36_lstm_144_while_placeholder_2Jsequential_36/lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@25
3sequential_36/lstm_144/while/lstm_cell_144/MatMul_1�
.sequential_36/lstm_144/while/lstm_cell_144/addAddV2;sequential_36/lstm_144/while/lstm_cell_144/MatMul:product:0=sequential_36/lstm_144/while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@20
.sequential_36/lstm_144/while/lstm_cell_144/add�
Asequential_36/lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOpLsequential_36_lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02C
Asequential_36/lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp�
2sequential_36/lstm_144/while/lstm_cell_144/BiasAddBiasAdd2sequential_36/lstm_144/while/lstm_cell_144/add:z:0Isequential_36/lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@24
2sequential_36/lstm_144/while/lstm_cell_144/BiasAdd�
:sequential_36/lstm_144/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_36/lstm_144/while/lstm_cell_144/split/split_dim�
0sequential_36/lstm_144/while/lstm_cell_144/splitSplitCsequential_36/lstm_144/while/lstm_cell_144/split/split_dim:output:0;sequential_36/lstm_144/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split22
0sequential_36/lstm_144/while/lstm_cell_144/split�
2sequential_36/lstm_144/while/lstm_cell_144/SigmoidSigmoid9sequential_36/lstm_144/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������24
2sequential_36/lstm_144/while/lstm_cell_144/Sigmoid�
4sequential_36/lstm_144/while/lstm_cell_144/Sigmoid_1Sigmoid9sequential_36/lstm_144/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������26
4sequential_36/lstm_144/while/lstm_cell_144/Sigmoid_1�
.sequential_36/lstm_144/while/lstm_cell_144/mulMul8sequential_36/lstm_144/while/lstm_cell_144/Sigmoid_1:y:0*sequential_36_lstm_144_while_placeholder_3*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_144/while/lstm_cell_144/mul�
/sequential_36/lstm_144/while/lstm_cell_144/ReluRelu9sequential_36/lstm_144/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������21
/sequential_36/lstm_144/while/lstm_cell_144/Relu�
0sequential_36/lstm_144/while/lstm_cell_144/mul_1Mul6sequential_36/lstm_144/while/lstm_cell_144/Sigmoid:y:0=sequential_36/lstm_144/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_144/while/lstm_cell_144/mul_1�
0sequential_36/lstm_144/while/lstm_cell_144/add_1AddV22sequential_36/lstm_144/while/lstm_cell_144/mul:z:04sequential_36/lstm_144/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_144/while/lstm_cell_144/add_1�
4sequential_36/lstm_144/while/lstm_cell_144/Sigmoid_2Sigmoid9sequential_36/lstm_144/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������26
4sequential_36/lstm_144/while/lstm_cell_144/Sigmoid_2�
1sequential_36/lstm_144/while/lstm_cell_144/Relu_1Relu4sequential_36/lstm_144/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������23
1sequential_36/lstm_144/while/lstm_cell_144/Relu_1�
0sequential_36/lstm_144/while/lstm_cell_144/mul_2Mul8sequential_36/lstm_144/while/lstm_cell_144/Sigmoid_2:y:0?sequential_36/lstm_144/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_144/while/lstm_cell_144/mul_2�
Asequential_36/lstm_144/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_36_lstm_144_while_placeholder_1(sequential_36_lstm_144_while_placeholder4sequential_36/lstm_144/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_36/lstm_144/while/TensorArrayV2Write/TensorListSetItem�
"sequential_36/lstm_144/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_36/lstm_144/while/add/y�
 sequential_36/lstm_144/while/addAddV2(sequential_36_lstm_144_while_placeholder+sequential_36/lstm_144/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_36/lstm_144/while/add�
$sequential_36/lstm_144/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_36/lstm_144/while/add_1/y�
"sequential_36/lstm_144/while/add_1AddV2Fsequential_36_lstm_144_while_sequential_36_lstm_144_while_loop_counter-sequential_36/lstm_144/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_36/lstm_144/while/add_1�
%sequential_36/lstm_144/while/IdentityIdentity&sequential_36/lstm_144/while/add_1:z:0"^sequential_36/lstm_144/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_36/lstm_144/while/Identity�
'sequential_36/lstm_144/while/Identity_1IdentityLsequential_36_lstm_144_while_sequential_36_lstm_144_while_maximum_iterations"^sequential_36/lstm_144/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_144/while/Identity_1�
'sequential_36/lstm_144/while/Identity_2Identity$sequential_36/lstm_144/while/add:z:0"^sequential_36/lstm_144/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_144/while/Identity_2�
'sequential_36/lstm_144/while/Identity_3IdentityQsequential_36/lstm_144/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_36/lstm_144/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_144/while/Identity_3�
'sequential_36/lstm_144/while/Identity_4Identity4sequential_36/lstm_144/while/lstm_cell_144/mul_2:z:0"^sequential_36/lstm_144/while/NoOp*
T0*'
_output_shapes
:���������2)
'sequential_36/lstm_144/while/Identity_4�
'sequential_36/lstm_144/while/Identity_5Identity4sequential_36/lstm_144/while/lstm_cell_144/add_1:z:0"^sequential_36/lstm_144/while/NoOp*
T0*'
_output_shapes
:���������2)
'sequential_36/lstm_144/while/Identity_5�
!sequential_36/lstm_144/while/NoOpNoOpB^sequential_36/lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOpA^sequential_36/lstm_144/while/lstm_cell_144/MatMul/ReadVariableOpC^sequential_36/lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_36/lstm_144/while/NoOp"W
%sequential_36_lstm_144_while_identity.sequential_36/lstm_144/while/Identity:output:0"[
'sequential_36_lstm_144_while_identity_10sequential_36/lstm_144/while/Identity_1:output:0"[
'sequential_36_lstm_144_while_identity_20sequential_36/lstm_144/while/Identity_2:output:0"[
'sequential_36_lstm_144_while_identity_30sequential_36/lstm_144/while/Identity_3:output:0"[
'sequential_36_lstm_144_while_identity_40sequential_36/lstm_144/while/Identity_4:output:0"[
'sequential_36_lstm_144_while_identity_50sequential_36/lstm_144/while/Identity_5:output:0"�
Jsequential_36_lstm_144_while_lstm_cell_144_biasadd_readvariableop_resourceLsequential_36_lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0"�
Ksequential_36_lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resourceMsequential_36_lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0"�
Isequential_36_lstm_144_while_lstm_cell_144_matmul_readvariableop_resourceKsequential_36_lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0"�
Csequential_36_lstm_144_while_sequential_36_lstm_144_strided_slice_1Esequential_36_lstm_144_while_sequential_36_lstm_144_strided_slice_1_0"�
sequential_36_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_144_tensorarrayunstack_tensorlistfromtensor�sequential_36_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_144_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2�
Asequential_36/lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOpAsequential_36/lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp2�
@sequential_36/lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp@sequential_36/lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp2�
Bsequential_36/lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOpBsequential_36/lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_146_layer_call_fn_2139958

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
GPU 2J 8� *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_21365962
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
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
f
-__inference_dropout_219_layer_call_fn_2140630

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
H__inference_dropout_219_layer_call_and_return_conditional_losses_21367112
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
�
�
+__inference_dense_109_layer_call_fn_2140656

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
GPU 2J 8� *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_21366452
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
H__inference_dropout_218_layer_call_and_return_conditional_losses_2140600

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
�
f
H__inference_dropout_216_layer_call_and_return_conditional_losses_2139238

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_dropout_216_layer_call_fn_2139228

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_216_layer_call_and_return_conditional_losses_21362792
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
E__inference_lstm_144_layer_call_and_return_conditional_losses_2134587

inputs'
lstm_cell_144_2134505:@'
lstm_cell_144_2134507:@#
lstm_cell_144_2134509:@
identity��%lstm_cell_144/StatefulPartitionedCall�whileD
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
%lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_144_2134505lstm_cell_144_2134507lstm_cell_144_2134509*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_21344402'
%lstm_cell_144/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_144_2134505lstm_cell_144_2134507lstm_cell_144_2134509*
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
while_body_2134518*
condR
while_cond_2134517*K
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

Identity~
NoOpNoOp&^lstm_cell_144/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_144/StatefulPartitionedCall%lstm_cell_144/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�%
�
while_body_2135568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_146_2135592_0:@/
while_lstm_cell_146_2135594_0:@+
while_lstm_cell_146_2135596_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_146_2135592:@-
while_lstm_cell_146_2135594:@)
while_lstm_cell_146_2135596:@��+while/lstm_cell_146/StatefulPartitionedCall�
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
+while/lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_146_2135592_0while_lstm_cell_146_2135594_0while_lstm_cell_146_2135596_0*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_21355542-
+while/lstm_cell_146/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_146/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_146/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_146/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_146/StatefulPartitionedCall*"
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
while_lstm_cell_146_2135592while_lstm_cell_146_2135592_0"<
while_lstm_cell_146_2135594while_lstm_cell_146_2135594_0"<
while_lstm_cell_146_2135596while_lstm_cell_146_2135596_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2Z
+while/lstm_cell_146/StatefulPartitionedCall+while/lstm_cell_146/StatefulPartitionedCall: 
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
while_cond_2136181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136181___redundant_placeholder05
1while_while_cond_2136181___redundant_placeholder15
1while_while_cond_2136181___redundant_placeholder25
1while_while_cond_2136181___redundant_placeholder3
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
�L
�

lstm_144_while_body_2137690.
*lstm_144_while_lstm_144_while_loop_counter4
0lstm_144_while_lstm_144_while_maximum_iterations
lstm_144_while_placeholder 
lstm_144_while_placeholder_1 
lstm_144_while_placeholder_2 
lstm_144_while_placeholder_3-
)lstm_144_while_lstm_144_strided_slice_1_0i
elstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0:@Q
?lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0:@L
>lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0:@
lstm_144_while_identity
lstm_144_while_identity_1
lstm_144_while_identity_2
lstm_144_while_identity_3
lstm_144_while_identity_4
lstm_144_while_identity_5+
'lstm_144_while_lstm_144_strided_slice_1g
clstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensorM
;lstm_144_while_lstm_cell_144_matmul_readvariableop_resource:@O
=lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource:@J
<lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource:@��3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp�2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp�4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp�
@lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_144/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0lstm_144_while_placeholderIlstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype024
2lstm_144/while/TensorArrayV2Read/TensorListGetItem�
2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp=lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp�
#lstm_144/while/lstm_cell_144/MatMulMatMul9lstm_144/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_144/while/lstm_cell_144/MatMul�
4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp?lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp�
%lstm_144/while/lstm_cell_144/MatMul_1MatMullstm_144_while_placeholder_2<lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2'
%lstm_144/while/lstm_cell_144/MatMul_1�
 lstm_144/while/lstm_cell_144/addAddV2-lstm_144/while/lstm_cell_144/MatMul:product:0/lstm_144/while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2"
 lstm_144/while/lstm_cell_144/add�
3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp>lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp�
$lstm_144/while/lstm_cell_144/BiasAddBiasAdd$lstm_144/while/lstm_cell_144/add:z:0;lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2&
$lstm_144/while/lstm_cell_144/BiasAdd�
,lstm_144/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_144/while/lstm_cell_144/split/split_dim�
"lstm_144/while/lstm_cell_144/splitSplit5lstm_144/while/lstm_cell_144/split/split_dim:output:0-lstm_144/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2$
"lstm_144/while/lstm_cell_144/split�
$lstm_144/while/lstm_cell_144/SigmoidSigmoid+lstm_144/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2&
$lstm_144/while/lstm_cell_144/Sigmoid�
&lstm_144/while/lstm_cell_144/Sigmoid_1Sigmoid+lstm_144/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2(
&lstm_144/while/lstm_cell_144/Sigmoid_1�
 lstm_144/while/lstm_cell_144/mulMul*lstm_144/while/lstm_cell_144/Sigmoid_1:y:0lstm_144_while_placeholder_3*
T0*'
_output_shapes
:���������2"
 lstm_144/while/lstm_cell_144/mul�
!lstm_144/while/lstm_cell_144/ReluRelu+lstm_144/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2#
!lstm_144/while/lstm_cell_144/Relu�
"lstm_144/while/lstm_cell_144/mul_1Mul(lstm_144/while/lstm_cell_144/Sigmoid:y:0/lstm_144/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_144/while/lstm_cell_144/mul_1�
"lstm_144/while/lstm_cell_144/add_1AddV2$lstm_144/while/lstm_cell_144/mul:z:0&lstm_144/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2$
"lstm_144/while/lstm_cell_144/add_1�
&lstm_144/while/lstm_cell_144/Sigmoid_2Sigmoid+lstm_144/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2(
&lstm_144/while/lstm_cell_144/Sigmoid_2�
#lstm_144/while/lstm_cell_144/Relu_1Relu&lstm_144/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2%
#lstm_144/while/lstm_cell_144/Relu_1�
"lstm_144/while/lstm_cell_144/mul_2Mul*lstm_144/while/lstm_cell_144/Sigmoid_2:y:01lstm_144/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_144/while/lstm_cell_144/mul_2�
3lstm_144/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_144_while_placeholder_1lstm_144_while_placeholder&lstm_144/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_144/while/TensorArrayV2Write/TensorListSetItemn
lstm_144/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/while/add/y�
lstm_144/while/addAddV2lstm_144_while_placeholderlstm_144/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_144/while/addr
lstm_144/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/while/add_1/y�
lstm_144/while/add_1AddV2*lstm_144_while_lstm_144_while_loop_counterlstm_144/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_144/while/add_1�
lstm_144/while/IdentityIdentitylstm_144/while/add_1:z:0^lstm_144/while/NoOp*
T0*
_output_shapes
: 2
lstm_144/while/Identity�
lstm_144/while/Identity_1Identity0lstm_144_while_lstm_144_while_maximum_iterations^lstm_144/while/NoOp*
T0*
_output_shapes
: 2
lstm_144/while/Identity_1�
lstm_144/while/Identity_2Identitylstm_144/while/add:z:0^lstm_144/while/NoOp*
T0*
_output_shapes
: 2
lstm_144/while/Identity_2�
lstm_144/while/Identity_3IdentityClstm_144/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_144/while/NoOp*
T0*
_output_shapes
: 2
lstm_144/while/Identity_3�
lstm_144/while/Identity_4Identity&lstm_144/while/lstm_cell_144/mul_2:z:0^lstm_144/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_144/while/Identity_4�
lstm_144/while/Identity_5Identity&lstm_144/while/lstm_cell_144/add_1:z:0^lstm_144/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_144/while/Identity_5�
lstm_144/while/NoOpNoOp4^lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp3^lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp5^lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_144/while/NoOp";
lstm_144_while_identity lstm_144/while/Identity:output:0"?
lstm_144_while_identity_1"lstm_144/while/Identity_1:output:0"?
lstm_144_while_identity_2"lstm_144/while/Identity_2:output:0"?
lstm_144_while_identity_3"lstm_144/while/Identity_3:output:0"?
lstm_144_while_identity_4"lstm_144/while/Identity_4:output:0"?
lstm_144_while_identity_5"lstm_144/while/Identity_5:output:0"T
'lstm_144_while_lstm_144_strided_slice_1)lstm_144_while_lstm_144_strided_slice_1_0"~
<lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource>lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0"�
=lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource?lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0"|
;lstm_144_while_lstm_cell_144_matmul_readvariableop_resource=lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0"�
clstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensorelstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2j
3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp2h
2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp2l
4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
lstm_145_while_cond_2137837.
*lstm_145_while_lstm_145_while_loop_counter4
0lstm_145_while_lstm_145_while_maximum_iterations
lstm_145_while_placeholder 
lstm_145_while_placeholder_1 
lstm_145_while_placeholder_2 
lstm_145_while_placeholder_30
,lstm_145_while_less_lstm_145_strided_slice_1G
Clstm_145_while_lstm_145_while_cond_2137837___redundant_placeholder0G
Clstm_145_while_lstm_145_while_cond_2137837___redundant_placeholder1G
Clstm_145_while_lstm_145_while_cond_2137837___redundant_placeholder2G
Clstm_145_while_lstm_145_while_cond_2137837___redundant_placeholder3
lstm_145_while_identity
�
lstm_145/while/LessLesslstm_145_while_placeholder,lstm_145_while_less_lstm_145_strided_slice_1*
T0*
_output_shapes
: 2
lstm_145/while/Lessx
lstm_145/while/IdentityIdentitylstm_145/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_145/while/Identity";
lstm_145_while_identity lstm_145/while/Identity:output:0*(
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
J__inference_sequential_36_layer_call_and_return_conditional_losses_2138575

inputsG
5lstm_144_lstm_cell_144_matmul_readvariableop_resource:@I
7lstm_144_lstm_cell_144_matmul_1_readvariableop_resource:@D
6lstm_144_lstm_cell_144_biasadd_readvariableop_resource:@G
5lstm_145_lstm_cell_145_matmul_readvariableop_resource:@I
7lstm_145_lstm_cell_145_matmul_1_readvariableop_resource:@D
6lstm_145_lstm_cell_145_biasadd_readvariableop_resource:@G
5lstm_146_lstm_cell_146_matmul_readvariableop_resource:@I
7lstm_146_lstm_cell_146_matmul_1_readvariableop_resource:@D
6lstm_146_lstm_cell_146_biasadd_readvariableop_resource:@:
(dense_108_matmul_readvariableop_resource:7
)dense_108_biasadd_readvariableop_resource::
(dense_109_matmul_readvariableop_resource:7
)dense_109_biasadd_readvariableop_resource:
identity�� dense_108/BiasAdd/ReadVariableOp�dense_108/MatMul/ReadVariableOp� dense_109/BiasAdd/ReadVariableOp�dense_109/MatMul/ReadVariableOp�-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp�,lstm_144/lstm_cell_144/MatMul/ReadVariableOp�.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp�lstm_144/while�-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp�,lstm_145/lstm_cell_145/MatMul/ReadVariableOp�.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp�lstm_145/while�-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp�,lstm_146/lstm_cell_146/MatMul/ReadVariableOp�.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp�lstm_146/whileV
lstm_144/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_144/Shape�
lstm_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_144/strided_slice/stack�
lstm_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_144/strided_slice/stack_1�
lstm_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_144/strided_slice/stack_2�
lstm_144/strided_sliceStridedSlicelstm_144/Shape:output:0%lstm_144/strided_slice/stack:output:0'lstm_144/strided_slice/stack_1:output:0'lstm_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_144/strided_slicen
lstm_144/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/zeros/mul/y�
lstm_144/zeros/mulMullstm_144/strided_slice:output:0lstm_144/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_144/zeros/mulq
lstm_144/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_144/zeros/Less/y�
lstm_144/zeros/LessLesslstm_144/zeros/mul:z:0lstm_144/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_144/zeros/Lesst
lstm_144/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/zeros/packed/1�
lstm_144/zeros/packedPacklstm_144/strided_slice:output:0 lstm_144/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_144/zeros/packedq
lstm_144/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_144/zeros/Const�
lstm_144/zerosFilllstm_144/zeros/packed:output:0lstm_144/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_144/zerosr
lstm_144/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/zeros_1/mul/y�
lstm_144/zeros_1/mulMullstm_144/strided_slice:output:0lstm_144/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_144/zeros_1/mulu
lstm_144/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_144/zeros_1/Less/y�
lstm_144/zeros_1/LessLesslstm_144/zeros_1/mul:z:0 lstm_144/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_144/zeros_1/Lessx
lstm_144/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/zeros_1/packed/1�
lstm_144/zeros_1/packedPacklstm_144/strided_slice:output:0"lstm_144/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_144/zeros_1/packedu
lstm_144/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_144/zeros_1/Const�
lstm_144/zeros_1Fill lstm_144/zeros_1/packed:output:0lstm_144/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_144/zeros_1�
lstm_144/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_144/transpose/perm�
lstm_144/transpose	Transposeinputs lstm_144/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_144/transposej
lstm_144/Shape_1Shapelstm_144/transpose:y:0*
T0*
_output_shapes
:2
lstm_144/Shape_1�
lstm_144/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_144/strided_slice_1/stack�
 lstm_144/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_1/stack_1�
 lstm_144/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_1/stack_2�
lstm_144/strided_slice_1StridedSlicelstm_144/Shape_1:output:0'lstm_144/strided_slice_1/stack:output:0)lstm_144/strided_slice_1/stack_1:output:0)lstm_144/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_144/strided_slice_1�
$lstm_144/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_144/TensorArrayV2/element_shape�
lstm_144/TensorArrayV2TensorListReserve-lstm_144/TensorArrayV2/element_shape:output:0!lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_144/TensorArrayV2�
>lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_144/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_144/transpose:y:0Glstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_144/TensorArrayUnstack/TensorListFromTensor�
lstm_144/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_144/strided_slice_2/stack�
 lstm_144/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_2/stack_1�
 lstm_144/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_2/stack_2�
lstm_144/strided_slice_2StridedSlicelstm_144/transpose:y:0'lstm_144/strided_slice_2/stack:output:0)lstm_144/strided_slice_2/stack_1:output:0)lstm_144/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_144/strided_slice_2�
,lstm_144/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp5lstm_144_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_144/lstm_cell_144/MatMul/ReadVariableOp�
lstm_144/lstm_cell_144/MatMulMatMul!lstm_144/strided_slice_2:output:04lstm_144/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_144/lstm_cell_144/MatMul�
.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp7lstm_144_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp�
lstm_144/lstm_cell_144/MatMul_1MatMullstm_144/zeros:output:06lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
lstm_144/lstm_cell_144/MatMul_1�
lstm_144/lstm_cell_144/addAddV2'lstm_144/lstm_cell_144/MatMul:product:0)lstm_144/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_144/lstm_cell_144/add�
-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp6lstm_144_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp�
lstm_144/lstm_cell_144/BiasAddBiasAddlstm_144/lstm_cell_144/add:z:05lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
lstm_144/lstm_cell_144/BiasAdd�
&lstm_144/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_144/lstm_cell_144/split/split_dim�
lstm_144/lstm_cell_144/splitSplit/lstm_144/lstm_cell_144/split/split_dim:output:0'lstm_144/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_144/lstm_cell_144/split�
lstm_144/lstm_cell_144/SigmoidSigmoid%lstm_144/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2 
lstm_144/lstm_cell_144/Sigmoid�
 lstm_144/lstm_cell_144/Sigmoid_1Sigmoid%lstm_144/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2"
 lstm_144/lstm_cell_144/Sigmoid_1�
lstm_144/lstm_cell_144/mulMul$lstm_144/lstm_cell_144/Sigmoid_1:y:0lstm_144/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/mul�
lstm_144/lstm_cell_144/ReluRelu%lstm_144/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/Relu�
lstm_144/lstm_cell_144/mul_1Mul"lstm_144/lstm_cell_144/Sigmoid:y:0)lstm_144/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/mul_1�
lstm_144/lstm_cell_144/add_1AddV2lstm_144/lstm_cell_144/mul:z:0 lstm_144/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/add_1�
 lstm_144/lstm_cell_144/Sigmoid_2Sigmoid%lstm_144/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2"
 lstm_144/lstm_cell_144/Sigmoid_2�
lstm_144/lstm_cell_144/Relu_1Relu lstm_144/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/Relu_1�
lstm_144/lstm_cell_144/mul_2Mul$lstm_144/lstm_cell_144/Sigmoid_2:y:0+lstm_144/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_144/lstm_cell_144/mul_2�
&lstm_144/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2(
&lstm_144/TensorArrayV2_1/element_shape�
lstm_144/TensorArrayV2_1TensorListReserve/lstm_144/TensorArrayV2_1/element_shape:output:0!lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_144/TensorArrayV2_1`
lstm_144/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_144/time�
!lstm_144/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_144/while/maximum_iterations|
lstm_144/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_144/while/loop_counter�
lstm_144/whileWhile$lstm_144/while/loop_counter:output:0*lstm_144/while/maximum_iterations:output:0lstm_144/time:output:0!lstm_144/TensorArrayV2_1:handle:0lstm_144/zeros:output:0lstm_144/zeros_1:output:0!lstm_144/strided_slice_1:output:0@lstm_144/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_144_lstm_cell_144_matmul_readvariableop_resource7lstm_144_lstm_cell_144_matmul_1_readvariableop_resource6lstm_144_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_144_while_body_2138152*'
condR
lstm_144_while_cond_2138151*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_144/while�
9lstm_144/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9lstm_144/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_144/TensorArrayV2Stack/TensorListStackTensorListStacklstm_144/while:output:3Blstm_144/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02-
+lstm_144/TensorArrayV2Stack/TensorListStack�
lstm_144/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_144/strided_slice_3/stack�
 lstm_144/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_144/strided_slice_3/stack_1�
 lstm_144/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_144/strided_slice_3/stack_2�
lstm_144/strided_slice_3StridedSlice4lstm_144/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_144/strided_slice_3/stack:output:0)lstm_144/strided_slice_3/stack_1:output:0)lstm_144/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_144/strided_slice_3�
lstm_144/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_144/transpose_1/perm�
lstm_144/transpose_1	Transpose4lstm_144/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_144/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_144/transpose_1x
lstm_144/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_144/runtime{
dropout_216/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_216/dropout/Const�
dropout_216/dropout/MulMullstm_144/transpose_1:y:0"dropout_216/dropout/Const:output:0*
T0*+
_output_shapes
:���������2
dropout_216/dropout/Mul~
dropout_216/dropout/ShapeShapelstm_144/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_216/dropout/Shape�
0dropout_216/dropout/random_uniform/RandomUniformRandomUniform"dropout_216/dropout/Shape:output:0*
T0*+
_output_shapes
:���������*
dtype022
0dropout_216/dropout/random_uniform/RandomUniform�
"dropout_216/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_216/dropout/GreaterEqual/y�
 dropout_216/dropout/GreaterEqualGreaterEqual9dropout_216/dropout/random_uniform/RandomUniform:output:0+dropout_216/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2"
 dropout_216/dropout/GreaterEqual�
dropout_216/dropout/CastCast$dropout_216/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
dropout_216/dropout/Cast�
dropout_216/dropout/Mul_1Muldropout_216/dropout/Mul:z:0dropout_216/dropout/Cast:y:0*
T0*+
_output_shapes
:���������2
dropout_216/dropout/Mul_1m
lstm_145/ShapeShapedropout_216/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_145/Shape�
lstm_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_145/strided_slice/stack�
lstm_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_145/strided_slice/stack_1�
lstm_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_145/strided_slice/stack_2�
lstm_145/strided_sliceStridedSlicelstm_145/Shape:output:0%lstm_145/strided_slice/stack:output:0'lstm_145/strided_slice/stack_1:output:0'lstm_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_145/strided_slicen
lstm_145/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/zeros/mul/y�
lstm_145/zeros/mulMullstm_145/strided_slice:output:0lstm_145/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_145/zeros/mulq
lstm_145/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_145/zeros/Less/y�
lstm_145/zeros/LessLesslstm_145/zeros/mul:z:0lstm_145/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_145/zeros/Lesst
lstm_145/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/zeros/packed/1�
lstm_145/zeros/packedPacklstm_145/strided_slice:output:0 lstm_145/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_145/zeros/packedq
lstm_145/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_145/zeros/Const�
lstm_145/zerosFilllstm_145/zeros/packed:output:0lstm_145/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_145/zerosr
lstm_145/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/zeros_1/mul/y�
lstm_145/zeros_1/mulMullstm_145/strided_slice:output:0lstm_145/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_145/zeros_1/mulu
lstm_145/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_145/zeros_1/Less/y�
lstm_145/zeros_1/LessLesslstm_145/zeros_1/mul:z:0 lstm_145/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_145/zeros_1/Lessx
lstm_145/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/zeros_1/packed/1�
lstm_145/zeros_1/packedPacklstm_145/strided_slice:output:0"lstm_145/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_145/zeros_1/packedu
lstm_145/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_145/zeros_1/Const�
lstm_145/zeros_1Fill lstm_145/zeros_1/packed:output:0lstm_145/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_145/zeros_1�
lstm_145/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_145/transpose/perm�
lstm_145/transpose	Transposedropout_216/dropout/Mul_1:z:0 lstm_145/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_145/transposej
lstm_145/Shape_1Shapelstm_145/transpose:y:0*
T0*
_output_shapes
:2
lstm_145/Shape_1�
lstm_145/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_145/strided_slice_1/stack�
 lstm_145/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_1/stack_1�
 lstm_145/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_1/stack_2�
lstm_145/strided_slice_1StridedSlicelstm_145/Shape_1:output:0'lstm_145/strided_slice_1/stack:output:0)lstm_145/strided_slice_1/stack_1:output:0)lstm_145/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_145/strided_slice_1�
$lstm_145/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_145/TensorArrayV2/element_shape�
lstm_145/TensorArrayV2TensorListReserve-lstm_145/TensorArrayV2/element_shape:output:0!lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_145/TensorArrayV2�
>lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_145/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_145/transpose:y:0Glstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_145/TensorArrayUnstack/TensorListFromTensor�
lstm_145/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_145/strided_slice_2/stack�
 lstm_145/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_2/stack_1�
 lstm_145/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_2/stack_2�
lstm_145/strided_slice_2StridedSlicelstm_145/transpose:y:0'lstm_145/strided_slice_2/stack:output:0)lstm_145/strided_slice_2/stack_1:output:0)lstm_145/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_145/strided_slice_2�
,lstm_145/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp5lstm_145_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_145/lstm_cell_145/MatMul/ReadVariableOp�
lstm_145/lstm_cell_145/MatMulMatMul!lstm_145/strided_slice_2:output:04lstm_145/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_145/lstm_cell_145/MatMul�
.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp7lstm_145_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp�
lstm_145/lstm_cell_145/MatMul_1MatMullstm_145/zeros:output:06lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
lstm_145/lstm_cell_145/MatMul_1�
lstm_145/lstm_cell_145/addAddV2'lstm_145/lstm_cell_145/MatMul:product:0)lstm_145/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_145/lstm_cell_145/add�
-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp6lstm_145_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp�
lstm_145/lstm_cell_145/BiasAddBiasAddlstm_145/lstm_cell_145/add:z:05lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
lstm_145/lstm_cell_145/BiasAdd�
&lstm_145/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_145/lstm_cell_145/split/split_dim�
lstm_145/lstm_cell_145/splitSplit/lstm_145/lstm_cell_145/split/split_dim:output:0'lstm_145/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_145/lstm_cell_145/split�
lstm_145/lstm_cell_145/SigmoidSigmoid%lstm_145/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2 
lstm_145/lstm_cell_145/Sigmoid�
 lstm_145/lstm_cell_145/Sigmoid_1Sigmoid%lstm_145/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2"
 lstm_145/lstm_cell_145/Sigmoid_1�
lstm_145/lstm_cell_145/mulMul$lstm_145/lstm_cell_145/Sigmoid_1:y:0lstm_145/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/mul�
lstm_145/lstm_cell_145/ReluRelu%lstm_145/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/Relu�
lstm_145/lstm_cell_145/mul_1Mul"lstm_145/lstm_cell_145/Sigmoid:y:0)lstm_145/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/mul_1�
lstm_145/lstm_cell_145/add_1AddV2lstm_145/lstm_cell_145/mul:z:0 lstm_145/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/add_1�
 lstm_145/lstm_cell_145/Sigmoid_2Sigmoid%lstm_145/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2"
 lstm_145/lstm_cell_145/Sigmoid_2�
lstm_145/lstm_cell_145/Relu_1Relu lstm_145/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/Relu_1�
lstm_145/lstm_cell_145/mul_2Mul$lstm_145/lstm_cell_145/Sigmoid_2:y:0+lstm_145/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_145/lstm_cell_145/mul_2�
&lstm_145/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2(
&lstm_145/TensorArrayV2_1/element_shape�
lstm_145/TensorArrayV2_1TensorListReserve/lstm_145/TensorArrayV2_1/element_shape:output:0!lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_145/TensorArrayV2_1`
lstm_145/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_145/time�
!lstm_145/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_145/while/maximum_iterations|
lstm_145/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_145/while/loop_counter�
lstm_145/whileWhile$lstm_145/while/loop_counter:output:0*lstm_145/while/maximum_iterations:output:0lstm_145/time:output:0!lstm_145/TensorArrayV2_1:handle:0lstm_145/zeros:output:0lstm_145/zeros_1:output:0!lstm_145/strided_slice_1:output:0@lstm_145/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_145_lstm_cell_145_matmul_readvariableop_resource7lstm_145_lstm_cell_145_matmul_1_readvariableop_resource6lstm_145_lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_145_while_body_2138307*'
condR
lstm_145_while_cond_2138306*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_145/while�
9lstm_145/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9lstm_145/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_145/TensorArrayV2Stack/TensorListStackTensorListStacklstm_145/while:output:3Blstm_145/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02-
+lstm_145/TensorArrayV2Stack/TensorListStack�
lstm_145/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_145/strided_slice_3/stack�
 lstm_145/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_145/strided_slice_3/stack_1�
 lstm_145/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_145/strided_slice_3/stack_2�
lstm_145/strided_slice_3StridedSlice4lstm_145/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_145/strided_slice_3/stack:output:0)lstm_145/strided_slice_3/stack_1:output:0)lstm_145/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_145/strided_slice_3�
lstm_145/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_145/transpose_1/perm�
lstm_145/transpose_1	Transpose4lstm_145/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_145/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_145/transpose_1x
lstm_145/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_145/runtime{
dropout_217/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_217/dropout/Const�
dropout_217/dropout/MulMullstm_145/transpose_1:y:0"dropout_217/dropout/Const:output:0*
T0*+
_output_shapes
:���������2
dropout_217/dropout/Mul~
dropout_217/dropout/ShapeShapelstm_145/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_217/dropout/Shape�
0dropout_217/dropout/random_uniform/RandomUniformRandomUniform"dropout_217/dropout/Shape:output:0*
T0*+
_output_shapes
:���������*
dtype022
0dropout_217/dropout/random_uniform/RandomUniform�
"dropout_217/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_217/dropout/GreaterEqual/y�
 dropout_217/dropout/GreaterEqualGreaterEqual9dropout_217/dropout/random_uniform/RandomUniform:output:0+dropout_217/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2"
 dropout_217/dropout/GreaterEqual�
dropout_217/dropout/CastCast$dropout_217/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
dropout_217/dropout/Cast�
dropout_217/dropout/Mul_1Muldropout_217/dropout/Mul:z:0dropout_217/dropout/Cast:y:0*
T0*+
_output_shapes
:���������2
dropout_217/dropout/Mul_1m
lstm_146/ShapeShapedropout_217/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_146/Shape�
lstm_146/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_146/strided_slice/stack�
lstm_146/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_146/strided_slice/stack_1�
lstm_146/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_146/strided_slice/stack_2�
lstm_146/strided_sliceStridedSlicelstm_146/Shape:output:0%lstm_146/strided_slice/stack:output:0'lstm_146/strided_slice/stack_1:output:0'lstm_146/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_146/strided_slicen
lstm_146/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/zeros/mul/y�
lstm_146/zeros/mulMullstm_146/strided_slice:output:0lstm_146/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_146/zeros/mulq
lstm_146/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_146/zeros/Less/y�
lstm_146/zeros/LessLesslstm_146/zeros/mul:z:0lstm_146/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_146/zeros/Lesst
lstm_146/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/zeros/packed/1�
lstm_146/zeros/packedPacklstm_146/strided_slice:output:0 lstm_146/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_146/zeros/packedq
lstm_146/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_146/zeros/Const�
lstm_146/zerosFilllstm_146/zeros/packed:output:0lstm_146/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_146/zerosr
lstm_146/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/zeros_1/mul/y�
lstm_146/zeros_1/mulMullstm_146/strided_slice:output:0lstm_146/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_146/zeros_1/mulu
lstm_146/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_146/zeros_1/Less/y�
lstm_146/zeros_1/LessLesslstm_146/zeros_1/mul:z:0 lstm_146/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_146/zeros_1/Lessx
lstm_146/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/zeros_1/packed/1�
lstm_146/zeros_1/packedPacklstm_146/strided_slice:output:0"lstm_146/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_146/zeros_1/packedu
lstm_146/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_146/zeros_1/Const�
lstm_146/zeros_1Fill lstm_146/zeros_1/packed:output:0lstm_146/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2
lstm_146/zeros_1�
lstm_146/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_146/transpose/perm�
lstm_146/transpose	Transposedropout_217/dropout/Mul_1:z:0 lstm_146/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_146/transposej
lstm_146/Shape_1Shapelstm_146/transpose:y:0*
T0*
_output_shapes
:2
lstm_146/Shape_1�
lstm_146/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_146/strided_slice_1/stack�
 lstm_146/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_1/stack_1�
 lstm_146/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_1/stack_2�
lstm_146/strided_slice_1StridedSlicelstm_146/Shape_1:output:0'lstm_146/strided_slice_1/stack:output:0)lstm_146/strided_slice_1/stack_1:output:0)lstm_146/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_146/strided_slice_1�
$lstm_146/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_146/TensorArrayV2/element_shape�
lstm_146/TensorArrayV2TensorListReserve-lstm_146/TensorArrayV2/element_shape:output:0!lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_146/TensorArrayV2�
>lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_146/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_146/transpose:y:0Glstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_146/TensorArrayUnstack/TensorListFromTensor�
lstm_146/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_146/strided_slice_2/stack�
 lstm_146/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_2/stack_1�
 lstm_146/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_2/stack_2�
lstm_146/strided_slice_2StridedSlicelstm_146/transpose:y:0'lstm_146/strided_slice_2/stack:output:0)lstm_146/strided_slice_2/stack_1:output:0)lstm_146/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_146/strided_slice_2�
,lstm_146/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp5lstm_146_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_146/lstm_cell_146/MatMul/ReadVariableOp�
lstm_146/lstm_cell_146/MatMulMatMul!lstm_146/strided_slice_2:output:04lstm_146/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_146/lstm_cell_146/MatMul�
.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp7lstm_146_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype020
.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp�
lstm_146/lstm_cell_146/MatMul_1MatMullstm_146/zeros:output:06lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
lstm_146/lstm_cell_146/MatMul_1�
lstm_146/lstm_cell_146/addAddV2'lstm_146/lstm_cell_146/MatMul:product:0)lstm_146/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_146/lstm_cell_146/add�
-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp6lstm_146_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp�
lstm_146/lstm_cell_146/BiasAddBiasAddlstm_146/lstm_cell_146/add:z:05lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
lstm_146/lstm_cell_146/BiasAdd�
&lstm_146/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_146/lstm_cell_146/split/split_dim�
lstm_146/lstm_cell_146/splitSplit/lstm_146/lstm_cell_146/split/split_dim:output:0'lstm_146/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_146/lstm_cell_146/split�
lstm_146/lstm_cell_146/SigmoidSigmoid%lstm_146/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2 
lstm_146/lstm_cell_146/Sigmoid�
 lstm_146/lstm_cell_146/Sigmoid_1Sigmoid%lstm_146/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2"
 lstm_146/lstm_cell_146/Sigmoid_1�
lstm_146/lstm_cell_146/mulMul$lstm_146/lstm_cell_146/Sigmoid_1:y:0lstm_146/zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/mul�
lstm_146/lstm_cell_146/ReluRelu%lstm_146/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/Relu�
lstm_146/lstm_cell_146/mul_1Mul"lstm_146/lstm_cell_146/Sigmoid:y:0)lstm_146/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/mul_1�
lstm_146/lstm_cell_146/add_1AddV2lstm_146/lstm_cell_146/mul:z:0 lstm_146/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/add_1�
 lstm_146/lstm_cell_146/Sigmoid_2Sigmoid%lstm_146/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2"
 lstm_146/lstm_cell_146/Sigmoid_2�
lstm_146/lstm_cell_146/Relu_1Relu lstm_146/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/Relu_1�
lstm_146/lstm_cell_146/mul_2Mul$lstm_146/lstm_cell_146/Sigmoid_2:y:0+lstm_146/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_146/lstm_cell_146/mul_2�
&lstm_146/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2(
&lstm_146/TensorArrayV2_1/element_shape�
lstm_146/TensorArrayV2_1TensorListReserve/lstm_146/TensorArrayV2_1/element_shape:output:0!lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_146/TensorArrayV2_1`
lstm_146/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_146/time�
!lstm_146/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_146/while/maximum_iterations|
lstm_146/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_146/while/loop_counter�
lstm_146/whileWhile$lstm_146/while/loop_counter:output:0*lstm_146/while/maximum_iterations:output:0lstm_146/time:output:0!lstm_146/TensorArrayV2_1:handle:0lstm_146/zeros:output:0lstm_146/zeros_1:output:0!lstm_146/strided_slice_1:output:0@lstm_146/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_146_lstm_cell_146_matmul_readvariableop_resource7lstm_146_lstm_cell_146_matmul_1_readvariableop_resource6lstm_146_lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_146_while_body_2138462*'
condR
lstm_146_while_cond_2138461*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations 2
lstm_146/while�
9lstm_146/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9lstm_146/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_146/TensorArrayV2Stack/TensorListStackTensorListStacklstm_146/while:output:3Blstm_146/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype02-
+lstm_146/TensorArrayV2Stack/TensorListStack�
lstm_146/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_146/strided_slice_3/stack�
 lstm_146/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_146/strided_slice_3/stack_1�
 lstm_146/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_146/strided_slice_3/stack_2�
lstm_146/strided_slice_3StridedSlice4lstm_146/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_146/strided_slice_3/stack:output:0)lstm_146/strided_slice_3/stack_1:output:0)lstm_146/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_146/strided_slice_3�
lstm_146/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_146/transpose_1/perm�
lstm_146/transpose_1	Transpose4lstm_146/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_146/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_146/transpose_1x
lstm_146/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_146/runtime{
dropout_218/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_218/dropout/Const�
dropout_218/dropout/MulMul!lstm_146/strided_slice_3:output:0"dropout_218/dropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout_218/dropout/Mul�
dropout_218/dropout/ShapeShape!lstm_146/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_218/dropout/Shape�
0dropout_218/dropout/random_uniform/RandomUniformRandomUniform"dropout_218/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype022
0dropout_218/dropout/random_uniform/RandomUniform�
"dropout_218/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_218/dropout/GreaterEqual/y�
 dropout_218/dropout/GreaterEqualGreaterEqual9dropout_218/dropout/random_uniform/RandomUniform:output:0+dropout_218/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2"
 dropout_218/dropout/GreaterEqual�
dropout_218/dropout/CastCast$dropout_218/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout_218/dropout/Cast�
dropout_218/dropout/Mul_1Muldropout_218/dropout/Mul:z:0dropout_218/dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout_218/dropout/Mul_1�
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_108/MatMul/ReadVariableOp�
dense_108/MatMulMatMuldropout_218/dropout/Mul_1:z:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_108/MatMul�
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_108/BiasAdd/ReadVariableOp�
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_108/BiasAddv
dense_108/ReluReludense_108/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_108/Relu{
dropout_219/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_219/dropout/Const�
dropout_219/dropout/MulMuldense_108/Relu:activations:0"dropout_219/dropout/Const:output:0*
T0*'
_output_shapes
:���������2
dropout_219/dropout/Mul�
dropout_219/dropout/ShapeShapedense_108/Relu:activations:0*
T0*
_output_shapes
:2
dropout_219/dropout/Shape�
0dropout_219/dropout/random_uniform/RandomUniformRandomUniform"dropout_219/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype022
0dropout_219/dropout/random_uniform/RandomUniform�
"dropout_219/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2$
"dropout_219/dropout/GreaterEqual/y�
 dropout_219/dropout/GreaterEqualGreaterEqual9dropout_219/dropout/random_uniform/RandomUniform:output:0+dropout_219/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2"
 dropout_219/dropout/GreaterEqual�
dropout_219/dropout/CastCast$dropout_219/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������2
dropout_219/dropout/Cast�
dropout_219/dropout/Mul_1Muldropout_219/dropout/Mul:z:0dropout_219/dropout/Cast:y:0*
T0*'
_output_shapes
:���������2
dropout_219/dropout/Mul_1�
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_109/MatMul/ReadVariableOp�
dense_109/MatMulMatMuldropout_219/dropout/Mul_1:z:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_109/MatMul�
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_109/BiasAdd/ReadVariableOp�
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_109/BiasAddu
IdentityIdentitydense_109/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp.^lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp-^lstm_144/lstm_cell_144/MatMul/ReadVariableOp/^lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp^lstm_144/while.^lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp-^lstm_145/lstm_cell_145/MatMul/ReadVariableOp/^lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp^lstm_145/while.^lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp-^lstm_146/lstm_cell_146/MatMul/ReadVariableOp/^lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp^lstm_146/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2^
-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp-lstm_144/lstm_cell_144/BiasAdd/ReadVariableOp2\
,lstm_144/lstm_cell_144/MatMul/ReadVariableOp,lstm_144/lstm_cell_144/MatMul/ReadVariableOp2`
.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp.lstm_144/lstm_cell_144/MatMul_1/ReadVariableOp2 
lstm_144/whilelstm_144/while2^
-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp-lstm_145/lstm_cell_145/BiasAdd/ReadVariableOp2\
,lstm_145/lstm_cell_145/MatMul/ReadVariableOp,lstm_145/lstm_cell_145/MatMul/ReadVariableOp2`
.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp.lstm_145/lstm_cell_145/MatMul_1/ReadVariableOp2 
lstm_145/whilelstm_145/while2^
-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp-lstm_146/lstm_cell_146/BiasAdd/ReadVariableOp2\
,lstm_146/lstm_cell_146/MatMul/ReadVariableOp,lstm_146/lstm_cell_146/MatMul/ReadVariableOp2`
.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp.lstm_146/lstm_cell_146/MatMul_1/ReadVariableOp2 
lstm_146/whilelstm_146/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2140186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2140186___redundant_placeholder05
1while_while_cond_2140186___redundant_placeholder15
1while_while_cond_2140186___redundant_placeholder25
1while_while_cond_2140186___redundant_placeholder3
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
while_cond_2139813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139813___redundant_placeholder05
1while_while_cond_2139813___redundant_placeholder15
1while_while_cond_2139813___redundant_placeholder25
1while_while_cond_2139813___redundant_placeholder3
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
while_body_2136182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_144_matmul_readvariableop_resource_0:@H
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_144_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_144_matmul_readvariableop_resource:@F
4while_lstm_cell_144_matmul_1_readvariableop_resource:@A
3while_lstm_cell_144_biasadd_readvariableop_resource:@��*while/lstm_cell_144/BiasAdd/ReadVariableOp�)while/lstm_cell_144/MatMul/ReadVariableOp�+while/lstm_cell_144/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp�
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul�
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp�
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul_1�
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/add�
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp�
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/BiasAdd�
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim�
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_144/split�
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid�
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_1�
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul�
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu�
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_1�
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/add_1�
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_2�
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu_1�
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
while_cond_2136511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136511___redundant_placeholder05
1while_while_cond_2136511___redundant_placeholder15
1while_while_cond_2136511___redundant_placeholder25
1while_while_cond_2136511___redundant_placeholder3
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
while_cond_2135147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2135147___redundant_placeholder05
1while_while_cond_2135147___redundant_placeholder15
1while_while_cond_2135147___redundant_placeholder25
1while_while_cond_2135147___redundant_placeholder3
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
while_body_2134308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_144_2134332_0:@/
while_lstm_cell_144_2134334_0:@+
while_lstm_cell_144_2134336_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_144_2134332:@-
while_lstm_cell_144_2134334:@)
while_lstm_cell_144_2134336:@��+while/lstm_cell_144/StatefulPartitionedCall�
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
+while/lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_144_2134332_0while_lstm_cell_144_2134334_0while_lstm_cell_144_2134336_0*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_21342942-
+while/lstm_cell_144/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_144/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_144/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_144/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_144/StatefulPartitionedCall*"
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
while_lstm_cell_144_2134332while_lstm_cell_144_2134332_0"<
while_lstm_cell_144_2134334while_lstm_cell_144_2134334_0"<
while_lstm_cell_144_2134336while_lstm_cell_144_2134336_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2Z
+while/lstm_cell_144/StatefulPartitionedCall+while/lstm_cell_144/StatefulPartitionedCall: 
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
while_cond_2134937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2134937___redundant_placeholder05
1while_while_cond_2134937___redundant_placeholder15
1while_while_cond_2134937___redundant_placeholder25
1while_while_cond_2134937___redundant_placeholder3
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
�L
�

lstm_146_while_body_2138462.
*lstm_146_while_lstm_146_while_loop_counter4
0lstm_146_while_lstm_146_while_maximum_iterations
lstm_146_while_placeholder 
lstm_146_while_placeholder_1 
lstm_146_while_placeholder_2 
lstm_146_while_placeholder_3-
)lstm_146_while_lstm_146_strided_slice_1_0i
elstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0:@Q
?lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0:@L
>lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0:@
lstm_146_while_identity
lstm_146_while_identity_1
lstm_146_while_identity_2
lstm_146_while_identity_3
lstm_146_while_identity_4
lstm_146_while_identity_5+
'lstm_146_while_lstm_146_strided_slice_1g
clstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensorM
;lstm_146_while_lstm_cell_146_matmul_readvariableop_resource:@O
=lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource:@J
<lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource:@��3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp�2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp�4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp�
@lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_146/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0lstm_146_while_placeholderIlstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype024
2lstm_146/while/TensorArrayV2Read/TensorListGetItem�
2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp=lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp�
#lstm_146/while/lstm_cell_146/MatMulMatMul9lstm_146/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_146/while/lstm_cell_146/MatMul�
4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp?lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp�
%lstm_146/while/lstm_cell_146/MatMul_1MatMullstm_146_while_placeholder_2<lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2'
%lstm_146/while/lstm_cell_146/MatMul_1�
 lstm_146/while/lstm_cell_146/addAddV2-lstm_146/while/lstm_cell_146/MatMul:product:0/lstm_146/while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2"
 lstm_146/while/lstm_cell_146/add�
3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp>lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp�
$lstm_146/while/lstm_cell_146/BiasAddBiasAdd$lstm_146/while/lstm_cell_146/add:z:0;lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2&
$lstm_146/while/lstm_cell_146/BiasAdd�
,lstm_146/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_146/while/lstm_cell_146/split/split_dim�
"lstm_146/while/lstm_cell_146/splitSplit5lstm_146/while/lstm_cell_146/split/split_dim:output:0-lstm_146/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2$
"lstm_146/while/lstm_cell_146/split�
$lstm_146/while/lstm_cell_146/SigmoidSigmoid+lstm_146/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2&
$lstm_146/while/lstm_cell_146/Sigmoid�
&lstm_146/while/lstm_cell_146/Sigmoid_1Sigmoid+lstm_146/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2(
&lstm_146/while/lstm_cell_146/Sigmoid_1�
 lstm_146/while/lstm_cell_146/mulMul*lstm_146/while/lstm_cell_146/Sigmoid_1:y:0lstm_146_while_placeholder_3*
T0*'
_output_shapes
:���������2"
 lstm_146/while/lstm_cell_146/mul�
!lstm_146/while/lstm_cell_146/ReluRelu+lstm_146/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2#
!lstm_146/while/lstm_cell_146/Relu�
"lstm_146/while/lstm_cell_146/mul_1Mul(lstm_146/while/lstm_cell_146/Sigmoid:y:0/lstm_146/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_146/while/lstm_cell_146/mul_1�
"lstm_146/while/lstm_cell_146/add_1AddV2$lstm_146/while/lstm_cell_146/mul:z:0&lstm_146/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2$
"lstm_146/while/lstm_cell_146/add_1�
&lstm_146/while/lstm_cell_146/Sigmoid_2Sigmoid+lstm_146/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2(
&lstm_146/while/lstm_cell_146/Sigmoid_2�
#lstm_146/while/lstm_cell_146/Relu_1Relu&lstm_146/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2%
#lstm_146/while/lstm_cell_146/Relu_1�
"lstm_146/while/lstm_cell_146/mul_2Mul*lstm_146/while/lstm_cell_146/Sigmoid_2:y:01lstm_146/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_146/while/lstm_cell_146/mul_2�
3lstm_146/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_146_while_placeholder_1lstm_146_while_placeholder&lstm_146/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_146/while/TensorArrayV2Write/TensorListSetItemn
lstm_146/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/while/add/y�
lstm_146/while/addAddV2lstm_146_while_placeholderlstm_146/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_146/while/addr
lstm_146/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/while/add_1/y�
lstm_146/while/add_1AddV2*lstm_146_while_lstm_146_while_loop_counterlstm_146/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_146/while/add_1�
lstm_146/while/IdentityIdentitylstm_146/while/add_1:z:0^lstm_146/while/NoOp*
T0*
_output_shapes
: 2
lstm_146/while/Identity�
lstm_146/while/Identity_1Identity0lstm_146_while_lstm_146_while_maximum_iterations^lstm_146/while/NoOp*
T0*
_output_shapes
: 2
lstm_146/while/Identity_1�
lstm_146/while/Identity_2Identitylstm_146/while/add:z:0^lstm_146/while/NoOp*
T0*
_output_shapes
: 2
lstm_146/while/Identity_2�
lstm_146/while/Identity_3IdentityClstm_146/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_146/while/NoOp*
T0*
_output_shapes
: 2
lstm_146/while/Identity_3�
lstm_146/while/Identity_4Identity&lstm_146/while/lstm_cell_146/mul_2:z:0^lstm_146/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_146/while/Identity_4�
lstm_146/while/Identity_5Identity&lstm_146/while/lstm_cell_146/add_1:z:0^lstm_146/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_146/while/Identity_5�
lstm_146/while/NoOpNoOp4^lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp3^lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp5^lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_146/while/NoOp";
lstm_146_while_identity lstm_146/while/Identity:output:0"?
lstm_146_while_identity_1"lstm_146/while/Identity_1:output:0"?
lstm_146_while_identity_2"lstm_146/while/Identity_2:output:0"?
lstm_146_while_identity_3"lstm_146/while/Identity_3:output:0"?
lstm_146_while_identity_4"lstm_146/while/Identity_4:output:0"?
lstm_146_while_identity_5"lstm_146/while/Identity_5:output:0"T
'lstm_146_while_lstm_146_strided_slice_1)lstm_146_while_lstm_146_strided_slice_1_0"~
<lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource>lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0"�
=lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource?lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0"|
;lstm_146_while_lstm_cell_146_matmul_readvariableop_resource=lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0"�
clstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensorelstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2j
3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp2h
2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp2l
4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
while_cond_2140337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2140337___redundant_placeholder05
1while_while_cond_2140337___redundant_placeholder15
1while_while_cond_2140337___redundant_placeholder25
1while_while_cond_2140337___redundant_placeholder3
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
�F
�
E__inference_lstm_145_layer_call_and_return_conditional_losses_2135007

inputs'
lstm_cell_145_2134925:@'
lstm_cell_145_2134927:@#
lstm_cell_145_2134929:@
identity��%lstm_cell_145/StatefulPartitionedCall�whileD
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
%lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_145_2134925lstm_cell_145_2134927lstm_cell_145_2134929*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_21349242'
%lstm_cell_145/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_145_2134925lstm_cell_145_2134927lstm_cell_145_2134929*
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
while_body_2134938*
condR
while_cond_2134937*K
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

Identity~
NoOpNoOp&^lstm_cell_145/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_145/StatefulPartitionedCall%lstm_cell_145/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
g
H__inference_dropout_217_layer_call_and_return_conditional_losses_2136940

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
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������*
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
:���������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2139360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139360___redundant_placeholder05
1while_while_cond_2139360___redundant_placeholder15
1while_while_cond_2139360___redundant_placeholder25
1while_while_cond_2139360___redundant_placeholder3
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
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2140764

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
�
*__inference_lstm_145_layer_call_fn_2139261
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
GPU 2J 8� *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_21350072
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
�
�
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2135554

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
�%
�
while_body_2134938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_145_2134962_0:@/
while_lstm_cell_145_2134964_0:@+
while_lstm_cell_145_2134966_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_145_2134962:@-
while_lstm_cell_145_2134964:@)
while_lstm_cell_145_2134966:@��+while/lstm_cell_145/StatefulPartitionedCall�
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
+while/lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_145_2134962_0while_lstm_cell_145_2134964_0while_lstm_cell_145_2134966_0*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_21349242-
+while/lstm_cell_145/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_145/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_145/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_145/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_145/StatefulPartitionedCall*"
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
while_lstm_cell_145_2134962while_lstm_cell_145_2134962_0"<
while_lstm_cell_145_2134964while_lstm_cell_145_2134964_0"<
while_lstm_cell_145_2134966while_lstm_cell_145_2134966_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2Z
+while/lstm_cell_145/StatefulPartitionedCall+while/lstm_cell_145/StatefulPartitionedCall: 
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
�\
�
E__inference_lstm_144_layer_call_and_return_conditional_losses_2139223

inputs>
,lstm_cell_144_matmul_readvariableop_resource:@@
.lstm_cell_144_matmul_1_readvariableop_resource:@;
-lstm_cell_144_biasadd_readvariableop_resource:@
identity��$lstm_cell_144/BiasAdd/ReadVariableOp�#lstm_cell_144/MatMul/ReadVariableOp�%lstm_cell_144/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp�
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul�
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp�
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul_1�
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/add�
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp�
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/BiasAdd�
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim�
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_144/split�
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid�
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_1�
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul�
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu�
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_1�
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/add_1�
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu_1�
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_2139139*
condR
while_cond_2139138*K
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
:���������*
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
:���������2
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
:���������2

Identity�
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�\
�
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140120
inputs_0>
,lstm_cell_146_matmul_readvariableop_resource:@@
.lstm_cell_146_matmul_1_readvariableop_resource:@;
-lstm_cell_146_biasadd_readvariableop_resource:@
identity��$lstm_cell_146/BiasAdd/ReadVariableOp�#lstm_cell_146/MatMul/ReadVariableOp�%lstm_cell_146/MatMul_1/ReadVariableOp�whileF
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp�
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul�
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp�
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul_1�
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/add�
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp�
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/BiasAdd�
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim�
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_146/split�
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid�
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_1�
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul�
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu�
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_1�
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/add_1�
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu_1�
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_2140036*
condR
while_cond_2140035*K
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
g
H__inference_dropout_217_layer_call_and_return_conditional_losses_2139925

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
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������*
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
:���������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)sequential_36_lstm_146_while_cond_2134119J
Fsequential_36_lstm_146_while_sequential_36_lstm_146_while_loop_counterP
Lsequential_36_lstm_146_while_sequential_36_lstm_146_while_maximum_iterations,
(sequential_36_lstm_146_while_placeholder.
*sequential_36_lstm_146_while_placeholder_1.
*sequential_36_lstm_146_while_placeholder_2.
*sequential_36_lstm_146_while_placeholder_3L
Hsequential_36_lstm_146_while_less_sequential_36_lstm_146_strided_slice_1c
_sequential_36_lstm_146_while_sequential_36_lstm_146_while_cond_2134119___redundant_placeholder0c
_sequential_36_lstm_146_while_sequential_36_lstm_146_while_cond_2134119___redundant_placeholder1c
_sequential_36_lstm_146_while_sequential_36_lstm_146_while_cond_2134119___redundant_placeholder2c
_sequential_36_lstm_146_while_sequential_36_lstm_146_while_cond_2134119___redundant_placeholder3)
%sequential_36_lstm_146_while_identity
�
!sequential_36/lstm_146/while/LessLess(sequential_36_lstm_146_while_placeholderHsequential_36_lstm_146_while_less_sequential_36_lstm_146_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_36/lstm_146/while/Less�
%sequential_36/lstm_146/while/IdentityIdentity%sequential_36/lstm_146/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_36/lstm_146/while/Identity"W
%sequential_36_lstm_146_while_identity.sequential_36/lstm_146/while/Identity:output:0*(
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
-__inference_dropout_218_layer_call_fn_2140583

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
H__inference_dropout_218_layer_call_and_return_conditional_losses_21367442
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
while_cond_2135567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2135567___redundant_placeholder05
1while_while_cond_2135567___redundant_placeholder15
1while_while_cond_2135567___redundant_placeholder25
1while_while_cond_2135567___redundant_placeholder3
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
while_cond_2137022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2137022___redundant_placeholder05
1while_while_cond_2137022___redundant_placeholder15
1while_while_cond_2137022___redundant_placeholder25
1while_while_cond_2137022___redundant_placeholder3
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
while_body_2139361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_145_matmul_readvariableop_resource_0:@H
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_145_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_145_matmul_readvariableop_resource:@F
4while_lstm_cell_145_matmul_1_readvariableop_resource:@A
3while_lstm_cell_145_biasadd_readvariableop_resource:@��*while/lstm_cell_145/BiasAdd/ReadVariableOp�)while/lstm_cell_145/MatMul/ReadVariableOp�+while/lstm_cell_145/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp�
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul�
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp�
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul_1�
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/add�
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp�
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/BiasAdd�
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim�
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_145/split�
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid�
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_1�
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul�
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu�
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_1�
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/add_1�
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_2�
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu_1�
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
�\
�
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140271
inputs_0>
,lstm_cell_146_matmul_readvariableop_resource:@@
.lstm_cell_146_matmul_1_readvariableop_resource:@;
-lstm_cell_146_biasadd_readvariableop_resource:@
identity��$lstm_cell_146/BiasAdd/ReadVariableOp�#lstm_cell_146/MatMul/ReadVariableOp�%lstm_cell_146/MatMul_1/ReadVariableOp�whileF
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp�
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul�
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp�
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul_1�
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/add�
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp�
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/BiasAdd�
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim�
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_146/split�
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid�
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_1�
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul�
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu�
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_1�
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/add_1�
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu_1�
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_2140187*
condR
while_cond_2140186*K
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2140928

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
�\
�
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139898

inputs>
,lstm_cell_145_matmul_readvariableop_resource:@@
.lstm_cell_145_matmul_1_readvariableop_resource:@;
-lstm_cell_145_biasadd_readvariableop_resource:@
identity��$lstm_cell_145/BiasAdd/ReadVariableOp�#lstm_cell_145/MatMul/ReadVariableOp�%lstm_cell_145/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp�
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul�
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp�
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul_1�
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/add�
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp�
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/BiasAdd�
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim�
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_145/split�
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid�
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_1�
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul�
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu�
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_1�
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/add_1�
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu_1�
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_2139814*
condR
while_cond_2139813*K
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
:���������*
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
:���������2
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
:���������2

Identity�
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�\
�
E__inference_lstm_144_layer_call_and_return_conditional_losses_2138921
inputs_0>
,lstm_cell_144_matmul_readvariableop_resource:@@
.lstm_cell_144_matmul_1_readvariableop_resource:@;
-lstm_cell_144_biasadd_readvariableop_resource:@
identity��$lstm_cell_144/BiasAdd/ReadVariableOp�#lstm_cell_144/MatMul/ReadVariableOp�%lstm_cell_144/MatMul_1/ReadVariableOp�whileF
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp�
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul�
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp�
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul_1�
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/add�
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp�
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/BiasAdd�
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim�
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_144/split�
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid�
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_1�
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul�
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu�
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_1�
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/add_1�
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu_1�
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_2138837*
condR
while_cond_2138836*K
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
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�F
�
E__inference_lstm_146_layer_call_and_return_conditional_losses_2135847

inputs'
lstm_cell_146_2135765:@'
lstm_cell_146_2135767:@#
lstm_cell_146_2135769:@
identity��%lstm_cell_146/StatefulPartitionedCall�whileD
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
%lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_146_2135765lstm_cell_146_2135767lstm_cell_146_2135769*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_21357002'
%lstm_cell_146/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_146_2135765lstm_cell_146_2135767lstm_cell_146_2135769*
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
while_body_2135778*
condR
while_cond_2135777*K
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

Identity~
NoOpNoOp&^lstm_cell_146/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_146/StatefulPartitionedCall%lstm_cell_146/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�?
�
while_body_2137023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_145_matmul_readvariableop_resource_0:@H
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_145_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_145_matmul_readvariableop_resource:@F
4while_lstm_cell_145_matmul_1_readvariableop_resource:@A
3while_lstm_cell_145_biasadd_readvariableop_resource:@��*while/lstm_cell_145/BiasAdd/ReadVariableOp�)while/lstm_cell_145/MatMul/ReadVariableOp�+while/lstm_cell_145/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp�
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul�
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp�
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul_1�
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/add�
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp�
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/BiasAdd�
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim�
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_145/split�
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid�
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_1�
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul�
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu�
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_1�
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/add_1�
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_2�
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu_1�
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_144_layer_call_fn_2138597
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
GPU 2J 8� *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_21345872
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
�
�
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2134294

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
�
�
+__inference_dense_108_layer_call_fn_2140609

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
GPU 2J 8� *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_21366222
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
�`
�
)sequential_36_lstm_145_while_body_2133972J
Fsequential_36_lstm_145_while_sequential_36_lstm_145_while_loop_counterP
Lsequential_36_lstm_145_while_sequential_36_lstm_145_while_maximum_iterations,
(sequential_36_lstm_145_while_placeholder.
*sequential_36_lstm_145_while_placeholder_1.
*sequential_36_lstm_145_while_placeholder_2.
*sequential_36_lstm_145_while_placeholder_3I
Esequential_36_lstm_145_while_sequential_36_lstm_145_strided_slice_1_0�
�sequential_36_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_145_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_36_lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0:@_
Msequential_36_lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0:@Z
Lsequential_36_lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0:@)
%sequential_36_lstm_145_while_identity+
'sequential_36_lstm_145_while_identity_1+
'sequential_36_lstm_145_while_identity_2+
'sequential_36_lstm_145_while_identity_3+
'sequential_36_lstm_145_while_identity_4+
'sequential_36_lstm_145_while_identity_5G
Csequential_36_lstm_145_while_sequential_36_lstm_145_strided_slice_1�
sequential_36_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_145_tensorarrayunstack_tensorlistfromtensor[
Isequential_36_lstm_145_while_lstm_cell_145_matmul_readvariableop_resource:@]
Ksequential_36_lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource:@X
Jsequential_36_lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource:@��Asequential_36/lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp�@sequential_36/lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp�Bsequential_36/lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp�
Nsequential_36/lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2P
Nsequential_36/lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape�
@sequential_36/lstm_145/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_36_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_145_tensorarrayunstack_tensorlistfromtensor_0(sequential_36_lstm_145_while_placeholderWsequential_36/lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02B
@sequential_36/lstm_145/while/TensorArrayV2Read/TensorListGetItem�
@sequential_36/lstm_145/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOpKsequential_36_lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_36/lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp�
1sequential_36/lstm_145/while/lstm_cell_145/MatMulMatMulGsequential_36/lstm_145/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_36/lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@23
1sequential_36/lstm_145/while/lstm_cell_145/MatMul�
Bsequential_36/lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOpMsequential_36_lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02D
Bsequential_36/lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp�
3sequential_36/lstm_145/while/lstm_cell_145/MatMul_1MatMul*sequential_36_lstm_145_while_placeholder_2Jsequential_36/lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@25
3sequential_36/lstm_145/while/lstm_cell_145/MatMul_1�
.sequential_36/lstm_145/while/lstm_cell_145/addAddV2;sequential_36/lstm_145/while/lstm_cell_145/MatMul:product:0=sequential_36/lstm_145/while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@20
.sequential_36/lstm_145/while/lstm_cell_145/add�
Asequential_36/lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOpLsequential_36_lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02C
Asequential_36/lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp�
2sequential_36/lstm_145/while/lstm_cell_145/BiasAddBiasAdd2sequential_36/lstm_145/while/lstm_cell_145/add:z:0Isequential_36/lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@24
2sequential_36/lstm_145/while/lstm_cell_145/BiasAdd�
:sequential_36/lstm_145/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_36/lstm_145/while/lstm_cell_145/split/split_dim�
0sequential_36/lstm_145/while/lstm_cell_145/splitSplitCsequential_36/lstm_145/while/lstm_cell_145/split/split_dim:output:0;sequential_36/lstm_145/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split22
0sequential_36/lstm_145/while/lstm_cell_145/split�
2sequential_36/lstm_145/while/lstm_cell_145/SigmoidSigmoid9sequential_36/lstm_145/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������24
2sequential_36/lstm_145/while/lstm_cell_145/Sigmoid�
4sequential_36/lstm_145/while/lstm_cell_145/Sigmoid_1Sigmoid9sequential_36/lstm_145/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������26
4sequential_36/lstm_145/while/lstm_cell_145/Sigmoid_1�
.sequential_36/lstm_145/while/lstm_cell_145/mulMul8sequential_36/lstm_145/while/lstm_cell_145/Sigmoid_1:y:0*sequential_36_lstm_145_while_placeholder_3*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_145/while/lstm_cell_145/mul�
/sequential_36/lstm_145/while/lstm_cell_145/ReluRelu9sequential_36/lstm_145/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������21
/sequential_36/lstm_145/while/lstm_cell_145/Relu�
0sequential_36/lstm_145/while/lstm_cell_145/mul_1Mul6sequential_36/lstm_145/while/lstm_cell_145/Sigmoid:y:0=sequential_36/lstm_145/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_145/while/lstm_cell_145/mul_1�
0sequential_36/lstm_145/while/lstm_cell_145/add_1AddV22sequential_36/lstm_145/while/lstm_cell_145/mul:z:04sequential_36/lstm_145/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_145/while/lstm_cell_145/add_1�
4sequential_36/lstm_145/while/lstm_cell_145/Sigmoid_2Sigmoid9sequential_36/lstm_145/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������26
4sequential_36/lstm_145/while/lstm_cell_145/Sigmoid_2�
1sequential_36/lstm_145/while/lstm_cell_145/Relu_1Relu4sequential_36/lstm_145/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������23
1sequential_36/lstm_145/while/lstm_cell_145/Relu_1�
0sequential_36/lstm_145/while/lstm_cell_145/mul_2Mul8sequential_36/lstm_145/while/lstm_cell_145/Sigmoid_2:y:0?sequential_36/lstm_145/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_145/while/lstm_cell_145/mul_2�
Asequential_36/lstm_145/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_36_lstm_145_while_placeholder_1(sequential_36_lstm_145_while_placeholder4sequential_36/lstm_145/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_36/lstm_145/while/TensorArrayV2Write/TensorListSetItem�
"sequential_36/lstm_145/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_36/lstm_145/while/add/y�
 sequential_36/lstm_145/while/addAddV2(sequential_36_lstm_145_while_placeholder+sequential_36/lstm_145/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_36/lstm_145/while/add�
$sequential_36/lstm_145/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_36/lstm_145/while/add_1/y�
"sequential_36/lstm_145/while/add_1AddV2Fsequential_36_lstm_145_while_sequential_36_lstm_145_while_loop_counter-sequential_36/lstm_145/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_36/lstm_145/while/add_1�
%sequential_36/lstm_145/while/IdentityIdentity&sequential_36/lstm_145/while/add_1:z:0"^sequential_36/lstm_145/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_36/lstm_145/while/Identity�
'sequential_36/lstm_145/while/Identity_1IdentityLsequential_36_lstm_145_while_sequential_36_lstm_145_while_maximum_iterations"^sequential_36/lstm_145/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_145/while/Identity_1�
'sequential_36/lstm_145/while/Identity_2Identity$sequential_36/lstm_145/while/add:z:0"^sequential_36/lstm_145/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_145/while/Identity_2�
'sequential_36/lstm_145/while/Identity_3IdentityQsequential_36/lstm_145/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_36/lstm_145/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_145/while/Identity_3�
'sequential_36/lstm_145/while/Identity_4Identity4sequential_36/lstm_145/while/lstm_cell_145/mul_2:z:0"^sequential_36/lstm_145/while/NoOp*
T0*'
_output_shapes
:���������2)
'sequential_36/lstm_145/while/Identity_4�
'sequential_36/lstm_145/while/Identity_5Identity4sequential_36/lstm_145/while/lstm_cell_145/add_1:z:0"^sequential_36/lstm_145/while/NoOp*
T0*'
_output_shapes
:���������2)
'sequential_36/lstm_145/while/Identity_5�
!sequential_36/lstm_145/while/NoOpNoOpB^sequential_36/lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOpA^sequential_36/lstm_145/while/lstm_cell_145/MatMul/ReadVariableOpC^sequential_36/lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_36/lstm_145/while/NoOp"W
%sequential_36_lstm_145_while_identity.sequential_36/lstm_145/while/Identity:output:0"[
'sequential_36_lstm_145_while_identity_10sequential_36/lstm_145/while/Identity_1:output:0"[
'sequential_36_lstm_145_while_identity_20sequential_36/lstm_145/while/Identity_2:output:0"[
'sequential_36_lstm_145_while_identity_30sequential_36/lstm_145/while/Identity_3:output:0"[
'sequential_36_lstm_145_while_identity_40sequential_36/lstm_145/while/Identity_4:output:0"[
'sequential_36_lstm_145_while_identity_50sequential_36/lstm_145/while/Identity_5:output:0"�
Jsequential_36_lstm_145_while_lstm_cell_145_biasadd_readvariableop_resourceLsequential_36_lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0"�
Ksequential_36_lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resourceMsequential_36_lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0"�
Isequential_36_lstm_145_while_lstm_cell_145_matmul_readvariableop_resourceKsequential_36_lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0"�
Csequential_36_lstm_145_while_sequential_36_lstm_145_strided_slice_1Esequential_36_lstm_145_while_sequential_36_lstm_145_strided_slice_1_0"�
sequential_36_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_145_tensorarrayunstack_tensorlistfromtensor�sequential_36_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_145_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2�
Asequential_36/lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOpAsequential_36/lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp2�
@sequential_36/lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp@sequential_36/lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp2�
Bsequential_36/lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOpBsequential_36/lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_145_layer_call_fn_2140798

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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_21350702
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
�L
�

lstm_144_while_body_2138152.
*lstm_144_while_lstm_144_while_loop_counter4
0lstm_144_while_lstm_144_while_maximum_iterations
lstm_144_while_placeholder 
lstm_144_while_placeholder_1 
lstm_144_while_placeholder_2 
lstm_144_while_placeholder_3-
)lstm_144_while_lstm_144_strided_slice_1_0i
elstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0:@Q
?lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0:@L
>lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0:@
lstm_144_while_identity
lstm_144_while_identity_1
lstm_144_while_identity_2
lstm_144_while_identity_3
lstm_144_while_identity_4
lstm_144_while_identity_5+
'lstm_144_while_lstm_144_strided_slice_1g
clstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensorM
;lstm_144_while_lstm_cell_144_matmul_readvariableop_resource:@O
=lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource:@J
<lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource:@��3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp�2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp�4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp�
@lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_144/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0lstm_144_while_placeholderIlstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype024
2lstm_144/while/TensorArrayV2Read/TensorListGetItem�
2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp=lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp�
#lstm_144/while/lstm_cell_144/MatMulMatMul9lstm_144/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_144/while/lstm_cell_144/MatMul�
4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp?lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp�
%lstm_144/while/lstm_cell_144/MatMul_1MatMullstm_144_while_placeholder_2<lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2'
%lstm_144/while/lstm_cell_144/MatMul_1�
 lstm_144/while/lstm_cell_144/addAddV2-lstm_144/while/lstm_cell_144/MatMul:product:0/lstm_144/while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2"
 lstm_144/while/lstm_cell_144/add�
3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp>lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp�
$lstm_144/while/lstm_cell_144/BiasAddBiasAdd$lstm_144/while/lstm_cell_144/add:z:0;lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2&
$lstm_144/while/lstm_cell_144/BiasAdd�
,lstm_144/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_144/while/lstm_cell_144/split/split_dim�
"lstm_144/while/lstm_cell_144/splitSplit5lstm_144/while/lstm_cell_144/split/split_dim:output:0-lstm_144/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2$
"lstm_144/while/lstm_cell_144/split�
$lstm_144/while/lstm_cell_144/SigmoidSigmoid+lstm_144/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2&
$lstm_144/while/lstm_cell_144/Sigmoid�
&lstm_144/while/lstm_cell_144/Sigmoid_1Sigmoid+lstm_144/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2(
&lstm_144/while/lstm_cell_144/Sigmoid_1�
 lstm_144/while/lstm_cell_144/mulMul*lstm_144/while/lstm_cell_144/Sigmoid_1:y:0lstm_144_while_placeholder_3*
T0*'
_output_shapes
:���������2"
 lstm_144/while/lstm_cell_144/mul�
!lstm_144/while/lstm_cell_144/ReluRelu+lstm_144/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2#
!lstm_144/while/lstm_cell_144/Relu�
"lstm_144/while/lstm_cell_144/mul_1Mul(lstm_144/while/lstm_cell_144/Sigmoid:y:0/lstm_144/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_144/while/lstm_cell_144/mul_1�
"lstm_144/while/lstm_cell_144/add_1AddV2$lstm_144/while/lstm_cell_144/mul:z:0&lstm_144/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2$
"lstm_144/while/lstm_cell_144/add_1�
&lstm_144/while/lstm_cell_144/Sigmoid_2Sigmoid+lstm_144/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2(
&lstm_144/while/lstm_cell_144/Sigmoid_2�
#lstm_144/while/lstm_cell_144/Relu_1Relu&lstm_144/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2%
#lstm_144/while/lstm_cell_144/Relu_1�
"lstm_144/while/lstm_cell_144/mul_2Mul*lstm_144/while/lstm_cell_144/Sigmoid_2:y:01lstm_144/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_144/while/lstm_cell_144/mul_2�
3lstm_144/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_144_while_placeholder_1lstm_144_while_placeholder&lstm_144/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_144/while/TensorArrayV2Write/TensorListSetItemn
lstm_144/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/while/add/y�
lstm_144/while/addAddV2lstm_144_while_placeholderlstm_144/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_144/while/addr
lstm_144/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_144/while/add_1/y�
lstm_144/while/add_1AddV2*lstm_144_while_lstm_144_while_loop_counterlstm_144/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_144/while/add_1�
lstm_144/while/IdentityIdentitylstm_144/while/add_1:z:0^lstm_144/while/NoOp*
T0*
_output_shapes
: 2
lstm_144/while/Identity�
lstm_144/while/Identity_1Identity0lstm_144_while_lstm_144_while_maximum_iterations^lstm_144/while/NoOp*
T0*
_output_shapes
: 2
lstm_144/while/Identity_1�
lstm_144/while/Identity_2Identitylstm_144/while/add:z:0^lstm_144/while/NoOp*
T0*
_output_shapes
: 2
lstm_144/while/Identity_2�
lstm_144/while/Identity_3IdentityClstm_144/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_144/while/NoOp*
T0*
_output_shapes
: 2
lstm_144/while/Identity_3�
lstm_144/while/Identity_4Identity&lstm_144/while/lstm_cell_144/mul_2:z:0^lstm_144/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_144/while/Identity_4�
lstm_144/while/Identity_5Identity&lstm_144/while/lstm_cell_144/add_1:z:0^lstm_144/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_144/while/Identity_5�
lstm_144/while/NoOpNoOp4^lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp3^lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp5^lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_144/while/NoOp";
lstm_144_while_identity lstm_144/while/Identity:output:0"?
lstm_144_while_identity_1"lstm_144/while/Identity_1:output:0"?
lstm_144_while_identity_2"lstm_144/while/Identity_2:output:0"?
lstm_144_while_identity_3"lstm_144/while/Identity_3:output:0"?
lstm_144_while_identity_4"lstm_144/while/Identity_4:output:0"?
lstm_144_while_identity_5"lstm_144/while/Identity_5:output:0"T
'lstm_144_while_lstm_144_strided_slice_1)lstm_144_while_lstm_144_strided_slice_1_0"~
<lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource>lstm_144_while_lstm_cell_144_biasadd_readvariableop_resource_0"�
=lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource?lstm_144_while_lstm_cell_144_matmul_1_readvariableop_resource_0"|
;lstm_144_while_lstm_cell_144_matmul_readvariableop_resource=lstm_144_while_lstm_cell_144_matmul_readvariableop_resource_0"�
clstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensorelstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2j
3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp3lstm_144/while/lstm_cell_144/BiasAdd/ReadVariableOp2h
2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp2lstm_144/while/lstm_cell_144/MatMul/ReadVariableOp2l
4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp4lstm_144/while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
F__inference_dense_108_layer_call_and_return_conditional_losses_2140620

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
�?
�
while_body_2140187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:@H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:@F
4while_lstm_cell_146_matmul_1_readvariableop_resource:@A
3while_lstm_cell_146_biasadd_readvariableop_resource:@��*while/lstm_cell_146/BiasAdd/ReadVariableOp�)while/lstm_cell_146/MatMul/ReadVariableOp�+while/lstm_cell_146/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp�
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul�
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp�
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul_1�
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/add�
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp�
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/BiasAdd�
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim�
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_146/split�
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid�
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_1�
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul�
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu�
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_1�
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/add_1�
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_2�
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu_1�
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
while_body_2137219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_144_matmul_readvariableop_resource_0:@H
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_144_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_144_matmul_readvariableop_resource:@F
4while_lstm_cell_144_matmul_1_readvariableop_resource:@A
3while_lstm_cell_144_biasadd_readvariableop_resource:@��*while/lstm_cell_144/BiasAdd/ReadVariableOp�)while/lstm_cell_144/MatMul/ReadVariableOp�+while/lstm_cell_144/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp�
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul�
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp�
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul_1�
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/add�
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp�
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/BiasAdd�
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim�
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_144/split�
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid�
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_1�
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul�
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu�
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_1�
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/add_1�
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_2�
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu_1�
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
while_cond_2139511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139511___redundant_placeholder05
1while_while_cond_2139511___redundant_placeholder15
1while_while_cond_2139511___redundant_placeholder25
1while_while_cond_2139511___redundant_placeholder3
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
H__inference_dropout_216_layer_call_and_return_conditional_losses_2137136

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
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������*
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
:���������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
� 
#__inference__traced_restore_2141281
file_prefix3
!assignvariableop_dense_108_kernel:/
!assignvariableop_1_dense_108_bias:5
#assignvariableop_2_dense_109_kernel:/
!assignvariableop_3_dense_109_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: B
0assignvariableop_9_lstm_144_lstm_cell_144_kernel:@M
;assignvariableop_10_lstm_144_lstm_cell_144_recurrent_kernel:@=
/assignvariableop_11_lstm_144_lstm_cell_144_bias:@C
1assignvariableop_12_lstm_145_lstm_cell_145_kernel:@M
;assignvariableop_13_lstm_145_lstm_cell_145_recurrent_kernel:@=
/assignvariableop_14_lstm_145_lstm_cell_145_bias:@C
1assignvariableop_15_lstm_146_lstm_cell_146_kernel:@M
;assignvariableop_16_lstm_146_lstm_cell_146_recurrent_kernel:@=
/assignvariableop_17_lstm_146_lstm_cell_146_bias:@#
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: =
+assignvariableop_22_adam_dense_108_kernel_m:7
)assignvariableop_23_adam_dense_108_bias_m:=
+assignvariableop_24_adam_dense_109_kernel_m:7
)assignvariableop_25_adam_dense_109_bias_m:J
8assignvariableop_26_adam_lstm_144_lstm_cell_144_kernel_m:@T
Bassignvariableop_27_adam_lstm_144_lstm_cell_144_recurrent_kernel_m:@D
6assignvariableop_28_adam_lstm_144_lstm_cell_144_bias_m:@J
8assignvariableop_29_adam_lstm_145_lstm_cell_145_kernel_m:@T
Bassignvariableop_30_adam_lstm_145_lstm_cell_145_recurrent_kernel_m:@D
6assignvariableop_31_adam_lstm_145_lstm_cell_145_bias_m:@J
8assignvariableop_32_adam_lstm_146_lstm_cell_146_kernel_m:@T
Bassignvariableop_33_adam_lstm_146_lstm_cell_146_recurrent_kernel_m:@D
6assignvariableop_34_adam_lstm_146_lstm_cell_146_bias_m:@=
+assignvariableop_35_adam_dense_108_kernel_v:7
)assignvariableop_36_adam_dense_108_bias_v:=
+assignvariableop_37_adam_dense_109_kernel_v:7
)assignvariableop_38_adam_dense_109_bias_v:J
8assignvariableop_39_adam_lstm_144_lstm_cell_144_kernel_v:@T
Bassignvariableop_40_adam_lstm_144_lstm_cell_144_recurrent_kernel_v:@D
6assignvariableop_41_adam_lstm_144_lstm_cell_144_bias_v:@J
8assignvariableop_42_adam_lstm_145_lstm_cell_145_kernel_v:@T
Bassignvariableop_43_adam_lstm_145_lstm_cell_145_recurrent_kernel_v:@D
6assignvariableop_44_adam_lstm_145_lstm_cell_145_bias_v:@J
8assignvariableop_45_adam_lstm_146_lstm_cell_146_kernel_v:@T
Bassignvariableop_46_adam_lstm_146_lstm_cell_146_recurrent_kernel_v:@D
6assignvariableop_47_adam_lstm_146_lstm_cell_146_bias_v:@
identity_49��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*�
value�B�1B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_dense_108_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_108_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_109_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_109_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp0assignvariableop_9_lstm_144_lstm_cell_144_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp;assignvariableop_10_lstm_144_lstm_cell_144_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_144_lstm_cell_144_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp1assignvariableop_12_lstm_145_lstm_cell_145_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp;assignvariableop_13_lstm_145_lstm_cell_145_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_lstm_145_lstm_cell_145_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp1assignvariableop_15_lstm_146_lstm_cell_146_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp;assignvariableop_16_lstm_146_lstm_cell_146_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp/assignvariableop_17_lstm_146_lstm_cell_146_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_dense_108_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_108_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_dense_109_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_109_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_144_lstm_cell_144_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_144_lstm_cell_144_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_144_lstm_cell_144_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp8assignvariableop_29_adam_lstm_145_lstm_cell_145_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOpBassignvariableop_30_adam_lstm_145_lstm_cell_145_recurrent_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_145_lstm_cell_145_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp8assignvariableop_32_adam_lstm_146_lstm_cell_146_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOpBassignvariableop_33_adam_lstm_146_lstm_cell_146_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_146_lstm_cell_146_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_108_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_108_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_109_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_109_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp8assignvariableop_39_adam_lstm_144_lstm_cell_144_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOpBassignvariableop_40_adam_lstm_144_lstm_cell_144_recurrent_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_lstm_144_lstm_cell_144_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp8assignvariableop_42_adam_lstm_145_lstm_cell_145_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOpBassignvariableop_43_adam_lstm_145_lstm_cell_145_recurrent_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_lstm_145_lstm_cell_145_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_lstm_146_lstm_cell_146_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOpBassignvariableop_46_adam_lstm_146_lstm_cell_146_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_lstm_146_lstm_cell_146_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_479
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_48f
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_49�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_49Identity_49:output:0*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_47AssignVariableOp_472(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
while_cond_2136826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136826___redundant_placeholder05
1while_while_cond_2136826___redundant_placeholder15
1while_while_cond_2136826___redundant_placeholder25
1while_while_cond_2136826___redundant_placeholder3
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
�F
�
E__inference_lstm_144_layer_call_and_return_conditional_losses_2134377

inputs'
lstm_cell_144_2134295:@'
lstm_cell_144_2134297:@#
lstm_cell_144_2134299:@
identity��%lstm_cell_144/StatefulPartitionedCall�whileD
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
%lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_144_2134295lstm_cell_144_2134297lstm_cell_144_2134299*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_21342942'
%lstm_cell_144/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_144_2134295lstm_cell_144_2134297lstm_cell_144_2134299*
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
while_body_2134308*
condR
while_cond_2134307*K
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

Identity~
NoOpNoOp&^lstm_cell_144/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_144/StatefulPartitionedCall%lstm_cell_144/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�?
�
while_body_2139139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_144_matmul_readvariableop_resource_0:@H
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_144_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_144_matmul_readvariableop_resource:@F
4while_lstm_cell_144_matmul_1_readvariableop_resource:@A
3while_lstm_cell_144_biasadd_readvariableop_resource:@��*while/lstm_cell_144/BiasAdd/ReadVariableOp�)while/lstm_cell_144/MatMul/ReadVariableOp�+while/lstm_cell_144/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp�
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul�
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp�
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul_1�
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/add�
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp�
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/BiasAdd�
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim�
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_144/split�
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid�
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_1�
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul�
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu�
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_1�
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/add_1�
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_2�
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu_1�
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
while_body_2136347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_145_matmul_readvariableop_resource_0:@H
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_145_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_145_matmul_readvariableop_resource:@F
4while_lstm_cell_145_matmul_1_readvariableop_resource:@A
3while_lstm_cell_145_biasadd_readvariableop_resource:@��*while/lstm_cell_145/BiasAdd/ReadVariableOp�)while/lstm_cell_145/MatMul/ReadVariableOp�+while/lstm_cell_145/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp�
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul�
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp�
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul_1�
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/add�
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp�
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/BiasAdd�
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim�
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_145/split�
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid�
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_1�
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul�
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu�
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_1�
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/add_1�
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_2�
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu_1�
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
while_body_2139663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_145_matmul_readvariableop_resource_0:@H
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_145_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_145_matmul_readvariableop_resource:@F
4while_lstm_cell_145_matmul_1_readvariableop_resource:@A
3while_lstm_cell_145_biasadd_readvariableop_resource:@��*while/lstm_cell_145/BiasAdd/ReadVariableOp�)while/lstm_cell_145/MatMul/ReadVariableOp�+while/lstm_cell_145/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp�
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul�
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp�
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul_1�
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/add�
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp�
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/BiasAdd�
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim�
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_145/split�
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid�
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_1�
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul�
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu�
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_1�
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/add_1�
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_2�
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu_1�
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
lstm_146_while_cond_2138461.
*lstm_146_while_lstm_146_while_loop_counter4
0lstm_146_while_lstm_146_while_maximum_iterations
lstm_146_while_placeholder 
lstm_146_while_placeholder_1 
lstm_146_while_placeholder_2 
lstm_146_while_placeholder_30
,lstm_146_while_less_lstm_146_strided_slice_1G
Clstm_146_while_lstm_146_while_cond_2138461___redundant_placeholder0G
Clstm_146_while_lstm_146_while_cond_2138461___redundant_placeholder1G
Clstm_146_while_lstm_146_while_cond_2138461___redundant_placeholder2G
Clstm_146_while_lstm_146_while_cond_2138461___redundant_placeholder3
lstm_146_while_identity
�
lstm_146/while/LessLesslstm_146_while_placeholder,lstm_146_while_less_lstm_146_strided_slice_1*
T0*
_output_shapes
: 2
lstm_146/while/Lessx
lstm_146/while/IdentityIdentitylstm_146/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_146/while/Identity";
lstm_146_while_identity lstm_146/while/Identity:output:0*(
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
H__inference_dropout_216_layer_call_and_return_conditional_losses_2139250

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
:���������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������*
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
:���������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�f
�
 __inference__traced_save_2141127
file_prefix/
+savev2_dense_108_kernel_read_readvariableop-
)savev2_dense_108_bias_read_readvariableop/
+savev2_dense_109_kernel_read_readvariableop-
)savev2_dense_109_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_144_lstm_cell_144_kernel_read_readvariableopF
Bsavev2_lstm_144_lstm_cell_144_recurrent_kernel_read_readvariableop:
6savev2_lstm_144_lstm_cell_144_bias_read_readvariableop<
8savev2_lstm_145_lstm_cell_145_kernel_read_readvariableopF
Bsavev2_lstm_145_lstm_cell_145_recurrent_kernel_read_readvariableop:
6savev2_lstm_145_lstm_cell_145_bias_read_readvariableop<
8savev2_lstm_146_lstm_cell_146_kernel_read_readvariableopF
Bsavev2_lstm_146_lstm_cell_146_recurrent_kernel_read_readvariableop:
6savev2_lstm_146_lstm_cell_146_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_108_kernel_m_read_readvariableop4
0savev2_adam_dense_108_bias_m_read_readvariableop6
2savev2_adam_dense_109_kernel_m_read_readvariableop4
0savev2_adam_dense_109_bias_m_read_readvariableopC
?savev2_adam_lstm_144_lstm_cell_144_kernel_m_read_readvariableopM
Isavev2_adam_lstm_144_lstm_cell_144_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_144_lstm_cell_144_bias_m_read_readvariableopC
?savev2_adam_lstm_145_lstm_cell_145_kernel_m_read_readvariableopM
Isavev2_adam_lstm_145_lstm_cell_145_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_145_lstm_cell_145_bias_m_read_readvariableopC
?savev2_adam_lstm_146_lstm_cell_146_kernel_m_read_readvariableopM
Isavev2_adam_lstm_146_lstm_cell_146_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_146_lstm_cell_146_bias_m_read_readvariableop6
2savev2_adam_dense_108_kernel_v_read_readvariableop4
0savev2_adam_dense_108_bias_v_read_readvariableop6
2savev2_adam_dense_109_kernel_v_read_readvariableop4
0savev2_adam_dense_109_bias_v_read_readvariableopC
?savev2_adam_lstm_144_lstm_cell_144_kernel_v_read_readvariableopM
Isavev2_adam_lstm_144_lstm_cell_144_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_144_lstm_cell_144_bias_v_read_readvariableopC
?savev2_adam_lstm_145_lstm_cell_145_kernel_v_read_readvariableopM
Isavev2_adam_lstm_145_lstm_cell_145_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_145_lstm_cell_145_bias_v_read_readvariableopC
?savev2_adam_lstm_146_lstm_cell_146_kernel_v_read_readvariableopM
Isavev2_adam_lstm_146_lstm_cell_146_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_146_lstm_cell_146_bias_v_read_readvariableop
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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*�
value�B�1B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_108_kernel_read_readvariableop)savev2_dense_108_bias_read_readvariableop+savev2_dense_109_kernel_read_readvariableop)savev2_dense_109_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_144_lstm_cell_144_kernel_read_readvariableopBsavev2_lstm_144_lstm_cell_144_recurrent_kernel_read_readvariableop6savev2_lstm_144_lstm_cell_144_bias_read_readvariableop8savev2_lstm_145_lstm_cell_145_kernel_read_readvariableopBsavev2_lstm_145_lstm_cell_145_recurrent_kernel_read_readvariableop6savev2_lstm_145_lstm_cell_145_bias_read_readvariableop8savev2_lstm_146_lstm_cell_146_kernel_read_readvariableopBsavev2_lstm_146_lstm_cell_146_recurrent_kernel_read_readvariableop6savev2_lstm_146_lstm_cell_146_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_108_kernel_m_read_readvariableop0savev2_adam_dense_108_bias_m_read_readvariableop2savev2_adam_dense_109_kernel_m_read_readvariableop0savev2_adam_dense_109_bias_m_read_readvariableop?savev2_adam_lstm_144_lstm_cell_144_kernel_m_read_readvariableopIsavev2_adam_lstm_144_lstm_cell_144_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_144_lstm_cell_144_bias_m_read_readvariableop?savev2_adam_lstm_145_lstm_cell_145_kernel_m_read_readvariableopIsavev2_adam_lstm_145_lstm_cell_145_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_145_lstm_cell_145_bias_m_read_readvariableop?savev2_adam_lstm_146_lstm_cell_146_kernel_m_read_readvariableopIsavev2_adam_lstm_146_lstm_cell_146_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_146_lstm_cell_146_bias_m_read_readvariableop2savev2_adam_dense_108_kernel_v_read_readvariableop0savev2_adam_dense_108_bias_v_read_readvariableop2savev2_adam_dense_109_kernel_v_read_readvariableop0savev2_adam_dense_109_bias_v_read_readvariableop?savev2_adam_lstm_144_lstm_cell_144_kernel_v_read_readvariableopIsavev2_adam_lstm_144_lstm_cell_144_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_144_lstm_cell_144_bias_v_read_readvariableop?savev2_adam_lstm_145_lstm_cell_145_kernel_v_read_readvariableopIsavev2_adam_lstm_145_lstm_cell_145_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_145_lstm_cell_145_bias_v_read_readvariableop?savev2_adam_lstm_146_lstm_cell_146_kernel_v_read_readvariableopIsavev2_adam_lstm_146_lstm_cell_146_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_146_lstm_cell_146_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes5
321	2
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::: : : : : :@:@:@:@:@:@:@:@:@: : : : :::::@:@:@:@:@:@:@:@:@:::::@:@:@:@:@:@:@:@:@: 2(
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

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :$
 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@:  

_output_shapes
:@:$! 

_output_shapes

:@:$" 

_output_shapes

:@: #

_output_shapes
:@:$$ 

_output_shapes

:: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::$( 

_output_shapes

:@:$) 

_output_shapes

:@: *

_output_shapes
:@:$+ 

_output_shapes

:@:$, 

_output_shapes

:@: -

_output_shapes
:@:$. 

_output_shapes

:@:$/ 

_output_shapes

:@: 0

_output_shapes
:@:1

_output_shapes
: 
�
�
while_cond_2135777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2135777___redundant_placeholder05
1while_while_cond_2135777___redundant_placeholder15
1while_while_cond_2135777___redundant_placeholder25
1while_while_cond_2135777___redundant_placeholder3
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
�
f
H__inference_dropout_217_layer_call_and_return_conditional_losses_2139913

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_36_layer_call_fn_2137592

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

unknown_10:

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_36_layer_call_and_return_conditional_losses_21366522
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
f
H__inference_dropout_216_layer_call_and_return_conditional_losses_2136279

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_144_layer_call_fn_2138586
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
GPU 2J 8� *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_21343772
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
�?
�
while_body_2138686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_144_matmul_readvariableop_resource_0:@H
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_144_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_144_matmul_readvariableop_resource:@F
4while_lstm_cell_144_matmul_1_readvariableop_resource:@A
3while_lstm_cell_144_biasadd_readvariableop_resource:@��*while/lstm_cell_144/BiasAdd/ReadVariableOp�)while/lstm_cell_144/MatMul/ReadVariableOp�+while/lstm_cell_144/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp�
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul�
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp�
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul_1�
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/add�
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp�
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/BiasAdd�
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim�
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_144/split�
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid�
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_1�
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul�
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu�
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_1�
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/add_1�
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_2�
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu_1�
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_145_layer_call_and_return_conditional_losses_2135217

inputs'
lstm_cell_145_2135135:@'
lstm_cell_145_2135137:@#
lstm_cell_145_2135139:@
identity��%lstm_cell_145/StatefulPartitionedCall�whileD
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
%lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_145_2135135lstm_cell_145_2135137lstm_cell_145_2135139*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_21350702'
%lstm_cell_145/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_145_2135135lstm_cell_145_2135137lstm_cell_145_2135139*
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
while_body_2135148*
condR
while_cond_2135147*K
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

Identity~
NoOpNoOp&^lstm_cell_145/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_145/StatefulPartitionedCall%lstm_cell_145/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
f
-__inference_dropout_217_layer_call_fn_2139908

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_217_layer_call_and_return_conditional_losses_21369402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
F__inference_dense_109_layer_call_and_return_conditional_losses_2140666

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
�\
�
E__inference_lstm_145_layer_call_and_return_conditional_losses_2137107

inputs>
,lstm_cell_145_matmul_readvariableop_resource:@@
.lstm_cell_145_matmul_1_readvariableop_resource:@;
-lstm_cell_145_biasadd_readvariableop_resource:@
identity��$lstm_cell_145/BiasAdd/ReadVariableOp�#lstm_cell_145/MatMul/ReadVariableOp�%lstm_cell_145/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp�
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul�
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp�
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul_1�
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/add�
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp�
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/BiasAdd�
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim�
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_145/split�
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid�
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_1�
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul�
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu�
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_1�
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/add_1�
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu_1�
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_2137023*
condR
while_cond_2137022*K
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
:���������*
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
:���������2
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
:���������2

Identity�
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
while_body_2135778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_146_2135802_0:@/
while_lstm_cell_146_2135804_0:@+
while_lstm_cell_146_2135806_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_146_2135802:@-
while_lstm_cell_146_2135804:@)
while_lstm_cell_146_2135806:@��+while/lstm_cell_146/StatefulPartitionedCall�
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
+while/lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_146_2135802_0while_lstm_cell_146_2135804_0while_lstm_cell_146_2135806_0*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_21357002-
+while/lstm_cell_146/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_146/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_146/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_146/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_146/StatefulPartitionedCall*"
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
while_lstm_cell_146_2135802while_lstm_cell_146_2135802_0"<
while_lstm_cell_146_2135804while_lstm_cell_146_2135804_0"<
while_lstm_cell_146_2135806while_lstm_cell_146_2135806_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2Z
+while/lstm_cell_146/StatefulPartitionedCall+while/lstm_cell_146/StatefulPartitionedCall: 
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
while_cond_2134307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2134307___redundant_placeholder05
1while_while_cond_2134307___redundant_placeholder15
1while_while_cond_2134307___redundant_placeholder25
1while_while_cond_2134307___redundant_placeholder3
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
H__inference_dropout_218_layer_call_and_return_conditional_losses_2136744

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
�
while_cond_2140488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2140488___redundant_placeholder05
1while_while_cond_2140488___redundant_placeholder15
1while_while_cond_2140488___redundant_placeholder25
1while_while_cond_2140488___redundant_placeholder3
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
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2134924

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
�
*__inference_lstm_146_layer_call_fn_2139969

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
GPU 2J 8� *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_21369112
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
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_146_layer_call_fn_2140896

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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_21357002
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
�+
�
J__inference_sequential_36_layer_call_and_return_conditional_losses_2136652

inputs"
lstm_144_2136267:@"
lstm_144_2136269:@
lstm_144_2136271:@"
lstm_145_2136432:@"
lstm_145_2136434:@
lstm_145_2136436:@"
lstm_146_2136597:@"
lstm_146_2136599:@
lstm_146_2136601:@#
dense_108_2136623:
dense_108_2136625:#
dense_109_2136646:
dense_109_2136648:
identity��!dense_108/StatefulPartitionedCall�!dense_109/StatefulPartitionedCall� lstm_144/StatefulPartitionedCall� lstm_145/StatefulPartitionedCall� lstm_146/StatefulPartitionedCall�
 lstm_144/StatefulPartitionedCallStatefulPartitionedCallinputslstm_144_2136267lstm_144_2136269lstm_144_2136271*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_21362662"
 lstm_144/StatefulPartitionedCall�
dropout_216/PartitionedCallPartitionedCall)lstm_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_216_layer_call_and_return_conditional_losses_21362792
dropout_216/PartitionedCall�
 lstm_145/StatefulPartitionedCallStatefulPartitionedCall$dropout_216/PartitionedCall:output:0lstm_145_2136432lstm_145_2136434lstm_145_2136436*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_21364312"
 lstm_145/StatefulPartitionedCall�
dropout_217/PartitionedCallPartitionedCall)lstm_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_217_layer_call_and_return_conditional_losses_21364442
dropout_217/PartitionedCall�
 lstm_146/StatefulPartitionedCallStatefulPartitionedCall$dropout_217/PartitionedCall:output:0lstm_146_2136597lstm_146_2136599lstm_146_2136601*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_21365962"
 lstm_146/StatefulPartitionedCall�
dropout_218/PartitionedCallPartitionedCall)lstm_146/StatefulPartitionedCall:output:0*
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
H__inference_dropout_218_layer_call_and_return_conditional_losses_21366092
dropout_218/PartitionedCall�
!dense_108/StatefulPartitionedCallStatefulPartitionedCall$dropout_218/PartitionedCall:output:0dense_108_2136623dense_108_2136625*
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
GPU 2J 8� *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_21366222#
!dense_108/StatefulPartitionedCall�
dropout_219/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
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
H__inference_dropout_219_layer_call_and_return_conditional_losses_21366332
dropout_219/PartitionedCall�
!dense_109/StatefulPartitionedCallStatefulPartitionedCall$dropout_219/PartitionedCall:output:0dense_109_2136646dense_109_2136648*
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
GPU 2J 8� *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_21366452#
!dense_109/StatefulPartitionedCall�
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall!^lstm_144/StatefulPartitionedCall!^lstm_145/StatefulPartitionedCall!^lstm_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2D
 lstm_144/StatefulPartitionedCall lstm_144/StatefulPartitionedCall2D
 lstm_145/StatefulPartitionedCall lstm_145/StatefulPartitionedCall2D
 lstm_146/StatefulPartitionedCall lstm_146/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2137218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2137218___redundant_placeholder05
1while_while_cond_2137218___redundant_placeholder15
1while_while_cond_2137218___redundant_placeholder25
1while_while_cond_2137218___redundant_placeholder3
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
�1
�
J__inference_sequential_36_layer_call_and_return_conditional_losses_2137522
lstm_144_input"
lstm_144_2137486:@"
lstm_144_2137488:@
lstm_144_2137490:@"
lstm_145_2137494:@"
lstm_145_2137496:@
lstm_145_2137498:@"
lstm_146_2137502:@"
lstm_146_2137504:@
lstm_146_2137506:@#
dense_108_2137510:
dense_108_2137512:#
dense_109_2137516:
dense_109_2137518:
identity��!dense_108/StatefulPartitionedCall�!dense_109/StatefulPartitionedCall�#dropout_216/StatefulPartitionedCall�#dropout_217/StatefulPartitionedCall�#dropout_218/StatefulPartitionedCall�#dropout_219/StatefulPartitionedCall� lstm_144/StatefulPartitionedCall� lstm_145/StatefulPartitionedCall� lstm_146/StatefulPartitionedCall�
 lstm_144/StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputlstm_144_2137486lstm_144_2137488lstm_144_2137490*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_21373032"
 lstm_144/StatefulPartitionedCall�
#dropout_216/StatefulPartitionedCallStatefulPartitionedCall)lstm_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_216_layer_call_and_return_conditional_losses_21371362%
#dropout_216/StatefulPartitionedCall�
 lstm_145/StatefulPartitionedCallStatefulPartitionedCall,dropout_216/StatefulPartitionedCall:output:0lstm_145_2137494lstm_145_2137496lstm_145_2137498*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_21371072"
 lstm_145/StatefulPartitionedCall�
#dropout_217/StatefulPartitionedCallStatefulPartitionedCall)lstm_145/StatefulPartitionedCall:output:0$^dropout_216/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_217_layer_call_and_return_conditional_losses_21369402%
#dropout_217/StatefulPartitionedCall�
 lstm_146/StatefulPartitionedCallStatefulPartitionedCall,dropout_217/StatefulPartitionedCall:output:0lstm_146_2137502lstm_146_2137504lstm_146_2137506*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_21369112"
 lstm_146/StatefulPartitionedCall�
#dropout_218/StatefulPartitionedCallStatefulPartitionedCall)lstm_146/StatefulPartitionedCall:output:0$^dropout_217/StatefulPartitionedCall*
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
H__inference_dropout_218_layer_call_and_return_conditional_losses_21367442%
#dropout_218/StatefulPartitionedCall�
!dense_108/StatefulPartitionedCallStatefulPartitionedCall,dropout_218/StatefulPartitionedCall:output:0dense_108_2137510dense_108_2137512*
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
GPU 2J 8� *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_21366222#
!dense_108/StatefulPartitionedCall�
#dropout_219/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0$^dropout_218/StatefulPartitionedCall*
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
H__inference_dropout_219_layer_call_and_return_conditional_losses_21367112%
#dropout_219/StatefulPartitionedCall�
!dense_109/StatefulPartitionedCallStatefulPartitionedCall,dropout_219/StatefulPartitionedCall:output:0dense_109_2137516dense_109_2137518*
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
GPU 2J 8� *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_21366452#
!dense_109/StatefulPartitionedCall�
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall$^dropout_216/StatefulPartitionedCall$^dropout_217/StatefulPartitionedCall$^dropout_218/StatefulPartitionedCall$^dropout_219/StatefulPartitionedCall!^lstm_144/StatefulPartitionedCall!^lstm_145/StatefulPartitionedCall!^lstm_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2J
#dropout_216/StatefulPartitionedCall#dropout_216/StatefulPartitionedCall2J
#dropout_217/StatefulPartitionedCall#dropout_217/StatefulPartitionedCall2J
#dropout_218/StatefulPartitionedCall#dropout_218/StatefulPartitionedCall2J
#dropout_219/StatefulPartitionedCall#dropout_219/StatefulPartitionedCall2D
 lstm_144/StatefulPartitionedCall lstm_144/StatefulPartitionedCall2D
 lstm_145/StatefulPartitionedCall lstm_145/StatefulPartitionedCall2D
 lstm_146/StatefulPartitionedCall lstm_146/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_144_input
�
�
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2140960

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
�
�
while_cond_2138987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2138987___redundant_placeholder05
1while_while_cond_2138987___redundant_placeholder15
1while_while_cond_2138987___redundant_placeholder25
1while_while_cond_2138987___redundant_placeholder3
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
while_cond_2140035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2140035___redundant_placeholder05
1while_while_cond_2140035___redundant_placeholder15
1while_while_cond_2140035___redundant_placeholder25
1while_while_cond_2140035___redundant_placeholder3
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
-__inference_dropout_216_layer_call_fn_2139233

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_216_layer_call_and_return_conditional_losses_21371362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_2140036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:@H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:@F
4while_lstm_cell_146_matmul_1_readvariableop_resource:@A
3while_lstm_cell_146_biasadd_readvariableop_resource:@��*while/lstm_cell_146/BiasAdd/ReadVariableOp�)while/lstm_cell_146/MatMul/ReadVariableOp�+while/lstm_cell_146/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp�
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul�
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp�
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul_1�
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/add�
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp�
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/BiasAdd�
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim�
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_146/split�
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid�
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_1�
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul�
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu�
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_1�
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/add_1�
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_2�
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu_1�
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_145_layer_call_fn_2139283

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
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_21364312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
H__inference_dropout_219_layer_call_and_return_conditional_losses_2140647

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
�L
�

lstm_145_while_body_2137838.
*lstm_145_while_lstm_145_while_loop_counter4
0lstm_145_while_lstm_145_while_maximum_iterations
lstm_145_while_placeholder 
lstm_145_while_placeholder_1 
lstm_145_while_placeholder_2 
lstm_145_while_placeholder_3-
)lstm_145_while_lstm_145_strided_slice_1_0i
elstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0:@Q
?lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0:@L
>lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0:@
lstm_145_while_identity
lstm_145_while_identity_1
lstm_145_while_identity_2
lstm_145_while_identity_3
lstm_145_while_identity_4
lstm_145_while_identity_5+
'lstm_145_while_lstm_145_strided_slice_1g
clstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensorM
;lstm_145_while_lstm_cell_145_matmul_readvariableop_resource:@O
=lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource:@J
<lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource:@��3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp�2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp�4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp�
@lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_145/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0lstm_145_while_placeholderIlstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype024
2lstm_145/while/TensorArrayV2Read/TensorListGetItem�
2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp=lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp�
#lstm_145/while/lstm_cell_145/MatMulMatMul9lstm_145/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_145/while/lstm_cell_145/MatMul�
4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp?lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp�
%lstm_145/while/lstm_cell_145/MatMul_1MatMullstm_145_while_placeholder_2<lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2'
%lstm_145/while/lstm_cell_145/MatMul_1�
 lstm_145/while/lstm_cell_145/addAddV2-lstm_145/while/lstm_cell_145/MatMul:product:0/lstm_145/while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2"
 lstm_145/while/lstm_cell_145/add�
3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp>lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp�
$lstm_145/while/lstm_cell_145/BiasAddBiasAdd$lstm_145/while/lstm_cell_145/add:z:0;lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2&
$lstm_145/while/lstm_cell_145/BiasAdd�
,lstm_145/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_145/while/lstm_cell_145/split/split_dim�
"lstm_145/while/lstm_cell_145/splitSplit5lstm_145/while/lstm_cell_145/split/split_dim:output:0-lstm_145/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2$
"lstm_145/while/lstm_cell_145/split�
$lstm_145/while/lstm_cell_145/SigmoidSigmoid+lstm_145/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2&
$lstm_145/while/lstm_cell_145/Sigmoid�
&lstm_145/while/lstm_cell_145/Sigmoid_1Sigmoid+lstm_145/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2(
&lstm_145/while/lstm_cell_145/Sigmoid_1�
 lstm_145/while/lstm_cell_145/mulMul*lstm_145/while/lstm_cell_145/Sigmoid_1:y:0lstm_145_while_placeholder_3*
T0*'
_output_shapes
:���������2"
 lstm_145/while/lstm_cell_145/mul�
!lstm_145/while/lstm_cell_145/ReluRelu+lstm_145/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2#
!lstm_145/while/lstm_cell_145/Relu�
"lstm_145/while/lstm_cell_145/mul_1Mul(lstm_145/while/lstm_cell_145/Sigmoid:y:0/lstm_145/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_145/while/lstm_cell_145/mul_1�
"lstm_145/while/lstm_cell_145/add_1AddV2$lstm_145/while/lstm_cell_145/mul:z:0&lstm_145/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2$
"lstm_145/while/lstm_cell_145/add_1�
&lstm_145/while/lstm_cell_145/Sigmoid_2Sigmoid+lstm_145/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2(
&lstm_145/while/lstm_cell_145/Sigmoid_2�
#lstm_145/while/lstm_cell_145/Relu_1Relu&lstm_145/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2%
#lstm_145/while/lstm_cell_145/Relu_1�
"lstm_145/while/lstm_cell_145/mul_2Mul*lstm_145/while/lstm_cell_145/Sigmoid_2:y:01lstm_145/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_145/while/lstm_cell_145/mul_2�
3lstm_145/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_145_while_placeholder_1lstm_145_while_placeholder&lstm_145/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_145/while/TensorArrayV2Write/TensorListSetItemn
lstm_145/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/while/add/y�
lstm_145/while/addAddV2lstm_145_while_placeholderlstm_145/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_145/while/addr
lstm_145/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_145/while/add_1/y�
lstm_145/while/add_1AddV2*lstm_145_while_lstm_145_while_loop_counterlstm_145/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_145/while/add_1�
lstm_145/while/IdentityIdentitylstm_145/while/add_1:z:0^lstm_145/while/NoOp*
T0*
_output_shapes
: 2
lstm_145/while/Identity�
lstm_145/while/Identity_1Identity0lstm_145_while_lstm_145_while_maximum_iterations^lstm_145/while/NoOp*
T0*
_output_shapes
: 2
lstm_145/while/Identity_1�
lstm_145/while/Identity_2Identitylstm_145/while/add:z:0^lstm_145/while/NoOp*
T0*
_output_shapes
: 2
lstm_145/while/Identity_2�
lstm_145/while/Identity_3IdentityClstm_145/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_145/while/NoOp*
T0*
_output_shapes
: 2
lstm_145/while/Identity_3�
lstm_145/while/Identity_4Identity&lstm_145/while/lstm_cell_145/mul_2:z:0^lstm_145/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_145/while/Identity_4�
lstm_145/while/Identity_5Identity&lstm_145/while/lstm_cell_145/add_1:z:0^lstm_145/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_145/while/Identity_5�
lstm_145/while/NoOpNoOp4^lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp3^lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp5^lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_145/while/NoOp";
lstm_145_while_identity lstm_145/while/Identity:output:0"?
lstm_145_while_identity_1"lstm_145/while/Identity_1:output:0"?
lstm_145_while_identity_2"lstm_145/while/Identity_2:output:0"?
lstm_145_while_identity_3"lstm_145/while/Identity_3:output:0"?
lstm_145_while_identity_4"lstm_145/while/Identity_4:output:0"?
lstm_145_while_identity_5"lstm_145/while/Identity_5:output:0"T
'lstm_145_while_lstm_145_strided_slice_1)lstm_145_while_lstm_145_strided_slice_1_0"~
<lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource>lstm_145_while_lstm_cell_145_biasadd_readvariableop_resource_0"�
=lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource?lstm_145_while_lstm_cell_145_matmul_1_readvariableop_resource_0"|
;lstm_145_while_lstm_cell_145_matmul_readvariableop_resource=lstm_145_while_lstm_cell_145_matmul_readvariableop_resource_0"�
clstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensorelstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2j
3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp3lstm_145/while/lstm_cell_145/BiasAdd/ReadVariableOp2h
2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp2lstm_145/while/lstm_cell_145/MatMul/ReadVariableOp2l
4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp4lstm_145/while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
�\
�
E__inference_lstm_144_layer_call_and_return_conditional_losses_2139072

inputs>
,lstm_cell_144_matmul_readvariableop_resource:@@
.lstm_cell_144_matmul_1_readvariableop_resource:@;
-lstm_cell_144_biasadd_readvariableop_resource:@
identity��$lstm_cell_144/BiasAdd/ReadVariableOp�#lstm_cell_144/MatMul/ReadVariableOp�%lstm_cell_144/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp�
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul�
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp�
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul_1�
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/add�
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp�
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/BiasAdd�
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim�
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_144/split�
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid�
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_1�
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul�
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu�
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_1�
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/add_1�
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu_1�
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_2138988*
condR
while_cond_2138987*K
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
:���������*
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
:���������2
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
:���������2

Identity�
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_145_while_cond_2138306.
*lstm_145_while_lstm_145_while_loop_counter4
0lstm_145_while_lstm_145_while_maximum_iterations
lstm_145_while_placeholder 
lstm_145_while_placeholder_1 
lstm_145_while_placeholder_2 
lstm_145_while_placeholder_30
,lstm_145_while_less_lstm_145_strided_slice_1G
Clstm_145_while_lstm_145_while_cond_2138306___redundant_placeholder0G
Clstm_145_while_lstm_145_while_cond_2138306___redundant_placeholder1G
Clstm_145_while_lstm_145_while_cond_2138306___redundant_placeholder2G
Clstm_145_while_lstm_145_while_cond_2138306___redundant_placeholder3
lstm_145_while_identity
�
lstm_145/while/LessLesslstm_145_while_placeholder,lstm_145_while_less_lstm_145_strided_slice_1*
T0*
_output_shapes
: 2
lstm_145/while/Lessx
lstm_145/while/IdentityIdentitylstm_145/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_145/while/Identity";
lstm_145_while_identity lstm_145/while/Identity:output:0*(
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
while_body_2138988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_144_matmul_readvariableop_resource_0:@H
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_144_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_144_matmul_readvariableop_resource:@F
4while_lstm_cell_144_matmul_1_readvariableop_resource:@A
3while_lstm_cell_144_biasadd_readvariableop_resource:@��*while/lstm_cell_144/BiasAdd/ReadVariableOp�)while/lstm_cell_144/MatMul/ReadVariableOp�+while/lstm_cell_144/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp�
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul�
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp�
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul_1�
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/add�
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp�
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/BiasAdd�
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim�
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_144/split�
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid�
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_1�
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul�
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu�
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_1�
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/add_1�
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_2�
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu_1�
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
while_body_2136827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:@H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:@F
4while_lstm_cell_146_matmul_1_readvariableop_resource:@A
3while_lstm_cell_146_biasadd_readvariableop_resource:@��*while/lstm_cell_146/BiasAdd/ReadVariableOp�)while/lstm_cell_146/MatMul/ReadVariableOp�+while/lstm_cell_146/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp�
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul�
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp�
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul_1�
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/add�
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp�
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/BiasAdd�
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim�
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_146/split�
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid�
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_1�
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul�
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu�
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_1�
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/add_1�
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_2�
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu_1�
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
lstm_144_while_cond_2137689.
*lstm_144_while_lstm_144_while_loop_counter4
0lstm_144_while_lstm_144_while_maximum_iterations
lstm_144_while_placeholder 
lstm_144_while_placeholder_1 
lstm_144_while_placeholder_2 
lstm_144_while_placeholder_30
,lstm_144_while_less_lstm_144_strided_slice_1G
Clstm_144_while_lstm_144_while_cond_2137689___redundant_placeholder0G
Clstm_144_while_lstm_144_while_cond_2137689___redundant_placeholder1G
Clstm_144_while_lstm_144_while_cond_2137689___redundant_placeholder2G
Clstm_144_while_lstm_144_while_cond_2137689___redundant_placeholder3
lstm_144_while_identity
�
lstm_144/while/LessLesslstm_144_while_placeholder,lstm_144_while_less_lstm_144_strided_slice_1*
T0*
_output_shapes
: 2
lstm_144/while/Lessx
lstm_144/while/IdentityIdentitylstm_144/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_144/while/Identity";
lstm_144_while_identity lstm_144/while/Identity:output:0*(
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
�
�
)sequential_36_lstm_144_while_cond_2133823J
Fsequential_36_lstm_144_while_sequential_36_lstm_144_while_loop_counterP
Lsequential_36_lstm_144_while_sequential_36_lstm_144_while_maximum_iterations,
(sequential_36_lstm_144_while_placeholder.
*sequential_36_lstm_144_while_placeholder_1.
*sequential_36_lstm_144_while_placeholder_2.
*sequential_36_lstm_144_while_placeholder_3L
Hsequential_36_lstm_144_while_less_sequential_36_lstm_144_strided_slice_1c
_sequential_36_lstm_144_while_sequential_36_lstm_144_while_cond_2133823___redundant_placeholder0c
_sequential_36_lstm_144_while_sequential_36_lstm_144_while_cond_2133823___redundant_placeholder1c
_sequential_36_lstm_144_while_sequential_36_lstm_144_while_cond_2133823___redundant_placeholder2c
_sequential_36_lstm_144_while_sequential_36_lstm_144_while_cond_2133823___redundant_placeholder3)
%sequential_36_lstm_144_while_identity
�
!sequential_36/lstm_144/while/LessLess(sequential_36_lstm_144_while_placeholderHsequential_36_lstm_144_while_less_sequential_36_lstm_144_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_36/lstm_144/while/Less�
%sequential_36/lstm_144/while/IdentityIdentity%sequential_36/lstm_144/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_36/lstm_144/while/Identity"W
%sequential_36_lstm_144_while_identity.sequential_36/lstm_144/while/Identity:output:0*(
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
�`
�
)sequential_36_lstm_146_while_body_2134120J
Fsequential_36_lstm_146_while_sequential_36_lstm_146_while_loop_counterP
Lsequential_36_lstm_146_while_sequential_36_lstm_146_while_maximum_iterations,
(sequential_36_lstm_146_while_placeholder.
*sequential_36_lstm_146_while_placeholder_1.
*sequential_36_lstm_146_while_placeholder_2.
*sequential_36_lstm_146_while_placeholder_3I
Esequential_36_lstm_146_while_sequential_36_lstm_146_strided_slice_1_0�
�sequential_36_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_146_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_36_lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0:@_
Msequential_36_lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0:@Z
Lsequential_36_lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0:@)
%sequential_36_lstm_146_while_identity+
'sequential_36_lstm_146_while_identity_1+
'sequential_36_lstm_146_while_identity_2+
'sequential_36_lstm_146_while_identity_3+
'sequential_36_lstm_146_while_identity_4+
'sequential_36_lstm_146_while_identity_5G
Csequential_36_lstm_146_while_sequential_36_lstm_146_strided_slice_1�
sequential_36_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_146_tensorarrayunstack_tensorlistfromtensor[
Isequential_36_lstm_146_while_lstm_cell_146_matmul_readvariableop_resource:@]
Ksequential_36_lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource:@X
Jsequential_36_lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource:@��Asequential_36/lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp�@sequential_36/lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp�Bsequential_36/lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp�
Nsequential_36/lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2P
Nsequential_36/lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape�
@sequential_36/lstm_146/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_36_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_146_tensorarrayunstack_tensorlistfromtensor_0(sequential_36_lstm_146_while_placeholderWsequential_36/lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02B
@sequential_36/lstm_146/while/TensorArrayV2Read/TensorListGetItem�
@sequential_36/lstm_146/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOpKsequential_36_lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_36/lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp�
1sequential_36/lstm_146/while/lstm_cell_146/MatMulMatMulGsequential_36/lstm_146/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_36/lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@23
1sequential_36/lstm_146/while/lstm_cell_146/MatMul�
Bsequential_36/lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOpMsequential_36_lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02D
Bsequential_36/lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp�
3sequential_36/lstm_146/while/lstm_cell_146/MatMul_1MatMul*sequential_36_lstm_146_while_placeholder_2Jsequential_36/lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@25
3sequential_36/lstm_146/while/lstm_cell_146/MatMul_1�
.sequential_36/lstm_146/while/lstm_cell_146/addAddV2;sequential_36/lstm_146/while/lstm_cell_146/MatMul:product:0=sequential_36/lstm_146/while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@20
.sequential_36/lstm_146/while/lstm_cell_146/add�
Asequential_36/lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOpLsequential_36_lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02C
Asequential_36/lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp�
2sequential_36/lstm_146/while/lstm_cell_146/BiasAddBiasAdd2sequential_36/lstm_146/while/lstm_cell_146/add:z:0Isequential_36/lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@24
2sequential_36/lstm_146/while/lstm_cell_146/BiasAdd�
:sequential_36/lstm_146/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_36/lstm_146/while/lstm_cell_146/split/split_dim�
0sequential_36/lstm_146/while/lstm_cell_146/splitSplitCsequential_36/lstm_146/while/lstm_cell_146/split/split_dim:output:0;sequential_36/lstm_146/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split22
0sequential_36/lstm_146/while/lstm_cell_146/split�
2sequential_36/lstm_146/while/lstm_cell_146/SigmoidSigmoid9sequential_36/lstm_146/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������24
2sequential_36/lstm_146/while/lstm_cell_146/Sigmoid�
4sequential_36/lstm_146/while/lstm_cell_146/Sigmoid_1Sigmoid9sequential_36/lstm_146/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������26
4sequential_36/lstm_146/while/lstm_cell_146/Sigmoid_1�
.sequential_36/lstm_146/while/lstm_cell_146/mulMul8sequential_36/lstm_146/while/lstm_cell_146/Sigmoid_1:y:0*sequential_36_lstm_146_while_placeholder_3*
T0*'
_output_shapes
:���������20
.sequential_36/lstm_146/while/lstm_cell_146/mul�
/sequential_36/lstm_146/while/lstm_cell_146/ReluRelu9sequential_36/lstm_146/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������21
/sequential_36/lstm_146/while/lstm_cell_146/Relu�
0sequential_36/lstm_146/while/lstm_cell_146/mul_1Mul6sequential_36/lstm_146/while/lstm_cell_146/Sigmoid:y:0=sequential_36/lstm_146/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_146/while/lstm_cell_146/mul_1�
0sequential_36/lstm_146/while/lstm_cell_146/add_1AddV22sequential_36/lstm_146/while/lstm_cell_146/mul:z:04sequential_36/lstm_146/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_146/while/lstm_cell_146/add_1�
4sequential_36/lstm_146/while/lstm_cell_146/Sigmoid_2Sigmoid9sequential_36/lstm_146/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������26
4sequential_36/lstm_146/while/lstm_cell_146/Sigmoid_2�
1sequential_36/lstm_146/while/lstm_cell_146/Relu_1Relu4sequential_36/lstm_146/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������23
1sequential_36/lstm_146/while/lstm_cell_146/Relu_1�
0sequential_36/lstm_146/while/lstm_cell_146/mul_2Mul8sequential_36/lstm_146/while/lstm_cell_146/Sigmoid_2:y:0?sequential_36/lstm_146/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������22
0sequential_36/lstm_146/while/lstm_cell_146/mul_2�
Asequential_36/lstm_146/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_36_lstm_146_while_placeholder_1(sequential_36_lstm_146_while_placeholder4sequential_36/lstm_146/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_36/lstm_146/while/TensorArrayV2Write/TensorListSetItem�
"sequential_36/lstm_146/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_36/lstm_146/while/add/y�
 sequential_36/lstm_146/while/addAddV2(sequential_36_lstm_146_while_placeholder+sequential_36/lstm_146/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_36/lstm_146/while/add�
$sequential_36/lstm_146/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_36/lstm_146/while/add_1/y�
"sequential_36/lstm_146/while/add_1AddV2Fsequential_36_lstm_146_while_sequential_36_lstm_146_while_loop_counter-sequential_36/lstm_146/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_36/lstm_146/while/add_1�
%sequential_36/lstm_146/while/IdentityIdentity&sequential_36/lstm_146/while/add_1:z:0"^sequential_36/lstm_146/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_36/lstm_146/while/Identity�
'sequential_36/lstm_146/while/Identity_1IdentityLsequential_36_lstm_146_while_sequential_36_lstm_146_while_maximum_iterations"^sequential_36/lstm_146/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_146/while/Identity_1�
'sequential_36/lstm_146/while/Identity_2Identity$sequential_36/lstm_146/while/add:z:0"^sequential_36/lstm_146/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_146/while/Identity_2�
'sequential_36/lstm_146/while/Identity_3IdentityQsequential_36/lstm_146/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_36/lstm_146/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_36/lstm_146/while/Identity_3�
'sequential_36/lstm_146/while/Identity_4Identity4sequential_36/lstm_146/while/lstm_cell_146/mul_2:z:0"^sequential_36/lstm_146/while/NoOp*
T0*'
_output_shapes
:���������2)
'sequential_36/lstm_146/while/Identity_4�
'sequential_36/lstm_146/while/Identity_5Identity4sequential_36/lstm_146/while/lstm_cell_146/add_1:z:0"^sequential_36/lstm_146/while/NoOp*
T0*'
_output_shapes
:���������2)
'sequential_36/lstm_146/while/Identity_5�
!sequential_36/lstm_146/while/NoOpNoOpB^sequential_36/lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOpA^sequential_36/lstm_146/while/lstm_cell_146/MatMul/ReadVariableOpC^sequential_36/lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_36/lstm_146/while/NoOp"W
%sequential_36_lstm_146_while_identity.sequential_36/lstm_146/while/Identity:output:0"[
'sequential_36_lstm_146_while_identity_10sequential_36/lstm_146/while/Identity_1:output:0"[
'sequential_36_lstm_146_while_identity_20sequential_36/lstm_146/while/Identity_2:output:0"[
'sequential_36_lstm_146_while_identity_30sequential_36/lstm_146/while/Identity_3:output:0"[
'sequential_36_lstm_146_while_identity_40sequential_36/lstm_146/while/Identity_4:output:0"[
'sequential_36_lstm_146_while_identity_50sequential_36/lstm_146/while/Identity_5:output:0"�
Jsequential_36_lstm_146_while_lstm_cell_146_biasadd_readvariableop_resourceLsequential_36_lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0"�
Ksequential_36_lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resourceMsequential_36_lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0"�
Isequential_36_lstm_146_while_lstm_cell_146_matmul_readvariableop_resourceKsequential_36_lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0"�
Csequential_36_lstm_146_while_sequential_36_lstm_146_strided_slice_1Esequential_36_lstm_146_while_sequential_36_lstm_146_strided_slice_1_0"�
sequential_36_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_146_tensorarrayunstack_tensorlistfromtensor�sequential_36_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_146_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2�
Asequential_36/lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOpAsequential_36/lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp2�
@sequential_36/lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp@sequential_36/lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp2�
Bsequential_36/lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOpBsequential_36/lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
�
/__inference_sequential_36_layer_call_fn_2136681
lstm_144_input
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

unknown_10:

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_36_layer_call_and_return_conditional_losses_21366522
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_144_input
�\
�
E__inference_lstm_146_layer_call_and_return_conditional_losses_2136596

inputs>
,lstm_cell_146_matmul_readvariableop_resource:@@
.lstm_cell_146_matmul_1_readvariableop_resource:@;
-lstm_cell_146_biasadd_readvariableop_resource:@
identity��$lstm_cell_146/BiasAdd/ReadVariableOp�#lstm_cell_146/MatMul/ReadVariableOp�%lstm_cell_146/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp�
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul�
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp�
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul_1�
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/add�
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp�
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/BiasAdd�
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim�
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_146/split�
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid�
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_1�
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul�
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu�
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_1�
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/add_1�
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu_1�
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_2136512*
condR
while_cond_2136511*K
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
:���������*
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
:���������2
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_146_layer_call_fn_2139936
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
GPU 2J 8� *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_21356372
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
while_cond_2139138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139138___redundant_placeholder05
1while_while_cond_2139138___redundant_placeholder15
1while_while_cond_2139138___redundant_placeholder25
1while_while_cond_2139138___redundant_placeholder3
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
�
f
H__inference_dropout_218_layer_call_and_return_conditional_losses_2136609

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
�\
�
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139747

inputs>
,lstm_cell_145_matmul_readvariableop_resource:@@
.lstm_cell_145_matmul_1_readvariableop_resource:@;
-lstm_cell_145_biasadd_readvariableop_resource:@
identity��$lstm_cell_145/BiasAdd/ReadVariableOp�#lstm_cell_145/MatMul/ReadVariableOp�%lstm_cell_145/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp�
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul�
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp�
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul_1�
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/add�
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp�
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/BiasAdd�
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim�
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_145/split�
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid�
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_1�
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul�
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu�
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_1�
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/add_1�
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu_1�
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_2139663*
condR
while_cond_2139662*K
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
:���������*
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
:���������2
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
:���������2

Identity�
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_2139512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_145_matmul_readvariableop_resource_0:@H
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_145_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_145_matmul_readvariableop_resource:@F
4while_lstm_cell_145_matmul_1_readvariableop_resource:@A
3while_lstm_cell_145_biasadd_readvariableop_resource:@��*while/lstm_cell_145/BiasAdd/ReadVariableOp�)while/lstm_cell_145/MatMul/ReadVariableOp�+while/lstm_cell_145/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp�
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul�
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp�
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul_1�
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/add�
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp�
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/BiasAdd�
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim�
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_145/split�
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid�
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_1�
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul�
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu�
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_1�
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/add_1�
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_2�
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu_1�
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_146_layer_call_fn_2140879

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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_21355542
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
�?
�
while_body_2140338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:@H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:@F
4while_lstm_cell_146_matmul_1_readvariableop_resource:@A
3while_lstm_cell_146_biasadd_readvariableop_resource:@��*while/lstm_cell_146/BiasAdd/ReadVariableOp�)while/lstm_cell_146/MatMul/ReadVariableOp�+while/lstm_cell_146/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp�
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul�
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp�
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul_1�
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/add�
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp�
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/BiasAdd�
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim�
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_146/split�
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid�
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_1�
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul�
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu�
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_1�
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/add_1�
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_2�
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu_1�
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
�
�
)sequential_36_lstm_145_while_cond_2133971J
Fsequential_36_lstm_145_while_sequential_36_lstm_145_while_loop_counterP
Lsequential_36_lstm_145_while_sequential_36_lstm_145_while_maximum_iterations,
(sequential_36_lstm_145_while_placeholder.
*sequential_36_lstm_145_while_placeholder_1.
*sequential_36_lstm_145_while_placeholder_2.
*sequential_36_lstm_145_while_placeholder_3L
Hsequential_36_lstm_145_while_less_sequential_36_lstm_145_strided_slice_1c
_sequential_36_lstm_145_while_sequential_36_lstm_145_while_cond_2133971___redundant_placeholder0c
_sequential_36_lstm_145_while_sequential_36_lstm_145_while_cond_2133971___redundant_placeholder1c
_sequential_36_lstm_145_while_sequential_36_lstm_145_while_cond_2133971___redundant_placeholder2c
_sequential_36_lstm_145_while_sequential_36_lstm_145_while_cond_2133971___redundant_placeholder3)
%sequential_36_lstm_145_while_identity
�
!sequential_36/lstm_145/while/LessLess(sequential_36_lstm_145_while_placeholderHsequential_36_lstm_145_while_less_sequential_36_lstm_145_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_36/lstm_145/while/Less�
%sequential_36/lstm_145/while/IdentityIdentity%sequential_36/lstm_145/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_36/lstm_145/while/Identity"W
%sequential_36_lstm_145_while_identity.sequential_36/lstm_145/while/Identity:output:0*(
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
E__inference_lstm_146_layer_call_and_return_conditional_losses_2136911

inputs>
,lstm_cell_146_matmul_readvariableop_resource:@@
.lstm_cell_146_matmul_1_readvariableop_resource:@;
-lstm_cell_146_biasadd_readvariableop_resource:@
identity��$lstm_cell_146/BiasAdd/ReadVariableOp�#lstm_cell_146/MatMul/ReadVariableOp�%lstm_cell_146/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp�
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul�
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp�
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul_1�
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/add�
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp�
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/BiasAdd�
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim�
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_146/split�
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid�
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_1�
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul�
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu�
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_1�
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/add_1�
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu_1�
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_2136827*
condR
while_cond_2136826*K
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
:���������*
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
:���������2
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_144_layer_call_fn_2138608

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
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_21362662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
f
H__inference_dropout_219_layer_call_and_return_conditional_losses_2136633

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
while_body_2138837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_144_matmul_readvariableop_resource_0:@H
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_144_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_144_matmul_readvariableop_resource:@F
4while_lstm_cell_144_matmul_1_readvariableop_resource:@A
3while_lstm_cell_144_biasadd_readvariableop_resource:@��*while/lstm_cell_144/BiasAdd/ReadVariableOp�)while/lstm_cell_144/MatMul/ReadVariableOp�+while/lstm_cell_144/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp�
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul�
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp�
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/MatMul_1�
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/add�
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp�
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_144/BiasAdd�
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim�
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_144/split�
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid�
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_1�
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul�
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu�
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_1�
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/add_1�
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Sigmoid_2�
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/Relu_1�
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_144/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2134440

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
�
f
H__inference_dropout_217_layer_call_and_return_conditional_losses_2136444

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
H__inference_dropout_219_layer_call_and_return_conditional_losses_2136711

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
�L
�

lstm_146_while_body_2137986.
*lstm_146_while_lstm_146_while_loop_counter4
0lstm_146_while_lstm_146_while_maximum_iterations
lstm_146_while_placeholder 
lstm_146_while_placeholder_1 
lstm_146_while_placeholder_2 
lstm_146_while_placeholder_3-
)lstm_146_while_lstm_146_strided_slice_1_0i
elstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0:@Q
?lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0:@L
>lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0:@
lstm_146_while_identity
lstm_146_while_identity_1
lstm_146_while_identity_2
lstm_146_while_identity_3
lstm_146_while_identity_4
lstm_146_while_identity_5+
'lstm_146_while_lstm_146_strided_slice_1g
clstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensorM
;lstm_146_while_lstm_cell_146_matmul_readvariableop_resource:@O
=lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource:@J
<lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource:@��3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp�2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp�4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp�
@lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_146/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0lstm_146_while_placeholderIlstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype024
2lstm_146/while/TensorArrayV2Read/TensorListGetItem�
2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp=lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp�
#lstm_146/while/lstm_cell_146/MatMulMatMul9lstm_146/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#lstm_146/while/lstm_cell_146/MatMul�
4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp?lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype026
4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp�
%lstm_146/while/lstm_cell_146/MatMul_1MatMullstm_146_while_placeholder_2<lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2'
%lstm_146/while/lstm_cell_146/MatMul_1�
 lstm_146/while/lstm_cell_146/addAddV2-lstm_146/while/lstm_cell_146/MatMul:product:0/lstm_146/while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2"
 lstm_146/while/lstm_cell_146/add�
3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp>lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype025
3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp�
$lstm_146/while/lstm_cell_146/BiasAddBiasAdd$lstm_146/while/lstm_cell_146/add:z:0;lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2&
$lstm_146/while/lstm_cell_146/BiasAdd�
,lstm_146/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_146/while/lstm_cell_146/split/split_dim�
"lstm_146/while/lstm_cell_146/splitSplit5lstm_146/while/lstm_cell_146/split/split_dim:output:0-lstm_146/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2$
"lstm_146/while/lstm_cell_146/split�
$lstm_146/while/lstm_cell_146/SigmoidSigmoid+lstm_146/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2&
$lstm_146/while/lstm_cell_146/Sigmoid�
&lstm_146/while/lstm_cell_146/Sigmoid_1Sigmoid+lstm_146/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2(
&lstm_146/while/lstm_cell_146/Sigmoid_1�
 lstm_146/while/lstm_cell_146/mulMul*lstm_146/while/lstm_cell_146/Sigmoid_1:y:0lstm_146_while_placeholder_3*
T0*'
_output_shapes
:���������2"
 lstm_146/while/lstm_cell_146/mul�
!lstm_146/while/lstm_cell_146/ReluRelu+lstm_146/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2#
!lstm_146/while/lstm_cell_146/Relu�
"lstm_146/while/lstm_cell_146/mul_1Mul(lstm_146/while/lstm_cell_146/Sigmoid:y:0/lstm_146/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_146/while/lstm_cell_146/mul_1�
"lstm_146/while/lstm_cell_146/add_1AddV2$lstm_146/while/lstm_cell_146/mul:z:0&lstm_146/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2$
"lstm_146/while/lstm_cell_146/add_1�
&lstm_146/while/lstm_cell_146/Sigmoid_2Sigmoid+lstm_146/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2(
&lstm_146/while/lstm_cell_146/Sigmoid_2�
#lstm_146/while/lstm_cell_146/Relu_1Relu&lstm_146/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2%
#lstm_146/while/lstm_cell_146/Relu_1�
"lstm_146/while/lstm_cell_146/mul_2Mul*lstm_146/while/lstm_cell_146/Sigmoid_2:y:01lstm_146/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2$
"lstm_146/while/lstm_cell_146/mul_2�
3lstm_146/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_146_while_placeholder_1lstm_146_while_placeholder&lstm_146/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_146/while/TensorArrayV2Write/TensorListSetItemn
lstm_146/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/while/add/y�
lstm_146/while/addAddV2lstm_146_while_placeholderlstm_146/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_146/while/addr
lstm_146/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_146/while/add_1/y�
lstm_146/while/add_1AddV2*lstm_146_while_lstm_146_while_loop_counterlstm_146/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_146/while/add_1�
lstm_146/while/IdentityIdentitylstm_146/while/add_1:z:0^lstm_146/while/NoOp*
T0*
_output_shapes
: 2
lstm_146/while/Identity�
lstm_146/while/Identity_1Identity0lstm_146_while_lstm_146_while_maximum_iterations^lstm_146/while/NoOp*
T0*
_output_shapes
: 2
lstm_146/while/Identity_1�
lstm_146/while/Identity_2Identitylstm_146/while/add:z:0^lstm_146/while/NoOp*
T0*
_output_shapes
: 2
lstm_146/while/Identity_2�
lstm_146/while/Identity_3IdentityClstm_146/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_146/while/NoOp*
T0*
_output_shapes
: 2
lstm_146/while/Identity_3�
lstm_146/while/Identity_4Identity&lstm_146/while/lstm_cell_146/mul_2:z:0^lstm_146/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_146/while/Identity_4�
lstm_146/while/Identity_5Identity&lstm_146/while/lstm_cell_146/add_1:z:0^lstm_146/while/NoOp*
T0*'
_output_shapes
:���������2
lstm_146/while/Identity_5�
lstm_146/while/NoOpNoOp4^lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp3^lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp5^lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_146/while/NoOp";
lstm_146_while_identity lstm_146/while/Identity:output:0"?
lstm_146_while_identity_1"lstm_146/while/Identity_1:output:0"?
lstm_146_while_identity_2"lstm_146/while/Identity_2:output:0"?
lstm_146_while_identity_3"lstm_146/while/Identity_3:output:0"?
lstm_146_while_identity_4"lstm_146/while/Identity_4:output:0"?
lstm_146_while_identity_5"lstm_146/while/Identity_5:output:0"T
'lstm_146_while_lstm_146_strided_slice_1)lstm_146_while_lstm_146_strided_slice_1_0"~
<lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource>lstm_146_while_lstm_cell_146_biasadd_readvariableop_resource_0"�
=lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource?lstm_146_while_lstm_cell_146_matmul_1_readvariableop_resource_0"|
;lstm_146_while_lstm_cell_146_matmul_readvariableop_resource=lstm_146_while_lstm_cell_146_matmul_readvariableop_resource_0"�
clstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensorelstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2j
3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp3lstm_146/while/lstm_cell_146/BiasAdd/ReadVariableOp2h
2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp2lstm_146/while/lstm_cell_146/MatMul/ReadVariableOp2l
4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp4lstm_146/while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
while_cond_2138685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2138685___redundant_placeholder05
1while_while_cond_2138685___redundant_placeholder15
1while_while_cond_2138685___redundant_placeholder25
1while_while_cond_2138685___redundant_placeholder3
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
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139596
inputs_0>
,lstm_cell_145_matmul_readvariableop_resource:@@
.lstm_cell_145_matmul_1_readvariableop_resource:@;
-lstm_cell_145_biasadd_readvariableop_resource:@
identity��$lstm_cell_145/BiasAdd/ReadVariableOp�#lstm_cell_145/MatMul/ReadVariableOp�%lstm_cell_145/MatMul_1/ReadVariableOp�whileF
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp�
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul�
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp�
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul_1�
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/add�
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp�
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/BiasAdd�
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim�
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_145/split�
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid�
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_1�
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul�
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu�
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_1�
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/add_1�
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu_1�
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_2139512*
condR
while_cond_2139511*K
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
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
%__inference_signature_wrapper_2137561
lstm_144_input
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

unknown_10:

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_21342192
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_144_input
�\
�
E__inference_lstm_145_layer_call_and_return_conditional_losses_2136431

inputs>
,lstm_cell_145_matmul_readvariableop_resource:@@
.lstm_cell_145_matmul_1_readvariableop_resource:@;
-lstm_cell_145_biasadd_readvariableop_resource:@
identity��$lstm_cell_145/BiasAdd/ReadVariableOp�#lstm_cell_145/MatMul/ReadVariableOp�%lstm_cell_145/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp�
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul�
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp�
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul_1�
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/add�
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp�
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/BiasAdd�
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim�
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_145/split�
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid�
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_1�
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul�
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu�
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_1�
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/add_1�
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu_1�
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_2136347*
condR
while_cond_2136346*K
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
:���������*
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
:���������2
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
:���������2

Identity�
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�\
�
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140573

inputs>
,lstm_cell_146_matmul_readvariableop_resource:@@
.lstm_cell_146_matmul_1_readvariableop_resource:@;
-lstm_cell_146_biasadd_readvariableop_resource:@
identity��$lstm_cell_146/BiasAdd/ReadVariableOp�#lstm_cell_146/MatMul/ReadVariableOp�%lstm_cell_146/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp�
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul�
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp�
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul_1�
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/add�
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp�
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/BiasAdd�
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim�
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_146/split�
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid�
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_1�
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul�
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu�
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_1�
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/add_1�
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu_1�
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_2140489*
condR
while_cond_2140488*K
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
:���������*
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
:���������2
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2140862

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
�
�
while_cond_2139662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139662___redundant_placeholder05
1while_while_cond_2139662___redundant_placeholder15
1while_while_cond_2139662___redundant_placeholder25
1while_while_cond_2139662___redundant_placeholder3
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
-__inference_dropout_217_layer_call_fn_2139903

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_217_layer_call_and_return_conditional_losses_21364442
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_36_layer_call_fn_2137444
lstm_144_input
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

unknown_10:

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_36_layer_call_and_return_conditional_losses_21373842
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_144_input
�+
�
J__inference_sequential_36_layer_call_and_return_conditional_losses_2137483
lstm_144_input"
lstm_144_2137447:@"
lstm_144_2137449:@
lstm_144_2137451:@"
lstm_145_2137455:@"
lstm_145_2137457:@
lstm_145_2137459:@"
lstm_146_2137463:@"
lstm_146_2137465:@
lstm_146_2137467:@#
dense_108_2137471:
dense_108_2137473:#
dense_109_2137477:
dense_109_2137479:
identity��!dense_108/StatefulPartitionedCall�!dense_109/StatefulPartitionedCall� lstm_144/StatefulPartitionedCall� lstm_145/StatefulPartitionedCall� lstm_146/StatefulPartitionedCall�
 lstm_144/StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputlstm_144_2137447lstm_144_2137449lstm_144_2137451*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_21362662"
 lstm_144/StatefulPartitionedCall�
dropout_216/PartitionedCallPartitionedCall)lstm_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_216_layer_call_and_return_conditional_losses_21362792
dropout_216/PartitionedCall�
 lstm_145/StatefulPartitionedCallStatefulPartitionedCall$dropout_216/PartitionedCall:output:0lstm_145_2137455lstm_145_2137457lstm_145_2137459*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_21364312"
 lstm_145/StatefulPartitionedCall�
dropout_217/PartitionedCallPartitionedCall)lstm_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_217_layer_call_and_return_conditional_losses_21364442
dropout_217/PartitionedCall�
 lstm_146/StatefulPartitionedCallStatefulPartitionedCall$dropout_217/PartitionedCall:output:0lstm_146_2137463lstm_146_2137465lstm_146_2137467*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_21365962"
 lstm_146/StatefulPartitionedCall�
dropout_218/PartitionedCallPartitionedCall)lstm_146/StatefulPartitionedCall:output:0*
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
H__inference_dropout_218_layer_call_and_return_conditional_losses_21366092
dropout_218/PartitionedCall�
!dense_108/StatefulPartitionedCallStatefulPartitionedCall$dropout_218/PartitionedCall:output:0dense_108_2137471dense_108_2137473*
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
GPU 2J 8� *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_21366222#
!dense_108/StatefulPartitionedCall�
dropout_219/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
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
H__inference_dropout_219_layer_call_and_return_conditional_losses_21366332
dropout_219/PartitionedCall�
!dense_109/StatefulPartitionedCallStatefulPartitionedCall$dropout_219/PartitionedCall:output:0dense_109_2137477dense_109_2137479*
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
GPU 2J 8� *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_21366452#
!dense_109/StatefulPartitionedCall�
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall!^lstm_144/StatefulPartitionedCall!^lstm_145/StatefulPartitionedCall!^lstm_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2D
 lstm_144/StatefulPartitionedCall lstm_144/StatefulPartitionedCall2D
 lstm_145/StatefulPartitionedCall lstm_145/StatefulPartitionedCall2D
 lstm_146/StatefulPartitionedCall lstm_146/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_144_input
�%
�
while_body_2134518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_144_2134542_0:@/
while_lstm_cell_144_2134544_0:@+
while_lstm_cell_144_2134546_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_144_2134542:@-
while_lstm_cell_144_2134544:@)
while_lstm_cell_144_2134546:@��+while/lstm_cell_144/StatefulPartitionedCall�
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
+while/lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_144_2134542_0while_lstm_cell_144_2134544_0while_lstm_cell_144_2134546_0*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_21344402-
+while/lstm_cell_144/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_144/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_144/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_144/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_144/StatefulPartitionedCall*"
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
while_lstm_cell_144_2134542while_lstm_cell_144_2134542_0"<
while_lstm_cell_144_2134544while_lstm_cell_144_2134544_0"<
while_lstm_cell_144_2134546while_lstm_cell_144_2134546_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2Z
+while/lstm_cell_144/StatefulPartitionedCall+while/lstm_cell_144/StatefulPartitionedCall: 
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
while_body_2136512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:@H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:@F
4while_lstm_cell_146_matmul_1_readvariableop_resource:@A
3while_lstm_cell_146_biasadd_readvariableop_resource:@��*while/lstm_cell_146/BiasAdd/ReadVariableOp�)while/lstm_cell_146/MatMul/ReadVariableOp�+while/lstm_cell_146/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp�
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul�
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp�
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/MatMul_1�
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/add�
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp�
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_146/BiasAdd�
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim�
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_146/split�
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid�
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_1�
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul�
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu�
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_1�
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/add_1�
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Sigmoid_2�
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/Relu_1�
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_146/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 
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
�
I
-__inference_dropout_218_layer_call_fn_2140578

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
H__inference_dropout_218_layer_call_and_return_conditional_losses_21366092
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
�
�
*__inference_lstm_145_layer_call_fn_2139272
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
GPU 2J 8� *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_21352172
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
�
�
F__inference_dense_108_layer_call_and_return_conditional_losses_2136622

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
�\
�
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140422

inputs>
,lstm_cell_146_matmul_readvariableop_resource:@@
.lstm_cell_146_matmul_1_readvariableop_resource:@;
-lstm_cell_146_biasadd_readvariableop_resource:@
identity��$lstm_cell_146/BiasAdd/ReadVariableOp�#lstm_cell_146/MatMul/ReadVariableOp�%lstm_cell_146/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp�
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul�
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp�
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/MatMul_1�
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/add�
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp�
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_146/BiasAdd�
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim�
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_146/split�
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid�
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_1�
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul�
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu�
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_1�
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/add_1�
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/Relu_1�
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_146/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_2140338*
condR
while_cond_2140337*K
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
:���������*
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
:���������2
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_dropout_219_layer_call_fn_2140625

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
H__inference_dropout_219_layer_call_and_return_conditional_losses_21366332
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
�1
�
J__inference_sequential_36_layer_call_and_return_conditional_losses_2137384

inputs"
lstm_144_2137348:@"
lstm_144_2137350:@
lstm_144_2137352:@"
lstm_145_2137356:@"
lstm_145_2137358:@
lstm_145_2137360:@"
lstm_146_2137364:@"
lstm_146_2137366:@
lstm_146_2137368:@#
dense_108_2137372:
dense_108_2137374:#
dense_109_2137378:
dense_109_2137380:
identity��!dense_108/StatefulPartitionedCall�!dense_109/StatefulPartitionedCall�#dropout_216/StatefulPartitionedCall�#dropout_217/StatefulPartitionedCall�#dropout_218/StatefulPartitionedCall�#dropout_219/StatefulPartitionedCall� lstm_144/StatefulPartitionedCall� lstm_145/StatefulPartitionedCall� lstm_146/StatefulPartitionedCall�
 lstm_144/StatefulPartitionedCallStatefulPartitionedCallinputslstm_144_2137348lstm_144_2137350lstm_144_2137352*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_21373032"
 lstm_144/StatefulPartitionedCall�
#dropout_216/StatefulPartitionedCallStatefulPartitionedCall)lstm_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_216_layer_call_and_return_conditional_losses_21371362%
#dropout_216/StatefulPartitionedCall�
 lstm_145/StatefulPartitionedCallStatefulPartitionedCall,dropout_216/StatefulPartitionedCall:output:0lstm_145_2137356lstm_145_2137358lstm_145_2137360*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_21371072"
 lstm_145/StatefulPartitionedCall�
#dropout_217/StatefulPartitionedCallStatefulPartitionedCall)lstm_145/StatefulPartitionedCall:output:0$^dropout_216/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_217_layer_call_and_return_conditional_losses_21369402%
#dropout_217/StatefulPartitionedCall�
 lstm_146/StatefulPartitionedCallStatefulPartitionedCall,dropout_217/StatefulPartitionedCall:output:0lstm_146_2137364lstm_146_2137366lstm_146_2137368*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_21369112"
 lstm_146/StatefulPartitionedCall�
#dropout_218/StatefulPartitionedCallStatefulPartitionedCall)lstm_146/StatefulPartitionedCall:output:0$^dropout_217/StatefulPartitionedCall*
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
H__inference_dropout_218_layer_call_and_return_conditional_losses_21367442%
#dropout_218/StatefulPartitionedCall�
!dense_108/StatefulPartitionedCallStatefulPartitionedCall,dropout_218/StatefulPartitionedCall:output:0dense_108_2137372dense_108_2137374*
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
GPU 2J 8� *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_21366222#
!dense_108/StatefulPartitionedCall�
#dropout_219/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0$^dropout_218/StatefulPartitionedCall*
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
H__inference_dropout_219_layer_call_and_return_conditional_losses_21367112%
#dropout_219/StatefulPartitionedCall�
!dense_109/StatefulPartitionedCallStatefulPartitionedCall,dropout_219/StatefulPartitionedCall:output:0dense_109_2137378dense_109_2137380*
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
GPU 2J 8� *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_21366452#
!dense_109/StatefulPartitionedCall�
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall$^dropout_216/StatefulPartitionedCall$^dropout_217/StatefulPartitionedCall$^dropout_218/StatefulPartitionedCall$^dropout_219/StatefulPartitionedCall!^lstm_144/StatefulPartitionedCall!^lstm_145/StatefulPartitionedCall!^lstm_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2J
#dropout_216/StatefulPartitionedCall#dropout_216/StatefulPartitionedCall2J
#dropout_217/StatefulPartitionedCall#dropout_217/StatefulPartitionedCall2J
#dropout_218/StatefulPartitionedCall#dropout_218/StatefulPartitionedCall2J
#dropout_219/StatefulPartitionedCall#dropout_219/StatefulPartitionedCall2D
 lstm_144/StatefulPartitionedCall lstm_144/StatefulPartitionedCall2D
 lstm_145/StatefulPartitionedCall lstm_145/StatefulPartitionedCall2D
 lstm_146/StatefulPartitionedCall lstm_146/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�\
�
E__inference_lstm_144_layer_call_and_return_conditional_losses_2137303

inputs>
,lstm_cell_144_matmul_readvariableop_resource:@@
.lstm_cell_144_matmul_1_readvariableop_resource:@;
-lstm_cell_144_biasadd_readvariableop_resource:@
identity��$lstm_cell_144/BiasAdd/ReadVariableOp�#lstm_cell_144/MatMul/ReadVariableOp�%lstm_cell_144/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp�
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul�
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp�
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul_1�
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/add�
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp�
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/BiasAdd�
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim�
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_144/split�
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid�
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_1�
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul�
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu�
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_1�
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/add_1�
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu_1�
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_2137219*
condR
while_cond_2137218*K
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
:���������*
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
:���������2
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
:���������2

Identity�
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
E__inference_lstm_146_layer_call_and_return_conditional_losses_2135637

inputs'
lstm_cell_146_2135555:@'
lstm_cell_146_2135557:@#
lstm_cell_146_2135559:@
identity��%lstm_cell_146/StatefulPartitionedCall�whileD
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
%lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_146_2135555lstm_cell_146_2135557lstm_cell_146_2135559*
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
GPU 2J 8� *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_21355542'
%lstm_cell_146/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_146_2135555lstm_cell_146_2135557lstm_cell_146_2135559*
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
while_body_2135568*
condR
while_cond_2135567*K
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

Identity~
NoOpNoOp&^lstm_cell_146/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_146/StatefulPartitionedCall%lstm_cell_146/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�?
�
while_body_2139814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_145_matmul_readvariableop_resource_0:@H
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_145_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_145_matmul_readvariableop_resource:@F
4while_lstm_cell_145_matmul_1_readvariableop_resource:@A
3while_lstm_cell_145_biasadd_readvariableop_resource:@��*while/lstm_cell_145/BiasAdd/ReadVariableOp�)while/lstm_cell_145/MatMul/ReadVariableOp�+while/lstm_cell_145/MatMul_1/ReadVariableOp�
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
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp�
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul�
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp�
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/MatMul_1�
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/add�
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp�
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_145/BiasAdd�
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim�
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
while/lstm_cell_145/split�
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid�
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_1�
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul�
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu�
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_1�
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/add_1�
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Sigmoid_2�
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/Relu_1�
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
while/lstm_cell_145/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
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
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2135070

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
�
/__inference_sequential_36_layer_call_fn_2137623

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

unknown_10:

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_36_layer_call_and_return_conditional_losses_21373842
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_144_layer_call_fn_2138619

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
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_21373032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�\
�
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139445
inputs_0>
,lstm_cell_145_matmul_readvariableop_resource:@@
.lstm_cell_145_matmul_1_readvariableop_resource:@;
-lstm_cell_145_biasadd_readvariableop_resource:@
identity��$lstm_cell_145/BiasAdd/ReadVariableOp�#lstm_cell_145/MatMul/ReadVariableOp�%lstm_cell_145/MatMul_1/ReadVariableOp�whileF
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp�
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul�
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp�
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/MatMul_1�
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/add�
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp�
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_145/BiasAdd�
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim�
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_145/split�
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid�
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_1�
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul�
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu�
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_1�
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/add_1�
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/Relu_1�
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_145/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_2139361*
condR
while_cond_2139360*K
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
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
*__inference_lstm_146_layer_call_fn_2139947
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
GPU 2J 8� *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_21358472
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
�\
�
E__inference_lstm_144_layer_call_and_return_conditional_losses_2136266

inputs>
,lstm_cell_144_matmul_readvariableop_resource:@@
.lstm_cell_144_matmul_1_readvariableop_resource:@;
-lstm_cell_144_biasadd_readvariableop_resource:@
identity��$lstm_cell_144/BiasAdd/ReadVariableOp�#lstm_cell_144/MatMul/ReadVariableOp�%lstm_cell_144/MatMul_1/ReadVariableOp�whileD
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
:���������2
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp�
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul�
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp�
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/MatMul_1�
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/add�
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp�
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
lstm_cell_144/BiasAdd�
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim�
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split2
lstm_cell_144/split�
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid�
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_1�
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul�
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu�
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_1�
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/add_1�
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:���������2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/Relu_1�
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:���������2
lstm_cell_144/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_2136182*
condR
while_cond_2136181*K
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
:���������*
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
:���������2
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
:���������2

Identity�
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
lstm_144_input;
 serving_default_lstm_144_input:0���������=
	dense_1090
StatefulPartitionedCall:0���������tensorflow/serving/predict:۝
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
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
$cell
%
state_spec
&	variables
'trainable_variables
(regularization_losses
)	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
>iter

?beta_1

@beta_2
	Adecay
Blearning_rate.m�/m�8m�9m�Cm�Dm�Em�Fm�Gm�Hm�Im�Jm�Km�.v�/v�8v�9v�Cv�Dv�Ev�Fv�Gv�Hv�Iv�Jv�Kv�"
	optimizer
~
C0
D1
E2
F3
G4
H5
I6
J7
K8
.9
/10
811
912"
trackable_list_wrapper
~
C0
D1
E2
F3
G4
H5
I6
J7
K8
.9
/10
811
912"
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
trainable_variables
Llayer_regularization_losses
Mnon_trainable_variables
regularization_losses
Nmetrics

Olayers
Player_metrics
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�
Q
state_size

Ckernel
Drecurrent_kernel
Ebias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Vstates
	variables
trainable_variables
Wlayer_regularization_losses
Xnon_trainable_variables
regularization_losses
Ymetrics

Zlayers
[layer_metrics
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
	variables
trainable_variables
\layer_regularization_losses
]non_trainable_variables
regularization_losses
^metrics

_layers
`layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
a
state_size

Fkernel
Grecurrent_kernel
Hbias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

fstates
	variables
trainable_variables
glayer_regularization_losses
hnon_trainable_variables
regularization_losses
imetrics

jlayers
klayer_metrics
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
 	variables
!trainable_variables
llayer_regularization_losses
mnon_trainable_variables
"regularization_losses
nmetrics

olayers
player_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
q
state_size

Ikernel
Jrecurrent_kernel
Kbias
r	variables
strainable_variables
tregularization_losses
u	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

vstates
&	variables
'trainable_variables
wlayer_regularization_losses
xnon_trainable_variables
(regularization_losses
ymetrics

zlayers
{layer_metrics
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
*	variables
+trainable_variables
|layer_regularization_losses
}non_trainable_variables
,regularization_losses
~metrics

layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 2dense_108/kernel
:2dense_108/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0	variables
1trainable_variables
 �layer_regularization_losses
�non_trainable_variables
2regularization_losses
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
4	variables
5trainable_variables
 �layer_regularization_losses
�non_trainable_variables
6regularization_losses
�metrics
�layers
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 2dense_109/kernel
:2dense_109/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
:	variables
;trainable_variables
 �layer_regularization_losses
�non_trainable_variables
<regularization_losses
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
/:-@2lstm_144/lstm_cell_144/kernel
9:7@2'lstm_144/lstm_cell_144/recurrent_kernel
):'@2lstm_144/lstm_cell_144/bias
/:-@2lstm_145/lstm_cell_145/kernel
9:7@2'lstm_145/lstm_cell_145/recurrent_kernel
):'@2lstm_145/lstm_cell_145/bias
/:-@2lstm_146/lstm_cell_146/kernel
9:7@2'lstm_146/lstm_cell_146/recurrent_kernel
):'@2lstm_146/lstm_cell_146/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
R	variables
Strainable_variables
 �layer_regularization_losses
�non_trainable_variables
Tregularization_losses
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
0"
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
F0
G1
H2"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
b	variables
ctrainable_variables
 �layer_regularization_losses
�non_trainable_variables
dregularization_losses
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
0"
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
I0
J1
K2"
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
r	variables
strainable_variables
 �layer_regularization_losses
�non_trainable_variables
tregularization_losses
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
$0"
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
':%2Adam/dense_108/kernel/m
!:2Adam/dense_108/bias/m
':%2Adam/dense_109/kernel/m
!:2Adam/dense_109/bias/m
4:2@2$Adam/lstm_144/lstm_cell_144/kernel/m
>:<@2.Adam/lstm_144/lstm_cell_144/recurrent_kernel/m
.:,@2"Adam/lstm_144/lstm_cell_144/bias/m
4:2@2$Adam/lstm_145/lstm_cell_145/kernel/m
>:<@2.Adam/lstm_145/lstm_cell_145/recurrent_kernel/m
.:,@2"Adam/lstm_145/lstm_cell_145/bias/m
4:2@2$Adam/lstm_146/lstm_cell_146/kernel/m
>:<@2.Adam/lstm_146/lstm_cell_146/recurrent_kernel/m
.:,@2"Adam/lstm_146/lstm_cell_146/bias/m
':%2Adam/dense_108/kernel/v
!:2Adam/dense_108/bias/v
':%2Adam/dense_109/kernel/v
!:2Adam/dense_109/bias/v
4:2@2$Adam/lstm_144/lstm_cell_144/kernel/v
>:<@2.Adam/lstm_144/lstm_cell_144/recurrent_kernel/v
.:,@2"Adam/lstm_144/lstm_cell_144/bias/v
4:2@2$Adam/lstm_145/lstm_cell_145/kernel/v
>:<@2.Adam/lstm_145/lstm_cell_145/recurrent_kernel/v
.:,@2"Adam/lstm_145/lstm_cell_145/bias/v
4:2@2$Adam/lstm_146/lstm_cell_146/kernel/v
>:<@2.Adam/lstm_146/lstm_cell_146/recurrent_kernel/v
.:,@2"Adam/lstm_146/lstm_cell_146/bias/v
�2�
/__inference_sequential_36_layer_call_fn_2136681
/__inference_sequential_36_layer_call_fn_2137592
/__inference_sequential_36_layer_call_fn_2137623
/__inference_sequential_36_layer_call_fn_2137444�
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
"__inference__wrapped_model_2134219lstm_144_input"�
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
J__inference_sequential_36_layer_call_and_return_conditional_losses_2138085
J__inference_sequential_36_layer_call_and_return_conditional_losses_2138575
J__inference_sequential_36_layer_call_and_return_conditional_losses_2137483
J__inference_sequential_36_layer_call_and_return_conditional_losses_2137522�
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
*__inference_lstm_144_layer_call_fn_2138586
*__inference_lstm_144_layer_call_fn_2138597
*__inference_lstm_144_layer_call_fn_2138608
*__inference_lstm_144_layer_call_fn_2138619�
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
E__inference_lstm_144_layer_call_and_return_conditional_losses_2138770
E__inference_lstm_144_layer_call_and_return_conditional_losses_2138921
E__inference_lstm_144_layer_call_and_return_conditional_losses_2139072
E__inference_lstm_144_layer_call_and_return_conditional_losses_2139223�
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
-__inference_dropout_216_layer_call_fn_2139228
-__inference_dropout_216_layer_call_fn_2139233�
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
H__inference_dropout_216_layer_call_and_return_conditional_losses_2139238
H__inference_dropout_216_layer_call_and_return_conditional_losses_2139250�
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
*__inference_lstm_145_layer_call_fn_2139261
*__inference_lstm_145_layer_call_fn_2139272
*__inference_lstm_145_layer_call_fn_2139283
*__inference_lstm_145_layer_call_fn_2139294�
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
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139445
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139596
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139747
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139898�
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
-__inference_dropout_217_layer_call_fn_2139903
-__inference_dropout_217_layer_call_fn_2139908�
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
H__inference_dropout_217_layer_call_and_return_conditional_losses_2139913
H__inference_dropout_217_layer_call_and_return_conditional_losses_2139925�
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
*__inference_lstm_146_layer_call_fn_2139936
*__inference_lstm_146_layer_call_fn_2139947
*__inference_lstm_146_layer_call_fn_2139958
*__inference_lstm_146_layer_call_fn_2139969�
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
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140120
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140271
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140422
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140573�
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
-__inference_dropout_218_layer_call_fn_2140578
-__inference_dropout_218_layer_call_fn_2140583�
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
H__inference_dropout_218_layer_call_and_return_conditional_losses_2140588
H__inference_dropout_218_layer_call_and_return_conditional_losses_2140600�
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
+__inference_dense_108_layer_call_fn_2140609�
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
F__inference_dense_108_layer_call_and_return_conditional_losses_2140620�
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
-__inference_dropout_219_layer_call_fn_2140625
-__inference_dropout_219_layer_call_fn_2140630�
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
H__inference_dropout_219_layer_call_and_return_conditional_losses_2140635
H__inference_dropout_219_layer_call_and_return_conditional_losses_2140647�
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
+__inference_dense_109_layer_call_fn_2140656�
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
F__inference_dense_109_layer_call_and_return_conditional_losses_2140666�
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
%__inference_signature_wrapper_2137561lstm_144_input"�
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
/__inference_lstm_cell_144_layer_call_fn_2140683
/__inference_lstm_cell_144_layer_call_fn_2140700�
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
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2140732
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2140764�
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
/__inference_lstm_cell_145_layer_call_fn_2140781
/__inference_lstm_cell_145_layer_call_fn_2140798�
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
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2140830
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2140862�
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
/__inference_lstm_cell_146_layer_call_fn_2140879
/__inference_lstm_cell_146_layer_call_fn_2140896�
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
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2140928
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2140960�
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
"__inference__wrapped_model_2134219�CDEFGHIJK./89;�8
1�.
,�)
lstm_144_input���������
� "5�2
0
	dense_109#� 
	dense_109����������
F__inference_dense_108_layer_call_and_return_conditional_losses_2140620\.//�,
%�"
 �
inputs���������
� "%�"
�
0���������
� ~
+__inference_dense_108_layer_call_fn_2140609O.//�,
%�"
 �
inputs���������
� "�����������
F__inference_dense_109_layer_call_and_return_conditional_losses_2140666\89/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� ~
+__inference_dense_109_layer_call_fn_2140656O89/�,
%�"
 �
inputs���������
� "�����������
H__inference_dropout_216_layer_call_and_return_conditional_losses_2139238d7�4
-�*
$�!
inputs���������
p 
� ")�&
�
0���������
� �
H__inference_dropout_216_layer_call_and_return_conditional_losses_2139250d7�4
-�*
$�!
inputs���������
p
� ")�&
�
0���������
� �
-__inference_dropout_216_layer_call_fn_2139228W7�4
-�*
$�!
inputs���������
p 
� "�����������
-__inference_dropout_216_layer_call_fn_2139233W7�4
-�*
$�!
inputs���������
p
� "�����������
H__inference_dropout_217_layer_call_and_return_conditional_losses_2139913d7�4
-�*
$�!
inputs���������
p 
� ")�&
�
0���������
� �
H__inference_dropout_217_layer_call_and_return_conditional_losses_2139925d7�4
-�*
$�!
inputs���������
p
� ")�&
�
0���������
� �
-__inference_dropout_217_layer_call_fn_2139903W7�4
-�*
$�!
inputs���������
p 
� "�����������
-__inference_dropout_217_layer_call_fn_2139908W7�4
-�*
$�!
inputs���������
p
� "�����������
H__inference_dropout_218_layer_call_and_return_conditional_losses_2140588\3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
H__inference_dropout_218_layer_call_and_return_conditional_losses_2140600\3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
-__inference_dropout_218_layer_call_fn_2140578O3�0
)�&
 �
inputs���������
p 
� "�����������
-__inference_dropout_218_layer_call_fn_2140583O3�0
)�&
 �
inputs���������
p
� "�����������
H__inference_dropout_219_layer_call_and_return_conditional_losses_2140635\3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
H__inference_dropout_219_layer_call_and_return_conditional_losses_2140647\3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
-__inference_dropout_219_layer_call_fn_2140625O3�0
)�&
 �
inputs���������
p 
� "�����������
-__inference_dropout_219_layer_call_fn_2140630O3�0
)�&
 �
inputs���������
p
� "�����������
E__inference_lstm_144_layer_call_and_return_conditional_losses_2138770�CDEO�L
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
E__inference_lstm_144_layer_call_and_return_conditional_losses_2138921�CDEO�L
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
E__inference_lstm_144_layer_call_and_return_conditional_losses_2139072qCDE?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������
� �
E__inference_lstm_144_layer_call_and_return_conditional_losses_2139223qCDE?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������
� �
*__inference_lstm_144_layer_call_fn_2138586}CDEO�L
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
*__inference_lstm_144_layer_call_fn_2138597}CDEO�L
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
*__inference_lstm_144_layer_call_fn_2138608dCDE?�<
5�2
$�!
inputs���������

 
p 

 
� "�����������
*__inference_lstm_144_layer_call_fn_2138619dCDE?�<
5�2
$�!
inputs���������

 
p

 
� "�����������
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139445�FGHO�L
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
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139596�FGHO�L
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
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139747qFGH?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������
� �
E__inference_lstm_145_layer_call_and_return_conditional_losses_2139898qFGH?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������
� �
*__inference_lstm_145_layer_call_fn_2139261}FGHO�L
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
*__inference_lstm_145_layer_call_fn_2139272}FGHO�L
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
*__inference_lstm_145_layer_call_fn_2139283dFGH?�<
5�2
$�!
inputs���������

 
p 

 
� "�����������
*__inference_lstm_145_layer_call_fn_2139294dFGH?�<
5�2
$�!
inputs���������

 
p

 
� "�����������
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140120}IJKO�L
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
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140271}IJKO�L
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
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140422mIJK?�<
5�2
$�!
inputs���������

 
p 

 
� "%�"
�
0���������
� �
E__inference_lstm_146_layer_call_and_return_conditional_losses_2140573mIJK?�<
5�2
$�!
inputs���������

 
p

 
� "%�"
�
0���������
� �
*__inference_lstm_146_layer_call_fn_2139936pIJKO�L
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
*__inference_lstm_146_layer_call_fn_2139947pIJKO�L
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
*__inference_lstm_146_layer_call_fn_2139958`IJK?�<
5�2
$�!
inputs���������

 
p 

 
� "�����������
*__inference_lstm_146_layer_call_fn_2139969`IJK?�<
5�2
$�!
inputs���������

 
p

 
� "�����������
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2140732�CDE��}
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
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2140764�CDE��}
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
/__inference_lstm_cell_144_layer_call_fn_2140683�CDE��}
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
/__inference_lstm_cell_144_layer_call_fn_2140700�CDE��}
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
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2140830�FGH��}
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
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2140862�FGH��}
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
/__inference_lstm_cell_145_layer_call_fn_2140781�FGH��}
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
/__inference_lstm_cell_145_layer_call_fn_2140798�FGH��}
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
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2140928�IJK��}
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
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2140960�IJK��}
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
/__inference_lstm_cell_146_layer_call_fn_2140879�IJK��}
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
/__inference_lstm_cell_146_layer_call_fn_2140896�IJK��}
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
J__inference_sequential_36_layer_call_and_return_conditional_losses_2137483{CDEFGHIJK./89C�@
9�6
,�)
lstm_144_input���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_36_layer_call_and_return_conditional_losses_2137522{CDEFGHIJK./89C�@
9�6
,�)
lstm_144_input���������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_36_layer_call_and_return_conditional_losses_2138085sCDEFGHIJK./89;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_36_layer_call_and_return_conditional_losses_2138575sCDEFGHIJK./89;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
/__inference_sequential_36_layer_call_fn_2136681nCDEFGHIJK./89C�@
9�6
,�)
lstm_144_input���������
p 

 
� "�����������
/__inference_sequential_36_layer_call_fn_2137444nCDEFGHIJK./89C�@
9�6
,�)
lstm_144_input���������
p

 
� "�����������
/__inference_sequential_36_layer_call_fn_2137592fCDEFGHIJK./89;�8
1�.
$�!
inputs���������
p 

 
� "�����������
/__inference_sequential_36_layer_call_fn_2137623fCDEFGHIJK./89;�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_2137561�CDEFGHIJK./89M�J
� 
C�@
>
lstm_144_input,�)
lstm_144_input���������"5�2
0
	dense_109#� 
	dense_109���������