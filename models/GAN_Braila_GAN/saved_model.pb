∆ы
«Ш
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
Н
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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

2	Р
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
М
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8Й»
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
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:

*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:
*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:

*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:

*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:
*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:
*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:
*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:

*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:
*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:

*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:
*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:

*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:
*
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
В
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:

*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:
*
dtype0
Ж
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:
*
dtype0
Ж
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0
Ж
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
Ж
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:
*
dtype0
Ж
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:
*
dtype0
Ж
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:
*
dtype0
Ж
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:
*
dtype0
В
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:

*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:
*
dtype0
Ж
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:
*
dtype0
Ж
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0
Ж
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
Ж
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:
*
dtype0
Ж
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:
*
dtype0
Ж
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:
*
dtype0
Ж
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:
*
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?

NoOpNoOp
«[
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*А[
valueцZBуZ BмZ
°
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
ы
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
ы
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
А
=iter

>beta_1

?beta_2
	@decay
Alearning_rateBm≥CmіDmµEmґFmЈGmЄHmєImЇJmїKmЉLmљMmЊNmњOmјPmЅQm¬Bv√CvƒDv≈Ev∆Fv«Gv»Hv…Iv JvЋKvћLvЌMvќNvѕOv–Pv—Qv“
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
≠
Rlayer_metrics

Slayers
regularization_losses
Tnon_trainable_variables
Ulayer_regularization_losses
trainable_variables
Vmetrics
	variables
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
≠
glayer_metrics

hlayers
regularization_losses
inon_trainable_variables
jlayer_regularization_losses
trainable_variables
kmetrics
 	variables
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
Ѓ
|layer_metrics

}layers
'regularization_losses
~non_trainable_variables
layer_regularization_losses
(trainable_variables
Аmetrics
)	variables
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
≤
Бlayer_metrics
Вlayers
Гnon_trainable_variables
9regularization_losses
 Дlayer_regularization_losses
:trainable_variables
Еmetrics
;	variables
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
RP
VARIABLE_VALUEdense/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUE
dense/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_2/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_3/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense_3/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_4/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense_4/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_5/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_5/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_6/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_6/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_7/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_7/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
 
Ж
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

Ж0
 

B0
C1

B0
C1
≤
Зlayer_metrics
Иlayers
Йnon_trainable_variables
Wregularization_losses
 Кlayer_regularization_losses
Xtrainable_variables
Лmetrics
Y	variables
 

D0
E1

D0
E1
≤
Мlayer_metrics
Нlayers
Оnon_trainable_variables
[regularization_losses
 Пlayer_regularization_losses
\trainable_variables
Рmetrics
]	variables
 

F0
G1

F0
G1
≤
Сlayer_metrics
Тlayers
Уnon_trainable_variables
_regularization_losses
 Фlayer_regularization_losses
`trainable_variables
Хmetrics
a	variables
 

H0
I1

H0
I1
≤
Цlayer_metrics
Чlayers
Шnon_trainable_variables
cregularization_losses
 Щlayer_regularization_losses
dtrainable_variables
Ъmetrics
e	variables
 
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

J0
K1

J0
K1
≤
Ыlayer_metrics
Ьlayers
Эnon_trainable_variables
lregularization_losses
 Юlayer_regularization_losses
mtrainable_variables
Яmetrics
n	variables
 

L0
M1

L0
M1
≤
†layer_metrics
°layers
Ґnon_trainable_variables
pregularization_losses
 £layer_regularization_losses
qtrainable_variables
§metrics
r	variables
 

N0
O1

N0
O1
≤
•layer_metrics
¶layers
Іnon_trainable_variables
tregularization_losses
 ®layer_regularization_losses
utrainable_variables
©metrics
v	variables
 

P0
Q1

P0
Q1
≤
™layer_metrics
Ђlayers
ђnon_trainable_variables
xregularization_losses
 ≠layer_regularization_losses
ytrainable_variables
Ѓmetrics
z	variables
 
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
8

ѓtotal

∞count
±	variables
≤	keras_api
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
ѓ0
∞1

±	variables
us
VARIABLE_VALUEAdam/dense/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dense/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_2/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_3/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense_3/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_4/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense_4/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_5/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_5/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_6/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_6/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_7/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_7/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dense/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_2/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_3/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense_3/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_4/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense_4/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_5/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_5/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_6/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_6/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_7/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_7/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:€€€€€€€€€
*
dtype0*
shape:€€€€€€€€€

∆
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_722216
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ч
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst_1*D
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
GPU 2J 8В *(
f#R!
__inference__traced_save_723016
ƒ

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biastotalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*C
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_723191ья
Ё

а
$__inference_vae_layer_call_fn_722404

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
identityИҐStatefulPartitionedCallЇ
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
:€€€€€€€€€
: *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vae_layer_call_and_return_conditional_losses_7220322
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:

_output_shapes
: 
М%
 
C__inference_decoder_layer_call_and_return_conditional_losses_722616

inputs*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identityИҐdense_4/BiasAdd/ReadVariableOpҐdense_4/MatMul/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOp•
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_4/MatMul/ReadVariableOpЛ
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_4/MatMul§
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_4/BiasAdd/ReadVariableOp°
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_4/BiasAddp
dense_4/TanhTanhdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_4/Tanh•
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_5/MatMul/ReadVariableOpХ
dense_5/MatMulMatMuldense_4/Tanh:y:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/MatMul§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_5/BiasAdd/ReadVariableOp°
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/BiasAddp
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/Relu•
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_6/MatMul/ReadVariableOpЯ
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_6/MatMul§
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_6/BiasAdd/ReadVariableOp°
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_6/Relu•
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_7/MatMul/ReadVariableOpЯ
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_7/MatMul§
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_7/BiasAdd/ReadVariableOp°
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_7/BiasAddр
IdentityIdentitydense_7/BiasAdd:output:0^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
г	
№
C__inference_dense_4_layer_call_and_return_conditional_losses_721544

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
TanhН
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
±
Х
C__inference_encoder_layer_call_and_return_conditional_losses_721432
input_1
dense_721410
dense_721412
dense_1_721415
dense_1_721417
dense_2_721420
dense_2_721422
dense_3_721425
dense_3_721427
identity

identity_1ИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallЖ
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_721410dense_721412*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_7213082
dense/StatefulPartitionedCallѓ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_721415dense_1_721417*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_7213352!
dense_1/StatefulPartitionedCall±
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_721420dense_2_721422*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7213622!
dense_2/StatefulPartitionedCall±
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_721425dense_3_721427*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7213892!
dense_3/StatefulPartitionedCallВ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЖ

Identity_1Identity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
С	
№
C__inference_dense_7_layer_call_and_return_conditional_losses_721624

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Џ
}
(__inference_dense_1_layer_call_fn_722708

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_7213352
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Џ
}
(__inference_dense_4_layer_call_fn_722768

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_7215442
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ц
О
C__inference_decoder_layer_call_and_return_conditional_losses_721665

z_sampling
dense_4_721644
dense_4_721646
dense_5_721649
dense_5_721651
dense_6_721654
dense_6_721656
dense_7_721659
dense_7_721661
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallУ
dense_4/StatefulPartitionedCallStatefulPartitionedCall
z_samplingdense_4_721644dense_4_721646*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_7215442!
dense_4/StatefulPartitionedCall±
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_721649dense_5_721651*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_7215712!
dense_5/StatefulPartitionedCall±
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_721654dense_6_721656*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_7215982!
dense_6/StatefulPartitionedCall±
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_721659dense_7_721661*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_7216242!
dense_7/StatefulPartitionedCallД
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
z_sampling
Џ
}
(__inference_dense_5_layer_call_fn_722788

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_7215712
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
м&
О
?__inference_vae_layer_call_and_return_conditional_losses_722032

inputs
encoder_721978
encoder_721980
encoder_721982
encoder_721984
encoder_721986
encoder_721988
encoder_721990
encoder_721992
decoder_721996
decoder_721998
decoder_722000
decoder_722002
decoder_722004
decoder_722006
decoder_722008
decoder_722010
tf_math_multiply_mul_y
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallП
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_721978encoder_721980encoder_721982encoder_721984encoder_721986encoder_721988encoder_721990encoder_721992*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_7214602!
encoder/StatefulPartitionedCallЭ
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_721996decoder_721998decoder_722000decoder_722002decoder_722004decoder_722006decoder_722008decoder_722010*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_7216922!
decoder/StatefulPartitionedCall’
,tf.math.squared_difference/SquaredDifferenceSquaredDifference(decoder/StatefulPartitionedCall:output:0inputs*
T0*'
_output_shapes
:€€€€€€€€€
2.
,tf.math.squared_difference/SquaredDifference£
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*tf.math.reduce_mean/Mean/reduction_indices—
tf.math.reduce_mean/MeanMean0tf.math.squared_difference/SquaredDifference:z:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.reduce_mean/MeanЬ
tf.math.multiply/MulMul!tf.math.reduce_mean/Mean:output:0tf_math_multiply_mul_y*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.multiply/Muls
tf.compat.v1.size/SizeSizetf.math.multiply/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size/Size~
tf.math.reduce_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum/ConstХ
tf.math.reduce_sum/SumSumtf.math.multiply/Mul:z:0!tf.math.reduce_sum/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum/Sumx
tf.math.reduce_sum_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_1/RankЖ
 tf.math.reduce_sum_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 tf.math.reduce_sum_1/range/startЖ
 tf.math.reduce_sum_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 tf.math.reduce_sum_1/range/delta’
tf.math.reduce_sum_1/rangeRange)tf.math.reduce_sum_1/range/start:output:0"tf.math.reduce_sum_1/Rank:output:0)tf.math.reduce_sum_1/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_1/rangeҐ
tf.math.reduce_sum_1/SumSumtf.math.reduce_sum/Sum:output:0#tf.math.reduce_sum_1/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_1/Sumy
tf.cast_2/CastCasttf.compat.v1.size/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_2/Cast®
 tf.math.divide_no_nan/div_no_nanDivNoNan!tf.math.reduce_sum_1/Sum:output:0tf.cast_2/Cast:y:0*
T0*
_output_shapes
: 2"
 tf.math.divide_no_nan/div_no_nanд
add_loss/PartitionedCallPartitionedCall$tf.math.divide_no_nan/div_no_nan:z:0*
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
GPU 2J 8В *M
fHRF
D__inference_add_loss_layer_call_and_return_conditional_losses_7219032
add_loss/PartitionedCallј
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identityђ

Identity_1Identity!add_loss/PartitionedCall:output:1 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:

_output_shapes
: 
“m
©
!__inference__wrapped_model_721294
input_14
0vae_encoder_dense_matmul_readvariableop_resource5
1vae_encoder_dense_biasadd_readvariableop_resource6
2vae_encoder_dense_1_matmul_readvariableop_resource7
3vae_encoder_dense_1_biasadd_readvariableop_resource6
2vae_encoder_dense_2_matmul_readvariableop_resource7
3vae_encoder_dense_2_biasadd_readvariableop_resource6
2vae_encoder_dense_3_matmul_readvariableop_resource7
3vae_encoder_dense_3_biasadd_readvariableop_resource6
2vae_decoder_dense_4_matmul_readvariableop_resource7
3vae_decoder_dense_4_biasadd_readvariableop_resource6
2vae_decoder_dense_5_matmul_readvariableop_resource7
3vae_decoder_dense_5_biasadd_readvariableop_resource6
2vae_decoder_dense_6_matmul_readvariableop_resource7
3vae_decoder_dense_6_biasadd_readvariableop_resource6
2vae_decoder_dense_7_matmul_readvariableop_resource7
3vae_decoder_dense_7_biasadd_readvariableop_resource
vae_tf_math_multiply_mul_y
identityИҐ*vae/decoder/dense_4/BiasAdd/ReadVariableOpҐ)vae/decoder/dense_4/MatMul/ReadVariableOpҐ*vae/decoder/dense_5/BiasAdd/ReadVariableOpҐ)vae/decoder/dense_5/MatMul/ReadVariableOpҐ*vae/decoder/dense_6/BiasAdd/ReadVariableOpҐ)vae/decoder/dense_6/MatMul/ReadVariableOpҐ*vae/decoder/dense_7/BiasAdd/ReadVariableOpҐ)vae/decoder/dense_7/MatMul/ReadVariableOpҐ(vae/encoder/dense/BiasAdd/ReadVariableOpҐ'vae/encoder/dense/MatMul/ReadVariableOpҐ*vae/encoder/dense_1/BiasAdd/ReadVariableOpҐ)vae/encoder/dense_1/MatMul/ReadVariableOpҐ*vae/encoder/dense_2/BiasAdd/ReadVariableOpҐ)vae/encoder/dense_2/MatMul/ReadVariableOpҐ*vae/encoder/dense_3/BiasAdd/ReadVariableOpҐ)vae/encoder/dense_3/MatMul/ReadVariableOp√
'vae/encoder/dense/MatMul/ReadVariableOpReadVariableOp0vae_encoder_dense_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02)
'vae/encoder/dense/MatMul/ReadVariableOp™
vae/encoder/dense/MatMulMatMulinput_1/vae/encoder/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/encoder/dense/MatMul¬
(vae/encoder/dense/BiasAdd/ReadVariableOpReadVariableOp1vae_encoder_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02*
(vae/encoder/dense/BiasAdd/ReadVariableOp…
vae/encoder/dense/BiasAddBiasAdd"vae/encoder/dense/MatMul:product:00vae/encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/encoder/dense/BiasAdd…
)vae/encoder/dense_1/MatMul/ReadVariableOpReadVariableOp2vae_encoder_dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02+
)vae/encoder/dense_1/MatMul/ReadVariableOpЋ
vae/encoder/dense_1/MatMulMatMul"vae/encoder/dense/BiasAdd:output:01vae/encoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/encoder/dense_1/MatMul»
*vae/encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp3vae_encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02,
*vae/encoder/dense_1/BiasAdd/ReadVariableOp—
vae/encoder/dense_1/BiasAddBiasAdd$vae/encoder/dense_1/MatMul:product:02vae/encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/encoder/dense_1/BiasAddФ
vae/encoder/dense_1/TanhTanh$vae/encoder/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/encoder/dense_1/Tanh…
)vae/encoder/dense_2/MatMul/ReadVariableOpReadVariableOp2vae_encoder_dense_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02+
)vae/encoder/dense_2/MatMul/ReadVariableOp≈
vae/encoder/dense_2/MatMulMatMulvae/encoder/dense_1/Tanh:y:01vae/encoder/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/encoder/dense_2/MatMul»
*vae/encoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp3vae_encoder_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02,
*vae/encoder/dense_2/BiasAdd/ReadVariableOp—
vae/encoder/dense_2/BiasAddBiasAdd$vae/encoder/dense_2/MatMul:product:02vae/encoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/encoder/dense_2/BiasAddФ
vae/encoder/dense_2/TanhTanh$vae/encoder/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/encoder/dense_2/Tanh…
)vae/encoder/dense_3/MatMul/ReadVariableOpReadVariableOp2vae_encoder_dense_3_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02+
)vae/encoder/dense_3/MatMul/ReadVariableOp≈
vae/encoder/dense_3/MatMulMatMulvae/encoder/dense_2/Tanh:y:01vae/encoder/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
vae/encoder/dense_3/MatMul»
*vae/encoder/dense_3/BiasAdd/ReadVariableOpReadVariableOp3vae_encoder_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*vae/encoder/dense_3/BiasAdd/ReadVariableOp—
vae/encoder/dense_3/BiasAddBiasAdd$vae/encoder/dense_3/MatMul:product:02vae/encoder/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
vae/encoder/dense_3/BiasAddФ
vae/encoder/dense_3/TanhTanh$vae/encoder/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
vae/encoder/dense_3/Tanh…
)vae/decoder/dense_4/MatMul/ReadVariableOpReadVariableOp2vae_decoder_dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02+
)vae/decoder/dense_4/MatMul/ReadVariableOp≈
vae/decoder/dense_4/MatMulMatMulvae/encoder/dense_3/Tanh:y:01vae/decoder/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_4/MatMul»
*vae/decoder/dense_4/BiasAdd/ReadVariableOpReadVariableOp3vae_decoder_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02,
*vae/decoder/dense_4/BiasAdd/ReadVariableOp—
vae/decoder/dense_4/BiasAddBiasAdd$vae/decoder/dense_4/MatMul:product:02vae/decoder/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_4/BiasAddФ
vae/decoder/dense_4/TanhTanh$vae/decoder/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_4/Tanh…
)vae/decoder/dense_5/MatMul/ReadVariableOpReadVariableOp2vae_decoder_dense_5_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02+
)vae/decoder/dense_5/MatMul/ReadVariableOp≈
vae/decoder/dense_5/MatMulMatMulvae/decoder/dense_4/Tanh:y:01vae/decoder/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_5/MatMul»
*vae/decoder/dense_5/BiasAdd/ReadVariableOpReadVariableOp3vae_decoder_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02,
*vae/decoder/dense_5/BiasAdd/ReadVariableOp—
vae/decoder/dense_5/BiasAddBiasAdd$vae/decoder/dense_5/MatMul:product:02vae/decoder/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_5/BiasAddФ
vae/decoder/dense_5/ReluRelu$vae/decoder/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_5/Relu…
)vae/decoder/dense_6/MatMul/ReadVariableOpReadVariableOp2vae_decoder_dense_6_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02+
)vae/decoder/dense_6/MatMul/ReadVariableOpѕ
vae/decoder/dense_6/MatMulMatMul&vae/decoder/dense_5/Relu:activations:01vae/decoder/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_6/MatMul»
*vae/decoder/dense_6/BiasAdd/ReadVariableOpReadVariableOp3vae_decoder_dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02,
*vae/decoder/dense_6/BiasAdd/ReadVariableOp—
vae/decoder/dense_6/BiasAddBiasAdd$vae/decoder/dense_6/MatMul:product:02vae/decoder/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_6/BiasAddФ
vae/decoder/dense_6/ReluRelu$vae/decoder/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_6/Relu…
)vae/decoder/dense_7/MatMul/ReadVariableOpReadVariableOp2vae_decoder_dense_7_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02+
)vae/decoder/dense_7/MatMul/ReadVariableOpѕ
vae/decoder/dense_7/MatMulMatMul&vae/decoder/dense_6/Relu:activations:01vae/decoder/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_7/MatMul»
*vae/decoder/dense_7/BiasAdd/ReadVariableOpReadVariableOp3vae_decoder_dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02,
*vae/decoder/dense_7/BiasAdd/ReadVariableOp—
vae/decoder/dense_7/BiasAddBiasAdd$vae/decoder/dense_7/MatMul:product:02vae/decoder/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
vae/decoder/dense_7/BiasAddЏ
0vae/tf.math.squared_difference/SquaredDifferenceSquaredDifference$vae/decoder/dense_7/BiasAdd:output:0input_1*
T0*'
_output_shapes
:€€€€€€€€€
22
0vae/tf.math.squared_difference/SquaredDifferenceЂ
.vae/tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€20
.vae/tf.math.reduce_mean/Mean/reduction_indicesб
vae/tf.math.reduce_mean/MeanMean4vae/tf.math.squared_difference/SquaredDifference:z:07vae/tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
vae/tf.math.reduce_mean/Meanђ
vae/tf.math.multiply/MulMul%vae/tf.math.reduce_mean/Mean:output:0vae_tf_math_multiply_mul_y*
T0*#
_output_shapes
:€€€€€€€€€2
vae/tf.math.multiply/Mul
vae/tf.compat.v1.size/SizeSizevae/tf.math.multiply/Mul:z:0*
T0*
_output_shapes
: 2
vae/tf.compat.v1.size/SizeЖ
vae/tf.math.reduce_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
vae/tf.math.reduce_sum/Const•
vae/tf.math.reduce_sum/SumSumvae/tf.math.multiply/Mul:z:0%vae/tf.math.reduce_sum/Const:output:0*
T0*
_output_shapes
: 2
vae/tf.math.reduce_sum/SumА
vae/tf.math.reduce_sum_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
vae/tf.math.reduce_sum_1/RankО
$vae/tf.math.reduce_sum_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2&
$vae/tf.math.reduce_sum_1/range/startО
$vae/tf.math.reduce_sum_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2&
$vae/tf.math.reduce_sum_1/range/deltaй
vae/tf.math.reduce_sum_1/rangeRange-vae/tf.math.reduce_sum_1/range/start:output:0&vae/tf.math.reduce_sum_1/Rank:output:0-vae/tf.math.reduce_sum_1/range/delta:output:0*
_output_shapes
: 2 
vae/tf.math.reduce_sum_1/range≤
vae/tf.math.reduce_sum_1/SumSum#vae/tf.math.reduce_sum/Sum:output:0'vae/tf.math.reduce_sum_1/range:output:0*
T0*
_output_shapes
: 2
vae/tf.math.reduce_sum_1/SumЕ
vae/tf.cast_2/CastCast#vae/tf.compat.v1.size/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
vae/tf.cast_2/CastЄ
$vae/tf.math.divide_no_nan/div_no_nanDivNoNan%vae/tf.math.reduce_sum_1/Sum:output:0vae/tf.cast_2/Cast:y:0*
T0*
_output_shapes
: 2&
$vae/tf.math.divide_no_nan/div_no_nanЉ
IdentityIdentity$vae/decoder/dense_7/BiasAdd:output:0+^vae/decoder/dense_4/BiasAdd/ReadVariableOp*^vae/decoder/dense_4/MatMul/ReadVariableOp+^vae/decoder/dense_5/BiasAdd/ReadVariableOp*^vae/decoder/dense_5/MatMul/ReadVariableOp+^vae/decoder/dense_6/BiasAdd/ReadVariableOp*^vae/decoder/dense_6/MatMul/ReadVariableOp+^vae/decoder/dense_7/BiasAdd/ReadVariableOp*^vae/decoder/dense_7/MatMul/ReadVariableOp)^vae/encoder/dense/BiasAdd/ReadVariableOp(^vae/encoder/dense/MatMul/ReadVariableOp+^vae/encoder/dense_1/BiasAdd/ReadVariableOp*^vae/encoder/dense_1/MatMul/ReadVariableOp+^vae/encoder/dense_2/BiasAdd/ReadVariableOp*^vae/encoder/dense_2/MatMul/ReadVariableOp+^vae/encoder/dense_3/BiasAdd/ReadVariableOp*^vae/encoder/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 2X
*vae/decoder/dense_4/BiasAdd/ReadVariableOp*vae/decoder/dense_4/BiasAdd/ReadVariableOp2V
)vae/decoder/dense_4/MatMul/ReadVariableOp)vae/decoder/dense_4/MatMul/ReadVariableOp2X
*vae/decoder/dense_5/BiasAdd/ReadVariableOp*vae/decoder/dense_5/BiasAdd/ReadVariableOp2V
)vae/decoder/dense_5/MatMul/ReadVariableOp)vae/decoder/dense_5/MatMul/ReadVariableOp2X
*vae/decoder/dense_6/BiasAdd/ReadVariableOp*vae/decoder/dense_6/BiasAdd/ReadVariableOp2V
)vae/decoder/dense_6/MatMul/ReadVariableOp)vae/decoder/dense_6/MatMul/ReadVariableOp2X
*vae/decoder/dense_7/BiasAdd/ReadVariableOp*vae/decoder/dense_7/BiasAdd/ReadVariableOp2V
)vae/decoder/dense_7/MatMul/ReadVariableOp)vae/decoder/dense_7/MatMul/ReadVariableOp2T
(vae/encoder/dense/BiasAdd/ReadVariableOp(vae/encoder/dense/BiasAdd/ReadVariableOp2R
'vae/encoder/dense/MatMul/ReadVariableOp'vae/encoder/dense/MatMul/ReadVariableOp2X
*vae/encoder/dense_1/BiasAdd/ReadVariableOp*vae/encoder/dense_1/BiasAdd/ReadVariableOp2V
)vae/encoder/dense_1/MatMul/ReadVariableOp)vae/encoder/dense_1/MatMul/ReadVariableOp2X
*vae/encoder/dense_2/BiasAdd/ReadVariableOp*vae/encoder/dense_2/BiasAdd/ReadVariableOp2V
)vae/encoder/dense_2/MatMul/ReadVariableOp)vae/encoder/dense_2/MatMul/ReadVariableOp2X
*vae/encoder/dense_3/BiasAdd/ReadVariableOp*vae/encoder/dense_3/BiasAdd/ReadVariableOp2V
)vae/encoder/dense_3/MatMul/ReadVariableOp)vae/encoder/dense_3/MatMul/ReadVariableOp:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1:

_output_shapes
: 
І
џ
(__inference_decoder_layer_call_fn_721711

z_sampling
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCall
z_samplingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_7216922
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
z_sampling
І
џ
(__inference_decoder_layer_call_fn_721756

z_sampling
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCall
z_samplingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_7217372
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
z_sampling
а

б
$__inference_vae_layer_call_fn_722167
input_1
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
identityИҐStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€
: *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vae_layer_call_and_return_conditional_losses_7221292
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1:

_output_shapes
: 
±
Х
C__inference_encoder_layer_call_and_return_conditional_losses_721407
input_1
dense_721319
dense_721321
dense_1_721346
dense_1_721348
dense_2_721373
dense_2_721375
dense_3_721400
dense_3_721402
identity

identity_1ИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallЖ
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_721319dense_721321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_7213082
dense/StatefulPartitionedCallѓ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_721346dense_1_721348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_7213352!
dense_1/StatefulPartitionedCall±
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_721373dense_2_721375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7213622!
dense_2/StatefulPartitionedCall±
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_721400dense_3_721402*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7213892!
dense_3/StatefulPartitionedCallВ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЖ

Identity_1Identity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
—
E
)__inference_add_loss_layer_call_fn_722669

inputs
identityі
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
GPU 2J 8В *M
fHRF
D__inference_add_loss_layer_call_and_return_conditional_losses_7219032
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
Тl
“
?__inference_vae_layer_call_and_return_conditional_losses_722364

inputs0
,encoder_dense_matmul_readvariableop_resource1
-encoder_dense_biasadd_readvariableop_resource2
.encoder_dense_1_matmul_readvariableop_resource3
/encoder_dense_1_biasadd_readvariableop_resource2
.encoder_dense_2_matmul_readvariableop_resource3
/encoder_dense_2_biasadd_readvariableop_resource2
.encoder_dense_3_matmul_readvariableop_resource3
/encoder_dense_3_biasadd_readvariableop_resource2
.decoder_dense_4_matmul_readvariableop_resource3
/decoder_dense_4_biasadd_readvariableop_resource2
.decoder_dense_5_matmul_readvariableop_resource3
/decoder_dense_5_biasadd_readvariableop_resource2
.decoder_dense_6_matmul_readvariableop_resource3
/decoder_dense_6_biasadd_readvariableop_resource2
.decoder_dense_7_matmul_readvariableop_resource3
/decoder_dense_7_biasadd_readvariableop_resource
tf_math_multiply_mul_y
identity

identity_1ИҐ&decoder/dense_4/BiasAdd/ReadVariableOpҐ%decoder/dense_4/MatMul/ReadVariableOpҐ&decoder/dense_5/BiasAdd/ReadVariableOpҐ%decoder/dense_5/MatMul/ReadVariableOpҐ&decoder/dense_6/BiasAdd/ReadVariableOpҐ%decoder/dense_6/MatMul/ReadVariableOpҐ&decoder/dense_7/BiasAdd/ReadVariableOpҐ%decoder/dense_7/MatMul/ReadVariableOpҐ$encoder/dense/BiasAdd/ReadVariableOpҐ#encoder/dense/MatMul/ReadVariableOpҐ&encoder/dense_1/BiasAdd/ReadVariableOpҐ%encoder/dense_1/MatMul/ReadVariableOpҐ&encoder/dense_2/BiasAdd/ReadVariableOpҐ%encoder/dense_2/MatMul/ReadVariableOpҐ&encoder/dense_3/BiasAdd/ReadVariableOpҐ%encoder/dense_3/MatMul/ReadVariableOpЈ
#encoder/dense/MatMul/ReadVariableOpReadVariableOp,encoder_dense_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02%
#encoder/dense/MatMul/ReadVariableOpЭ
encoder/dense/MatMulMatMulinputs+encoder/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense/MatMulґ
$encoder/dense/BiasAdd/ReadVariableOpReadVariableOp-encoder_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02&
$encoder/dense/BiasAdd/ReadVariableOpє
encoder/dense/BiasAddBiasAddencoder/dense/MatMul:product:0,encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense/BiasAddљ
%encoder/dense_1/MatMul/ReadVariableOpReadVariableOp.encoder_dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%encoder/dense_1/MatMul/ReadVariableOpї
encoder/dense_1/MatMulMatMulencoder/dense/BiasAdd:output:0-encoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_1/MatMulЉ
&encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&encoder/dense_1/BiasAdd/ReadVariableOpЅ
encoder/dense_1/BiasAddBiasAdd encoder/dense_1/MatMul:product:0.encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_1/BiasAddИ
encoder/dense_1/TanhTanh encoder/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_1/Tanhљ
%encoder/dense_2/MatMul/ReadVariableOpReadVariableOp.encoder_dense_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%encoder/dense_2/MatMul/ReadVariableOpµ
encoder/dense_2/MatMulMatMulencoder/dense_1/Tanh:y:0-encoder/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_2/MatMulЉ
&encoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&encoder/dense_2/BiasAdd/ReadVariableOpЅ
encoder/dense_2/BiasAddBiasAdd encoder/dense_2/MatMul:product:0.encoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_2/BiasAddИ
encoder/dense_2/TanhTanh encoder/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_2/Tanhљ
%encoder/dense_3/MatMul/ReadVariableOpReadVariableOp.encoder_dense_3_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02'
%encoder/dense_3/MatMul/ReadVariableOpµ
encoder/dense_3/MatMulMatMulencoder/dense_2/Tanh:y:0-encoder/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder/dense_3/MatMulЉ
&encoder/dense_3/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&encoder/dense_3/BiasAdd/ReadVariableOpЅ
encoder/dense_3/BiasAddBiasAdd encoder/dense_3/MatMul:product:0.encoder/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder/dense_3/BiasAddИ
encoder/dense_3/TanhTanh encoder/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder/dense_3/Tanhљ
%decoder/dense_4/MatMul/ReadVariableOpReadVariableOp.decoder_dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02'
%decoder/dense_4/MatMul/ReadVariableOpµ
decoder/dense_4/MatMulMatMulencoder/dense_3/Tanh:y:0-decoder/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_4/MatMulЉ
&decoder/dense_4/BiasAdd/ReadVariableOpReadVariableOp/decoder_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&decoder/dense_4/BiasAdd/ReadVariableOpЅ
decoder/dense_4/BiasAddBiasAdd decoder/dense_4/MatMul:product:0.decoder/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_4/BiasAddИ
decoder/dense_4/TanhTanh decoder/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_4/Tanhљ
%decoder/dense_5/MatMul/ReadVariableOpReadVariableOp.decoder_dense_5_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%decoder/dense_5/MatMul/ReadVariableOpµ
decoder/dense_5/MatMulMatMuldecoder/dense_4/Tanh:y:0-decoder/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_5/MatMulЉ
&decoder/dense_5/BiasAdd/ReadVariableOpReadVariableOp/decoder_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&decoder/dense_5/BiasAdd/ReadVariableOpЅ
decoder/dense_5/BiasAddBiasAdd decoder/dense_5/MatMul:product:0.decoder/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_5/BiasAddИ
decoder/dense_5/ReluRelu decoder/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_5/Reluљ
%decoder/dense_6/MatMul/ReadVariableOpReadVariableOp.decoder_dense_6_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%decoder/dense_6/MatMul/ReadVariableOpњ
decoder/dense_6/MatMulMatMul"decoder/dense_5/Relu:activations:0-decoder/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_6/MatMulЉ
&decoder/dense_6/BiasAdd/ReadVariableOpReadVariableOp/decoder_dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&decoder/dense_6/BiasAdd/ReadVariableOpЅ
decoder/dense_6/BiasAddBiasAdd decoder/dense_6/MatMul:product:0.decoder/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_6/BiasAddИ
decoder/dense_6/ReluRelu decoder/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_6/Reluљ
%decoder/dense_7/MatMul/ReadVariableOpReadVariableOp.decoder_dense_7_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%decoder/dense_7/MatMul/ReadVariableOpњ
decoder/dense_7/MatMulMatMul"decoder/dense_6/Relu:activations:0-decoder/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_7/MatMulЉ
&decoder/dense_7/BiasAdd/ReadVariableOpReadVariableOp/decoder_dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&decoder/dense_7/BiasAdd/ReadVariableOpЅ
decoder/dense_7/BiasAddBiasAdd decoder/dense_7/MatMul:product:0.decoder/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_7/BiasAddЌ
,tf.math.squared_difference/SquaredDifferenceSquaredDifference decoder/dense_7/BiasAdd:output:0inputs*
T0*'
_output_shapes
:€€€€€€€€€
2.
,tf.math.squared_difference/SquaredDifference£
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*tf.math.reduce_mean/Mean/reduction_indices—
tf.math.reduce_mean/MeanMean0tf.math.squared_difference/SquaredDifference:z:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.reduce_mean/MeanЬ
tf.math.multiply/MulMul!tf.math.reduce_mean/Mean:output:0tf_math_multiply_mul_y*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.multiply/Muls
tf.compat.v1.size/SizeSizetf.math.multiply/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size/Size~
tf.math.reduce_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum/ConstХ
tf.math.reduce_sum/SumSumtf.math.multiply/Mul:z:0!tf.math.reduce_sum/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum/Sumx
tf.math.reduce_sum_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_1/RankЖ
 tf.math.reduce_sum_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 tf.math.reduce_sum_1/range/startЖ
 tf.math.reduce_sum_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 tf.math.reduce_sum_1/range/delta’
tf.math.reduce_sum_1/rangeRange)tf.math.reduce_sum_1/range/start:output:0"tf.math.reduce_sum_1/Rank:output:0)tf.math.reduce_sum_1/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_1/rangeҐ
tf.math.reduce_sum_1/SumSumtf.math.reduce_sum/Sum:output:0#tf.math.reduce_sum_1/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_1/Sumy
tf.cast_2/CastCasttf.compat.v1.size/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_2/Cast®
 tf.math.divide_no_nan/div_no_nanDivNoNan!tf.math.reduce_sum_1/Sum:output:0tf.cast_2/Cast:y:0*
T0*
_output_shapes
: 2"
 tf.math.divide_no_nan/div_no_nanш
IdentityIdentity decoder/dense_7/BiasAdd:output:0'^decoder/dense_4/BiasAdd/ReadVariableOp&^decoder/dense_4/MatMul/ReadVariableOp'^decoder/dense_5/BiasAdd/ReadVariableOp&^decoder/dense_5/MatMul/ReadVariableOp'^decoder/dense_6/BiasAdd/ReadVariableOp&^decoder/dense_6/MatMul/ReadVariableOp'^decoder/dense_7/BiasAdd/ReadVariableOp&^decoder/dense_7/MatMul/ReadVariableOp%^encoder/dense/BiasAdd/ReadVariableOp$^encoder/dense/MatMul/ReadVariableOp'^encoder/dense_1/BiasAdd/ReadVariableOp&^encoder/dense_1/MatMul/ReadVariableOp'^encoder/dense_2/BiasAdd/ReadVariableOp&^encoder/dense_2/MatMul/ReadVariableOp'^encoder/dense_3/BiasAdd/ReadVariableOp&^encoder/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identityп

Identity_1Identity$tf.math.divide_no_nan/div_no_nan:z:0'^decoder/dense_4/BiasAdd/ReadVariableOp&^decoder/dense_4/MatMul/ReadVariableOp'^decoder/dense_5/BiasAdd/ReadVariableOp&^decoder/dense_5/MatMul/ReadVariableOp'^decoder/dense_6/BiasAdd/ReadVariableOp&^decoder/dense_6/MatMul/ReadVariableOp'^decoder/dense_7/BiasAdd/ReadVariableOp&^decoder/dense_7/MatMul/ReadVariableOp%^encoder/dense/BiasAdd/ReadVariableOp$^encoder/dense/MatMul/ReadVariableOp'^encoder/dense_1/BiasAdd/ReadVariableOp&^encoder/dense_1/MatMul/ReadVariableOp'^encoder/dense_2/BiasAdd/ReadVariableOp&^encoder/dense_2/MatMul/ReadVariableOp'^encoder/dense_3/BiasAdd/ReadVariableOp&^encoder/dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 2P
&decoder/dense_4/BiasAdd/ReadVariableOp&decoder/dense_4/BiasAdd/ReadVariableOp2N
%decoder/dense_4/MatMul/ReadVariableOp%decoder/dense_4/MatMul/ReadVariableOp2P
&decoder/dense_5/BiasAdd/ReadVariableOp&decoder/dense_5/BiasAdd/ReadVariableOp2N
%decoder/dense_5/MatMul/ReadVariableOp%decoder/dense_5/MatMul/ReadVariableOp2P
&decoder/dense_6/BiasAdd/ReadVariableOp&decoder/dense_6/BiasAdd/ReadVariableOp2N
%decoder/dense_6/MatMul/ReadVariableOp%decoder/dense_6/MatMul/ReadVariableOp2P
&decoder/dense_7/BiasAdd/ReadVariableOp&decoder/dense_7/BiasAdd/ReadVariableOp2N
%decoder/dense_7/MatMul/ReadVariableOp%decoder/dense_7/MatMul/ReadVariableOp2L
$encoder/dense/BiasAdd/ReadVariableOp$encoder/dense/BiasAdd/ReadVariableOp2J
#encoder/dense/MatMul/ReadVariableOp#encoder/dense/MatMul/ReadVariableOp2P
&encoder/dense_1/BiasAdd/ReadVariableOp&encoder/dense_1/BiasAdd/ReadVariableOp2N
%encoder/dense_1/MatMul/ReadVariableOp%encoder/dense_1/MatMul/ReadVariableOp2P
&encoder/dense_2/BiasAdd/ReadVariableOp&encoder/dense_2/BiasAdd/ReadVariableOp2N
%encoder/dense_2/MatMul/ReadVariableOp%encoder/dense_2/MatMul/ReadVariableOp2P
&encoder/dense_3/BiasAdd/ReadVariableOp&encoder/dense_3/BiasAdd/ReadVariableOp2N
%encoder/dense_3/MatMul/ReadVariableOp%encoder/dense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:

_output_shapes
: 
Ы
„
(__inference_decoder_layer_call_fn_722637

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_7216922
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ц
О
C__inference_decoder_layer_call_and_return_conditional_losses_721641

z_sampling
dense_4_721555
dense_4_721557
dense_5_721582
dense_5_721584
dense_6_721609
dense_6_721611
dense_7_721635
dense_7_721637
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallУ
dense_4/StatefulPartitionedCallStatefulPartitionedCall
z_samplingdense_4_721555dense_4_721557*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_7215442!
dense_4/StatefulPartitionedCall±
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_721582dense_5_721584*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_7215712!
dense_5/StatefulPartitionedCall±
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_721609dense_6_721611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_7215982!
dense_6/StatefulPartitionedCall±
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_721635dense_7_721637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_7216242!
dense_7/StatefulPartitionedCallД
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
z_sampling
ч	
з
(__inference_encoder_layer_call_fn_722531

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

identity_1ИҐStatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_7214602
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
÷
{
&__inference_dense_layer_call_fn_722688

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_7213082
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
г	
№
C__inference_dense_3_layer_call_and_return_conditional_losses_721389

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
TanhН
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
г	
№
C__inference_dense_1_layer_call_and_return_conditional_losses_721335

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
TanhН
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
К
К
C__inference_decoder_layer_call_and_return_conditional_losses_721737

inputs
dense_4_721716
dense_4_721718
dense_5_721721
dense_5_721723
dense_6_721726
dense_6_721728
dense_7_721731
dense_7_721733
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallП
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_721716dense_4_721718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_7215442!
dense_4/StatefulPartitionedCall±
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_721721dense_5_721723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_7215712!
dense_5/StatefulPartitionedCall±
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_721726dense_6_721728*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_7215982!
dense_6/StatefulPartitionedCall±
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_721731dense_7_721733*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_7216242!
dense_7/StatefulPartitionedCallД
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ъ	
и
(__inference_encoder_layer_call_fn_721481
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1ИҐStatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_7214602
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
н	
№
C__inference_dense_5_layer_call_and_return_conditional_losses_721571

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
г	
№
C__inference_dense_1_layer_call_and_return_conditional_losses_722699

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
TanhН
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
а

б
$__inference_vae_layer_call_fn_722070
input_1
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
identityИҐStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€
: *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vae_layer_call_and_return_conditional_losses_7220322
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1:

_output_shapes
: 
ч	
з
(__inference_encoder_layer_call_fn_722554

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

identity_1ИҐStatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_7215082
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
г	
№
C__inference_dense_3_layer_call_and_return_conditional_losses_722739

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
TanhН
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
р&
П
?__inference_vae_layer_call_and_return_conditional_losses_721972
input_1
encoder_721918
encoder_721920
encoder_721922
encoder_721924
encoder_721926
encoder_721928
encoder_721930
encoder_721932
decoder_721936
decoder_721938
decoder_721940
decoder_721942
decoder_721944
decoder_721946
decoder_721948
decoder_721950
tf_math_multiply_mul_y
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallР
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_721918encoder_721920encoder_721922encoder_721924encoder_721926encoder_721928encoder_721930encoder_721932*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_7215082!
encoder/StatefulPartitionedCallЭ
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_721936decoder_721938decoder_721940decoder_721942decoder_721944decoder_721946decoder_721948decoder_721950*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_7217372!
decoder/StatefulPartitionedCall÷
,tf.math.squared_difference/SquaredDifferenceSquaredDifference(decoder/StatefulPartitionedCall:output:0input_1*
T0*'
_output_shapes
:€€€€€€€€€
2.
,tf.math.squared_difference/SquaredDifference£
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*tf.math.reduce_mean/Mean/reduction_indices—
tf.math.reduce_mean/MeanMean0tf.math.squared_difference/SquaredDifference:z:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.reduce_mean/MeanЬ
tf.math.multiply/MulMul!tf.math.reduce_mean/Mean:output:0tf_math_multiply_mul_y*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.multiply/Muls
tf.compat.v1.size/SizeSizetf.math.multiply/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size/Size~
tf.math.reduce_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum/ConstХ
tf.math.reduce_sum/SumSumtf.math.multiply/Mul:z:0!tf.math.reduce_sum/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum/Sumx
tf.math.reduce_sum_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_1/RankЖ
 tf.math.reduce_sum_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 tf.math.reduce_sum_1/range/startЖ
 tf.math.reduce_sum_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 tf.math.reduce_sum_1/range/delta’
tf.math.reduce_sum_1/rangeRange)tf.math.reduce_sum_1/range/start:output:0"tf.math.reduce_sum_1/Rank:output:0)tf.math.reduce_sum_1/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_1/rangeҐ
tf.math.reduce_sum_1/SumSumtf.math.reduce_sum/Sum:output:0#tf.math.reduce_sum_1/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_1/Sumy
tf.cast_2/CastCasttf.compat.v1.size/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_2/Cast®
 tf.math.divide_no_nan/div_no_nanDivNoNan!tf.math.reduce_sum_1/Sum:output:0tf.cast_2/Cast:y:0*
T0*
_output_shapes
: 2"
 tf.math.divide_no_nan/div_no_nanд
add_loss/PartitionedCallPartitionedCall$tf.math.divide_no_nan/div_no_nan:z:0*
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
GPU 2J 8В *M
fHRF
D__inference_add_loss_layer_call_and_return_conditional_losses_7219032
add_loss/PartitionedCallј
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identityђ

Identity_1Identity!add_loss/PartitionedCall:output:1 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1:

_output_shapes
: 
њ

б
$__inference_signature_wrapper_722216
input_1
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
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_7212942
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1:

_output_shapes
: 
Ѓ
Ф
C__inference_encoder_layer_call_and_return_conditional_losses_721508

inputs
dense_721486
dense_721488
dense_1_721491
dense_1_721493
dense_2_721496
dense_2_721498
dense_3_721501
dense_3_721503
identity

identity_1ИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallЕ
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_721486dense_721488*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_7213082
dense/StatefulPartitionedCallѓ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_721491dense_1_721493*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_7213352!
dense_1/StatefulPartitionedCall±
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_721496dense_2_721498*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7213622!
dense_2/StatefulPartitionedCall±
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_721501dense_3_721503*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7213892!
dense_3/StatefulPartitionedCallВ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЖ

Identity_1Identity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ѓ
Ф
C__inference_encoder_layer_call_and_return_conditional_losses_721460

inputs
dense_721438
dense_721440
dense_1_721443
dense_1_721445
dense_2_721448
dense_2_721450
dense_3_721453
dense_3_721455
identity

identity_1ИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallЕ
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_721438dense_721440*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_7213082
dense/StatefulPartitionedCallѓ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_721443dense_1_721445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_7213352!
dense_1/StatefulPartitionedCall±
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_721448dense_2_721450*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7213622!
dense_2/StatefulPartitionedCall±
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_721453dense_3_721455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7213892!
dense_3/StatefulPartitionedCallВ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЖ

Identity_1Identity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
г	
№
C__inference_dense_4_layer_call_and_return_conditional_losses_722759

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
TanhН
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’д
К
"__inference__traced_restore_723191
file_prefix
assignvariableop_adam_iter"
assignvariableop_1_adam_beta_1"
assignvariableop_2_adam_beta_2!
assignvariableop_3_adam_decay)
%assignvariableop_4_adam_learning_rate#
assignvariableop_5_dense_kernel!
assignvariableop_6_dense_bias%
!assignvariableop_7_dense_1_kernel#
assignvariableop_8_dense_1_bias%
!assignvariableop_9_dense_2_kernel$
 assignvariableop_10_dense_2_bias&
"assignvariableop_11_dense_3_kernel$
 assignvariableop_12_dense_3_bias&
"assignvariableop_13_dense_4_kernel$
 assignvariableop_14_dense_4_bias&
"assignvariableop_15_dense_5_kernel$
 assignvariableop_16_dense_5_bias&
"assignvariableop_17_dense_6_kernel$
 assignvariableop_18_dense_6_bias&
"assignvariableop_19_dense_7_kernel$
 assignvariableop_20_dense_7_bias
assignvariableop_21_total
assignvariableop_22_count+
'assignvariableop_23_adam_dense_kernel_m)
%assignvariableop_24_adam_dense_bias_m-
)assignvariableop_25_adam_dense_1_kernel_m+
'assignvariableop_26_adam_dense_1_bias_m-
)assignvariableop_27_adam_dense_2_kernel_m+
'assignvariableop_28_adam_dense_2_bias_m-
)assignvariableop_29_adam_dense_3_kernel_m+
'assignvariableop_30_adam_dense_3_bias_m-
)assignvariableop_31_adam_dense_4_kernel_m+
'assignvariableop_32_adam_dense_4_bias_m-
)assignvariableop_33_adam_dense_5_kernel_m+
'assignvariableop_34_adam_dense_5_bias_m-
)assignvariableop_35_adam_dense_6_kernel_m+
'assignvariableop_36_adam_dense_6_bias_m-
)assignvariableop_37_adam_dense_7_kernel_m+
'assignvariableop_38_adam_dense_7_bias_m+
'assignvariableop_39_adam_dense_kernel_v)
%assignvariableop_40_adam_dense_bias_v-
)assignvariableop_41_adam_dense_1_kernel_v+
'assignvariableop_42_adam_dense_1_bias_v-
)assignvariableop_43_adam_dense_2_kernel_v+
'assignvariableop_44_adam_dense_2_bias_v-
)assignvariableop_45_adam_dense_3_kernel_v+
'assignvariableop_46_adam_dense_3_bias_v-
)assignvariableop_47_adam_dense_4_kernel_v+
'assignvariableop_48_adam_dense_4_bias_v-
)assignvariableop_49_adam_dense_5_kernel_v+
'assignvariableop_50_adam_dense_5_bias_v-
)assignvariableop_51_adam_dense_6_kernel_v+
'assignvariableop_52_adam_dense_6_bias_v-
)assignvariableop_53_adam_dense_7_kernel_v+
'assignvariableop_54_adam_dense_7_bias_v
identity_56ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9к
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*ц
valueмBй8B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names€
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*Г
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices∆
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ц
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

IdentityЩ
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1£
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2£
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ґ
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4™
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5§
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ґ
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10®
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11™
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12®
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13™
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_4_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14®
AssignVariableOp_14AssignVariableOp assignvariableop_14_dense_4_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15™
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_5_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16®
AssignVariableOp_16AssignVariableOp assignvariableop_16_dense_5_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17™
AssignVariableOp_17AssignVariableOp"assignvariableop_17_dense_6_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18®
AssignVariableOp_18AssignVariableOp assignvariableop_18_dense_6_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19™
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_7_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20®
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_7_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21°
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ѓ
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24≠
AssignVariableOp_24AssignVariableOp%assignvariableop_24_adam_dense_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25±
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26ѓ
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27±
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28ѓ
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29±
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_3_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30ѓ
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_3_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31±
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_4_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32ѓ
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_4_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33±
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_5_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34ѓ
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_5_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35±
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_6_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36ѓ
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_6_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37±
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_7_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ѓ
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_7_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39ѓ
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40≠
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41±
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42ѓ
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43±
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44ѓ
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45±
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_3_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46ѓ
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_3_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47±
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_4_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48ѓ
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_4_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49±
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_5_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50ѓ
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_5_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51±
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_6_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52ѓ
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_6_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53±
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_7_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54ѓ
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_dense_7_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_549
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpШ

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_55Л

Identity_56IdentityIdentity_55:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_56"#
identity_56Identity_56:output:0*у
_input_shapesб
ё: :::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
Тl
“
?__inference_vae_layer_call_and_return_conditional_losses_722290

inputs0
,encoder_dense_matmul_readvariableop_resource1
-encoder_dense_biasadd_readvariableop_resource2
.encoder_dense_1_matmul_readvariableop_resource3
/encoder_dense_1_biasadd_readvariableop_resource2
.encoder_dense_2_matmul_readvariableop_resource3
/encoder_dense_2_biasadd_readvariableop_resource2
.encoder_dense_3_matmul_readvariableop_resource3
/encoder_dense_3_biasadd_readvariableop_resource2
.decoder_dense_4_matmul_readvariableop_resource3
/decoder_dense_4_biasadd_readvariableop_resource2
.decoder_dense_5_matmul_readvariableop_resource3
/decoder_dense_5_biasadd_readvariableop_resource2
.decoder_dense_6_matmul_readvariableop_resource3
/decoder_dense_6_biasadd_readvariableop_resource2
.decoder_dense_7_matmul_readvariableop_resource3
/decoder_dense_7_biasadd_readvariableop_resource
tf_math_multiply_mul_y
identity

identity_1ИҐ&decoder/dense_4/BiasAdd/ReadVariableOpҐ%decoder/dense_4/MatMul/ReadVariableOpҐ&decoder/dense_5/BiasAdd/ReadVariableOpҐ%decoder/dense_5/MatMul/ReadVariableOpҐ&decoder/dense_6/BiasAdd/ReadVariableOpҐ%decoder/dense_6/MatMul/ReadVariableOpҐ&decoder/dense_7/BiasAdd/ReadVariableOpҐ%decoder/dense_7/MatMul/ReadVariableOpҐ$encoder/dense/BiasAdd/ReadVariableOpҐ#encoder/dense/MatMul/ReadVariableOpҐ&encoder/dense_1/BiasAdd/ReadVariableOpҐ%encoder/dense_1/MatMul/ReadVariableOpҐ&encoder/dense_2/BiasAdd/ReadVariableOpҐ%encoder/dense_2/MatMul/ReadVariableOpҐ&encoder/dense_3/BiasAdd/ReadVariableOpҐ%encoder/dense_3/MatMul/ReadVariableOpЈ
#encoder/dense/MatMul/ReadVariableOpReadVariableOp,encoder_dense_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02%
#encoder/dense/MatMul/ReadVariableOpЭ
encoder/dense/MatMulMatMulinputs+encoder/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense/MatMulґ
$encoder/dense/BiasAdd/ReadVariableOpReadVariableOp-encoder_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02&
$encoder/dense/BiasAdd/ReadVariableOpє
encoder/dense/BiasAddBiasAddencoder/dense/MatMul:product:0,encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense/BiasAddљ
%encoder/dense_1/MatMul/ReadVariableOpReadVariableOp.encoder_dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%encoder/dense_1/MatMul/ReadVariableOpї
encoder/dense_1/MatMulMatMulencoder/dense/BiasAdd:output:0-encoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_1/MatMulЉ
&encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&encoder/dense_1/BiasAdd/ReadVariableOpЅ
encoder/dense_1/BiasAddBiasAdd encoder/dense_1/MatMul:product:0.encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_1/BiasAddИ
encoder/dense_1/TanhTanh encoder/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_1/Tanhљ
%encoder/dense_2/MatMul/ReadVariableOpReadVariableOp.encoder_dense_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%encoder/dense_2/MatMul/ReadVariableOpµ
encoder/dense_2/MatMulMatMulencoder/dense_1/Tanh:y:0-encoder/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_2/MatMulЉ
&encoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&encoder/dense_2/BiasAdd/ReadVariableOpЅ
encoder/dense_2/BiasAddBiasAdd encoder/dense_2/MatMul:product:0.encoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_2/BiasAddИ
encoder/dense_2/TanhTanh encoder/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
encoder/dense_2/Tanhљ
%encoder/dense_3/MatMul/ReadVariableOpReadVariableOp.encoder_dense_3_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02'
%encoder/dense_3/MatMul/ReadVariableOpµ
encoder/dense_3/MatMulMatMulencoder/dense_2/Tanh:y:0-encoder/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder/dense_3/MatMulЉ
&encoder/dense_3/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&encoder/dense_3/BiasAdd/ReadVariableOpЅ
encoder/dense_3/BiasAddBiasAdd encoder/dense_3/MatMul:product:0.encoder/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder/dense_3/BiasAddИ
encoder/dense_3/TanhTanh encoder/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder/dense_3/Tanhљ
%decoder/dense_4/MatMul/ReadVariableOpReadVariableOp.decoder_dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02'
%decoder/dense_4/MatMul/ReadVariableOpµ
decoder/dense_4/MatMulMatMulencoder/dense_3/Tanh:y:0-decoder/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_4/MatMulЉ
&decoder/dense_4/BiasAdd/ReadVariableOpReadVariableOp/decoder_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&decoder/dense_4/BiasAdd/ReadVariableOpЅ
decoder/dense_4/BiasAddBiasAdd decoder/dense_4/MatMul:product:0.decoder/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_4/BiasAddИ
decoder/dense_4/TanhTanh decoder/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_4/Tanhљ
%decoder/dense_5/MatMul/ReadVariableOpReadVariableOp.decoder_dense_5_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%decoder/dense_5/MatMul/ReadVariableOpµ
decoder/dense_5/MatMulMatMuldecoder/dense_4/Tanh:y:0-decoder/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_5/MatMulЉ
&decoder/dense_5/BiasAdd/ReadVariableOpReadVariableOp/decoder_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&decoder/dense_5/BiasAdd/ReadVariableOpЅ
decoder/dense_5/BiasAddBiasAdd decoder/dense_5/MatMul:product:0.decoder/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_5/BiasAddИ
decoder/dense_5/ReluRelu decoder/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_5/Reluљ
%decoder/dense_6/MatMul/ReadVariableOpReadVariableOp.decoder_dense_6_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%decoder/dense_6/MatMul/ReadVariableOpњ
decoder/dense_6/MatMulMatMul"decoder/dense_5/Relu:activations:0-decoder/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_6/MatMulЉ
&decoder/dense_6/BiasAdd/ReadVariableOpReadVariableOp/decoder_dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&decoder/dense_6/BiasAdd/ReadVariableOpЅ
decoder/dense_6/BiasAddBiasAdd decoder/dense_6/MatMul:product:0.decoder/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_6/BiasAddИ
decoder/dense_6/ReluRelu decoder/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_6/Reluљ
%decoder/dense_7/MatMul/ReadVariableOpReadVariableOp.decoder_dense_7_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02'
%decoder/dense_7/MatMul/ReadVariableOpњ
decoder/dense_7/MatMulMatMul"decoder/dense_6/Relu:activations:0-decoder/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_7/MatMulЉ
&decoder/dense_7/BiasAdd/ReadVariableOpReadVariableOp/decoder_dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&decoder/dense_7/BiasAdd/ReadVariableOpЅ
decoder/dense_7/BiasAddBiasAdd decoder/dense_7/MatMul:product:0.decoder/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
decoder/dense_7/BiasAddЌ
,tf.math.squared_difference/SquaredDifferenceSquaredDifference decoder/dense_7/BiasAdd:output:0inputs*
T0*'
_output_shapes
:€€€€€€€€€
2.
,tf.math.squared_difference/SquaredDifference£
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*tf.math.reduce_mean/Mean/reduction_indices—
tf.math.reduce_mean/MeanMean0tf.math.squared_difference/SquaredDifference:z:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.reduce_mean/MeanЬ
tf.math.multiply/MulMul!tf.math.reduce_mean/Mean:output:0tf_math_multiply_mul_y*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.multiply/Muls
tf.compat.v1.size/SizeSizetf.math.multiply/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size/Size~
tf.math.reduce_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum/ConstХ
tf.math.reduce_sum/SumSumtf.math.multiply/Mul:z:0!tf.math.reduce_sum/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum/Sumx
tf.math.reduce_sum_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_1/RankЖ
 tf.math.reduce_sum_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 tf.math.reduce_sum_1/range/startЖ
 tf.math.reduce_sum_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 tf.math.reduce_sum_1/range/delta’
tf.math.reduce_sum_1/rangeRange)tf.math.reduce_sum_1/range/start:output:0"tf.math.reduce_sum_1/Rank:output:0)tf.math.reduce_sum_1/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_1/rangeҐ
tf.math.reduce_sum_1/SumSumtf.math.reduce_sum/Sum:output:0#tf.math.reduce_sum_1/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_1/Sumy
tf.cast_2/CastCasttf.compat.v1.size/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_2/Cast®
 tf.math.divide_no_nan/div_no_nanDivNoNan!tf.math.reduce_sum_1/Sum:output:0tf.cast_2/Cast:y:0*
T0*
_output_shapes
: 2"
 tf.math.divide_no_nan/div_no_nanш
IdentityIdentity decoder/dense_7/BiasAdd:output:0'^decoder/dense_4/BiasAdd/ReadVariableOp&^decoder/dense_4/MatMul/ReadVariableOp'^decoder/dense_5/BiasAdd/ReadVariableOp&^decoder/dense_5/MatMul/ReadVariableOp'^decoder/dense_6/BiasAdd/ReadVariableOp&^decoder/dense_6/MatMul/ReadVariableOp'^decoder/dense_7/BiasAdd/ReadVariableOp&^decoder/dense_7/MatMul/ReadVariableOp%^encoder/dense/BiasAdd/ReadVariableOp$^encoder/dense/MatMul/ReadVariableOp'^encoder/dense_1/BiasAdd/ReadVariableOp&^encoder/dense_1/MatMul/ReadVariableOp'^encoder/dense_2/BiasAdd/ReadVariableOp&^encoder/dense_2/MatMul/ReadVariableOp'^encoder/dense_3/BiasAdd/ReadVariableOp&^encoder/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identityп

Identity_1Identity$tf.math.divide_no_nan/div_no_nan:z:0'^decoder/dense_4/BiasAdd/ReadVariableOp&^decoder/dense_4/MatMul/ReadVariableOp'^decoder/dense_5/BiasAdd/ReadVariableOp&^decoder/dense_5/MatMul/ReadVariableOp'^decoder/dense_6/BiasAdd/ReadVariableOp&^decoder/dense_6/MatMul/ReadVariableOp'^decoder/dense_7/BiasAdd/ReadVariableOp&^decoder/dense_7/MatMul/ReadVariableOp%^encoder/dense/BiasAdd/ReadVariableOp$^encoder/dense/MatMul/ReadVariableOp'^encoder/dense_1/BiasAdd/ReadVariableOp&^encoder/dense_1/MatMul/ReadVariableOp'^encoder/dense_2/BiasAdd/ReadVariableOp&^encoder/dense_2/MatMul/ReadVariableOp'^encoder/dense_3/BiasAdd/ReadVariableOp&^encoder/dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 2P
&decoder/dense_4/BiasAdd/ReadVariableOp&decoder/dense_4/BiasAdd/ReadVariableOp2N
%decoder/dense_4/MatMul/ReadVariableOp%decoder/dense_4/MatMul/ReadVariableOp2P
&decoder/dense_5/BiasAdd/ReadVariableOp&decoder/dense_5/BiasAdd/ReadVariableOp2N
%decoder/dense_5/MatMul/ReadVariableOp%decoder/dense_5/MatMul/ReadVariableOp2P
&decoder/dense_6/BiasAdd/ReadVariableOp&decoder/dense_6/BiasAdd/ReadVariableOp2N
%decoder/dense_6/MatMul/ReadVariableOp%decoder/dense_6/MatMul/ReadVariableOp2P
&decoder/dense_7/BiasAdd/ReadVariableOp&decoder/dense_7/BiasAdd/ReadVariableOp2N
%decoder/dense_7/MatMul/ReadVariableOp%decoder/dense_7/MatMul/ReadVariableOp2L
$encoder/dense/BiasAdd/ReadVariableOp$encoder/dense/BiasAdd/ReadVariableOp2J
#encoder/dense/MatMul/ReadVariableOp#encoder/dense/MatMul/ReadVariableOp2P
&encoder/dense_1/BiasAdd/ReadVariableOp&encoder/dense_1/BiasAdd/ReadVariableOp2N
%encoder/dense_1/MatMul/ReadVariableOp%encoder/dense_1/MatMul/ReadVariableOp2P
&encoder/dense_2/BiasAdd/ReadVariableOp&encoder/dense_2/BiasAdd/ReadVariableOp2N
%encoder/dense_2/MatMul/ReadVariableOp%encoder/dense_2/MatMul/ReadVariableOp2P
&encoder/dense_3/BiasAdd/ReadVariableOp&encoder/dense_3/BiasAdd/ReadVariableOp2N
%encoder/dense_3/MatMul/ReadVariableOp%encoder/dense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:

_output_shapes
: 
С	
№
C__inference_dense_7_layer_call_and_return_conditional_losses_722818

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Џ
}
(__inference_dense_6_layer_call_fn_722808

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_7215982
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ъ	
и
(__inference_encoder_layer_call_fn_721529
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1ИҐStatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_7215082
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
П	
Џ
A__inference_dense_layer_call_and_return_conditional_losses_722679

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Џ
}
(__inference_dense_7_layer_call_fn_722827

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_7216242
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
р&
П
?__inference_vae_layer_call_and_return_conditional_losses_721915
input_1
encoder_721806
encoder_721808
encoder_721810
encoder_721812
encoder_721814
encoder_721816
encoder_721818
encoder_721820
decoder_721866
decoder_721868
decoder_721870
decoder_721872
decoder_721874
decoder_721876
decoder_721878
decoder_721880
tf_math_multiply_mul_y
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallР
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_721806encoder_721808encoder_721810encoder_721812encoder_721814encoder_721816encoder_721818encoder_721820*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_7214602!
encoder/StatefulPartitionedCallЭ
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_721866decoder_721868decoder_721870decoder_721872decoder_721874decoder_721876decoder_721878decoder_721880*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_7216922!
decoder/StatefulPartitionedCall÷
,tf.math.squared_difference/SquaredDifferenceSquaredDifference(decoder/StatefulPartitionedCall:output:0input_1*
T0*'
_output_shapes
:€€€€€€€€€
2.
,tf.math.squared_difference/SquaredDifference£
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*tf.math.reduce_mean/Mean/reduction_indices—
tf.math.reduce_mean/MeanMean0tf.math.squared_difference/SquaredDifference:z:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.reduce_mean/MeanЬ
tf.math.multiply/MulMul!tf.math.reduce_mean/Mean:output:0tf_math_multiply_mul_y*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.multiply/Muls
tf.compat.v1.size/SizeSizetf.math.multiply/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size/Size~
tf.math.reduce_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum/ConstХ
tf.math.reduce_sum/SumSumtf.math.multiply/Mul:z:0!tf.math.reduce_sum/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum/Sumx
tf.math.reduce_sum_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_1/RankЖ
 tf.math.reduce_sum_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 tf.math.reduce_sum_1/range/startЖ
 tf.math.reduce_sum_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 tf.math.reduce_sum_1/range/delta’
tf.math.reduce_sum_1/rangeRange)tf.math.reduce_sum_1/range/start:output:0"tf.math.reduce_sum_1/Rank:output:0)tf.math.reduce_sum_1/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_1/rangeҐ
tf.math.reduce_sum_1/SumSumtf.math.reduce_sum/Sum:output:0#tf.math.reduce_sum_1/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_1/Sumy
tf.cast_2/CastCasttf.compat.v1.size/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_2/Cast®
 tf.math.divide_no_nan/div_no_nanDivNoNan!tf.math.reduce_sum_1/Sum:output:0tf.cast_2/Cast:y:0*
T0*
_output_shapes
: 2"
 tf.math.divide_no_nan/div_no_nanд
add_loss/PartitionedCallPartitionedCall$tf.math.divide_no_nan/div_no_nan:z:0*
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
GPU 2J 8В *M
fHRF
D__inference_add_loss_layer_call_and_return_conditional_losses_7219032
add_loss/PartitionedCallј
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identityђ

Identity_1Identity!add_loss/PartitionedCall:output:1 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1:

_output_shapes
: 
ж'
“
C__inference_encoder_layer_call_and_return_conditional_losses_722476

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity

identity_1ИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense/MatMul/ReadVariableOpЕ
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense/BiasAdd•
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_1/MatMul/ReadVariableOpЫ
dense_1/MatMulMatMuldense/BiasAdd:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_1/BiasAddp
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_1/Tanh•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMuldense_1/Tanh:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/BiasAddp
dense_2/TanhTanhdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/Tanh•
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_3/MatMul/ReadVariableOpХ
dense_3/MatMulMatMuldense_2/Tanh:y:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddp
dense_3/TanhTanhdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/Tanhд
IdentityIdentitydense_3/Tanh:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityи

Identity_1Identitydense_3/Tanh:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
г	
№
C__inference_dense_2_layer_call_and_return_conditional_losses_721362

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
TanhН
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
•
p
D__inference_add_loss_layer_call_and_return_conditional_losses_721903

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
м&
О
?__inference_vae_layer_call_and_return_conditional_losses_722129

inputs
encoder_722075
encoder_722077
encoder_722079
encoder_722081
encoder_722083
encoder_722085
encoder_722087
encoder_722089
decoder_722093
decoder_722095
decoder_722097
decoder_722099
decoder_722101
decoder_722103
decoder_722105
decoder_722107
tf_math_multiply_mul_y
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallП
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_722075encoder_722077encoder_722079encoder_722081encoder_722083encoder_722085encoder_722087encoder_722089*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_7215082!
encoder/StatefulPartitionedCallЭ
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_722093decoder_722095decoder_722097decoder_722099decoder_722101decoder_722103decoder_722105decoder_722107*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_7217372!
decoder/StatefulPartitionedCall’
,tf.math.squared_difference/SquaredDifferenceSquaredDifference(decoder/StatefulPartitionedCall:output:0inputs*
T0*'
_output_shapes
:€€€€€€€€€
2.
,tf.math.squared_difference/SquaredDifference£
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*tf.math.reduce_mean/Mean/reduction_indices—
tf.math.reduce_mean/MeanMean0tf.math.squared_difference/SquaredDifference:z:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.reduce_mean/MeanЬ
tf.math.multiply/MulMul!tf.math.reduce_mean/Mean:output:0tf_math_multiply_mul_y*
T0*#
_output_shapes
:€€€€€€€€€2
tf.math.multiply/Muls
tf.compat.v1.size/SizeSizetf.math.multiply/Mul:z:0*
T0*
_output_shapes
: 2
tf.compat.v1.size/Size~
tf.math.reduce_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
tf.math.reduce_sum/ConstХ
tf.math.reduce_sum/SumSumtf.math.multiply/Mul:z:0!tf.math.reduce_sum/Const:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum/Sumx
tf.math.reduce_sum_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.math.reduce_sum_1/RankЖ
 tf.math.reduce_sum_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 tf.math.reduce_sum_1/range/startЖ
 tf.math.reduce_sum_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 tf.math.reduce_sum_1/range/delta’
tf.math.reduce_sum_1/rangeRange)tf.math.reduce_sum_1/range/start:output:0"tf.math.reduce_sum_1/Rank:output:0)tf.math.reduce_sum_1/range/delta:output:0*
_output_shapes
: 2
tf.math.reduce_sum_1/rangeҐ
tf.math.reduce_sum_1/SumSumtf.math.reduce_sum/Sum:output:0#tf.math.reduce_sum_1/range:output:0*
T0*
_output_shapes
: 2
tf.math.reduce_sum_1/Sumy
tf.cast_2/CastCasttf.compat.v1.size/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
tf.cast_2/Cast®
 tf.math.divide_no_nan/div_no_nanDivNoNan!tf.math.reduce_sum_1/Sum:output:0tf.cast_2/Cast:y:0*
T0*
_output_shapes
: 2"
 tf.math.divide_no_nan/div_no_nanд
add_loss/PartitionedCallPartitionedCall$tf.math.divide_no_nan/div_no_nan:z:0*
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
GPU 2J 8В *M
fHRF
D__inference_add_loss_layer_call_and_return_conditional_losses_7219032
add_loss/PartitionedCallј
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identityђ

Identity_1Identity!add_loss/PartitionedCall:output:1 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:

_output_shapes
: 
М%
 
C__inference_decoder_layer_call_and_return_conditional_losses_722585

inputs*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identityИҐdense_4/BiasAdd/ReadVariableOpҐdense_4/MatMul/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOp•
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_4/MatMul/ReadVariableOpЛ
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_4/MatMul§
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_4/BiasAdd/ReadVariableOp°
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_4/BiasAddp
dense_4/TanhTanhdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_4/Tanh•
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_5/MatMul/ReadVariableOpХ
dense_5/MatMulMatMuldense_4/Tanh:y:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/MatMul§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_5/BiasAdd/ReadVariableOp°
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/BiasAddp
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/Relu•
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_6/MatMul/ReadVariableOpЯ
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_6/MatMul§
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_6/BiasAdd/ReadVariableOp°
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_6/Relu•
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_7/MatMul/ReadVariableOpЯ
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_7/MatMul§
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_7/BiasAdd/ReadVariableOp°
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_7/BiasAddр
IdentityIdentitydense_7/BiasAdd:output:0^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
н	
№
C__inference_dense_6_layer_call_and_return_conditional_losses_722799

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
н	
№
C__inference_dense_5_layer_call_and_return_conditional_losses_722779

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ё

а
$__inference_vae_layer_call_fn_722444

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
identityИҐStatefulPartitionedCallЇ
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
:€€€€€€€€€
: *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vae_layer_call_and_return_conditional_losses_7221292
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:€€€€€€€€€
::::::::::::::::: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:

_output_shapes
: 
Џ
}
(__inference_dense_2_layer_call_fn_722728

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7213622
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ж'
“
C__inference_encoder_layer_call_and_return_conditional_losses_722508

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity

identity_1ИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense/MatMul/ReadVariableOpЕ
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense/BiasAdd•
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_1/MatMul/ReadVariableOpЫ
dense_1/MatMulMatMuldense/BiasAdd:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_1/BiasAddp
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_1/Tanh•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMuldense_1/Tanh:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/BiasAddp
dense_2/TanhTanhdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/Tanh•
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_3/MatMul/ReadVariableOpХ
dense_3/MatMulMatMuldense_2/Tanh:y:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddp
dense_3/TanhTanhdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/Tanhд
IdentityIdentitydense_3/Tanh:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityи

Identity_1Identitydense_3/Tanh:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€
::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
К
К
C__inference_decoder_layer_call_and_return_conditional_losses_721692

inputs
dense_4_721671
dense_4_721673
dense_5_721676
dense_5_721678
dense_6_721681
dense_6_721683
dense_7_721686
dense_7_721688
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallП
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_721671dense_4_721673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_7215442!
dense_4/StatefulPartitionedCall±
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_721676dense_5_721678*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_7215712!
dense_5/StatefulPartitionedCall±
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_721681dense_6_721683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_7215982!
dense_6/StatefulPartitionedCall±
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_721686dense_7_721688*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_7216242!
dense_7/StatefulPartitionedCallД
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
г	
№
C__inference_dense_2_layer_call_and_return_conditional_losses_722719

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
TanhН
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
н	
№
C__inference_dense_6_layer_call_and_return_conditional_losses_721598

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
•
p
D__inference_add_loss_layer_call_and_return_conditional_losses_722663

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
Ќk
О
__inference__traced_save_723016
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const_1

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
ShardedFilenameд
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*ц
valueмBй8B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesщ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*Г
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЈ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	2
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*І
_input_shapesХ
Т: : : : : : :

:
:

:
:

:
:
::
:
:

:
:

:
:

:
: : :

:
:

:
:

:
:
::
:
:

:
:

:
:

:
:

:
:

:
:

:
:
::
:
:

:
:

:
:

:
: 2(
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

:

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
: 

_output_shapes
::$ 

_output_shapes

:
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

: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:

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
: 

_output_shapes
::$  

_output_shapes

:
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

: '

_output_shapes
:
:$( 

_output_shapes

:

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
: /

_output_shapes
::$0 

_output_shapes

:
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

: 7

_output_shapes
:
:8

_output_shapes
: 
П	
Џ
A__inference_dense_layer_call_and_return_conditional_losses_721308

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
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
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Џ
}
(__inference_dense_3_layer_call_fn_722748

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7213892
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ы
„
(__inference_decoder_layer_call_fn_722658

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_7217372
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*™
serving_defaultЦ
;
input_10
serving_default_input_1:0€€€€€€€€€
;
decoder0
StatefulPartitionedCall:0€€€€€€€€€
tensorflow/serving/predict:ПЭ
СТ
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
+”&call_and_return_all_conditional_losses
‘_default_save_signature
’__call__"ТО
_tf_keras_networkхН{"class_name": "Functional", "name": "vae", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "vae", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 3, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_3", 0, 0], ["dense_3", 0, 0]]}, "name": "encoder", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}, "name": "z_sampling", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["z_sampling", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["dense_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["dense_6", 0, 0, {}]]]}], "input_layers": [["z_sampling", 0, 0]], "output_layers": [["dense_7", 0, 0]]}, "name": "decoder", "inbound_nodes": [[["encoder", 1, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor", "inbound_nodes": [["decoder", 1, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_1", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_1", "inbound_nodes": [["input_1", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_2", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_2", "inbound_nodes": [["tf.convert_to_tensor", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast", "inbound_nodes": [["tf.convert_to_tensor_1", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference", "inbound_nodes": [["tf.convert_to_tensor_2", 0, 0, {"y": ["tf.cast", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean", "inbound_nodes": [["tf.math.squared_difference", 0, 0, {"axis": -1, "keepdims": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_1", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_1", "inbound_nodes": [["tf.math.reduce_mean", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply", "inbound_nodes": [["tf.cast_1", 0, 0, {"y": 1.0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum", "inbound_nodes": [["tf.math.multiply", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.size", "trainable": true, "dtype": "float32", "function": "compat.v1.size"}, "name": "tf.compat.v1.size", "inbound_nodes": [["tf.math.multiply", 0, 0, {"name": "mean_squared_error/weighted_loss/num_elements/"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum_1", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum_1", "inbound_nodes": [["tf.math.reduce_sum", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_2", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_2", "inbound_nodes": [["tf.compat.v1.size", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.divide_no_nan", "trainable": true, "dtype": "float32", "function": "math.divide_no_nan"}, "name": "tf.math.divide_no_nan", "inbound_nodes": [["tf.math.reduce_sum_1", 0, 0, {"y": ["tf.cast_2", 0, 0], "name": "value"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_3", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_3", "inbound_nodes": [["tf.math.divide_no_nan", 0, 0, {"dtype": "float32"}]]}, {"class_name": "AddLoss", "config": {"name": "add_loss", "trainable": true, "dtype": "float32", "unconditional": false}, "name": "add_loss", "inbound_nodes": [[["tf.cast_3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["decoder", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "vae", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 3, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_3", 0, 0], ["dense_3", 0, 0]]}, "name": "encoder", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}, "name": "z_sampling", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["z_sampling", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["dense_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["dense_6", 0, 0, {}]]]}], "input_layers": [["z_sampling", 0, 0]], "output_layers": [["dense_7", 0, 0]]}, "name": "decoder", "inbound_nodes": [[["encoder", 1, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor", "inbound_nodes": [["decoder", 1, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_1", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_1", "inbound_nodes": [["input_1", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_2", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_2", "inbound_nodes": [["tf.convert_to_tensor", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast", "inbound_nodes": [["tf.convert_to_tensor_1", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference", "inbound_nodes": [["tf.convert_to_tensor_2", 0, 0, {"y": ["tf.cast", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean", "inbound_nodes": [["tf.math.squared_difference", 0, 0, {"axis": -1, "keepdims": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_1", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_1", "inbound_nodes": [["tf.math.reduce_mean", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply", "inbound_nodes": [["tf.cast_1", 0, 0, {"y": 1.0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum", "inbound_nodes": [["tf.math.multiply", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.size", "trainable": true, "dtype": "float32", "function": "compat.v1.size"}, "name": "tf.compat.v1.size", "inbound_nodes": [["tf.math.multiply", 0, 0, {"name": "mean_squared_error/weighted_loss/num_elements/"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum_1", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum_1", "inbound_nodes": [["tf.math.reduce_sum", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_2", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_2", "inbound_nodes": [["tf.compat.v1.size", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.divide_no_nan", "trainable": true, "dtype": "float32", "function": "math.divide_no_nan"}, "name": "tf.math.divide_no_nan", "inbound_nodes": [["tf.math.reduce_sum_1", 0, 0, {"y": ["tf.cast_2", 0, 0], "name": "value"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_3", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_3", "inbound_nodes": [["tf.math.divide_no_nan", 0, 0, {"dtype": "float32"}]]}, {"class_name": "AddLoss", "config": {"name": "add_loss", "trainable": true, "dtype": "float32", "unconditional": false}, "name": "add_loss", "inbound_nodes": [[["tf.cast_3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["decoder", 1, 0]]}}, "training_config": {"loss": null, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.949999988079071, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
л"и
_tf_keras_input_layer»{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
О+
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
+÷&call_and_return_all_conditional_losses
„__call__"‘(
_tf_keras_networkЄ({"class_name": "Functional", "name": "encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 3, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_3", 0, 0], ["dense_3", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 3, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_3", 0, 0], ["dense_3", 0, 0]]}}}
К+
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
+Ў&call_and_return_all_conditional_losses
ў__call__"–(
_tf_keras_networkі({"class_name": "Functional", "name": "decoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}, "name": "z_sampling", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["z_sampling", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["dense_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["dense_6", 0, 0, {}]]]}], "input_layers": [["z_sampling", 0, 0]], "output_layers": [["dense_7", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 3]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}, "name": "z_sampling", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["z_sampling", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["dense_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["dense_6", 0, 0, {}]]]}], "input_layers": [["z_sampling", 0, 0]], "output_layers": [["dense_7", 0, 0]]}}}
т
+	keras_api"а
_tf_keras_layer∆{"class_name": "TFOpLambda", "name": "tf.convert_to_tensor", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.convert_to_tensor", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}}
ц
,	keras_api"д
_tf_keras_layer {"class_name": "TFOpLambda", "name": "tf.convert_to_tensor_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.convert_to_tensor_1", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}}
ц
-	keras_api"д
_tf_keras_layer {"class_name": "TFOpLambda", "name": "tf.convert_to_tensor_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.convert_to_tensor_2", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}}
Ћ
.	keras_api"є
_tf_keras_layerЯ{"class_name": "TFOpLambda", "name": "tf.cast", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast", "trainable": true, "dtype": "float32", "function": "cast"}}
Д
/	keras_api"т
_tf_keras_layerЎ{"class_name": "TFOpLambda", "name": "tf.math.squared_difference", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.squared_difference", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}}
п
0	keras_api"Ё
_tf_keras_layer√{"class_name": "TFOpLambda", "name": "tf.math.reduce_mean", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_mean", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}}
ѕ
1	keras_api"љ
_tf_keras_layer£{"class_name": "TFOpLambda", "name": "tf.cast_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast_1", "trainable": true, "dtype": "float32", "function": "cast"}}
ж
2	keras_api"‘
_tf_keras_layerЇ{"class_name": "TFOpLambda", "name": "tf.math.multiply", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
м
3	keras_api"Џ
_tf_keras_layerј{"class_name": "TFOpLambda", "name": "tf.math.reduce_sum", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_sum", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}}
й
4	keras_api"„
_tf_keras_layerљ{"class_name": "TFOpLambda", "name": "tf.compat.v1.size", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.size", "trainable": true, "dtype": "float32", "function": "compat.v1.size"}}
р
5	keras_api"ё
_tf_keras_layerƒ{"class_name": "TFOpLambda", "name": "tf.math.reduce_sum_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_sum_1", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}}
ѕ
6	keras_api"љ
_tf_keras_layer£{"class_name": "TFOpLambda", "name": "tf.cast_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast_2", "trainable": true, "dtype": "float32", "function": "cast"}}
х
7	keras_api"г
_tf_keras_layer…{"class_name": "TFOpLambda", "name": "tf.math.divide_no_nan", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.divide_no_nan", "trainable": true, "dtype": "float32", "function": "math.divide_no_nan"}}
ѕ
8	keras_api"љ
_tf_keras_layer£{"class_name": "TFOpLambda", "name": "tf.cast_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast_3", "trainable": true, "dtype": "float32", "function": "cast"}}
ќ
9regularization_losses
:trainable_variables
;	variables
<	keras_api
+Џ&call_and_return_all_conditional_losses
џ__call__"љ
_tf_keras_layer£{"class_name": "AddLoss", "name": "add_loss", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add_loss", "trainable": true, "dtype": "float32", "unconditional": false}}
У
=iter

>beta_1

?beta_2
	@decay
Alearning_rateBm≥CmіDmµEmґFmЈGmЄHmєImЇJmїKmЉLmљMmЊNmњOmјPmЅQm¬Bv√CvƒDv≈Ev∆Fv«Gv»Hv…Iv JvЋKvћLvЌMvќNvѕOv–Pv—Qv“"
	optimizer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Ц
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
Ц
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
ќ
Rlayer_metrics

Slayers
regularization_losses
Tnon_trainable_variables
Ulayer_regularization_losses
trainable_variables
Vmetrics
	variables
’__call__
‘_default_save_signature
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
-
№serving_default"
signature_map
р

Bkernel
Cbias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
+Ё&call_and_return_all_conditional_losses
ё__call__"…
_tf_keras_layerѓ{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
т

Dkernel
Ebias
[regularization_losses
\trainable_variables
]	variables
^	keras_api
+я&call_and_return_all_conditional_losses
а__call__"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
т

Fkernel
Gbias
_regularization_losses
`trainable_variables
a	variables
b	keras_api
+б&call_and_return_all_conditional_losses
в__call__"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
с

Hkernel
Ibias
cregularization_losses
dtrainable_variables
e	variables
f	keras_api
+г&call_and_return_all_conditional_losses
д__call__" 
_tf_keras_layer∞{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 3, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
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
∞
glayer_metrics

hlayers
regularization_losses
inon_trainable_variables
jlayer_regularization_losses
trainable_variables
kmetrics
 	variables
„__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
п"м
_tf_keras_input_layerћ{"class_name": "InputLayer", "name": "z_sampling", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "z_sampling"}}
р

Jkernel
Kbias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"…
_tf_keras_layerѓ{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}}
т

