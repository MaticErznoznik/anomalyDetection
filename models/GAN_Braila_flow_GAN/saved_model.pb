ʔ
��
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8��
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
z
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

:
*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:
*
dtype0
z
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

:

*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes
:
*
dtype0
z
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

* 
shared_namedense_58/kernel
s
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel*
_output_shapes

:

*
dtype0
r
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_58/bias
k
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
_output_shapes
:
*
dtype0
z
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_59/kernel
s
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes

:
*
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
_output_shapes
:*
dtype0
z
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_60/kernel
s
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes

:
*
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
_output_shapes
:
*
dtype0
z
dense_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

* 
shared_namedense_61/kernel
s
#dense_61/kernel/Read/ReadVariableOpReadVariableOpdense_61/kernel*
_output_shapes

:

*
dtype0
r
dense_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_61/bias
k
!dense_61/bias/Read/ReadVariableOpReadVariableOpdense_61/bias*
_output_shapes
:
*
dtype0
z
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

* 
shared_namedense_62/kernel
s
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel*
_output_shapes

:

*
dtype0
r
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_62/bias
k
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes
:
*
dtype0
z
dense_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_63/kernel
s
#dense_63/kernel/Read/ReadVariableOpReadVariableOpdense_63/kernel*
_output_shapes

:
*
dtype0
r
dense_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_63/bias
k
!dense_63/bias/Read/ReadVariableOpReadVariableOpdense_63/bias*
_output_shapes
:*
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
�
Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_56/kernel/m
�
*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameAdam/dense_57/kernel/m
�
*Adam/dense_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/m*
_output_shapes

:

*
dtype0
�
Adam/dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_57/bias/m
y
(Adam/dense_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameAdam/dense_58/kernel/m
�
*Adam/dense_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/m*
_output_shapes

:

*
dtype0
�
Adam/dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_58/bias/m
y
(Adam/dense_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_59/kernel/m
�
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/m
y
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_60/kernel/m
�
*Adam/dense_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_60/bias/m
y
(Adam/dense_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameAdam/dense_61/kernel/m
�
*Adam/dense_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/m*
_output_shapes

:

*
dtype0
�
Adam/dense_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_61/bias/m
y
(Adam/dense_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameAdam/dense_62/kernel/m
�
*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m*
_output_shapes

:

*
dtype0
�
Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_62/bias/m
y
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_63/kernel/m
�
*Adam/dense_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/m
y
(Adam/dense_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_56/kernel/v
�
*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameAdam/dense_57/kernel/v
�
*Adam/dense_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/v*
_output_shapes

:

*
dtype0
�
Adam/dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_57/bias/v
y
(Adam/dense_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameAdam/dense_58/kernel/v
�
*Adam/dense_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/v*
_output_shapes

:

*
dtype0
�
Adam/dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_58/bias/v
y
(Adam/dense_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_59/kernel/v
�
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/v
y
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_60/kernel/v
�
*Adam/dense_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_60/bias/v
y
(Adam/dense_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameAdam/dense_61/kernel/v
�
*Adam/dense_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/v*
_output_shapes

:

*
dtype0
�
Adam/dense_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_61/bias/v
y
(Adam/dense_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameAdam/dense_62/kernel/v
�
*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v*
_output_shapes

:

*
dtype0
�
Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_62/bias/v
y
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_63/kernel/v
�
*Adam/dense_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/v
y
(Adam/dense_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/v*
_output_shapes
:*
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?

NoOpNoOp
�\
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*�[
value�[B�[ B�[
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
	optimizer
loss
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
regularization_losses
trainable_variables
 	variables
!	keras_api
�
"layer-0
#layer_with_weights-0
#layer-1
$layer_with_weights-1
$layer-2
%layer_with_weights-2
%layer-3
&layer_with_weights-3
&layer-4
'regularization_losses
(trainable_variables
)	variables
*	keras_api

+	keras_api

,	keras_api

-	keras_api

.	keras_api

/	keras_api

0	keras_api

1	keras_api

2	keras_api

3	keras_api

4	keras_api

5	keras_api

6	keras_api

7	keras_api

8	keras_api
R
9regularization_losses
:trainable_variables
;	variables
<	keras_api
�
=iter

>beta_1

?beta_2
	@decay
Alearning_rateBm�Cm�Dm�Em�Fm�Gm�Hm�Im�Jm�Km�Lm�Mm�Nm�Om�Pm�Qm�Bv�Cv�Dv�Ev�Fv�Gv�Hv�Iv�Jv�Kv�Lv�Mv�Nv�Ov�Pv�Qv�
 
 
v
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
v
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
�

Rlayers
regularization_losses
trainable_variables
	variables
Snon_trainable_variables
Tlayer_regularization_losses
Ulayer_metrics
Vmetrics
 
h

Bkernel
Cbias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
h

Dkernel
Ebias
[regularization_losses
\trainable_variables
]	variables
^	keras_api
h

Fkernel
Gbias
_regularization_losses
`trainable_variables
a	variables
b	keras_api
h

Hkernel
Ibias
cregularization_losses
dtrainable_variables
e	variables
f	keras_api
 
8
B0
C1
D2
E3
F4
G5
H6
I7
8
B0
C1
D2
E3
F4
G5
H6
I7
�

glayers
regularization_losses
trainable_variables
 	variables
hnon_trainable_variables
ilayer_regularization_losses
jlayer_metrics
kmetrics
 
h

Jkernel
Kbias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
h

Lkernel
Mbias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
h

Nkernel
Obias
tregularization_losses
utrainable_variables
v	variables
w	keras_api
h

Pkernel
Qbias
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
 
8
J0
K1
L2
M3
N4
O5
P6
Q7
8
J0
K1
L2
M3
N4
O5
P6
Q7
�

|layers
'regularization_losses
(trainable_variables
)	variables
}non_trainable_variables
~layer_regularization_losses
layer_metrics
�metrics
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
�
�layers
9regularization_losses
:trainable_variables
;	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
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
US
VARIABLE_VALUEdense_56/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_56/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_57/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_57/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_58/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_58/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_59/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_59/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_60/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_60/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_61/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_61/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_62/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_62/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_63/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_63/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
�
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
11
12
13
14
15
16
17
 
 
 

�0
 

B0
C1

B0
C1
�
�layers
Wregularization_losses
Xtrainable_variables
Y	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
 

D0
E1

D0
E1
�
�layers
[regularization_losses
\trainable_variables
]	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
 

F0
G1

F0
G1
�
�layers
_regularization_losses
`trainable_variables
a	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
 

H0
I1

H0
I1
�
�layers
cregularization_losses
dtrainable_variables
e	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
#
0
1
2
3
4
 
 
 
 
 

J0
K1

J0
K1
�
�layers
lregularization_losses
mtrainable_variables
n	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
 

L0
M1

L0
M1
�
�layers
pregularization_losses
qtrainable_variables
r	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
 

N0
O1

N0
O1
�
�layers
tregularization_losses
utrainable_variables
v	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
 

P0
Q1

P0
Q1
�
�layers
xregularization_losses
ytrainable_variables
z	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
#
"0
#1
$2
%3
&4
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
xv
VARIABLE_VALUEAdam/dense_56/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_56/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_57/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_57/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_58/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_58/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_59/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_59/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_60/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_60/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_61/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_61/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_62/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_62/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_63/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_63/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_56/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_56/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_57/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_57/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_58/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_58/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_59/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_59/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_60/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_60/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_61/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_61/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_62/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_62/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_63/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_63/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_8Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8dense_56/kerneldense_56/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/biasdense_60/kerneldense_60/biasdense_61/kerneldense_61/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_44351
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOp#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOp#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOp#dense_61/kernel/Read/ReadVariableOp!dense_61/bias/Read/ReadVariableOp#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOp#dense_63/kernel/Read/ReadVariableOp!dense_63/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp*Adam/dense_57/kernel/m/Read/ReadVariableOp(Adam/dense_57/bias/m/Read/ReadVariableOp*Adam/dense_58/kernel/m/Read/ReadVariableOp(Adam/dense_58/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp*Adam/dense_60/kernel/m/Read/ReadVariableOp(Adam/dense_60/bias/m/Read/ReadVariableOp*Adam/dense_61/kernel/m/Read/ReadVariableOp(Adam/dense_61/bias/m/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp*Adam/dense_63/kernel/m/Read/ReadVariableOp(Adam/dense_63/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOp*Adam/dense_57/kernel/v/Read/ReadVariableOp(Adam/dense_57/bias/v/Read/ReadVariableOp*Adam/dense_58/kernel/v/Read/ReadVariableOp(Adam/dense_58/bias/v/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOp*Adam/dense_60/kernel/v/Read/ReadVariableOp(Adam/dense_60/bias/v/Read/ReadVariableOp*Adam/dense_61/kernel/v/Read/ReadVariableOp(Adam/dense_61/bias/v/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOp*Adam/dense_63/kernel/v/Read/ReadVariableOp(Adam/dense_63/bias/v/Read/ReadVariableOpConst_1*D
Tin=
;29	*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_45151
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense_56/kerneldense_56/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/biasdense_60/kerneldense_60/biasdense_61/kerneldense_61/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/biastotalcountAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/dense_57/kernel/mAdam/dense_57/bias/mAdam/dense_58/kernel/mAdam/dense_58/bias/mAdam/dense_59/kernel/mAdam/dense_59/bias/mAdam/dense_60/kernel/mAdam/dense_60/bias/mAdam/dense_61/kernel/mAdam/dense_61/bias/mAdam/dense_62/kernel/mAdam/dense_62/bias/mAdam/dense_63/kernel/mAdam/dense_63/bias/mAdam/dense_56/kernel/vAdam/dense_56/bias/vAdam/dense_57/kernel/vAdam/dense_57/bias/vAdam/dense_58/kernel/vAdam/dense_58/bias/vAdam/dense_59/kernel/vAdam/dense_59/bias/vAdam/dense_60/kernel/vAdam/dense_60/bias/vAdam/dense_61/kernel/vAdam/dense_61/bias/vAdam/dense_62/kernel/vAdam/dense_62/bias/vAdam/dense_63/kernel/vAdam/dense_63/bias/v*C
Tin<
:28*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_45326��
�
}
(__inference_dense_58_layer_call_fn_44863

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_434972
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
}
(__inference_dense_62_layer_call_fn_44943

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_437332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
#__inference_vae_layer_call_fn_44579

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_vae_layer_call_and_return_conditional_losses_442642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:���������::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�	
�
C__inference_dense_59_layer_call_and_return_conditional_losses_44874

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�)
�
B__inference_encoder_layer_call_and_return_conditional_losses_44611

inputs+
'dense_56_matmul_readvariableop_resource,
(dense_56_biasadd_readvariableop_resource+
'dense_57_matmul_readvariableop_resource,
(dense_57_biasadd_readvariableop_resource+
'dense_58_matmul_readvariableop_resource,
(dense_58_biasadd_readvariableop_resource+
'dense_59_matmul_readvariableop_resource,
(dense_59_biasadd_readvariableop_resource
identity

identity_1��dense_56/BiasAdd/ReadVariableOp�dense_56/MatMul/ReadVariableOp�dense_57/BiasAdd/ReadVariableOp�dense_57/MatMul/ReadVariableOp�dense_58/BiasAdd/ReadVariableOp�dense_58/MatMul/ReadVariableOp�dense_59/BiasAdd/ReadVariableOp�dense_59/MatMul/ReadVariableOp�
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_56/MatMul/ReadVariableOp�
dense_56/MatMulMatMulinputs&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_56/MatMul�
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_56/BiasAdd/ReadVariableOp�
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_56/BiasAdd�
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02 
dense_57/MatMul/ReadVariableOp�
dense_57/MatMulMatMuldense_56/BiasAdd:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_57/MatMul�
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_57/BiasAdd/ReadVariableOp�
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_57/BiasAdds
dense_57/TanhTanhdense_57/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_57/Tanh�
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02 
dense_58/MatMul/ReadVariableOp�
dense_58/MatMulMatMuldense_57/Tanh:y:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_58/MatMul�
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_58/BiasAdd/ReadVariableOp�
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_58/BiasAdds
dense_58/TanhTanhdense_58/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_58/Tanh�
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_59/MatMul/ReadVariableOp�
dense_59/MatMulMatMuldense_58/Tanh:y:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_59/MatMul�
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_59/BiasAdd/ReadVariableOp�
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_59/BiasAdds
dense_59/TanhTanhdense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_59/Tanh�
IdentityIdentitydense_59/Tanh:y:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identitydense_59/Tanh:y:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
#__inference_vae_layer_call_fn_44205
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_vae_layer_call_and_return_conditional_losses_441672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:���������::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8:

_output_shapes
: 
�%
�
B__inference_decoder_layer_call_and_return_conditional_losses_44751

inputs+
'dense_60_matmul_readvariableop_resource,
(dense_60_biasadd_readvariableop_resource+
'dense_61_matmul_readvariableop_resource,
(dense_61_biasadd_readvariableop_resource+
'dense_62_matmul_readvariableop_resource,
(dense_62_biasadd_readvariableop_resource+
'dense_63_matmul_readvariableop_resource,
(dense_63_biasadd_readvariableop_resource
identity��dense_60/BiasAdd/ReadVariableOp�dense_60/MatMul/ReadVariableOp�dense_61/BiasAdd/ReadVariableOp�dense_61/MatMul/ReadVariableOp�dense_62/BiasAdd/ReadVariableOp�dense_62/MatMul/ReadVariableOp�dense_63/BiasAdd/ReadVariableOp�dense_63/MatMul/ReadVariableOp�
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_60/MatMul/ReadVariableOp�
dense_60/MatMulMatMulinputs&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_60/MatMul�
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_60/BiasAdd/ReadVariableOp�
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_60/BiasAdds
dense_60/TanhTanhdense_60/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_60/Tanh�
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02 
dense_61/MatMul/ReadVariableOp�
dense_61/MatMulMatMuldense_60/Tanh:y:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_61/MatMul�
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_61/BiasAdd/ReadVariableOp�
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_61/BiasAdds
dense_61/ReluReludense_61/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_61/Relu�
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02 
dense_62/MatMul/ReadVariableOp�
dense_62/MatMulMatMuldense_61/Relu:activations:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_62/MatMul�
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_62/BiasAdd/ReadVariableOp�
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_62/BiasAdds
dense_62/ReluReludense_62/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_62/Relu�
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_63/MatMul/ReadVariableOp�
dense_63/MatMulMatMuldense_62/Relu:activations:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_63/MatMul�
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_63/BiasAdd/ReadVariableOp�
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_63/BiasAdd�
IdentityIdentitydense_63/BiasAdd:output:0 ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�n
�
>__inference_vae_layer_call_and_return_conditional_losses_44425

inputs3
/encoder_dense_56_matmul_readvariableop_resource4
0encoder_dense_56_biasadd_readvariableop_resource3
/encoder_dense_57_matmul_readvariableop_resource4
0encoder_dense_57_biasadd_readvariableop_resource3
/encoder_dense_58_matmul_readvariableop_resource4
0encoder_dense_58_biasadd_readvariableop_resource3
/encoder_dense_59_matmul_readvariableop_resource4
0encoder_dense_59_biasadd_readvariableop_resource3
/decoder_dense_60_matmul_readvariableop_resource4
0decoder_dense_60_biasadd_readvariableop_resource3
/decoder_dense_61_matmul_readvariableop_resource4
0decoder_dense_61_biasadd_readvariableop_resource3
/decoder_dense_62_matmul_readvariableop_resource4
0decoder_dense_62_biasadd_readvariableop_resource3
/decoder_dense_63_matmul_readvariableop_resource4
0decoder_dense_63_biasadd_readvariableop_resource
tf_math_multiply_7_mul_y
identity

identity_1��'decoder/dense_60/BiasAdd/ReadVariableOp�&decoder/dense_60/MatMul/ReadVariableOp�'decoder/dense_61/BiasAdd/ReadVariableOp�&decoder/dense_61/MatMul/ReadVariableOp�'decoder/dense_62/BiasAdd/ReadVariableOp�&decoder/dense_62/MatMul/ReadVariableOp�'decoder/dense_63/BiasAdd/ReadVariableOp�&decoder/dense_63/MatMul/ReadVariableOp�'encoder/dense_56/BiasAdd/ReadVariableOp�&encoder/dense_56/MatMul/ReadVariableOp�'encoder/dense_57/BiasAdd/ReadVariableOp�&encoder/dense_57/MatMul/ReadVariableOp�'encoder/dense_58/BiasAdd/ReadVariableOp�&encoder/dense_58/MatMul/ReadVariableOp�'encoder/dense_59/BiasAdd/ReadVariableOp�&encoder/dense_59/MatMul/ReadVariableOp�
&encoder/dense_56/MatMul/ReadVariableOpReadVariableOp/encoder_dense_56_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02(
&encoder/dense_56/MatMul/ReadVariableOp�
encoder/dense_56/MatMulMatMulinputs.encoder/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_56/MatMul�
'encoder/dense_56/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_56_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'encoder/dense_56/BiasAdd/ReadVariableOp�
encoder/dense_56/BiasAddBiasAdd!encoder/dense_56/MatMul:product:0/encoder/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_56/BiasAdd�
&encoder/dense_57/MatMul/ReadVariableOpReadVariableOp/encoder_dense_57_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02(
&encoder/dense_57/MatMul/ReadVariableOp�
encoder/dense_57/MatMulMatMul!encoder/dense_56/BiasAdd:output:0.encoder/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_57/MatMul�
'encoder/dense_57/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_57_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'encoder/dense_57/BiasAdd/ReadVariableOp�
encoder/dense_57/BiasAddBiasAdd!encoder/dense_57/MatMul:product:0/encoder/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_57/BiasAdd�
encoder/dense_57/TanhTanh!encoder/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
encoder/dense_57/Tanh�
&encoder/dense_58/MatMul/ReadVariableOpReadVariableOp/encoder_dense_58_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02(
&encoder/dense_58/MatMul/ReadVariableOp�
encoder/dense_58/MatMulMatMulencoder/dense_57/Tanh:y:0.encoder/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_58/MatMul�
'encoder/dense_58/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_58_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'encoder/dense_58/BiasAdd/ReadVariableOp�
encoder/dense_58/BiasAddBiasAdd!encoder/dense_58/MatMul:product:0/encoder/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_58/BiasAdd�
encoder/dense_58/TanhTanh!encoder/dense_58/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
encoder/dense_58/Tanh�
&encoder/dense_59/MatMul/ReadVariableOpReadVariableOp/encoder_dense_59_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02(
&encoder/dense_59/MatMul/ReadVariableOp�
encoder/dense_59/MatMulMatMulencoder/dense_58/Tanh:y:0.encoder/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense_59/MatMul�
'encoder/dense_59/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'encoder/dense_59/BiasAdd/ReadVariableOp�
encoder/dense_59/BiasAddBiasAdd!encoder/dense_59/MatMul:product:0/encoder/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense_59/BiasAdd�
encoder/dense_59/TanhTanh!encoder/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
encoder/dense_59/Tanh�
&decoder/dense_60/MatMul/ReadVariableOpReadVariableOp/decoder_dense_60_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02(
&decoder/dense_60/MatMul/ReadVariableOp�
decoder/dense_60/MatMulMatMulencoder/dense_59/Tanh:y:0.decoder/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_60/MatMul�
'decoder/dense_60/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_60_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'decoder/dense_60/BiasAdd/ReadVariableOp�
decoder/dense_60/BiasAddBiasAdd!decoder/dense_60/MatMul:product:0/decoder/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_60/BiasAdd�
decoder/dense_60/TanhTanh!decoder/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
decoder/dense_60/Tanh�
&decoder/dense_61/MatMul/ReadVariableOpReadVariableOp/decoder_dense_61_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02(
&decoder/dense_61/MatMul/ReadVariableOp�
decoder/dense_61/MatMulMatMuldecoder/dense_60/Tanh:y:0.decoder/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_61/MatMul�
'decoder/dense_61/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_61_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'decoder/dense_61/BiasAdd/ReadVariableOp�
decoder/dense_61/BiasAddBiasAdd!decoder/dense_61/MatMul:product:0/decoder/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_61/BiasAdd�
decoder/dense_61/ReluRelu!decoder/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
decoder/dense_61/Relu�
&decoder/dense_62/MatMul/ReadVariableOpReadVariableOp/decoder_dense_62_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02(
&decoder/dense_62/MatMul/ReadVariableOp�
decoder/dense_62/MatMulMatMul#decoder/dense_61/Relu:activations:0.decoder/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_62/MatMul�
'decoder/dense_62/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_62_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'decoder/dense_62/BiasAdd/ReadVariableOp�
decoder/dense_62/BiasAddBiasAdd!decoder/dense_62/MatMul:product:0/decoder/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_62/BiasAdd�
decoder/dense_62/ReluRelu!decoder/dense_62/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
decoder/dense_62/Relu�
&decoder/dense_63/MatMul/ReadVariableOpReadVariableOp/decoder_dense_63_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02(
&decoder/dense_63/MatMul/ReadVariableOp�
decoder/dense_63/MatMulMatMul#decoder/dense_62/Relu:activations:0.decoder/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
decoder/dense_63/MatMul�
'decoder/dense_63/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_63/BiasAdd/ReadVariableOp�
decoder/dense_63/BiasAddBiasAdd!decoder/dense_63/MatMul:product:0/decoder/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
decoder/dense_63/BiasAdd�
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference!decoder/dense_63/BiasAdd:output:0inputs*
T0*'
_output_shapes
:���������20
.tf.math.squared_difference_7/SquaredDifference�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_mean_7/Mean�
tf.math.multiply_7/MulMul#tf.math.reduce_mean_7/Mean:output:0tf_math_multiply_7_mul_y*
T0*#
_output_shapes
:���������2
tf.math.multiply_7/Muly
tf.compat.v1.size_7/SizeSizetf.math.multiply_7/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size_7/Size�
tf.math.reduce_sum_14/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum_14/Const�
tf.math.reduce_sum_14/SumSumtf.math.multiply_7/Mul:z:0$tf.math.reduce_sum_14/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_14/Sumz
tf.math.reduce_sum_15/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_15/Rank�
!tf.math.reduce_sum_15/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2#
!tf.math.reduce_sum_15/range/start�
!tf.math.reduce_sum_15/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2#
!tf.math.reduce_sum_15/range/delta�
tf.math.reduce_sum_15/rangeRange*tf.math.reduce_sum_15/range/start:output:0#tf.math.reduce_sum_15/Rank:output:0*tf.math.reduce_sum_15/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_15/range�
tf.math.reduce_sum_15/SumSum"tf.math.reduce_sum_14/Sum:output:0$tf.math.reduce_sum_15/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_15/Sum}
tf.cast_30/CastCast!tf.compat.v1.size_7/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_30/Cast�
"tf.math.divide_no_nan_7/div_no_nanDivNoNan"tf.math.reduce_sum_15/Sum:output:0tf.cast_30/Cast:y:0*
T0*
_output_shapes
: 2$
"tf.math.divide_no_nan_7/div_no_nan�
IdentityIdentity!decoder/dense_63/BiasAdd:output:0(^decoder/dense_60/BiasAdd/ReadVariableOp'^decoder/dense_60/MatMul/ReadVariableOp(^decoder/dense_61/BiasAdd/ReadVariableOp'^decoder/dense_61/MatMul/ReadVariableOp(^decoder/dense_62/BiasAdd/ReadVariableOp'^decoder/dense_62/MatMul/ReadVariableOp(^decoder/dense_63/BiasAdd/ReadVariableOp'^decoder/dense_63/MatMul/ReadVariableOp(^encoder/dense_56/BiasAdd/ReadVariableOp'^encoder/dense_56/MatMul/ReadVariableOp(^encoder/dense_57/BiasAdd/ReadVariableOp'^encoder/dense_57/MatMul/ReadVariableOp(^encoder/dense_58/BiasAdd/ReadVariableOp'^encoder/dense_58/MatMul/ReadVariableOp(^encoder/dense_59/BiasAdd/ReadVariableOp'^encoder/dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity&tf.math.divide_no_nan_7/div_no_nan:z:0(^decoder/dense_60/BiasAdd/ReadVariableOp'^decoder/dense_60/MatMul/ReadVariableOp(^decoder/dense_61/BiasAdd/ReadVariableOp'^decoder/dense_61/MatMul/ReadVariableOp(^decoder/dense_62/BiasAdd/ReadVariableOp'^decoder/dense_62/MatMul/ReadVariableOp(^decoder/dense_63/BiasAdd/ReadVariableOp'^decoder/dense_63/MatMul/ReadVariableOp(^encoder/dense_56/BiasAdd/ReadVariableOp'^encoder/dense_56/MatMul/ReadVariableOp(^encoder/dense_57/BiasAdd/ReadVariableOp'^encoder/dense_57/MatMul/ReadVariableOp(^encoder/dense_58/BiasAdd/ReadVariableOp'^encoder/dense_58/MatMul/ReadVariableOp(^encoder/dense_59/BiasAdd/ReadVariableOp'^encoder/dense_59/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:���������::::::::::::::::: 2R
'decoder/dense_60/BiasAdd/ReadVariableOp'decoder/dense_60/BiasAdd/ReadVariableOp2P
&decoder/dense_60/MatMul/ReadVariableOp&decoder/dense_60/MatMul/ReadVariableOp2R
'decoder/dense_61/BiasAdd/ReadVariableOp'decoder/dense_61/BiasAdd/ReadVariableOp2P
&decoder/dense_61/MatMul/ReadVariableOp&decoder/dense_61/MatMul/ReadVariableOp2R
'decoder/dense_62/BiasAdd/ReadVariableOp'decoder/dense_62/BiasAdd/ReadVariableOp2P
&decoder/dense_62/MatMul/ReadVariableOp&decoder/dense_62/MatMul/ReadVariableOp2R
'decoder/dense_63/BiasAdd/ReadVariableOp'decoder/dense_63/BiasAdd/ReadVariableOp2P
&decoder/dense_63/MatMul/ReadVariableOp&decoder/dense_63/MatMul/ReadVariableOp2R
'encoder/dense_56/BiasAdd/ReadVariableOp'encoder/dense_56/BiasAdd/ReadVariableOp2P
&encoder/dense_56/MatMul/ReadVariableOp&encoder/dense_56/MatMul/ReadVariableOp2R
'encoder/dense_57/BiasAdd/ReadVariableOp'encoder/dense_57/BiasAdd/ReadVariableOp2P
&encoder/dense_57/MatMul/ReadVariableOp&encoder/dense_57/MatMul/ReadVariableOp2R
'encoder/dense_58/BiasAdd/ReadVariableOp'encoder/dense_58/BiasAdd/ReadVariableOp2P
&encoder/dense_58/MatMul/ReadVariableOp&encoder/dense_58/MatMul/ReadVariableOp2R
'encoder/dense_59/BiasAdd/ReadVariableOp'encoder/dense_59/BiasAdd/ReadVariableOp2P
&encoder/dense_59/MatMul/ReadVariableOp&encoder/dense_59/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�	
�
C__inference_dense_58_layer_call_and_return_conditional_losses_44854

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
C__inference_dense_62_layer_call_and_return_conditional_losses_44934

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
'__inference_decoder_layer_call_fn_44772

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_438272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_dense_60_layer_call_and_return_conditional_losses_44894

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_encoder_layer_call_and_return_conditional_losses_43567
input_8
dense_56_43545
dense_56_43547
dense_57_43550
dense_57_43552
dense_58_43555
dense_58_43557
dense_59_43560
dense_59_43562
identity

identity_1�� dense_56/StatefulPartitionedCall� dense_57/StatefulPartitionedCall� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall�
 dense_56/StatefulPartitionedCallStatefulPartitionedCallinput_8dense_56_43545dense_56_43547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_434432"
 dense_56/StatefulPartitionedCall�
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_43550dense_57_43552*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_434702"
 dense_57/StatefulPartitionedCall�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_43555dense_58_43557*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_434972"
 dense_58/StatefulPartitionedCall�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_43560dense_59_43562*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_435242"
 dense_59/StatefulPartitionedCall�
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity)dense_59/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8
�	
�
C__inference_dense_56_layer_call_and_return_conditional_losses_44814

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�'
�
>__inference_vae_layer_call_and_return_conditional_losses_44264

inputs
encoder_44210
encoder_44212
encoder_44214
encoder_44216
encoder_44218
encoder_44220
encoder_44222
encoder_44224
decoder_44228
decoder_44230
decoder_44232
decoder_44234
decoder_44236
decoder_44238
decoder_44240
decoder_44242
tf_math_multiply_7_mul_y
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_44210encoder_44212encoder_44214encoder_44216encoder_44218encoder_44220encoder_44222encoder_44224*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_436432!
encoder/StatefulPartitionedCall�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_44228decoder_44230decoder_44232decoder_44234decoder_44236decoder_44238decoder_44240decoder_44242*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_438722!
decoder/StatefulPartitionedCall�
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference(decoder/StatefulPartitionedCall:output:0inputs*
T0*'
_output_shapes
:���������20
.tf.math.squared_difference_7/SquaredDifference�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_mean_7/Mean�
tf.math.multiply_7/MulMul#tf.math.reduce_mean_7/Mean:output:0tf_math_multiply_7_mul_y*
T0*#
_output_shapes
:���������2
tf.math.multiply_7/Muly
tf.compat.v1.size_7/SizeSizetf.math.multiply_7/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size_7/Size�
tf.math.reduce_sum_14/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum_14/Const�
tf.math.reduce_sum_14/SumSumtf.math.multiply_7/Mul:z:0$tf.math.reduce_sum_14/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_14/Sumz
tf.math.reduce_sum_15/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_15/Rank�
!tf.math.reduce_sum_15/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2#
!tf.math.reduce_sum_15/range/start�
!tf.math.reduce_sum_15/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2#
!tf.math.reduce_sum_15/range/delta�
tf.math.reduce_sum_15/rangeRange*tf.math.reduce_sum_15/range/start:output:0#tf.math.reduce_sum_15/Rank:output:0*tf.math.reduce_sum_15/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_15/range�
tf.math.reduce_sum_15/SumSum"tf.math.reduce_sum_14/Sum:output:0$tf.math.reduce_sum_15/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_15/Sum}
tf.cast_30/CastCast!tf.compat.v1.size_7/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_30/Cast�
"tf.math.divide_no_nan_7/div_no_nanDivNoNan"tf.math.reduce_sum_15/Sum:output:0tf.cast_30/Cast:y:0*
T0*
_output_shapes
: 2$
"tf.math.divide_no_nan_7/div_no_nan�
add_loss_7/PartitionedCallPartitionedCall&tf.math.divide_no_nan_7/div_no_nan:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_add_loss_7_layer_call_and_return_conditional_losses_440382
add_loss_7/PartitionedCall�
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity#add_loss_7/PartitionedCall:output:1 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:���������::::::::::::::::: 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
B__inference_encoder_layer_call_and_return_conditional_losses_43643

inputs
dense_56_43621
dense_56_43623
dense_57_43626
dense_57_43628
dense_58_43631
dense_58_43633
dense_59_43636
dense_59_43638
identity

identity_1�� dense_56/StatefulPartitionedCall� dense_57/StatefulPartitionedCall� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall�
 dense_56/StatefulPartitionedCallStatefulPartitionedCallinputsdense_56_43621dense_56_43623*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_434432"
 dense_56/StatefulPartitionedCall�
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_43626dense_57_43628*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_434702"
 dense_57/StatefulPartitionedCall�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_43631dense_58_43633*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_434972"
 dense_58/StatefulPartitionedCall�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_43636dense_59_43638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_435242"
 dense_59/StatefulPartitionedCall�
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity)dense_59/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
F
*__inference_add_loss_7_layer_call_fn_44804

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_add_loss_7_layer_call_and_return_conditional_losses_440382
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs
�
}
(__inference_dense_61_layer_call_fn_44923

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_437062
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
'__inference_decoder_layer_call_fn_43846

z_sampling
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
z_samplingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_438272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
z_sampling
�	
�
C__inference_dense_61_layer_call_and_return_conditional_losses_43706

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�l
�
__inference__traced_save_45151
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop.
*savev2_dense_61_kernel_read_readvariableop,
(savev2_dense_61_bias_read_readvariableop.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop.
*savev2_dense_63_kernel_read_readvariableop,
(savev2_dense_63_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop5
1savev2_adam_dense_57_kernel_m_read_readvariableop3
/savev2_adam_dense_57_bias_m_read_readvariableop5
1savev2_adam_dense_58_kernel_m_read_readvariableop3
/savev2_adam_dense_58_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableop5
1savev2_adam_dense_60_kernel_m_read_readvariableop3
/savev2_adam_dense_60_bias_m_read_readvariableop5
1savev2_adam_dense_61_kernel_m_read_readvariableop3
/savev2_adam_dense_61_bias_m_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableop5
1savev2_adam_dense_63_kernel_m_read_readvariableop3
/savev2_adam_dense_63_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop5
1savev2_adam_dense_57_kernel_v_read_readvariableop3
/savev2_adam_dense_57_bias_v_read_readvariableop5
1savev2_adam_dense_58_kernel_v_read_readvariableop3
/savev2_adam_dense_58_bias_v_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableop5
1savev2_adam_dense_60_kernel_v_read_readvariableop3
/savev2_adam_dense_60_bias_v_read_readvariableop5
1savev2_adam_dense_61_kernel_v_read_readvariableop3
/savev2_adam_dense_61_bias_v_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableop5
1savev2_adam_dense_63_kernel_v_read_readvariableop3
/savev2_adam_dense_63_bias_v_read_readvariableop
savev2_const_1

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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
value�B�8B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop*savev2_dense_61_kernel_read_readvariableop(savev2_dense_61_bias_read_readvariableop*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop*savev2_dense_63_kernel_read_readvariableop(savev2_dense_63_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop1savev2_adam_dense_57_kernel_m_read_readvariableop/savev2_adam_dense_57_bias_m_read_readvariableop1savev2_adam_dense_58_kernel_m_read_readvariableop/savev2_adam_dense_58_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop1savev2_adam_dense_60_kernel_m_read_readvariableop/savev2_adam_dense_60_bias_m_read_readvariableop1savev2_adam_dense_61_kernel_m_read_readvariableop/savev2_adam_dense_61_bias_m_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop1savev2_adam_dense_63_kernel_m_read_readvariableop/savev2_adam_dense_63_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableop1savev2_adam_dense_57_kernel_v_read_readvariableop/savev2_adam_dense_57_bias_v_read_readvariableop1savev2_adam_dense_58_kernel_v_read_readvariableop/savev2_adam_dense_58_bias_v_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableop1savev2_adam_dense_60_kernel_v_read_readvariableop/savev2_adam_dense_60_bias_v_read_readvariableop1savev2_adam_dense_61_kernel_v_read_readvariableop/savev2_adam_dense_61_bias_v_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableop1savev2_adam_dense_63_kernel_v_read_readvariableop/savev2_adam_dense_63_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	2
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : : :
:
:

:
:

:
:
::
:
:

:
:

:
:
:: : :
:
:

:
:

:
:
::
:
:

:
:

:
:
::
:
:

:
:

:
:
::
:
:

:
:

:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:

: 	

_output_shapes
:
:$
 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$  

_output_shapes

:
: !

_output_shapes
:
:$" 

_output_shapes

:

: #

_output_shapes
:
:$$ 

_output_shapes

:

: %

_output_shapes
:
:$& 

_output_shapes

:
: '

_output_shapes
::$( 

_output_shapes

:
: )

_output_shapes
:
:$* 

_output_shapes

:

: +

_output_shapes
:
:$, 

_output_shapes

:

: -

_output_shapes
:
:$. 

_output_shapes

:
: /

_output_shapes
::$0 

_output_shapes

:
: 1

_output_shapes
:
:$2 

_output_shapes

:

: 3

_output_shapes
:
:$4 

_output_shapes

:

: 5

_output_shapes
:
:$6 

_output_shapes

:
: 7

_output_shapes
::8

_output_shapes
: 
�
�
'__inference_decoder_layer_call_fn_43891

z_sampling
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
z_samplingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_438722
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
z_sampling
�	
�
C__inference_dense_63_layer_call_and_return_conditional_losses_43759

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
C__inference_dense_58_layer_call_and_return_conditional_losses_43497

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
}
(__inference_dense_57_layer_call_fn_44843

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_434702
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
C__inference_dense_60_layer_call_and_return_conditional_losses_43679

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�n
�
>__inference_vae_layer_call_and_return_conditional_losses_44499

inputs3
/encoder_dense_56_matmul_readvariableop_resource4
0encoder_dense_56_biasadd_readvariableop_resource3
/encoder_dense_57_matmul_readvariableop_resource4
0encoder_dense_57_biasadd_readvariableop_resource3
/encoder_dense_58_matmul_readvariableop_resource4
0encoder_dense_58_biasadd_readvariableop_resource3
/encoder_dense_59_matmul_readvariableop_resource4
0encoder_dense_59_biasadd_readvariableop_resource3
/decoder_dense_60_matmul_readvariableop_resource4
0decoder_dense_60_biasadd_readvariableop_resource3
/decoder_dense_61_matmul_readvariableop_resource4
0decoder_dense_61_biasadd_readvariableop_resource3
/decoder_dense_62_matmul_readvariableop_resource4
0decoder_dense_62_biasadd_readvariableop_resource3
/decoder_dense_63_matmul_readvariableop_resource4
0decoder_dense_63_biasadd_readvariableop_resource
tf_math_multiply_7_mul_y
identity

identity_1��'decoder/dense_60/BiasAdd/ReadVariableOp�&decoder/dense_60/MatMul/ReadVariableOp�'decoder/dense_61/BiasAdd/ReadVariableOp�&decoder/dense_61/MatMul/ReadVariableOp�'decoder/dense_62/BiasAdd/ReadVariableOp�&decoder/dense_62/MatMul/ReadVariableOp�'decoder/dense_63/BiasAdd/ReadVariableOp�&decoder/dense_63/MatMul/ReadVariableOp�'encoder/dense_56/BiasAdd/ReadVariableOp�&encoder/dense_56/MatMul/ReadVariableOp�'encoder/dense_57/BiasAdd/ReadVariableOp�&encoder/dense_57/MatMul/ReadVariableOp�'encoder/dense_58/BiasAdd/ReadVariableOp�&encoder/dense_58/MatMul/ReadVariableOp�'encoder/dense_59/BiasAdd/ReadVariableOp�&encoder/dense_59/MatMul/ReadVariableOp�
&encoder/dense_56/MatMul/ReadVariableOpReadVariableOp/encoder_dense_56_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02(
&encoder/dense_56/MatMul/ReadVariableOp�
encoder/dense_56/MatMulMatMulinputs.encoder/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_56/MatMul�
'encoder/dense_56/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_56_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'encoder/dense_56/BiasAdd/ReadVariableOp�
encoder/dense_56/BiasAddBiasAdd!encoder/dense_56/MatMul:product:0/encoder/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_56/BiasAdd�
&encoder/dense_57/MatMul/ReadVariableOpReadVariableOp/encoder_dense_57_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02(
&encoder/dense_57/MatMul/ReadVariableOp�
encoder/dense_57/MatMulMatMul!encoder/dense_56/BiasAdd:output:0.encoder/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_57/MatMul�
'encoder/dense_57/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_57_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'encoder/dense_57/BiasAdd/ReadVariableOp�
encoder/dense_57/BiasAddBiasAdd!encoder/dense_57/MatMul:product:0/encoder/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_57/BiasAdd�
encoder/dense_57/TanhTanh!encoder/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
encoder/dense_57/Tanh�
&encoder/dense_58/MatMul/ReadVariableOpReadVariableOp/encoder_dense_58_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02(
&encoder/dense_58/MatMul/ReadVariableOp�
encoder/dense_58/MatMulMatMulencoder/dense_57/Tanh:y:0.encoder/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_58/MatMul�
'encoder/dense_58/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_58_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'encoder/dense_58/BiasAdd/ReadVariableOp�
encoder/dense_58/BiasAddBiasAdd!encoder/dense_58/MatMul:product:0/encoder/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
encoder/dense_58/BiasAdd�
encoder/dense_58/TanhTanh!encoder/dense_58/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
encoder/dense_58/Tanh�
&encoder/dense_59/MatMul/ReadVariableOpReadVariableOp/encoder_dense_59_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02(
&encoder/dense_59/MatMul/ReadVariableOp�
encoder/dense_59/MatMulMatMulencoder/dense_58/Tanh:y:0.encoder/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense_59/MatMul�
'encoder/dense_59/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'encoder/dense_59/BiasAdd/ReadVariableOp�
encoder/dense_59/BiasAddBiasAdd!encoder/dense_59/MatMul:product:0/encoder/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense_59/BiasAdd�
encoder/dense_59/TanhTanh!encoder/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
encoder/dense_59/Tanh�
&decoder/dense_60/MatMul/ReadVariableOpReadVariableOp/decoder_dense_60_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02(
&decoder/dense_60/MatMul/ReadVariableOp�
decoder/dense_60/MatMulMatMulencoder/dense_59/Tanh:y:0.decoder/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_60/MatMul�
'decoder/dense_60/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_60_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'decoder/dense_60/BiasAdd/ReadVariableOp�
decoder/dense_60/BiasAddBiasAdd!decoder/dense_60/MatMul:product:0/decoder/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_60/BiasAdd�
decoder/dense_60/TanhTanh!decoder/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
decoder/dense_60/Tanh�
&decoder/dense_61/MatMul/ReadVariableOpReadVariableOp/decoder_dense_61_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02(
&decoder/dense_61/MatMul/ReadVariableOp�
decoder/dense_61/MatMulMatMuldecoder/dense_60/Tanh:y:0.decoder/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_61/MatMul�
'decoder/dense_61/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_61_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'decoder/dense_61/BiasAdd/ReadVariableOp�
decoder/dense_61/BiasAddBiasAdd!decoder/dense_61/MatMul:product:0/decoder/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_61/BiasAdd�
decoder/dense_61/ReluRelu!decoder/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
decoder/dense_61/Relu�
&decoder/dense_62/MatMul/ReadVariableOpReadVariableOp/decoder_dense_62_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02(
&decoder/dense_62/MatMul/ReadVariableOp�
decoder/dense_62/MatMulMatMul#decoder/dense_61/Relu:activations:0.decoder/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_62/MatMul�
'decoder/dense_62/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_62_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'decoder/dense_62/BiasAdd/ReadVariableOp�
decoder/dense_62/BiasAddBiasAdd!decoder/dense_62/MatMul:product:0/decoder/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
decoder/dense_62/BiasAdd�
decoder/dense_62/ReluRelu!decoder/dense_62/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
decoder/dense_62/Relu�
&decoder/dense_63/MatMul/ReadVariableOpReadVariableOp/decoder_dense_63_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02(
&decoder/dense_63/MatMul/ReadVariableOp�
decoder/dense_63/MatMulMatMul#decoder/dense_62/Relu:activations:0.decoder/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
decoder/dense_63/MatMul�
'decoder/dense_63/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_63/BiasAdd/ReadVariableOp�
decoder/dense_63/BiasAddBiasAdd!decoder/dense_63/MatMul:product:0/decoder/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
decoder/dense_63/BiasAdd�
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference!decoder/dense_63/BiasAdd:output:0inputs*
T0*'
_output_shapes
:���������20
.tf.math.squared_difference_7/SquaredDifference�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_mean_7/Mean�
tf.math.multiply_7/MulMul#tf.math.reduce_mean_7/Mean:output:0tf_math_multiply_7_mul_y*
T0*#
_output_shapes
:���������2
tf.math.multiply_7/Muly
tf.compat.v1.size_7/SizeSizetf.math.multiply_7/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size_7/Size�
tf.math.reduce_sum_14/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum_14/Const�
tf.math.reduce_sum_14/SumSumtf.math.multiply_7/Mul:z:0$tf.math.reduce_sum_14/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_14/Sumz
tf.math.reduce_sum_15/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_15/Rank�
!tf.math.reduce_sum_15/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2#
!tf.math.reduce_sum_15/range/start�
!tf.math.reduce_sum_15/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2#
!tf.math.reduce_sum_15/range/delta�
tf.math.reduce_sum_15/rangeRange*tf.math.reduce_sum_15/range/start:output:0#tf.math.reduce_sum_15/Rank:output:0*tf.math.reduce_sum_15/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_15/range�
tf.math.reduce_sum_15/SumSum"tf.math.reduce_sum_14/Sum:output:0$tf.math.reduce_sum_15/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_15/Sum}
tf.cast_30/CastCast!tf.compat.v1.size_7/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_30/Cast�
"tf.math.divide_no_nan_7/div_no_nanDivNoNan"tf.math.reduce_sum_15/Sum:output:0tf.cast_30/Cast:y:0*
T0*
_output_shapes
: 2$
"tf.math.divide_no_nan_7/div_no_nan�
IdentityIdentity!decoder/dense_63/BiasAdd:output:0(^decoder/dense_60/BiasAdd/ReadVariableOp'^decoder/dense_60/MatMul/ReadVariableOp(^decoder/dense_61/BiasAdd/ReadVariableOp'^decoder/dense_61/MatMul/ReadVariableOp(^decoder/dense_62/BiasAdd/ReadVariableOp'^decoder/dense_62/MatMul/ReadVariableOp(^decoder/dense_63/BiasAdd/ReadVariableOp'^decoder/dense_63/MatMul/ReadVariableOp(^encoder/dense_56/BiasAdd/ReadVariableOp'^encoder/dense_56/MatMul/ReadVariableOp(^encoder/dense_57/BiasAdd/ReadVariableOp'^encoder/dense_57/MatMul/ReadVariableOp(^encoder/dense_58/BiasAdd/ReadVariableOp'^encoder/dense_58/MatMul/ReadVariableOp(^encoder/dense_59/BiasAdd/ReadVariableOp'^encoder/dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity&tf.math.divide_no_nan_7/div_no_nan:z:0(^decoder/dense_60/BiasAdd/ReadVariableOp'^decoder/dense_60/MatMul/ReadVariableOp(^decoder/dense_61/BiasAdd/ReadVariableOp'^decoder/dense_61/MatMul/ReadVariableOp(^decoder/dense_62/BiasAdd/ReadVariableOp'^decoder/dense_62/MatMul/ReadVariableOp(^decoder/dense_63/BiasAdd/ReadVariableOp'^decoder/dense_63/MatMul/ReadVariableOp(^encoder/dense_56/BiasAdd/ReadVariableOp'^encoder/dense_56/MatMul/ReadVariableOp(^encoder/dense_57/BiasAdd/ReadVariableOp'^encoder/dense_57/MatMul/ReadVariableOp(^encoder/dense_58/BiasAdd/ReadVariableOp'^encoder/dense_58/MatMul/ReadVariableOp(^encoder/dense_59/BiasAdd/ReadVariableOp'^encoder/dense_59/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:���������::::::::::::::::: 2R
'decoder/dense_60/BiasAdd/ReadVariableOp'decoder/dense_60/BiasAdd/ReadVariableOp2P
&decoder/dense_60/MatMul/ReadVariableOp&decoder/dense_60/MatMul/ReadVariableOp2R
'decoder/dense_61/BiasAdd/ReadVariableOp'decoder/dense_61/BiasAdd/ReadVariableOp2P
&decoder/dense_61/MatMul/ReadVariableOp&decoder/dense_61/MatMul/ReadVariableOp2R
'decoder/dense_62/BiasAdd/ReadVariableOp'decoder/dense_62/BiasAdd/ReadVariableOp2P
&decoder/dense_62/MatMul/ReadVariableOp&decoder/dense_62/MatMul/ReadVariableOp2R
'decoder/dense_63/BiasAdd/ReadVariableOp'decoder/dense_63/BiasAdd/ReadVariableOp2P
&decoder/dense_63/MatMul/ReadVariableOp&decoder/dense_63/MatMul/ReadVariableOp2R
'encoder/dense_56/BiasAdd/ReadVariableOp'encoder/dense_56/BiasAdd/ReadVariableOp2P
&encoder/dense_56/MatMul/ReadVariableOp&encoder/dense_56/MatMul/ReadVariableOp2R
'encoder/dense_57/BiasAdd/ReadVariableOp'encoder/dense_57/BiasAdd/ReadVariableOp2P
&encoder/dense_57/MatMul/ReadVariableOp&encoder/dense_57/MatMul/ReadVariableOp2R
'encoder/dense_58/BiasAdd/ReadVariableOp'encoder/dense_58/BiasAdd/ReadVariableOp2P
&encoder/dense_58/MatMul/ReadVariableOp&encoder/dense_58/MatMul/ReadVariableOp2R
'encoder/dense_59/BiasAdd/ReadVariableOp'encoder/dense_59/BiasAdd/ReadVariableOp2P
&encoder/dense_59/MatMul/ReadVariableOp&encoder/dense_59/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�	
�
C__inference_dense_56_layer_call_and_return_conditional_losses_43443

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'__inference_decoder_layer_call_fn_44793

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_438722
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_dense_57_layer_call_and_return_conditional_losses_44834

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
C__inference_dense_63_layer_call_and_return_conditional_losses_44953

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
#__inference_vae_layer_call_fn_44539

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_vae_layer_call_and_return_conditional_losses_441672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:���������::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
q
E__inference_add_loss_7_layer_call_and_return_conditional_losses_44798

inputs
identity

identity_1I
IdentityIdentityinputs*
T0*
_output_shapes
: 2

IdentityM

Identity_1Identityinputs*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs
�	
�
C__inference_dense_62_layer_call_and_return_conditional_losses_43733

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
'__inference_encoder_layer_call_fn_44666

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_435952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
}
(__inference_dense_56_layer_call_fn_44823

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_434432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_dense_61_layer_call_and_return_conditional_losses_44914

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
#__inference_vae_layer_call_fn_44302
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_vae_layer_call_and_return_conditional_losses_442642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:���������::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8:

_output_shapes
: 
�
�
B__inference_encoder_layer_call_and_return_conditional_losses_43595

inputs
dense_56_43573
dense_56_43575
dense_57_43578
dense_57_43580
dense_58_43583
dense_58_43585
dense_59_43588
dense_59_43590
identity

identity_1�� dense_56/StatefulPartitionedCall� dense_57/StatefulPartitionedCall� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall�
 dense_56/StatefulPartitionedCallStatefulPartitionedCallinputsdense_56_43573dense_56_43575*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_434432"
 dense_56/StatefulPartitionedCall�
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_43578dense_57_43580*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_434702"
 dense_57/StatefulPartitionedCall�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_43583dense_58_43585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_434972"
 dense_58/StatefulPartitionedCall�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_43588dense_59_43590*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_435242"
 dense_59/StatefulPartitionedCall�
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity)dense_59/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
#__inference_signature_wrapper_44351
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_434292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:���������::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8:

_output_shapes
: 
�	
�
'__inference_encoder_layer_call_fn_43616
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_435952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8
�'
�
>__inference_vae_layer_call_and_return_conditional_losses_44107
input_8
encoder_44053
encoder_44055
encoder_44057
encoder_44059
encoder_44061
encoder_44063
encoder_44065
encoder_44067
decoder_44071
decoder_44073
decoder_44075
decoder_44077
decoder_44079
decoder_44081
decoder_44083
decoder_44085
tf_math_multiply_7_mul_y
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_8encoder_44053encoder_44055encoder_44057encoder_44059encoder_44061encoder_44063encoder_44065encoder_44067*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_436432!
encoder/StatefulPartitionedCall�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_44071decoder_44073decoder_44075decoder_44077decoder_44079decoder_44081decoder_44083decoder_44085*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_438722!
decoder/StatefulPartitionedCall�
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference(decoder/StatefulPartitionedCall:output:0input_8*
T0*'
_output_shapes
:���������20
.tf.math.squared_difference_7/SquaredDifference�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_mean_7/Mean�
tf.math.multiply_7/MulMul#tf.math.reduce_mean_7/Mean:output:0tf_math_multiply_7_mul_y*
T0*#
_output_shapes
:���������2
tf.math.multiply_7/Muly
tf.compat.v1.size_7/SizeSizetf.math.multiply_7/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size_7/Size�
tf.math.reduce_sum_14/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum_14/Const�
tf.math.reduce_sum_14/SumSumtf.math.multiply_7/Mul:z:0$tf.math.reduce_sum_14/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_14/Sumz
tf.math.reduce_sum_15/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_15/Rank�
!tf.math.reduce_sum_15/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2#
!tf.math.reduce_sum_15/range/start�
!tf.math.reduce_sum_15/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2#
!tf.math.reduce_sum_15/range/delta�
tf.math.reduce_sum_15/rangeRange*tf.math.reduce_sum_15/range/start:output:0#tf.math.reduce_sum_15/Rank:output:0*tf.math.reduce_sum_15/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_15/range�
tf.math.reduce_sum_15/SumSum"tf.math.reduce_sum_14/Sum:output:0$tf.math.reduce_sum_15/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_15/Sum}
tf.cast_30/CastCast!tf.compat.v1.size_7/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_30/Cast�
"tf.math.divide_no_nan_7/div_no_nanDivNoNan"tf.math.reduce_sum_15/Sum:output:0tf.cast_30/Cast:y:0*
T0*
_output_shapes
: 2$
"tf.math.divide_no_nan_7/div_no_nan�
add_loss_7/PartitionedCallPartitionedCall&tf.math.divide_no_nan_7/div_no_nan:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_add_loss_7_layer_call_and_return_conditional_losses_440382
add_loss_7/PartitionedCall�
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity#add_loss_7/PartitionedCall:output:1 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:���������::::::::::::::::: 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8:

_output_shapes
: 
�
}
(__inference_dense_59_layer_call_fn_44883

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_435242
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
C__inference_dense_57_layer_call_and_return_conditional_losses_43470

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�'
�
>__inference_vae_layer_call_and_return_conditional_losses_44167

inputs
encoder_44113
encoder_44115
encoder_44117
encoder_44119
encoder_44121
encoder_44123
encoder_44125
encoder_44127
decoder_44131
decoder_44133
decoder_44135
decoder_44137
decoder_44139
decoder_44141
decoder_44143
decoder_44145
tf_math_multiply_7_mul_y
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_44113encoder_44115encoder_44117encoder_44119encoder_44121encoder_44123encoder_44125encoder_44127*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_435952!
encoder/StatefulPartitionedCall�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_44131decoder_44133decoder_44135decoder_44137decoder_44139decoder_44141decoder_44143decoder_44145*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_438272!
decoder/StatefulPartitionedCall�
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference(decoder/StatefulPartitionedCall:output:0inputs*
T0*'
_output_shapes
:���������20
.tf.math.squared_difference_7/SquaredDifference�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_mean_7/Mean�
tf.math.multiply_7/MulMul#tf.math.reduce_mean_7/Mean:output:0tf_math_multiply_7_mul_y*
T0*#
_output_shapes
:���������2
tf.math.multiply_7/Muly
tf.compat.v1.size_7/SizeSizetf.math.multiply_7/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size_7/Size�
tf.math.reduce_sum_14/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum_14/Const�
tf.math.reduce_sum_14/SumSumtf.math.multiply_7/Mul:z:0$tf.math.reduce_sum_14/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_14/Sumz
tf.math.reduce_sum_15/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_15/Rank�
!tf.math.reduce_sum_15/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2#
!tf.math.reduce_sum_15/range/start�
!tf.math.reduce_sum_15/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2#
!tf.math.reduce_sum_15/range/delta�
tf.math.reduce_sum_15/rangeRange*tf.math.reduce_sum_15/range/start:output:0#tf.math.reduce_sum_15/Rank:output:0*tf.math.reduce_sum_15/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_15/range�
tf.math.reduce_sum_15/SumSum"tf.math.reduce_sum_14/Sum:output:0$tf.math.reduce_sum_15/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_15/Sum}
tf.cast_30/CastCast!tf.compat.v1.size_7/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_30/Cast�
"tf.math.divide_no_nan_7/div_no_nanDivNoNan"tf.math.reduce_sum_15/Sum:output:0tf.cast_30/Cast:y:0*
T0*
_output_shapes
: 2$
"tf.math.divide_no_nan_7/div_no_nan�
add_loss_7/PartitionedCallPartitionedCall&tf.math.divide_no_nan_7/div_no_nan:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_add_loss_7_layer_call_and_return_conditional_losses_440382
add_loss_7/PartitionedCall�
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity#add_loss_7/PartitionedCall:output:1 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:���������::::::::::::::::: 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
q
E__inference_add_loss_7_layer_call_and_return_conditional_losses_44038

inputs
identity

identity_1I
IdentityIdentityinputs*
T0*
_output_shapes
: 2

IdentityM

Identity_1Identityinputs*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs
�'
�
>__inference_vae_layer_call_and_return_conditional_losses_44050
input_8
encoder_43941
encoder_43943
encoder_43945
encoder_43947
encoder_43949
encoder_43951
encoder_43953
encoder_43955
decoder_44001
decoder_44003
decoder_44005
decoder_44007
decoder_44009
decoder_44011
decoder_44013
decoder_44015
tf_math_multiply_7_mul_y
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_8encoder_43941encoder_43943encoder_43945encoder_43947encoder_43949encoder_43951encoder_43953encoder_43955*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_435952!
encoder/StatefulPartitionedCall�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_44001decoder_44003decoder_44005decoder_44007decoder_44009decoder_44011decoder_44013decoder_44015*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_438272!
decoder/StatefulPartitionedCall�
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference(decoder/StatefulPartitionedCall:output:0input_8*
T0*'
_output_shapes
:���������20
.tf.math.squared_difference_7/SquaredDifference�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_mean_7/Mean�
tf.math.multiply_7/MulMul#tf.math.reduce_mean_7/Mean:output:0tf_math_multiply_7_mul_y*
T0*#
_output_shapes
:���������2
tf.math.multiply_7/Muly
tf.compat.v1.size_7/SizeSizetf.math.multiply_7/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size_7/Size�
tf.math.reduce_sum_14/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum_14/Const�
tf.math.reduce_sum_14/SumSumtf.math.multiply_7/Mul:z:0$tf.math.reduce_sum_14/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_14/Sumz
tf.math.reduce_sum_15/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_15/Rank�
!tf.math.reduce_sum_15/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2#
!tf.math.reduce_sum_15/range/start�
!tf.math.reduce_sum_15/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2#
!tf.math.reduce_sum_15/range/delta�
tf.math.reduce_sum_15/rangeRange*tf.math.reduce_sum_15/range/start:output:0#tf.math.reduce_sum_15/Rank:output:0*tf.math.reduce_sum_15/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_15/range�
tf.math.reduce_sum_15/SumSum"tf.math.reduce_sum_14/Sum:output:0$tf.math.reduce_sum_15/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_15/Sum}
tf.cast_30/CastCast!tf.compat.v1.size_7/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_30/Cast�
"tf.math.divide_no_nan_7/div_no_nanDivNoNan"tf.math.reduce_sum_15/Sum:output:0tf.cast_30/Cast:y:0*
T0*
_output_shapes
: 2$
"tf.math.divide_no_nan_7/div_no_nan�
add_loss_7/PartitionedCallPartitionedCall&tf.math.divide_no_nan_7/div_no_nan:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_add_loss_7_layer_call_and_return_conditional_losses_440382
add_loss_7/PartitionedCall�
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity#add_loss_7/PartitionedCall:output:1 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:���������::::::::::::::::: 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8:

_output_shapes
: 
�%
�
B__inference_decoder_layer_call_and_return_conditional_losses_44720

inputs+
'dense_60_matmul_readvariableop_resource,
(dense_60_biasadd_readvariableop_resource+
'dense_61_matmul_readvariableop_resource,
(dense_61_biasadd_readvariableop_resource+
'dense_62_matmul_readvariableop_resource,
(dense_62_biasadd_readvariableop_resource+
'dense_63_matmul_readvariableop_resource,
(dense_63_biasadd_readvariableop_resource
identity��dense_60/BiasAdd/ReadVariableOp�dense_60/MatMul/ReadVariableOp�dense_61/BiasAdd/ReadVariableOp�dense_61/MatMul/ReadVariableOp�dense_62/BiasAdd/ReadVariableOp�dense_62/MatMul/ReadVariableOp�dense_63/BiasAdd/ReadVariableOp�dense_63/MatMul/ReadVariableOp�
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_60/MatMul/ReadVariableOp�
dense_60/MatMulMatMulinputs&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_60/MatMul�
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_60/BiasAdd/ReadVariableOp�
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_60/BiasAdds
dense_60/TanhTanhdense_60/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_60/Tanh�
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02 
dense_61/MatMul/ReadVariableOp�
dense_61/MatMulMatMuldense_60/Tanh:y:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_61/MatMul�
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_61/BiasAdd/ReadVariableOp�
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_61/BiasAdds
dense_61/ReluReludense_61/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_61/Relu�
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02 
dense_62/MatMul/ReadVariableOp�
dense_62/MatMulMatMuldense_61/Relu:activations:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_62/MatMul�
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_62/BiasAdd/ReadVariableOp�
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_62/BiasAdds
dense_62/ReluReludense_62/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_62/Relu�
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_63/MatMul/ReadVariableOp�
dense_63/MatMulMatMuldense_62/Relu:activations:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_63/MatMul�
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_63/BiasAdd/ReadVariableOp�
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_63/BiasAdd�
IdentityIdentitydense_63/BiasAdd:output:0 ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_decoder_layer_call_and_return_conditional_losses_43872

inputs
dense_60_43851
dense_60_43853
dense_61_43856
dense_61_43858
dense_62_43861
dense_62_43863
dense_63_43866
dense_63_43868
identity�� dense_60/StatefulPartitionedCall� dense_61/StatefulPartitionedCall� dense_62/StatefulPartitionedCall� dense_63/StatefulPartitionedCall�
 dense_60/StatefulPartitionedCallStatefulPartitionedCallinputsdense_60_43851dense_60_43853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_436792"
 dense_60/StatefulPartitionedCall�
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_43856dense_61_43858*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_437062"
 dense_61/StatefulPartitionedCall�
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0dense_62_43861dense_62_43863*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_437332"
 dense_62/StatefulPartitionedCall�
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_43866dense_63_43868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_437592"
 dense_63/StatefulPartitionedCall�
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0!^dense_60/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
!__inference__traced_restore_45326
file_prefix
assignvariableop_adam_iter"
assignvariableop_1_adam_beta_1"
assignvariableop_2_adam_beta_2!
assignvariableop_3_adam_decay)
%assignvariableop_4_adam_learning_rate&
"assignvariableop_5_dense_56_kernel$
 assignvariableop_6_dense_56_bias&
"assignvariableop_7_dense_57_kernel$
 assignvariableop_8_dense_57_bias&
"assignvariableop_9_dense_58_kernel%
!assignvariableop_10_dense_58_bias'
#assignvariableop_11_dense_59_kernel%
!assignvariableop_12_dense_59_bias'
#assignvariableop_13_dense_60_kernel%
!assignvariableop_14_dense_60_bias'
#assignvariableop_15_dense_61_kernel%
!assignvariableop_16_dense_61_bias'
#assignvariableop_17_dense_62_kernel%
!assignvariableop_18_dense_62_bias'
#assignvariableop_19_dense_63_kernel%
!assignvariableop_20_dense_63_bias
assignvariableop_21_total
assignvariableop_22_count.
*assignvariableop_23_adam_dense_56_kernel_m,
(assignvariableop_24_adam_dense_56_bias_m.
*assignvariableop_25_adam_dense_57_kernel_m,
(assignvariableop_26_adam_dense_57_bias_m.
*assignvariableop_27_adam_dense_58_kernel_m,
(assignvariableop_28_adam_dense_58_bias_m.
*assignvariableop_29_adam_dense_59_kernel_m,
(assignvariableop_30_adam_dense_59_bias_m.
*assignvariableop_31_adam_dense_60_kernel_m,
(assignvariableop_32_adam_dense_60_bias_m.
*assignvariableop_33_adam_dense_61_kernel_m,
(assignvariableop_34_adam_dense_61_bias_m.
*assignvariableop_35_adam_dense_62_kernel_m,
(assignvariableop_36_adam_dense_62_bias_m.
*assignvariableop_37_adam_dense_63_kernel_m,
(assignvariableop_38_adam_dense_63_bias_m.
*assignvariableop_39_adam_dense_56_kernel_v,
(assignvariableop_40_adam_dense_56_bias_v.
*assignvariableop_41_adam_dense_57_kernel_v,
(assignvariableop_42_adam_dense_57_bias_v.
*assignvariableop_43_adam_dense_58_kernel_v,
(assignvariableop_44_adam_dense_58_bias_v.
*assignvariableop_45_adam_dense_59_kernel_v,
(assignvariableop_46_adam_dense_59_bias_v.
*assignvariableop_47_adam_dense_60_kernel_v,
(assignvariableop_48_adam_dense_60_bias_v.
*assignvariableop_49_adam_dense_61_kernel_v,
(assignvariableop_50_adam_dense_61_bias_v.
*assignvariableop_51_adam_dense_62_kernel_v,
(assignvariableop_52_adam_dense_62_bias_v.
*assignvariableop_53_adam_dense_63_kernel_v,
(assignvariableop_54_adam_dense_63_bias_v
identity_56��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
value�B�8B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_56_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_56_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_57_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_57_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_58_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_58_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_59_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense_59_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_60_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_60_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_61_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp!assignvariableop_16_dense_61_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_62_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp!assignvariableop_18_dense_62_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_63_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp!assignvariableop_20_dense_63_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_56_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_56_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_57_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_57_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_58_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_58_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_59_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_59_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_60_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_60_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_61_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_61_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_62_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_62_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_63_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_63_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_56_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_56_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_57_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_57_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_58_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_58_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_59_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_59_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_60_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_60_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_61_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_61_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_62_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_62_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_63_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_63_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_549
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_55�

Identity_56IdentityIdentity_55:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_56"#
identity_56Identity_56:output:0*�
_input_shapes�
�: :::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
B__inference_encoder_layer_call_and_return_conditional_losses_43542
input_8
dense_56_43454
dense_56_43456
dense_57_43481
dense_57_43483
dense_58_43508
dense_58_43510
dense_59_43535
dense_59_43537
identity

identity_1�� dense_56/StatefulPartitionedCall� dense_57/StatefulPartitionedCall� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall�
 dense_56/StatefulPartitionedCallStatefulPartitionedCallinput_8dense_56_43454dense_56_43456*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_434432"
 dense_56/StatefulPartitionedCall�
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_43481dense_57_43483*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_434702"
 dense_57/StatefulPartitionedCall�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_43508dense_58_43510*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_434972"
 dense_58/StatefulPartitionedCall�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_43535dense_59_43537*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_435242"
 dense_59/StatefulPartitionedCall�
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity)dense_59/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8
�	
�
'__inference_encoder_layer_call_fn_44689

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_436432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
}
(__inference_dense_63_layer_call_fn_44962

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_437592
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
}
(__inference_dense_60_layer_call_fn_44903

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_436792
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_decoder_layer_call_and_return_conditional_losses_43776

z_sampling
dense_60_43690
dense_60_43692
dense_61_43717
dense_61_43719
dense_62_43744
dense_62_43746
dense_63_43770
dense_63_43772
identity�� dense_60/StatefulPartitionedCall� dense_61/StatefulPartitionedCall� dense_62/StatefulPartitionedCall� dense_63/StatefulPartitionedCall�
 dense_60/StatefulPartitionedCallStatefulPartitionedCall
z_samplingdense_60_43690dense_60_43692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_436792"
 dense_60/StatefulPartitionedCall�
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_43717dense_61_43719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_437062"
 dense_61/StatefulPartitionedCall�
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0dense_62_43744dense_62_43746*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_437332"
 dense_62/StatefulPartitionedCall�
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_43770dense_63_43772*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_437592"
 dense_63/StatefulPartitionedCall�
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0!^dense_60/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
z_sampling
�p
�
 __inference__wrapped_model_43429
input_87
3vae_encoder_dense_56_matmul_readvariableop_resource8
4vae_encoder_dense_56_biasadd_readvariableop_resource7
3vae_encoder_dense_57_matmul_readvariableop_resource8
4vae_encoder_dense_57_biasadd_readvariableop_resource7
3vae_encoder_dense_58_matmul_readvariableop_resource8
4vae_encoder_dense_58_biasadd_readvariableop_resource7
3vae_encoder_dense_59_matmul_readvariableop_resource8
4vae_encoder_dense_59_biasadd_readvariableop_resource7
3vae_decoder_dense_60_matmul_readvariableop_resource8
4vae_decoder_dense_60_biasadd_readvariableop_resource7
3vae_decoder_dense_61_matmul_readvariableop_resource8
4vae_decoder_dense_61_biasadd_readvariableop_resource7
3vae_decoder_dense_62_matmul_readvariableop_resource8
4vae_decoder_dense_62_biasadd_readvariableop_resource7
3vae_decoder_dense_63_matmul_readvariableop_resource8
4vae_decoder_dense_63_biasadd_readvariableop_resource 
vae_tf_math_multiply_7_mul_y
identity��+vae/decoder/dense_60/BiasAdd/ReadVariableOp�*vae/decoder/dense_60/MatMul/ReadVariableOp�+vae/decoder/dense_61/BiasAdd/ReadVariableOp�*vae/decoder/dense_61/MatMul/ReadVariableOp�+vae/decoder/dense_62/BiasAdd/ReadVariableOp�*vae/decoder/dense_62/MatMul/ReadVariableOp�+vae/decoder/dense_63/BiasAdd/ReadVariableOp�*vae/decoder/dense_63/MatMul/ReadVariableOp�+vae/encoder/dense_56/BiasAdd/ReadVariableOp�*vae/encoder/dense_56/MatMul/ReadVariableOp�+vae/encoder/dense_57/BiasAdd/ReadVariableOp�*vae/encoder/dense_57/MatMul/ReadVariableOp�+vae/encoder/dense_58/BiasAdd/ReadVariableOp�*vae/encoder/dense_58/MatMul/ReadVariableOp�+vae/encoder/dense_59/BiasAdd/ReadVariableOp�*vae/encoder/dense_59/MatMul/ReadVariableOp�
*vae/encoder/dense_56/MatMul/ReadVariableOpReadVariableOp3vae_encoder_dense_56_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02,
*vae/encoder/dense_56/MatMul/ReadVariableOp�
vae/encoder/dense_56/MatMulMatMulinput_82vae/encoder/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/encoder/dense_56/MatMul�
+vae/encoder/dense_56/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_dense_56_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+vae/encoder/dense_56/BiasAdd/ReadVariableOp�
vae/encoder/dense_56/BiasAddBiasAdd%vae/encoder/dense_56/MatMul:product:03vae/encoder/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/encoder/dense_56/BiasAdd�
*vae/encoder/dense_57/MatMul/ReadVariableOpReadVariableOp3vae_encoder_dense_57_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02,
*vae/encoder/dense_57/MatMul/ReadVariableOp�
vae/encoder/dense_57/MatMulMatMul%vae/encoder/dense_56/BiasAdd:output:02vae/encoder/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/encoder/dense_57/MatMul�
+vae/encoder/dense_57/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_dense_57_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+vae/encoder/dense_57/BiasAdd/ReadVariableOp�
vae/encoder/dense_57/BiasAddBiasAdd%vae/encoder/dense_57/MatMul:product:03vae/encoder/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/encoder/dense_57/BiasAdd�
vae/encoder/dense_57/TanhTanh%vae/encoder/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
vae/encoder/dense_57/Tanh�
*vae/encoder/dense_58/MatMul/ReadVariableOpReadVariableOp3vae_encoder_dense_58_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02,
*vae/encoder/dense_58/MatMul/ReadVariableOp�
vae/encoder/dense_58/MatMulMatMulvae/encoder/dense_57/Tanh:y:02vae/encoder/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/encoder/dense_58/MatMul�
+vae/encoder/dense_58/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_dense_58_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+vae/encoder/dense_58/BiasAdd/ReadVariableOp�
vae/encoder/dense_58/BiasAddBiasAdd%vae/encoder/dense_58/MatMul:product:03vae/encoder/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/encoder/dense_58/BiasAdd�
vae/encoder/dense_58/TanhTanh%vae/encoder/dense_58/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
vae/encoder/dense_58/Tanh�
*vae/encoder/dense_59/MatMul/ReadVariableOpReadVariableOp3vae_encoder_dense_59_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02,
*vae/encoder/dense_59/MatMul/ReadVariableOp�
vae/encoder/dense_59/MatMulMatMulvae/encoder/dense_58/Tanh:y:02vae/encoder/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
vae/encoder/dense_59/MatMul�
+vae/encoder/dense_59/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+vae/encoder/dense_59/BiasAdd/ReadVariableOp�
vae/encoder/dense_59/BiasAddBiasAdd%vae/encoder/dense_59/MatMul:product:03vae/encoder/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
vae/encoder/dense_59/BiasAdd�
vae/encoder/dense_59/TanhTanh%vae/encoder/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
vae/encoder/dense_59/Tanh�
*vae/decoder/dense_60/MatMul/ReadVariableOpReadVariableOp3vae_decoder_dense_60_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02,
*vae/decoder/dense_60/MatMul/ReadVariableOp�
vae/decoder/dense_60/MatMulMatMulvae/encoder/dense_59/Tanh:y:02vae/decoder/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_60/MatMul�
+vae/decoder/dense_60/BiasAdd/ReadVariableOpReadVariableOp4vae_decoder_dense_60_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+vae/decoder/dense_60/BiasAdd/ReadVariableOp�
vae/decoder/dense_60/BiasAddBiasAdd%vae/decoder/dense_60/MatMul:product:03vae/decoder/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_60/BiasAdd�
vae/decoder/dense_60/TanhTanh%vae/decoder/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_60/Tanh�
*vae/decoder/dense_61/MatMul/ReadVariableOpReadVariableOp3vae_decoder_dense_61_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02,
*vae/decoder/dense_61/MatMul/ReadVariableOp�
vae/decoder/dense_61/MatMulMatMulvae/decoder/dense_60/Tanh:y:02vae/decoder/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_61/MatMul�
+vae/decoder/dense_61/BiasAdd/ReadVariableOpReadVariableOp4vae_decoder_dense_61_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+vae/decoder/dense_61/BiasAdd/ReadVariableOp�
vae/decoder/dense_61/BiasAddBiasAdd%vae/decoder/dense_61/MatMul:product:03vae/decoder/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_61/BiasAdd�
vae/decoder/dense_61/ReluRelu%vae/decoder/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_61/Relu�
*vae/decoder/dense_62/MatMul/ReadVariableOpReadVariableOp3vae_decoder_dense_62_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02,
*vae/decoder/dense_62/MatMul/ReadVariableOp�
vae/decoder/dense_62/MatMulMatMul'vae/decoder/dense_61/Relu:activations:02vae/decoder/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_62/MatMul�
+vae/decoder/dense_62/BiasAdd/ReadVariableOpReadVariableOp4vae_decoder_dense_62_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+vae/decoder/dense_62/BiasAdd/ReadVariableOp�
vae/decoder/dense_62/BiasAddBiasAdd%vae/decoder/dense_62/MatMul:product:03vae/decoder/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_62/BiasAdd�
vae/decoder/dense_62/ReluRelu%vae/decoder/dense_62/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
vae/decoder/dense_62/Relu�
*vae/decoder/dense_63/MatMul/ReadVariableOpReadVariableOp3vae_decoder_dense_63_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02,
*vae/decoder/dense_63/MatMul/ReadVariableOp�
vae/decoder/dense_63/MatMulMatMul'vae/decoder/dense_62/Relu:activations:02vae/decoder/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
vae/decoder/dense_63/MatMul�
+vae/decoder/dense_63/BiasAdd/ReadVariableOpReadVariableOp4vae_decoder_dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+vae/decoder/dense_63/BiasAdd/ReadVariableOp�
vae/decoder/dense_63/BiasAddBiasAdd%vae/decoder/dense_63/MatMul:product:03vae/decoder/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
vae/decoder/dense_63/BiasAdd�
2vae/tf.math.squared_difference_7/SquaredDifferenceSquaredDifference%vae/decoder/dense_63/BiasAdd:output:0input_8*
T0*'
_output_shapes
:���������24
2vae/tf.math.squared_difference_7/SquaredDifference�
0vae/tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������22
0vae/tf.math.reduce_mean_7/Mean/reduction_indices�
vae/tf.math.reduce_mean_7/MeanMean6vae/tf.math.squared_difference_7/SquaredDifference:z:09vae/tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������2 
vae/tf.math.reduce_mean_7/Mean�
vae/tf.math.multiply_7/MulMul'vae/tf.math.reduce_mean_7/Mean:output:0vae_tf_math_multiply_7_mul_y*
T0*#
_output_shapes
:���������2
vae/tf.math.multiply_7/Mul�
vae/tf.compat.v1.size_7/SizeSizevae/tf.math.multiply_7/Mul:z:0*
T0*
_output_shapes
: 2
vae/tf.compat.v1.size_7/Size�
vae/tf.math.reduce_sum_14/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
vae/tf.math.reduce_sum_14/Const�
vae/tf.math.reduce_sum_14/SumSumvae/tf.math.multiply_7/Mul:z:0(vae/tf.math.reduce_sum_14/Const:output:0*
T0*
_output_shapes
: 2
vae/tf.math.reduce_sum_14/Sum�
vae/tf.math.reduce_sum_15/RankConst*
_output_shapes
: *
dtype0*
value	B : 2 
vae/tf.math.reduce_sum_15/Rank�
%vae/tf.math.reduce_sum_15/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2'
%vae/tf.math.reduce_sum_15/range/start�
%vae/tf.math.reduce_sum_15/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2'
%vae/tf.math.reduce_sum_15/range/delta�
vae/tf.math.reduce_sum_15/rangeRange.vae/tf.math.reduce_sum_15/range/start:output:0'vae/tf.math.reduce_sum_15/Rank:output:0.vae/tf.math.reduce_sum_15/range/delta:output:0*
_output_shapes
: 2!
vae/tf.math.reduce_sum_15/range�
vae/tf.math.reduce_sum_15/SumSum&vae/tf.math.reduce_sum_14/Sum:output:0(vae/tf.math.reduce_sum_15/range:output:0*
T0*
_output_shapes
: 2
vae/tf.math.reduce_sum_15/Sum�
vae/tf.cast_30/CastCast%vae/tf.compat.v1.size_7/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
vae/tf.cast_30/Cast�
&vae/tf.math.divide_no_nan_7/div_no_nanDivNoNan&vae/tf.math.reduce_sum_15/Sum:output:0vae/tf.cast_30/Cast:y:0*
T0*
_output_shapes
: 2(
&vae/tf.math.divide_no_nan_7/div_no_nan�
IdentityIdentity%vae/decoder/dense_63/BiasAdd:output:0,^vae/decoder/dense_60/BiasAdd/ReadVariableOp+^vae/decoder/dense_60/MatMul/ReadVariableOp,^vae/decoder/dense_61/BiasAdd/ReadVariableOp+^vae/decoder/dense_61/MatMul/ReadVariableOp,^vae/decoder/dense_62/BiasAdd/ReadVariableOp+^vae/decoder/dense_62/MatMul/ReadVariableOp,^vae/decoder/dense_63/BiasAdd/ReadVariableOp+^vae/decoder/dense_63/MatMul/ReadVariableOp,^vae/encoder/dense_56/BiasAdd/ReadVariableOp+^vae/encoder/dense_56/MatMul/ReadVariableOp,^vae/encoder/dense_57/BiasAdd/ReadVariableOp+^vae/encoder/dense_57/MatMul/ReadVariableOp,^vae/encoder/dense_58/BiasAdd/ReadVariableOp+^vae/encoder/dense_58/MatMul/ReadVariableOp,^vae/encoder/dense_59/BiasAdd/ReadVariableOp+^vae/encoder/dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:���������::::::::::::::::: 2Z
+vae/decoder/dense_60/BiasAdd/ReadVariableOp+vae/decoder/dense_60/BiasAdd/ReadVariableOp2X
*vae/decoder/dense_60/MatMul/ReadVariableOp*vae/decoder/dense_60/MatMul/ReadVariableOp2Z
+vae/decoder/dense_61/BiasAdd/ReadVariableOp+vae/decoder/dense_61/BiasAdd/ReadVariableOp2X
*vae/decoder/dense_61/MatMul/ReadVariableOp*vae/decoder/dense_61/MatMul/ReadVariableOp2Z
+vae/decoder/dense_62/BiasAdd/ReadVariableOp+vae/decoder/dense_62/BiasAdd/ReadVariableOp2X
*vae/decoder/dense_62/MatMul/ReadVariableOp*vae/decoder/dense_62/MatMul/ReadVariableOp2Z
+vae/decoder/dense_63/BiasAdd/ReadVariableOp+vae/decoder/dense_63/BiasAdd/ReadVariableOp2X
*vae/decoder/dense_63/MatMul/ReadVariableOp*vae/decoder/dense_63/MatMul/ReadVariableOp2Z
+vae/encoder/dense_56/BiasAdd/ReadVariableOp+vae/encoder/dense_56/BiasAdd/ReadVariableOp2X
*vae/encoder/dense_56/MatMul/ReadVariableOp*vae/encoder/dense_56/MatMul/ReadVariableOp2Z
+vae/encoder/dense_57/BiasAdd/ReadVariableOp+vae/encoder/dense_57/BiasAdd/ReadVariableOp2X
*vae/encoder/dense_57/MatMul/ReadVariableOp*vae/encoder/dense_57/MatMul/ReadVariableOp2Z
+vae/encoder/dense_58/BiasAdd/ReadVariableOp+vae/encoder/dense_58/BiasAdd/ReadVariableOp2X
*vae/encoder/dense_58/MatMul/ReadVariableOp*vae/encoder/dense_58/MatMul/ReadVariableOp2Z
+vae/encoder/dense_59/BiasAdd/ReadVariableOp+vae/encoder/dense_59/BiasAdd/ReadVariableOp2X
*vae/encoder/dense_59/MatMul/ReadVariableOp*vae/encoder/dense_59/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8:

_output_shapes
: 
�)
�
B__inference_encoder_layer_call_and_return_conditional_losses_44643

inputs+
'dense_56_matmul_readvariableop_resource,
(dense_56_biasadd_readvariableop_resource+
'dense_57_matmul_readvariableop_resource,
(dense_57_biasadd_readvariableop_resource+
'dense_58_matmul_readvariableop_resource,
(dense_58_biasadd_readvariableop_resource+
'dense_59_matmul_readvariableop_resource,
(dense_59_biasadd_readvariableop_resource
identity

identity_1��dense_56/BiasAdd/ReadVariableOp�dense_56/MatMul/ReadVariableOp�dense_57/BiasAdd/ReadVariableOp�dense_57/MatMul/ReadVariableOp�dense_58/BiasAdd/ReadVariableOp�dense_58/MatMul/ReadVariableOp�dense_59/BiasAdd/ReadVariableOp�dense_59/MatMul/ReadVariableOp�
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_56/MatMul/ReadVariableOp�
dense_56/MatMulMatMulinputs&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_56/MatMul�
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_56/BiasAdd/ReadVariableOp�
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_56/BiasAdd�
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02 
dense_57/MatMul/ReadVariableOp�
dense_57/MatMulMatMuldense_56/BiasAdd:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_57/MatMul�
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_57/BiasAdd/ReadVariableOp�
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_57/BiasAdds
dense_57/TanhTanhdense_57/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_57/Tanh�
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02 
dense_58/MatMul/ReadVariableOp�
dense_58/MatMulMatMuldense_57/Tanh:y:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_58/MatMul�
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_58/BiasAdd/ReadVariableOp�
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_58/BiasAdds
dense_58/TanhTanhdense_58/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_58/Tanh�
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_59/MatMul/ReadVariableOp�
dense_59/MatMulMatMuldense_58/Tanh:y:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_59/MatMul�
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_59/BiasAdd/ReadVariableOp�
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_59/BiasAdds
dense_59/TanhTanhdense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_59/Tanh�
IdentityIdentitydense_59/Tanh:y:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identitydense_59/Tanh:y:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_dense_59_layer_call_and_return_conditional_losses_43524

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
B__inference_decoder_layer_call_and_return_conditional_losses_43827

inputs
dense_60_43806
dense_60_43808
dense_61_43811
dense_61_43813
dense_62_43816
dense_62_43818
dense_63_43821
dense_63_43823
identity�� dense_60/StatefulPartitionedCall� dense_61/StatefulPartitionedCall� dense_62/StatefulPartitionedCall� dense_63/StatefulPartitionedCall�
 dense_60/StatefulPartitionedCallStatefulPartitionedCallinputsdense_60_43806dense_60_43808*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_436792"
 dense_60/StatefulPartitionedCall�
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_43811dense_61_43813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_437062"
 dense_61/StatefulPartitionedCall�
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0dense_62_43816dense_62_43818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_437332"
 dense_62/StatefulPartitionedCall�
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_43821dense_63_43823*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_437592"
 dense_63/StatefulPartitionedCall�
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0!^dense_60/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
'__inference_encoder_layer_call_fn_43664
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_436432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_8
�
�
B__inference_decoder_layer_call_and_return_conditional_losses_43800

z_sampling
dense_60_43779
dense_60_43781
dense_61_43784
dense_61_43786
dense_62_43789
dense_62_43791
dense_63_43794
dense_63_43796
identity�� dense_60/StatefulPartitionedCall� dense_61/StatefulPartitionedCall� dense_62/StatefulPartitionedCall� dense_63/StatefulPartitionedCall�
 dense_60/StatefulPartitionedCallStatefulPartitionedCall
z_samplingdense_60_43779dense_60_43781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_436792"
 dense_60/StatefulPartitionedCall�
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_43784dense_61_43786*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_437062"
 dense_61/StatefulPartitionedCall�
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0dense_62_43789dense_62_43791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_437332"
 dense_62/StatefulPartitionedCall�
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_43794dense_63_43796*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_437592"
 dense_63/StatefulPartitionedCall�
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0!^dense_60/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:���������::::::::2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
z_sampling"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_80
serving_default_input_8:0���������;
decoder0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
	optimizer
loss
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+�&call_and_return_all_conditional_losses
�_default_save_signature
�__call__"�
_tf_keras_networkՏ{"class_name": "Functional", "name": "vae", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "vae", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_56", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_57", "inbound_nodes": [[["dense_56", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_58", "inbound_nodes": [[["dense_57", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 8, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_59", "inbound_nodes": [[["dense_58", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["dense_59", 0, 0], ["dense_59", 0, 0]]}, "name": "encoder", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}, "name": "z_sampling", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_60", "inbound_nodes": [[["z_sampling", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_61", "inbound_nodes": [[["dense_60", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_62", "inbound_nodes": [[["dense_61", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_63", "inbound_nodes": [[["dense_62", 0, 0, {}]]]}], "input_layers": [["z_sampling", 0, 0]], "output_layers": [["dense_63", 0, 0]]}, "name": "decoder", "inbound_nodes": [[["encoder", 1, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_21", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_21", "inbound_nodes": [["decoder", 1, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_22", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_22", "inbound_nodes": [["input_8", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_23", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_23", "inbound_nodes": [["tf.convert_to_tensor_21", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_28", "inbound_nodes": [["tf.convert_to_tensor_22", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_7", "inbound_nodes": [["tf.convert_to_tensor_23", 0, 0, {"y": ["tf.cast_28", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_7", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_7", "inbound_nodes": [["tf.math.squared_difference_7", 0, 0, {"axis": -1, "keepdims": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_29", "inbound_nodes": [["tf.math.reduce_mean_7", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_7", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_7", "inbound_nodes": [["tf.cast_29", 0, 0, {"y": 1.0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum_14", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum_14", "inbound_nodes": [["tf.math.multiply_7", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.size_7", "trainable": true, "dtype": "float32", "function": "compat.v1.size"}, "name": "tf.compat.v1.size_7", "inbound_nodes": [["tf.math.multiply_7", 0, 0, {"name": "mean_squared_error/weighted_loss/num_elements/"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum_15", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum_15", "inbound_nodes": [["tf.math.reduce_sum_14", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_30", "inbound_nodes": [["tf.compat.v1.size_7", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.divide_no_nan_7", "trainable": true, "dtype": "float32", "function": "math.divide_no_nan"}, "name": "tf.math.divide_no_nan_7", "inbound_nodes": [["tf.math.reduce_sum_15", 0, 0, {"y": ["tf.cast_30", 0, 0], "name": "value"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_31", "inbound_nodes": [["tf.math.divide_no_nan_7", 0, 0, {"dtype": "float32"}]]}, {"class_name": "AddLoss", "config": {"name": "add_loss_7", "trainable": true, "dtype": "float32", "unconditional": false}, "name": "add_loss_7", "inbound_nodes": [[["tf.cast_31", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["decoder", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 20]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "vae", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_56", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_57", "inbound_nodes": [[["dense_56", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_58", "inbound_nodes": [[["dense_57", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 8, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_59", "inbound_nodes": [[["dense_58", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["dense_59", 0, 0], ["dense_59", 0, 0]]}, "name": "encoder", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}, "name": "z_sampling", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_60", "inbound_nodes": [[["z_sampling", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_61", "inbound_nodes": [[["dense_60", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_62", "inbound_nodes": [[["dense_61", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_63", "inbound_nodes": [[["dense_62", 0, 0, {}]]]}], "input_layers": [["z_sampling", 0, 0]], "output_layers": [["dense_63", 0, 0]]}, "name": "decoder", "inbound_nodes": [[["encoder", 1, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_21", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_21", "inbound_nodes": [["decoder", 1, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_22", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_22", "inbound_nodes": [["input_8", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_23", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_23", "inbound_nodes": [["tf.convert_to_tensor_21", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_28", "inbound_nodes": [["tf.convert_to_tensor_22", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_7", "inbound_nodes": [["tf.convert_to_tensor_23", 0, 0, {"y": ["tf.cast_28", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_7", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_7", "inbound_nodes": [["tf.math.squared_difference_7", 0, 0, {"axis": -1, "keepdims": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_29", "inbound_nodes": [["tf.math.reduce_mean_7", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_7", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_7", "inbound_nodes": [["tf.cast_29", 0, 0, {"y": 1.0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum_14", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum_14", "inbound_nodes": [["tf.math.multiply_7", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.size_7", "trainable": true, "dtype": "float32", "function": "compat.v1.size"}, "name": "tf.compat.v1.size_7", "inbound_nodes": [["tf.math.multiply_7", 0, 0, {"name": "mean_squared_error/weighted_loss/num_elements/"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum_15", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum_15", "inbound_nodes": [["tf.math.reduce_sum_14", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_30", "inbound_nodes": [["tf.compat.v1.size_7", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.divide_no_nan_7", "trainable": true, "dtype": "float32", "function": "math.divide_no_nan"}, "name": "tf.math.divide_no_nan_7", "inbound_nodes": [["tf.math.reduce_sum_15", 0, 0, {"y": ["tf.cast_30", 0, 0], "name": "value"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_31", "inbound_nodes": [["tf.math.divide_no_nan_7", 0, 0, {"dtype": "float32"}]]}, {"class_name": "AddLoss", "config": {"name": "add_loss_7", "trainable": true, "dtype": "float32", "unconditional": false}, "name": "add_loss_7", "inbound_nodes": [[["tf.cast_31", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["decoder", 1, 0]]}}, "training_config": {"loss": null, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.949999988079071, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_8", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}}
�+
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
regularization_losses
trainable_variables
 	variables
!	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�(
_tf_keras_network�({"class_name": "Functional", "name": "encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_56", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_57", "inbound_nodes": [[["dense_56", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_58", "inbound_nodes": [[["dense_57", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 8, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_59", "inbound_nodes": [[["dense_58", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["dense_59", 0, 0], ["dense_59", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 20]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_56", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_57", "inbound_nodes": [[["dense_56", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_58", "inbound_nodes": [[["dense_57", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 8, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_59", "inbound_nodes": [[["dense_58", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["dense_59", 0, 0], ["dense_59", 0, 0]]}}}
�+
"layer-0
#layer_with_weights-0
#layer-1
$layer_with_weights-1
$layer-2
%layer_with_weights-2
%layer-3
&layer_with_weights-3
&layer-4
'regularization_losses
(trainable_variables
)	variables
*	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�(
_tf_keras_network�({"class_name": "Functional", "name": "decoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}, "name": "z_sampling", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_60", "inbound_nodes": [[["z_sampling", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_61", "inbound_nodes": [[["dense_60", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_62", "inbound_nodes": [[["dense_61", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_63", "inbound_nodes": [[["dense_62", 0, 0, {}]]]}], "input_layers": [["z_sampling", 0, 0]], "output_layers": [["dense_63", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 8]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}, "name": "z_sampling", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_60", "inbound_nodes": [[["z_sampling", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_61", "inbound_nodes": [[["dense_60", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_62", "inbound_nodes": [[["dense_61", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_63", "inbound_nodes": [[["dense_62", 0, 0, {}]]]}], "input_layers": [["z_sampling", 0, 0]], "output_layers": [["dense_63", 0, 0]]}}}
�
+	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.convert_to_tensor_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.convert_to_tensor_21", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}}
�
,	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.convert_to_tensor_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.convert_to_tensor_22", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}}
�
-	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.convert_to_tensor_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.convert_to_tensor_23", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}}
�
.	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.cast_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}}
�
/	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.math.squared_difference_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}}
�
0	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.math.reduce_mean_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_mean_7", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}}
�
1	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.cast_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}}
�
2	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.math.multiply_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply_7", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
�
3	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.math.reduce_sum_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_sum_14", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}}
�
4	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.compat.v1.size_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.size_7", "trainable": true, "dtype": "float32", "function": "compat.v1.size"}}
�
5	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.math.reduce_sum_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_sum_15", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}}
�
6	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.cast_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}}
�
7	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.math.divide_no_nan_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.divide_no_nan_7", "trainable": true, "dtype": "float32", "function": "math.divide_no_nan"}}
�
8	keras_api"�
_tf_keras_layer�{"class_name": "TFOpLambda", "name": "tf.cast_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}}
�
9regularization_losses
:trainable_variables
;	variables
<	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "AddLoss", "name": "add_loss_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add_loss_7", "trainable": true, "dtype": "float32", "unconditional": false}}
�
=iter

>beta_1

?beta_2
	@decay
Alearning_rateBm�Cm�Dm�Em�Fm�Gm�Hm�Im�Jm�Km�Lm�Mm�Nm�Om�Pm�Qm�Bv�Cv�Dv�Ev�Fv�Gv�Hv�Iv�Jv�Kv�Lv�Mv�Nv�Ov�Pv�Qv�"
	optimizer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15"
trackable_list_wrapper
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15"
trackable_list_wrapper
�

Rlayers
regularization_losses
trainable_variables
	variables
Snon_trainable_variables
Tlayer_regularization_losses
Ulayer_metrics
Vmetrics
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�

Bkernel
Cbias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
�

Dkernel
Ebias
[regularization_losses
\trainable_variables
]	variables
^	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
�

Fkernel
Gbias
_regularization_losses
`trainable_variables
a	variables
b	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
�

Hkernel
Ibias
cregularization_losses
dtrainable_variables
e	variables
f	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 8, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
 "
trackable_list_wrapper
X
B0
C1
D2
E3
F4
G5
H6
I7"
trackable_list_wrapper
X
B0
C1
D2
E3
F4
G5
H6
I7"
trackable_list_wrapper
�

glayers
regularization_losses
trainable_variables
 	variables
hnon_trainable_variables
ilayer_regularization_losses
jlayer_metrics
kmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "z_sampling", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}}
�

Jkernel
Kbias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
�

Lkernel
Mbias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
�

Nkernel
Obias
tregularization_losses
utrainable_variables
v	variables
w	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
�

Pkernel
Qbias
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
 "
trackable_list_wrapper
X
J0
K1
L2
M3
N4
O5
P6
Q7"
trackable_list_wrapper
X
J0
K1
L2
M3
N4
O5
P6
Q7"
trackable_list_wrapper
�

|layers
'regularization_losses
(trainable_variables
)	variables
}non_trainable_variables
~layer_regularization_losses
layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
9regularization_losses
:trainable_variables
;	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
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
!:
2dense_56/kernel
:
2dense_56/bias
!:

2dense_57/kernel
:
2dense_57/bias
!:

2dense_58/kernel
:
2dense_58/bias
!:
2dense_59/kernel
:2dense_59/bias
!:
2dense_60/kernel
:
2dense_60/bias
!:

2dense_61/kernel
:
2dense_61/bias
!:

2dense_62/kernel
:
2dense_62/bias
!:
2dense_63/kernel
:2dense_63/bias
�
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
11
12
13
14
15
16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
�
�layers
Wregularization_losses
Xtrainable_variables
Y	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
�
�layers
[regularization_losses
\trainable_variables
]	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
�
�layers
_regularization_losses
`trainable_variables
a	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
�
�layers
cregularization_losses
dtrainable_variables
e	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
C
0
1
2
3
4"
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
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
�
�layers
lregularization_losses
mtrainable_variables
n	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
�
�layers
pregularization_losses
qtrainable_variables
r	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
�
�layers
tregularization_losses
utrainable_variables
v	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
�
�layers
xregularization_losses
ytrainable_variables
z	variables
�non_trainable_variables
 �layer_regularization_losses
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
C
"0
#1
$2
%3
&4"
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
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
&:$
2Adam/dense_56/kernel/m
 :
2Adam/dense_56/bias/m
&:$

2Adam/dense_57/kernel/m
 :
2Adam/dense_57/bias/m
&:$

2Adam/dense_58/kernel/m
 :
2Adam/dense_58/bias/m
&:$
2Adam/dense_59/kernel/m
 :2Adam/dense_59/bias/m
&:$
2Adam/dense_60/kernel/m
 :
2Adam/dense_60/bias/m
&:$

2Adam/dense_61/kernel/m
 :
2Adam/dense_61/bias/m
&:$

2Adam/dense_62/kernel/m
 :
2Adam/dense_62/bias/m
&:$
2Adam/dense_63/kernel/m
 :2Adam/dense_63/bias/m
&:$
2Adam/dense_56/kernel/v
 :
2Adam/dense_56/bias/v
&:$

2Adam/dense_57/kernel/v
 :
2Adam/dense_57/bias/v
&:$

2Adam/dense_58/kernel/v
 :
2Adam/dense_58/bias/v
&:$
2Adam/dense_59/kernel/v
 :2Adam/dense_59/bias/v
&:$
2Adam/dense_60/kernel/v
 :
2Adam/dense_60/bias/v
&:$

2Adam/dense_61/kernel/v
 :
2Adam/dense_61/bias/v
&:$

2Adam/dense_62/kernel/v
 :
2Adam/dense_62/bias/v
&:$
2Adam/dense_63/kernel/v
 :2Adam/dense_63/bias/v
�2�
>__inference_vae_layer_call_and_return_conditional_losses_44050
>__inference_vae_layer_call_and_return_conditional_losses_44499
>__inference_vae_layer_call_and_return_conditional_losses_44425
>__inference_vae_layer_call_and_return_conditional_losses_44107�
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
�2�
 __inference__wrapped_model_43429�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *&�#
!�
input_8���������
�2�
#__inference_vae_layer_call_fn_44205
#__inference_vae_layer_call_fn_44539
#__inference_vae_layer_call_fn_44302
#__inference_vae_layer_call_fn_44579�
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
B__inference_encoder_layer_call_and_return_conditional_losses_43567
B__inference_encoder_layer_call_and_return_conditional_losses_44643
B__inference_encoder_layer_call_and_return_conditional_losses_43542
B__inference_encoder_layer_call_and_return_conditional_losses_44611�
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
�2�
'__inference_encoder_layer_call_fn_44689
'__inference_encoder_layer_call_fn_44666
'__inference_encoder_layer_call_fn_43616
'__inference_encoder_layer_call_fn_43664�
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
B__inference_decoder_layer_call_and_return_conditional_losses_44720
B__inference_decoder_layer_call_and_return_conditional_losses_44751
B__inference_decoder_layer_call_and_return_conditional_losses_43800
B__inference_decoder_layer_call_and_return_conditional_losses_43776�
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
�2�
'__inference_decoder_layer_call_fn_44793
'__inference_decoder_layer_call_fn_43846
'__inference_decoder_layer_call_fn_44772
'__inference_decoder_layer_call_fn_43891�
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
�2�
E__inference_add_loss_7_layer_call_and_return_conditional_losses_44798�
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
*__inference_add_loss_7_layer_call_fn_44804�
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
#__inference_signature_wrapper_44351input_8"�
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
�2�
C__inference_dense_56_layer_call_and_return_conditional_losses_44814�
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
(__inference_dense_56_layer_call_fn_44823�
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
C__inference_dense_57_layer_call_and_return_conditional_losses_44834�
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
(__inference_dense_57_layer_call_fn_44843�
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
C__inference_dense_58_layer_call_and_return_conditional_losses_44854�
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
(__inference_dense_58_layer_call_fn_44863�
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
C__inference_dense_59_layer_call_and_return_conditional_losses_44874�
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
(__inference_dense_59_layer_call_fn_44883�
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
C__inference_dense_60_layer_call_and_return_conditional_losses_44894�
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
(__inference_dense_60_layer_call_fn_44903�
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
C__inference_dense_61_layer_call_and_return_conditional_losses_44914�
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
(__inference_dense_61_layer_call_fn_44923�
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
C__inference_dense_62_layer_call_and_return_conditional_losses_44934�
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
(__inference_dense_62_layer_call_fn_44943�
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
C__inference_dense_63_layer_call_and_return_conditional_losses_44953�
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
(__inference_dense_63_layer_call_fn_44962�
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
	J
Const�
 __inference__wrapped_model_43429yBCDEFGHIJKLMNOPQ�0�-
&�#
!�
input_8���������
� "1�.
,
decoder!�
decoder����������
E__inference_add_loss_7_layer_call_and_return_conditional_losses_44798D�
�
�
inputs 
� ""�

�
0 
�
�	
1/0 W
*__inference_add_loss_7_layer_call_fn_44804)�
�
�
inputs 
� "� �
B__inference_decoder_layer_call_and_return_conditional_losses_43776nJKLMNOPQ;�8
1�.
$�!

z_sampling���������
p

 
� "%�"
�
0���������
� �
B__inference_decoder_layer_call_and_return_conditional_losses_43800nJKLMNOPQ;�8
1�.
$�!

z_sampling���������
p 

 
� "%�"
�
0���������
� �
B__inference_decoder_layer_call_and_return_conditional_losses_44720jJKLMNOPQ7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
B__inference_decoder_layer_call_and_return_conditional_losses_44751jJKLMNOPQ7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
'__inference_decoder_layer_call_fn_43846aJKLMNOPQ;�8
1�.
$�!

z_sampling���������
p

 
� "�����������
'__inference_decoder_layer_call_fn_43891aJKLMNOPQ;�8
1�.
$�!

z_sampling���������
p 

 
� "�����������
'__inference_decoder_layer_call_fn_44772]JKLMNOPQ7�4
-�*
 �
inputs���������
p

 
� "�����������
'__inference_decoder_layer_call_fn_44793]JKLMNOPQ7�4
-�*
 �
inputs���������
p 

 
� "�����������
C__inference_dense_56_layer_call_and_return_conditional_losses_44814\BC/�,
%�"
 �
inputs���������
� "%�"
�
0���������

� {
(__inference_dense_56_layer_call_fn_44823OBC/�,
%�"
 �
inputs���������
� "����������
�
C__inference_dense_57_layer_call_and_return_conditional_losses_44834\DE/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� {
(__inference_dense_57_layer_call_fn_44843ODE/�,
%�"
 �
inputs���������

� "����������
�
C__inference_dense_58_layer_call_and_return_conditional_losses_44854\FG/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� {
(__inference_dense_58_layer_call_fn_44863OFG/�,
%�"
 �
inputs���������

� "����������
�
C__inference_dense_59_layer_call_and_return_conditional_losses_44874\HI/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� {
(__inference_dense_59_layer_call_fn_44883OHI/�,
%�"
 �
inputs���������

� "�����������
C__inference_dense_60_layer_call_and_return_conditional_losses_44894\JK/�,
%�"
 �
inputs���������
� "%�"
�
0���������

� {
(__inference_dense_60_layer_call_fn_44903OJK/�,
%�"
 �
inputs���������
� "����������
�
C__inference_dense_61_layer_call_and_return_conditional_losses_44914\LM/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� {
(__inference_dense_61_layer_call_fn_44923OLM/�,
%�"
 �
inputs���������

� "����������
�
C__inference_dense_62_layer_call_and_return_conditional_losses_44934\NO/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� {
(__inference_dense_62_layer_call_fn_44943ONO/�,
%�"
 �
inputs���������

� "����������
�
C__inference_dense_63_layer_call_and_return_conditional_losses_44953\PQ/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� {
(__inference_dense_63_layer_call_fn_44962OPQ/�,
%�"
 �
inputs���������

� "�����������
B__inference_encoder_layer_call_and_return_conditional_losses_43542�BCDEFGHI8�5
.�+
!�
input_8���������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
B__inference_encoder_layer_call_and_return_conditional_losses_43567�BCDEFGHI8�5
.�+
!�
input_8���������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
B__inference_encoder_layer_call_and_return_conditional_losses_44611�BCDEFGHI7�4
-�*
 �
inputs���������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
B__inference_encoder_layer_call_and_return_conditional_losses_44643�BCDEFGHI7�4
-�*
 �
inputs���������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
'__inference_encoder_layer_call_fn_43616�BCDEFGHI8�5
.�+
!�
input_8���������
p

 
� "=�:
�
0���������
�
1����������
'__inference_encoder_layer_call_fn_43664�BCDEFGHI8�5
.�+
!�
input_8���������
p 

 
� "=�:
�
0���������
�
1����������
'__inference_encoder_layer_call_fn_44666�BCDEFGHI7�4
-�*
 �
inputs���������
p

 
� "=�:
�
0���������
�
1����������
'__inference_encoder_layer_call_fn_44689�BCDEFGHI7�4
-�*
 �
inputs���������
p 

 
� "=�:
�
0���������
�
1����������
#__inference_signature_wrapper_44351�BCDEFGHIJKLMNOPQ�;�8
� 
1�.
,
input_8!�
input_8���������"1�.
,
decoder!�
decoder����������
>__inference_vae_layer_call_and_return_conditional_losses_44050�BCDEFGHIJKLMNOPQ�8�5
.�+
!�
input_8���������
p

 
� "3�0
�
0���������
�
�	
1/0 �
>__inference_vae_layer_call_and_return_conditional_losses_44107�BCDEFGHIJKLMNOPQ�8�5
.�+
!�
input_8���������
p 

 
� "3�0
�
0���������
�
�	
1/0 �
>__inference_vae_layer_call_and_return_conditional_losses_44425�BCDEFGHIJKLMNOPQ�7�4
-�*
 �
inputs���������
p

 
� "3�0
�
0���������
�
�	
1/0 �
>__inference_vae_layer_call_and_return_conditional_losses_44499�BCDEFGHIJKLMNOPQ�7�4
-�*
 �
inputs���������
p 

 
� "3�0
�
0���������
�
�	
1/0 �
#__inference_vae_layer_call_fn_44205hBCDEFGHIJKLMNOPQ�8�5
.�+
!�
input_8���������
p

 
� "�����������
#__inference_vae_layer_call_fn_44302hBCDEFGHIJKLMNOPQ�8�5
.�+
!�
input_8���������
p 

 
� "�����������
#__inference_vae_layer_call_fn_44539gBCDEFGHIJKLMNOPQ�7�4
-�*
 �
inputs���������
p

 
� "�����������
#__inference_vae_layer_call_fn_44579gBCDEFGHIJKLMNOPQ�7�4
-�*
 �
inputs���������
p 

 
� "����������