Lkernel
Mbias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
+з&call_and_return_all_conditional_losses
и__call__"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
т

Nkernel
Obias
tregularization_losses
utrainable_variables
v	variables
w	keras_api
+й&call_and_return_all_conditional_losses
к__call__"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
ф

Pkernel
Qbias
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
+л&call_and_return_all_conditional_losses
м__call__"Ќ
_tf_keras_layer≥{"class_name": "Dense", "name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
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
±
|layer_metrics

}layers
'regularization_losses
~non_trainable_variables
layer_regularization_losses
(trainable_variables
Аmetrics
)	variables
ў__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
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
µ
Бlayer_metrics
Вlayers
Гnon_trainable_variables
9regularization_losses
 Дlayer_regularization_losses
:trainable_variables
Еmetrics
;	variables
џ__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
:

2dense/kernel
:
2
dense/bias
 :

2dense_1/kernel
:
2dense_1/bias
 :

2dense_2/kernel
:
2dense_2/bias
 :
2dense_3/kernel
:2dense_3/bias
 :
2dense_4/kernel
:
2dense_4/bias
 :

2dense_5/kernel
:
2dense_5/bias
 :

2dense_6/kernel
:
2dense_6/bias
 :

2dense_7/kernel
:
2dense_7/bias
 "
trackable_dict_wrapper
¶
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
(
Ж0"
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
µ
Зlayer_metrics
Иlayers
Йnon_trainable_variables
Wregularization_losses
 Кlayer_regularization_losses
Xtrainable_variables
Лmetrics
Y	variables
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
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
µ
Мlayer_metrics
Нlayers
Оnon_trainable_variables
[regularization_losses
 Пlayer_regularization_losses
\trainable_variables
Рmetrics
]	variables
а__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
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
µ
Сlayer_metrics
Тlayers
Уnon_trainable_variables
_regularization_losses
 Фlayer_regularization_losses
`trainable_variables
Хmetrics
a	variables
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
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
µ
Цlayer_metrics
Чlayers
Шnon_trainable_variables
cregularization_losses
 Щlayer_regularization_losses
dtrainable_variables
Ъmetrics
e	variables
д__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
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
µ
Ыlayer_metrics
Ьlayers
Эnon_trainable_variables
lregularization_losses
 Юlayer_regularization_losses
mtrainable_variables
Яmetrics
n	variables
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
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
µ
†layer_metrics
°layers
Ґnon_trainable_variables
pregularization_losses
 £layer_regularization_losses
qtrainable_variables
§metrics
r	variables
и__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
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
µ
•layer_metrics
¶layers
Іnon_trainable_variables
tregularization_losses
 ®layer_regularization_losses
utrainable_variables
©metrics
v	variables
к__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
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
µ
™layer_metrics
Ђlayers
ђnon_trainable_variables
xregularization_losses
 ≠layer_regularization_losses
ytrainable_variables
Ѓmetrics
z	variables
м__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
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
њ

ѓtotal

∞count
±	variables
≤	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
ѓ0
∞1"
trackable_list_wrapper
.
±	variables"
_generic_user_object
#:!

2Adam/dense/kernel/m
:
2Adam/dense/bias/m
%:#

2Adam/dense_1/kernel/m
:
2Adam/dense_1/bias/m
%:#

2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
%:#
2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
%:#
2Adam/dense_4/kernel/m
:
2Adam/dense_4/bias/m
%:#

2Adam/dense_5/kernel/m
:
2Adam/dense_5/bias/m
%:#

2Adam/dense_6/kernel/m
:
2Adam/dense_6/bias/m
%:#

2Adam/dense_7/kernel/m
:
2Adam/dense_7/bias/m
#:!

2Adam/dense/kernel/v
:
2Adam/dense/bias/v
%:#

2Adam/dense_1/kernel/v
:
2Adam/dense_1/bias/v
%:#

2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
%:#
2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
%:#
2Adam/dense_4/kernel/v
:
2Adam/dense_4/bias/v
%:#

2Adam/dense_5/kernel/v
:
2Adam/dense_5/bias/v
%:#

2Adam/dense_6/kernel/v
:
2Adam/dense_6/bias/v
%:#

2Adam/dense_7/kernel/v
:
2Adam/dense_7/bias/v
 2«
?__inference_vae_layer_call_and_return_conditional_losses_722364
?__inference_vae_layer_call_and_return_conditional_losses_722290
?__inference_vae_layer_call_and_return_conditional_losses_721915
?__inference_vae_layer_call_and_return_conditional_losses_721972ј
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
я2№
!__inference__wrapped_model_721294ґ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *&Ґ#
!К
input_1€€€€€€€€€

ё2џ
$__inference_vae_layer_call_fn_722167
$__inference_vae_layer_call_fn_722070
$__inference_vae_layer_call_fn_722404
$__inference_vae_layer_call_fn_722444ј
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
Џ2„
C__inference_encoder_layer_call_and_return_conditional_losses_721407
C__inference_encoder_layer_call_and_return_conditional_losses_722508
C__inference_encoder_layer_call_and_return_conditional_losses_722476
C__inference_encoder_layer_call_and_return_conditional_losses_721432ј
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
о2л
(__inference_encoder_layer_call_fn_721481
(__inference_encoder_layer_call_fn_722531
(__inference_encoder_layer_call_fn_722554
(__inference_encoder_layer_call_fn_721529ј
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
Џ2„
C__inference_decoder_layer_call_and_return_conditional_losses_722616
C__inference_decoder_layer_call_and_return_conditional_losses_721641
C__inference_decoder_layer_call_and_return_conditional_losses_721665
C__inference_decoder_layer_call_and_return_conditional_losses_722585ј
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
о2л
(__inference_decoder_layer_call_fn_722637
(__inference_decoder_layer_call_fn_722658
(__inference_decoder_layer_call_fn_721756
(__inference_decoder_layer_call_fn_721711ј
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
о2л
D__inference_add_loss_layer_call_and_return_conditional_losses_722663Ґ
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
”2–
)__inference_add_loss_layer_call_fn_722669Ґ
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
ЋB»
$__inference_signature_wrapper_722216input_1"Ф
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
л2и
A__inference_dense_layer_call_and_return_conditional_losses_722679Ґ
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
–2Ќ
&__inference_dense_layer_call_fn_722688Ґ
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
н2к
C__inference_dense_1_layer_call_and_return_conditional_losses_722699Ґ
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
“2ѕ
(__inference_dense_1_layer_call_fn_722708Ґ
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
н2к
C__inference_dense_2_layer_call_and_return_conditional_losses_722719Ґ
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
“2ѕ
(__inference_dense_2_layer_call_fn_722728Ґ
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
н2к
C__inference_dense_3_layer_call_and_return_conditional_losses_722739Ґ
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
“2ѕ
(__inference_dense_3_layer_call_fn_722748Ґ
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
н2к
C__inference_dense_4_layer_call_and_return_conditional_losses_722759Ґ
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
“2ѕ
(__inference_dense_4_layer_call_fn_722768Ґ
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
н2к
C__inference_dense_5_layer_call_and_return_conditional_losses_722779Ґ
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
“2ѕ
(__inference_dense_5_layer_call_fn_722788Ґ
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
н2к
C__inference_dense_6_layer_call_and_return_conditional_losses_722799Ґ
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
“2ѕ
(__inference_dense_6_layer_call_fn_722808Ґ
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
н2к
C__inference_dense_7_layer_call_and_return_conditional_losses_722818Ґ
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
“2ѕ
(__inference_dense_7_layer_call_fn_722827Ґ
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
	J
ConstЮ
!__inference__wrapped_model_721294yBCDEFGHIJKLMNOPQн0Ґ-
&Ґ#
!К
input_1€€€€€€€€€

™ "1™.
,
decoder!К
decoder€€€€€€€€€
М
D__inference_add_loss_layer_call_and_return_conditional_losses_722663DҐ
Ґ
К
inputs 
™ ""Ґ

К
0 
Ъ
К	
1/0 V
)__inference_add_loss_layer_call_fn_722669)Ґ
Ґ
К
inputs 
™ "К µ
C__inference_decoder_layer_call_and_return_conditional_losses_721641nJKLMNOPQ;Ґ8
1Ґ.
$К!

z_sampling€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ µ
C__inference_decoder_layer_call_and_return_conditional_losses_721665nJKLMNOPQ;Ґ8
1Ґ.
$К!

z_sampling€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ ±
C__inference_decoder_layer_call_and_return_conditional_losses_722585jJKLMNOPQ7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ ±
C__inference_decoder_layer_call_and_return_conditional_losses_722616jJKLMNOPQ7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Н
(__inference_decoder_layer_call_fn_721711aJKLMNOPQ;Ґ8
1Ґ.
$К!

z_sampling€€€€€€€€€
p

 
™ "К€€€€€€€€€
Н
(__inference_decoder_layer_call_fn_721756aJKLMNOPQ;Ґ8
1Ґ.
$К!

z_sampling€€€€€€€€€
p 

 
™ "К€€€€€€€€€
Й
(__inference_decoder_layer_call_fn_722637]JKLMNOPQ7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€
Й
(__inference_decoder_layer_call_fn_722658]JKLMNOPQ7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€
£
C__inference_dense_1_layer_call_and_return_conditional_losses_722699\DE/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€

Ъ {
(__inference_dense_1_layer_call_fn_722708ODE/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€
£
C__inference_dense_2_layer_call_and_return_conditional_losses_722719\FG/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€

Ъ {
(__inference_dense_2_layer_call_fn_722728OFG/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€
£
C__inference_dense_3_layer_call_and_return_conditional_losses_722739\HI/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_3_layer_call_fn_722748OHI/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€£
C__inference_dense_4_layer_call_and_return_conditional_losses_722759\JK/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€

Ъ {
(__inference_dense_4_layer_call_fn_722768OJK/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€
£
C__inference_dense_5_layer_call_and_return_conditional_losses_722779\LM/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€

Ъ {
(__inference_dense_5_layer_call_fn_722788OLM/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€
£
C__inference_dense_6_layer_call_and_return_conditional_losses_722799\NO/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€

Ъ {
(__inference_dense_6_layer_call_fn_722808ONO/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€
£
C__inference_dense_7_layer_call_and_return_conditional_losses_722818\PQ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€

Ъ {
(__inference_dense_7_layer_call_fn_722827OPQ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€
°
A__inference_dense_layer_call_and_return_conditional_losses_722679\BC/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€

Ъ y
&__inference_dense_layer_call_fn_722688OBC/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€
ў
C__inference_encoder_layer_call_and_return_conditional_losses_721407СBCDEFGHI8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p

 
™ "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ ў
C__inference_encoder_layer_call_and_return_conditional_losses_721432СBCDEFGHI8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p 

 
™ "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ Ў
C__inference_encoder_layer_call_and_return_conditional_losses_722476РBCDEFGHI7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

p

 
™ "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ Ў
C__inference_encoder_layer_call_and_return_conditional_losses_722508РBCDEFGHI7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

p 

 
™ "KҐH
AЪ>
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
Ъ ∞
(__inference_encoder_layer_call_fn_721481ГBCDEFGHI8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p

 
™ "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€∞
(__inference_encoder_layer_call_fn_721529ГBCDEFGHI8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p 

 
™ "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€ѓ
(__inference_encoder_layer_call_fn_722531ВBCDEFGHI7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

p

 
™ "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€ѓ
(__inference_encoder_layer_call_fn_722554ВBCDEFGHI7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

p 

 
™ "=Ъ:
К
0€€€€€€€€€
К
1€€€€€€€€€≠
$__inference_signature_wrapper_722216ДBCDEFGHIJKLMNOPQн;Ґ8
Ґ 
1™.
,
input_1!К
input_1€€€€€€€€€
"1™.
,
decoder!К
decoder€€€€€€€€€
«
?__inference_vae_layer_call_and_return_conditional_losses_721915ГBCDEFGHIJKLMNOPQн8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p

 
™ "3Ґ0
К
0€€€€€€€€€

Ъ
К	
1/0 «
?__inference_vae_layer_call_and_return_conditional_losses_721972ГBCDEFGHIJKLMNOPQн8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p 

 
™ "3Ґ0
К
0€€€€€€€€€

Ъ
К	
1/0 ∆
?__inference_vae_layer_call_and_return_conditional_losses_722290ВBCDEFGHIJKLMNOPQн7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

p

 
™ "3Ґ0
К
0€€€€€€€€€

Ъ
К	
1/0 ∆
?__inference_vae_layer_call_and_return_conditional_losses_722364ВBCDEFGHIJKLMNOPQн7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

p 

 
™ "3Ґ0
К
0€€€€€€€€€

Ъ
К	
1/0 Р
$__inference_vae_layer_call_fn_722070hBCDEFGHIJKLMNOPQн8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p

 
™ "К€€€€€€€€€
Р
$__inference_vae_layer_call_fn_722167hBCDEFGHIJKLMNOPQн8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p 

 
™ "К€€€€€€€€€
П
$__inference_vae_layer_call_fn_722404gBCDEFGHIJKLMNOPQн7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

p

 
™ "К€€€€€€€€€
П
$__inference_vae_layer_call_fn_722444gBCDEFGHIJKLMNOPQн7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

p 

 
™ "К€€€€€€€€€
