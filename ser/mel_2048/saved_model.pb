??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.42v2.6.3-62-g9ef160463d18??
?
conv2d_194/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_194/kernel

%conv2d_194/kernel/Read/ReadVariableOpReadVariableOpconv2d_194/kernel*&
_output_shapes
:*
dtype0
v
conv2d_194/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_194/bias
o
#conv2d_194/bias/Read/ReadVariableOpReadVariableOpconv2d_194/bias*
_output_shapes
:*
dtype0
?
batch_normalization_186/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_186/gamma
?
1batch_normalization_186/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_186/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_186/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_186/beta
?
0batch_normalization_186/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_186/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_186/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_186/moving_mean
?
7batch_normalization_186/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_186/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_186/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_186/moving_variance
?
;batch_normalization_186/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_186/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_195/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_195/kernel

%conv2d_195/kernel/Read/ReadVariableOpReadVariableOpconv2d_195/kernel*&
_output_shapes
: *
dtype0
v
conv2d_195/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_195/bias
o
#conv2d_195/bias/Read/ReadVariableOpReadVariableOpconv2d_195/bias*
_output_shapes
: *
dtype0
?
batch_normalization_187/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_187/gamma
?
1batch_normalization_187/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_187/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_187/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_187/beta
?
0batch_normalization_187/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_187/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_187/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_187/moving_mean
?
7batch_normalization_187/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_187/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_187/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_187/moving_variance
?
;batch_normalization_187/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_187/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_196/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*"
shared_nameconv2d_196/kernel

%conv2d_196/kernel/Read/ReadVariableOpReadVariableOpconv2d_196/kernel*&
_output_shapes
: 0*
dtype0
v
conv2d_196/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_196/bias
o
#conv2d_196/bias/Read/ReadVariableOpReadVariableOpconv2d_196/bias*
_output_shapes
:0*
dtype0
?
batch_normalization_188/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*.
shared_namebatch_normalization_188/gamma
?
1batch_normalization_188/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_188/gamma*
_output_shapes
:0*
dtype0
?
batch_normalization_188/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*-
shared_namebatch_normalization_188/beta
?
0batch_normalization_188/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_188/beta*
_output_shapes
:0*
dtype0
?
#batch_normalization_188/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#batch_normalization_188/moving_mean
?
7batch_normalization_188/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_188/moving_mean*
_output_shapes
:0*
dtype0
?
'batch_normalization_188/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*8
shared_name)'batch_normalization_188/moving_variance
?
;batch_normalization_188/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_188/moving_variance*
_output_shapes
:0*
dtype0
z
dense_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0* 
shared_namedense_61/kernel
s
#dense_61/kernel/Read/ReadVariableOpReadVariableOpdense_61/kernel*
_output_shapes

:0*
dtype0
r
dense_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_61/bias
k
!dense_61/bias/Read/ReadVariableOpReadVariableOpdense_61/bias*
_output_shapes
:*
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
?
Adam/conv2d_194/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_194/kernel/m
?
,Adam/conv2d_194/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_194/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_194/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_194/bias/m
}
*Adam/conv2d_194/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_194/bias/m*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_186/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_186/gamma/m
?
8Adam/batch_normalization_186/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_186/gamma/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_186/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_186/beta/m
?
7Adam/batch_normalization_186/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_186/beta/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_195/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_195/kernel/m
?
,Adam/conv2d_195/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_195/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_195/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_195/bias/m
}
*Adam/conv2d_195/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_195/bias/m*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_187/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_187/gamma/m
?
8Adam/batch_normalization_187/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_187/gamma/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_187/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_187/beta/m
?
7Adam/batch_normalization_187/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_187/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_196/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*)
shared_nameAdam/conv2d_196/kernel/m
?
,Adam/conv2d_196/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_196/kernel/m*&
_output_shapes
: 0*
dtype0
?
Adam/conv2d_196/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_196/bias/m
}
*Adam/conv2d_196/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_196/bias/m*
_output_shapes
:0*
dtype0
?
$Adam/batch_normalization_188/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*5
shared_name&$Adam/batch_normalization_188/gamma/m
?
8Adam/batch_normalization_188/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_188/gamma/m*
_output_shapes
:0*
dtype0
?
#Adam/batch_normalization_188/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_188/beta/m
?
7Adam/batch_normalization_188/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_188/beta/m*
_output_shapes
:0*
dtype0
?
Adam/dense_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameAdam/dense_61/kernel/m
?
*Adam/dense_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/m*
_output_shapes

:0*
dtype0
?
Adam/dense_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/m
y
(Adam/dense_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_194/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_194/kernel/v
?
,Adam/conv2d_194/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_194/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_194/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_194/bias/v
}
*Adam/conv2d_194/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_194/bias/v*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_186/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_186/gamma/v
?
8Adam/batch_normalization_186/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_186/gamma/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_186/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_186/beta/v
?
7Adam/batch_normalization_186/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_186/beta/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_195/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_195/kernel/v
?
,Adam/conv2d_195/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_195/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_195/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_195/bias/v
}
*Adam/conv2d_195/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_195/bias/v*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_187/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_187/gamma/v
?
8Adam/batch_normalization_187/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_187/gamma/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_187/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_187/beta/v
?
7Adam/batch_normalization_187/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_187/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_196/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*)
shared_nameAdam/conv2d_196/kernel/v
?
,Adam/conv2d_196/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_196/kernel/v*&
_output_shapes
: 0*
dtype0
?
Adam/conv2d_196/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_196/bias/v
}
*Adam/conv2d_196/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_196/bias/v*
_output_shapes
:0*
dtype0
?
$Adam/batch_normalization_188/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*5
shared_name&$Adam/batch_normalization_188/gamma/v
?
8Adam/batch_normalization_188/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_188/gamma/v*
_output_shapes
:0*
dtype0
?
#Adam/batch_normalization_188/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_188/beta/v
?
7Adam/batch_normalization_188/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_188/beta/v*
_output_shapes
:0*
dtype0
?
Adam/dense_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameAdam/dense_61/kernel/v
?
*Adam/dense_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/v*
_output_shapes

:0*
dtype0
?
Adam/dense_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/v
y
(Adam/dense_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?\
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?\
value?\B?\ B?\
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
 	keras_api
R
!	variables
"regularization_losses
#trainable_variables
$	keras_api
h

%kernel
&bias
'	variables
(regularization_losses
)trainable_variables
*	keras_api
?
+axis
	,gamma
-beta
.moving_mean
/moving_variance
0	variables
1regularization_losses
2trainable_variables
3	keras_api
R
4	variables
5regularization_losses
6trainable_variables
7	keras_api
h

8kernel
9bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
?
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
R
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
R
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
h

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
?
Uiter

Vbeta_1

Wbeta_2
	Xdecay
Ylearning_ratem?m?m?m?%m?&m?,m?-m?8m?9m??m?@m?Om?Pm?v?v?v?v?%v?&v?,v?-v?8v?9v??v?@v?Ov?Pv?
?
0
1
2
3
4
5
%6
&7
,8
-9
.10
/11
812
913
?14
@15
A16
B17
O18
P19
 
f
0
1
2
3
%4
&5
,6
-7
88
99
?10
@11
O12
P13
?
Zlayer_metrics
	variables
[metrics
\non_trainable_variables
regularization_losses
trainable_variables
]layer_regularization_losses

^layers
 
][
VARIABLE_VALUEconv2d_194/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_194/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
_layer_metrics
	variables
`metrics
anon_trainable_variables
regularization_losses
trainable_variables
blayer_regularization_losses

clayers
 
hf
VARIABLE_VALUEbatch_normalization_186/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_186/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_186/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_186/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 

0
1
?
dlayer_metrics
	variables
emetrics
fnon_trainable_variables
regularization_losses
trainable_variables
glayer_regularization_losses

hlayers
 
 
 
?
ilayer_metrics
!	variables
jmetrics
knon_trainable_variables
"regularization_losses
#trainable_variables
llayer_regularization_losses

mlayers
][
VARIABLE_VALUEconv2d_195/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_195/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1
 

%0
&1
?
nlayer_metrics
'	variables
ometrics
pnon_trainable_variables
(regularization_losses
)trainable_variables
qlayer_regularization_losses

rlayers
 
hf
VARIABLE_VALUEbatch_normalization_187/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_187/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_187/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_187/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
.2
/3
 

,0
-1
?
slayer_metrics
0	variables
tmetrics
unon_trainable_variables
1regularization_losses
2trainable_variables
vlayer_regularization_losses

wlayers
 
 
 
?
xlayer_metrics
4	variables
ymetrics
znon_trainable_variables
5regularization_losses
6trainable_variables
{layer_regularization_losses

|layers
][
VARIABLE_VALUEconv2d_196/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_196/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91
 

80
91
?
}layer_metrics
:	variables
~metrics
non_trainable_variables
;regularization_losses
<trainable_variables
 ?layer_regularization_losses
?layers
 
hf
VARIABLE_VALUEbatch_normalization_188/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_188/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_188/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_188/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
A2
B3
 

?0
@1
?
?layer_metrics
C	variables
?metrics
?non_trainable_variables
Dregularization_losses
Etrainable_variables
 ?layer_regularization_losses
?layers
 
 
 
?
?layer_metrics
G	variables
?metrics
?non_trainable_variables
Hregularization_losses
Itrainable_variables
 ?layer_regularization_losses
?layers
 
 
 
?
?layer_metrics
K	variables
?metrics
?non_trainable_variables
Lregularization_losses
Mtrainable_variables
 ?layer_regularization_losses
?layers
[Y
VARIABLE_VALUEdense_61/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_61/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1
 

O0
P1
?
?layer_metrics
Q	variables
?metrics
?non_trainable_variables
Rregularization_losses
Strainable_variables
 ?layer_regularization_losses
?layers
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
 

?0
?1
*
0
1
.2
/3
A4
B5
 
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
 
 
 
 
 

0
1
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

.0
/1
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

A0
B1
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

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?~
VARIABLE_VALUEAdam/conv2d_194/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_194/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_186/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_186/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_195/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_195/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_187/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_187/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_196/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_196/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_188/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_188/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_61/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_61/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_194/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_194/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_186/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_186/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_195/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_195/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_187/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_187/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_196/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_196/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_188/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_188/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_61/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_61/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_194_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_194_inputconv2d_194/kernelconv2d_194/biasbatch_normalization_186/gammabatch_normalization_186/beta#batch_normalization_186/moving_mean'batch_normalization_186/moving_varianceconv2d_195/kernelconv2d_195/biasbatch_normalization_187/gammabatch_normalization_187/beta#batch_normalization_187/moving_mean'batch_normalization_187/moving_varianceconv2d_196/kernelconv2d_196/biasbatch_normalization_188/gammabatch_normalization_188/beta#batch_normalization_188/moving_mean'batch_normalization_188/moving_variancedense_61/kerneldense_61/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2751848
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_194/kernel/Read/ReadVariableOp#conv2d_194/bias/Read/ReadVariableOp1batch_normalization_186/gamma/Read/ReadVariableOp0batch_normalization_186/beta/Read/ReadVariableOp7batch_normalization_186/moving_mean/Read/ReadVariableOp;batch_normalization_186/moving_variance/Read/ReadVariableOp%conv2d_195/kernel/Read/ReadVariableOp#conv2d_195/bias/Read/ReadVariableOp1batch_normalization_187/gamma/Read/ReadVariableOp0batch_normalization_187/beta/Read/ReadVariableOp7batch_normalization_187/moving_mean/Read/ReadVariableOp;batch_normalization_187/moving_variance/Read/ReadVariableOp%conv2d_196/kernel/Read/ReadVariableOp#conv2d_196/bias/Read/ReadVariableOp1batch_normalization_188/gamma/Read/ReadVariableOp0batch_normalization_188/beta/Read/ReadVariableOp7batch_normalization_188/moving_mean/Read/ReadVariableOp;batch_normalization_188/moving_variance/Read/ReadVariableOp#dense_61/kernel/Read/ReadVariableOp!dense_61/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_194/kernel/m/Read/ReadVariableOp*Adam/conv2d_194/bias/m/Read/ReadVariableOp8Adam/batch_normalization_186/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_186/beta/m/Read/ReadVariableOp,Adam/conv2d_195/kernel/m/Read/ReadVariableOp*Adam/conv2d_195/bias/m/Read/ReadVariableOp8Adam/batch_normalization_187/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_187/beta/m/Read/ReadVariableOp,Adam/conv2d_196/kernel/m/Read/ReadVariableOp*Adam/conv2d_196/bias/m/Read/ReadVariableOp8Adam/batch_normalization_188/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_188/beta/m/Read/ReadVariableOp*Adam/dense_61/kernel/m/Read/ReadVariableOp(Adam/dense_61/bias/m/Read/ReadVariableOp,Adam/conv2d_194/kernel/v/Read/ReadVariableOp*Adam/conv2d_194/bias/v/Read/ReadVariableOp8Adam/batch_normalization_186/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_186/beta/v/Read/ReadVariableOp,Adam/conv2d_195/kernel/v/Read/ReadVariableOp*Adam/conv2d_195/bias/v/Read/ReadVariableOp8Adam/batch_normalization_187/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_187/beta/v/Read/ReadVariableOp,Adam/conv2d_196/kernel/v/Read/ReadVariableOp*Adam/conv2d_196/bias/v/Read/ReadVariableOp8Adam/batch_normalization_188/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_188/beta/v/Read/ReadVariableOp*Adam/dense_61/kernel/v/Read/ReadVariableOp(Adam/dense_61/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_2752838
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_194/kernelconv2d_194/biasbatch_normalization_186/gammabatch_normalization_186/beta#batch_normalization_186/moving_mean'batch_normalization_186/moving_varianceconv2d_195/kernelconv2d_195/biasbatch_normalization_187/gammabatch_normalization_187/beta#batch_normalization_187/moving_mean'batch_normalization_187/moving_varianceconv2d_196/kernelconv2d_196/biasbatch_normalization_188/gammabatch_normalization_188/beta#batch_normalization_188/moving_mean'batch_normalization_188/moving_variancedense_61/kerneldense_61/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_194/kernel/mAdam/conv2d_194/bias/m$Adam/batch_normalization_186/gamma/m#Adam/batch_normalization_186/beta/mAdam/conv2d_195/kernel/mAdam/conv2d_195/bias/m$Adam/batch_normalization_187/gamma/m#Adam/batch_normalization_187/beta/mAdam/conv2d_196/kernel/mAdam/conv2d_196/bias/m$Adam/batch_normalization_188/gamma/m#Adam/batch_normalization_188/beta/mAdam/dense_61/kernel/mAdam/dense_61/bias/mAdam/conv2d_194/kernel/vAdam/conv2d_194/bias/v$Adam/batch_normalization_186/gamma/v#Adam/batch_normalization_186/beta/vAdam/conv2d_195/kernel/vAdam/conv2d_195/bias/v$Adam/batch_normalization_187/gamma/v#Adam/batch_normalization_187/beta/vAdam/conv2d_196/kernel/vAdam/conv2d_196/bias/v$Adam/batch_normalization_188/gamma/v#Adam/batch_normalization_188/beta/vAdam/dense_61/kernel/vAdam/dense_61/bias/v*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_2753019??
?
e
F__inference_dropout_6_layer_call_and_return_conditional_losses_2752602

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
t
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_2751045

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
Y
=__inference_global_average_pooling2d_61_layer_call_fn_2752607

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_27510452
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_122_layer_call_fn_2752421

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_27511642
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752521

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_2751114

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????|?:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs
?
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_2751215

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????02

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????02

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2751356

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????02

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_186_layer_call_fn_2752136

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_27506352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?>
?	
J__inference_sequential_68_layer_call_and_return_conditional_losses_2751242

inputs,
conv2d_194_2751078: 
conv2d_194_2751080:-
batch_normalization_186_2751101:-
batch_normalization_186_2751103:-
batch_normalization_186_2751105:-
batch_normalization_186_2751107:,
conv2d_195_2751128:  
conv2d_195_2751130: -
batch_normalization_187_2751151: -
batch_normalization_187_2751153: -
batch_normalization_187_2751155: -
batch_normalization_187_2751157: ,
conv2d_196_2751178: 0 
conv2d_196_2751180:0-
batch_normalization_188_2751201:0-
batch_normalization_188_2751203:0-
batch_normalization_188_2751205:0-
batch_normalization_188_2751207:0"
dense_61_2751236:0
dense_61_2751238:
identity??/batch_normalization_186/StatefulPartitionedCall?/batch_normalization_187/StatefulPartitionedCall?/batch_normalization_188/StatefulPartitionedCall?"conv2d_194/StatefulPartitionedCall?"conv2d_195/StatefulPartitionedCall?"conv2d_196/StatefulPartitionedCall? dense_61/StatefulPartitionedCall?
"conv2d_194/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_194_2751078conv2d_194_2751080*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_194_layer_call_and_return_conditional_losses_27510772$
"conv2d_194/StatefulPartitionedCall?
/batch_normalization_186/StatefulPartitionedCallStatefulPartitionedCall+conv2d_194/StatefulPartitionedCall:output:0batch_normalization_186_2751101batch_normalization_186_2751103batch_normalization_186_2751105batch_normalization_186_2751107*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_275110021
/batch_normalization_186/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall8batch_normalization_186/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_27511142#
!max_pooling2d_121/PartitionedCall?
"conv2d_195/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_195_2751128conv2d_195_2751130*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_195_layer_call_and_return_conditional_losses_27511272$
"conv2d_195/StatefulPartitionedCall?
/batch_normalization_187/StatefulPartitionedCallStatefulPartitionedCall+conv2d_195/StatefulPartitionedCall:output:0batch_normalization_187_2751151batch_normalization_187_2751153batch_normalization_187_2751155batch_normalization_187_2751157*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_275115021
/batch_normalization_187/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall8batch_normalization_187/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_27511642#
!max_pooling2d_122/PartitionedCall?
"conv2d_196/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_122/PartitionedCall:output:0conv2d_196_2751178conv2d_196_2751180*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_196_layer_call_and_return_conditional_losses_27511772$
"conv2d_196/StatefulPartitionedCall?
/batch_normalization_188/StatefulPartitionedCallStatefulPartitionedCall+conv2d_196/StatefulPartitionedCall:output:0batch_normalization_188_2751201batch_normalization_188_2751203batch_normalization_188_2751205batch_normalization_188_2751207*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_275120021
/batch_normalization_188/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall8batch_normalization_188/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_27512152
dropout_6/PartitionedCall?
+global_average_pooling2d_61/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_27512222-
+global_average_pooling2d_61/PartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_61/PartitionedCall:output:0dense_61_2751236dense_61_2751238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_27512352"
 dense_61/StatefulPartitionedCall?
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_186/StatefulPartitionedCall0^batch_normalization_187/StatefulPartitionedCall0^batch_normalization_188/StatefulPartitionedCall#^conv2d_194/StatefulPartitionedCall#^conv2d_195/StatefulPartitionedCall#^conv2d_196/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_186/StatefulPartitionedCall/batch_normalization_186/StatefulPartitionedCall2b
/batch_normalization_187/StatefulPartitionedCall/batch_normalization_187/StatefulPartitionedCall2b
/batch_normalization_188/StatefulPartitionedCall/batch_normalization_188/StatefulPartitionedCall2H
"conv2d_194/StatefulPartitionedCall"conv2d_194/StatefulPartitionedCall2H
"conv2d_195/StatefulPartitionedCall"conv2d_195/StatefulPartitionedCall2H
"conv2d_196/StatefulPartitionedCall"conv2d_196/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_6_layer_call_and_return_conditional_losses_2751320

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
G__inference_conv2d_195_layer_call_and_return_conditional_losses_2752287

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_2752267

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????|?:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs
?
?
/__inference_sequential_68_layer_call_fn_2751285
conv2d_194_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 0

unknown_12:0

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_194_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_68_layer_call_and_return_conditional_losses_27512422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_194_input
?
?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2751150

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_188_layer_call_fn_2752477

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_27509752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
G
+__inference_dropout_6_layer_call_fn_2752580

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_27512152
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2750679

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2751100

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????|?:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????|?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs
?
?
/__inference_sequential_68_layer_call_fn_2751893

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 0

unknown_12:0

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_68_layer_call_and_return_conditional_losses_27512422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752247

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????|?:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????|?: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752393

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_186_layer_call_fn_2752175

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_27514742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????|?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs
?
t
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_2752618

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_187_layer_call_fn_2752339

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_27514152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_2752262

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ǈ
?
"__inference__wrapped_model_2750613
conv2d_194_inputQ
7sequential_68_conv2d_194_conv2d_readvariableop_resource:F
8sequential_68_conv2d_194_biasadd_readvariableop_resource:K
=sequential_68_batch_normalization_186_readvariableop_resource:M
?sequential_68_batch_normalization_186_readvariableop_1_resource:\
Nsequential_68_batch_normalization_186_fusedbatchnormv3_readvariableop_resource:^
Psequential_68_batch_normalization_186_fusedbatchnormv3_readvariableop_1_resource:Q
7sequential_68_conv2d_195_conv2d_readvariableop_resource: F
8sequential_68_conv2d_195_biasadd_readvariableop_resource: K
=sequential_68_batch_normalization_187_readvariableop_resource: M
?sequential_68_batch_normalization_187_readvariableop_1_resource: \
Nsequential_68_batch_normalization_187_fusedbatchnormv3_readvariableop_resource: ^
Psequential_68_batch_normalization_187_fusedbatchnormv3_readvariableop_1_resource: Q
7sequential_68_conv2d_196_conv2d_readvariableop_resource: 0F
8sequential_68_conv2d_196_biasadd_readvariableop_resource:0K
=sequential_68_batch_normalization_188_readvariableop_resource:0M
?sequential_68_batch_normalization_188_readvariableop_1_resource:0\
Nsequential_68_batch_normalization_188_fusedbatchnormv3_readvariableop_resource:0^
Psequential_68_batch_normalization_188_fusedbatchnormv3_readvariableop_1_resource:0G
5sequential_68_dense_61_matmul_readvariableop_resource:0D
6sequential_68_dense_61_biasadd_readvariableop_resource:
identity??Esequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp?Gsequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1?4sequential_68/batch_normalization_186/ReadVariableOp?6sequential_68/batch_normalization_186/ReadVariableOp_1?Esequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp?Gsequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1?4sequential_68/batch_normalization_187/ReadVariableOp?6sequential_68/batch_normalization_187/ReadVariableOp_1?Esequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp?Gsequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1?4sequential_68/batch_normalization_188/ReadVariableOp?6sequential_68/batch_normalization_188/ReadVariableOp_1?/sequential_68/conv2d_194/BiasAdd/ReadVariableOp?.sequential_68/conv2d_194/Conv2D/ReadVariableOp?/sequential_68/conv2d_195/BiasAdd/ReadVariableOp?.sequential_68/conv2d_195/Conv2D/ReadVariableOp?/sequential_68/conv2d_196/BiasAdd/ReadVariableOp?.sequential_68/conv2d_196/Conv2D/ReadVariableOp?-sequential_68/dense_61/BiasAdd/ReadVariableOp?,sequential_68/dense_61/MatMul/ReadVariableOp?
.sequential_68/conv2d_194/Conv2D/ReadVariableOpReadVariableOp7sequential_68_conv2d_194_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.sequential_68/conv2d_194/Conv2D/ReadVariableOp?
sequential_68/conv2d_194/Conv2DConv2Dconv2d_194_input6sequential_68/conv2d_194/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?*
paddingVALID*
strides
2!
sequential_68/conv2d_194/Conv2D?
/sequential_68/conv2d_194/BiasAdd/ReadVariableOpReadVariableOp8sequential_68_conv2d_194_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_68/conv2d_194/BiasAdd/ReadVariableOp?
 sequential_68/conv2d_194/BiasAddBiasAdd(sequential_68/conv2d_194/Conv2D:output:07sequential_68/conv2d_194/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?2"
 sequential_68/conv2d_194/BiasAdd?
sequential_68/conv2d_194/ReluRelu)sequential_68/conv2d_194/BiasAdd:output:0*
T0*0
_output_shapes
:?????????|?2
sequential_68/conv2d_194/Relu?
4sequential_68/batch_normalization_186/ReadVariableOpReadVariableOp=sequential_68_batch_normalization_186_readvariableop_resource*
_output_shapes
:*
dtype026
4sequential_68/batch_normalization_186/ReadVariableOp?
6sequential_68/batch_normalization_186/ReadVariableOp_1ReadVariableOp?sequential_68_batch_normalization_186_readvariableop_1_resource*
_output_shapes
:*
dtype028
6sequential_68/batch_normalization_186/ReadVariableOp_1?
Esequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_68_batch_normalization_186_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02G
Esequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp?
Gsequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_68_batch_normalization_186_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02I
Gsequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1?
6sequential_68/batch_normalization_186/FusedBatchNormV3FusedBatchNormV3+sequential_68/conv2d_194/Relu:activations:0<sequential_68/batch_normalization_186/ReadVariableOp:value:0>sequential_68/batch_normalization_186/ReadVariableOp_1:value:0Msequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp:value:0Osequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????|?:::::*
epsilon%o?:*
is_training( 28
6sequential_68/batch_normalization_186/FusedBatchNormV3?
'sequential_68/max_pooling2d_121/MaxPoolMaxPool:sequential_68/batch_normalization_186/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2)
'sequential_68/max_pooling2d_121/MaxPool?
.sequential_68/conv2d_195/Conv2D/ReadVariableOpReadVariableOp7sequential_68_conv2d_195_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_68/conv2d_195/Conv2D/ReadVariableOp?
sequential_68/conv2d_195/Conv2DConv2D0sequential_68/max_pooling2d_121/MaxPool:output:06sequential_68/conv2d_195/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2!
sequential_68/conv2d_195/Conv2D?
/sequential_68/conv2d_195/BiasAdd/ReadVariableOpReadVariableOp8sequential_68_conv2d_195_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_68/conv2d_195/BiasAdd/ReadVariableOp?
 sequential_68/conv2d_195/BiasAddBiasAdd(sequential_68/conv2d_195/Conv2D:output:07sequential_68/conv2d_195/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2"
 sequential_68/conv2d_195/BiasAdd?
sequential_68/conv2d_195/ReluRelu)sequential_68/conv2d_195/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_68/conv2d_195/Relu?
4sequential_68/batch_normalization_187/ReadVariableOpReadVariableOp=sequential_68_batch_normalization_187_readvariableop_resource*
_output_shapes
: *
dtype026
4sequential_68/batch_normalization_187/ReadVariableOp?
6sequential_68/batch_normalization_187/ReadVariableOp_1ReadVariableOp?sequential_68_batch_normalization_187_readvariableop_1_resource*
_output_shapes
: *
dtype028
6sequential_68/batch_normalization_187/ReadVariableOp_1?
Esequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_68_batch_normalization_187_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02G
Esequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp?
Gsequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_68_batch_normalization_187_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02I
Gsequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1?
6sequential_68/batch_normalization_187/FusedBatchNormV3FusedBatchNormV3+sequential_68/conv2d_195/Relu:activations:0<sequential_68/batch_normalization_187/ReadVariableOp:value:0>sequential_68/batch_normalization_187/ReadVariableOp_1:value:0Msequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp:value:0Osequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 28
6sequential_68/batch_normalization_187/FusedBatchNormV3?
'sequential_68/max_pooling2d_122/MaxPoolMaxPool:sequential_68/batch_normalization_187/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2)
'sequential_68/max_pooling2d_122/MaxPool?
.sequential_68/conv2d_196/Conv2D/ReadVariableOpReadVariableOp7sequential_68_conv2d_196_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype020
.sequential_68/conv2d_196/Conv2D/ReadVariableOp?
sequential_68/conv2d_196/Conv2DConv2D0sequential_68/max_pooling2d_122/MaxPool:output:06sequential_68/conv2d_196/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2!
sequential_68/conv2d_196/Conv2D?
/sequential_68/conv2d_196/BiasAdd/ReadVariableOpReadVariableOp8sequential_68_conv2d_196_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype021
/sequential_68/conv2d_196/BiasAdd/ReadVariableOp?
 sequential_68/conv2d_196/BiasAddBiasAdd(sequential_68/conv2d_196/Conv2D:output:07sequential_68/conv2d_196/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02"
 sequential_68/conv2d_196/BiasAdd?
sequential_68/conv2d_196/ReluRelu)sequential_68/conv2d_196/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
sequential_68/conv2d_196/Relu?
4sequential_68/batch_normalization_188/ReadVariableOpReadVariableOp=sequential_68_batch_normalization_188_readvariableop_resource*
_output_shapes
:0*
dtype026
4sequential_68/batch_normalization_188/ReadVariableOp?
6sequential_68/batch_normalization_188/ReadVariableOp_1ReadVariableOp?sequential_68_batch_normalization_188_readvariableop_1_resource*
_output_shapes
:0*
dtype028
6sequential_68/batch_normalization_188/ReadVariableOp_1?
Esequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_68_batch_normalization_188_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02G
Esequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp?
Gsequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_68_batch_normalization_188_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02I
Gsequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1?
6sequential_68/batch_normalization_188/FusedBatchNormV3FusedBatchNormV3+sequential_68/conv2d_196/Relu:activations:0<sequential_68/batch_normalization_188/ReadVariableOp:value:0>sequential_68/batch_normalization_188/ReadVariableOp_1:value:0Msequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp:value:0Osequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
is_training( 28
6sequential_68/batch_normalization_188/FusedBatchNormV3?
 sequential_68/dropout_6/IdentityIdentity:sequential_68/batch_normalization_188/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????02"
 sequential_68/dropout_6/Identity?
@sequential_68/global_average_pooling2d_61/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_68/global_average_pooling2d_61/Mean/reduction_indices?
.sequential_68/global_average_pooling2d_61/MeanMean)sequential_68/dropout_6/Identity:output:0Isequential_68/global_average_pooling2d_61/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????020
.sequential_68/global_average_pooling2d_61/Mean?
,sequential_68/dense_61/MatMul/ReadVariableOpReadVariableOp5sequential_68_dense_61_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02.
,sequential_68/dense_61/MatMul/ReadVariableOp?
sequential_68/dense_61/MatMulMatMul7sequential_68/global_average_pooling2d_61/Mean:output:04sequential_68/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_68/dense_61/MatMul?
-sequential_68/dense_61/BiasAdd/ReadVariableOpReadVariableOp6sequential_68_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_68/dense_61/BiasAdd/ReadVariableOp?
sequential_68/dense_61/BiasAddBiasAdd'sequential_68/dense_61/MatMul:product:05sequential_68/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_68/dense_61/BiasAdd?
sequential_68/dense_61/SoftmaxSoftmax'sequential_68/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_68/dense_61/Softmax?
IdentityIdentity(sequential_68/dense_61/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?	
NoOpNoOpF^sequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOpH^sequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp_15^sequential_68/batch_normalization_186/ReadVariableOp7^sequential_68/batch_normalization_186/ReadVariableOp_1F^sequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOpH^sequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp_15^sequential_68/batch_normalization_187/ReadVariableOp7^sequential_68/batch_normalization_187/ReadVariableOp_1F^sequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOpH^sequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp_15^sequential_68/batch_normalization_188/ReadVariableOp7^sequential_68/batch_normalization_188/ReadVariableOp_10^sequential_68/conv2d_194/BiasAdd/ReadVariableOp/^sequential_68/conv2d_194/Conv2D/ReadVariableOp0^sequential_68/conv2d_195/BiasAdd/ReadVariableOp/^sequential_68/conv2d_195/Conv2D/ReadVariableOp0^sequential_68/conv2d_196/BiasAdd/ReadVariableOp/^sequential_68/conv2d_196/Conv2D/ReadVariableOp.^sequential_68/dense_61/BiasAdd/ReadVariableOp-^sequential_68/dense_61/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 2?
Esequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOpEsequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp2?
Gsequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1Gsequential_68/batch_normalization_186/FusedBatchNormV3/ReadVariableOp_12l
4sequential_68/batch_normalization_186/ReadVariableOp4sequential_68/batch_normalization_186/ReadVariableOp2p
6sequential_68/batch_normalization_186/ReadVariableOp_16sequential_68/batch_normalization_186/ReadVariableOp_12?
Esequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOpEsequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp2?
Gsequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1Gsequential_68/batch_normalization_187/FusedBatchNormV3/ReadVariableOp_12l
4sequential_68/batch_normalization_187/ReadVariableOp4sequential_68/batch_normalization_187/ReadVariableOp2p
6sequential_68/batch_normalization_187/ReadVariableOp_16sequential_68/batch_normalization_187/ReadVariableOp_12?
Esequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOpEsequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp2?
Gsequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1Gsequential_68/batch_normalization_188/FusedBatchNormV3/ReadVariableOp_12l
4sequential_68/batch_normalization_188/ReadVariableOp4sequential_68/batch_normalization_188/ReadVariableOp2p
6sequential_68/batch_normalization_188/ReadVariableOp_16sequential_68/batch_normalization_188/ReadVariableOp_12b
/sequential_68/conv2d_194/BiasAdd/ReadVariableOp/sequential_68/conv2d_194/BiasAdd/ReadVariableOp2`
.sequential_68/conv2d_194/Conv2D/ReadVariableOp.sequential_68/conv2d_194/Conv2D/ReadVariableOp2b
/sequential_68/conv2d_195/BiasAdd/ReadVariableOp/sequential_68/conv2d_195/BiasAdd/ReadVariableOp2`
.sequential_68/conv2d_195/Conv2D/ReadVariableOp.sequential_68/conv2d_195/Conv2D/ReadVariableOp2b
/sequential_68/conv2d_196/BiasAdd/ReadVariableOp/sequential_68/conv2d_196/BiasAdd/ReadVariableOp2`
.sequential_68/conv2d_196/Conv2D/ReadVariableOp.sequential_68/conv2d_196/Conv2D/ReadVariableOp2^
-sequential_68/dense_61/BiasAdd/ReadVariableOp-sequential_68/dense_61/BiasAdd/ReadVariableOp2\
,sequential_68/dense_61/MatMul/ReadVariableOp,sequential_68/dense_61/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_194_input
?
?
G__inference_conv2d_195_layer_call_and_return_conditional_losses_2751127

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_195_layer_call_fn_2752276

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_195_layer_call_and_return_conditional_losses_27511272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_196_layer_call_and_return_conditional_losses_2752451

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????02
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????02

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_188_layer_call_fn_2752464

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_27509312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
?
E__inference_dense_61_layer_call_and_return_conditional_losses_2752644

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?w
?
 __inference__traced_save_2752838
file_prefix0
,savev2_conv2d_194_kernel_read_readvariableop.
*savev2_conv2d_194_bias_read_readvariableop<
8savev2_batch_normalization_186_gamma_read_readvariableop;
7savev2_batch_normalization_186_beta_read_readvariableopB
>savev2_batch_normalization_186_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_186_moving_variance_read_readvariableop0
,savev2_conv2d_195_kernel_read_readvariableop.
*savev2_conv2d_195_bias_read_readvariableop<
8savev2_batch_normalization_187_gamma_read_readvariableop;
7savev2_batch_normalization_187_beta_read_readvariableopB
>savev2_batch_normalization_187_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_187_moving_variance_read_readvariableop0
,savev2_conv2d_196_kernel_read_readvariableop.
*savev2_conv2d_196_bias_read_readvariableop<
8savev2_batch_normalization_188_gamma_read_readvariableop;
7savev2_batch_normalization_188_beta_read_readvariableopB
>savev2_batch_normalization_188_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_188_moving_variance_read_readvariableop.
*savev2_dense_61_kernel_read_readvariableop,
(savev2_dense_61_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_194_kernel_m_read_readvariableop5
1savev2_adam_conv2d_194_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_186_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_186_beta_m_read_readvariableop7
3savev2_adam_conv2d_195_kernel_m_read_readvariableop5
1savev2_adam_conv2d_195_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_187_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_187_beta_m_read_readvariableop7
3savev2_adam_conv2d_196_kernel_m_read_readvariableop5
1savev2_adam_conv2d_196_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_188_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_188_beta_m_read_readvariableop5
1savev2_adam_dense_61_kernel_m_read_readvariableop3
/savev2_adam_dense_61_bias_m_read_readvariableop7
3savev2_adam_conv2d_194_kernel_v_read_readvariableop5
1savev2_adam_conv2d_194_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_186_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_186_beta_v_read_readvariableop7
3savev2_adam_conv2d_195_kernel_v_read_readvariableop5
1savev2_adam_conv2d_195_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_187_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_187_beta_v_read_readvariableop7
3savev2_adam_conv2d_196_kernel_v_read_readvariableop5
1savev2_adam_conv2d_196_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_188_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_188_beta_v_read_readvariableop5
1savev2_adam_dense_61_kernel_v_read_readvariableop3
/savev2_adam_dense_61_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_194_kernel_read_readvariableop*savev2_conv2d_194_bias_read_readvariableop8savev2_batch_normalization_186_gamma_read_readvariableop7savev2_batch_normalization_186_beta_read_readvariableop>savev2_batch_normalization_186_moving_mean_read_readvariableopBsavev2_batch_normalization_186_moving_variance_read_readvariableop,savev2_conv2d_195_kernel_read_readvariableop*savev2_conv2d_195_bias_read_readvariableop8savev2_batch_normalization_187_gamma_read_readvariableop7savev2_batch_normalization_187_beta_read_readvariableop>savev2_batch_normalization_187_moving_mean_read_readvariableopBsavev2_batch_normalization_187_moving_variance_read_readvariableop,savev2_conv2d_196_kernel_read_readvariableop*savev2_conv2d_196_bias_read_readvariableop8savev2_batch_normalization_188_gamma_read_readvariableop7savev2_batch_normalization_188_beta_read_readvariableop>savev2_batch_normalization_188_moving_mean_read_readvariableopBsavev2_batch_normalization_188_moving_variance_read_readvariableop*savev2_dense_61_kernel_read_readvariableop(savev2_dense_61_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_194_kernel_m_read_readvariableop1savev2_adam_conv2d_194_bias_m_read_readvariableop?savev2_adam_batch_normalization_186_gamma_m_read_readvariableop>savev2_adam_batch_normalization_186_beta_m_read_readvariableop3savev2_adam_conv2d_195_kernel_m_read_readvariableop1savev2_adam_conv2d_195_bias_m_read_readvariableop?savev2_adam_batch_normalization_187_gamma_m_read_readvariableop>savev2_adam_batch_normalization_187_beta_m_read_readvariableop3savev2_adam_conv2d_196_kernel_m_read_readvariableop1savev2_adam_conv2d_196_bias_m_read_readvariableop?savev2_adam_batch_normalization_188_gamma_m_read_readvariableop>savev2_adam_batch_normalization_188_beta_m_read_readvariableop1savev2_adam_dense_61_kernel_m_read_readvariableop/savev2_adam_dense_61_bias_m_read_readvariableop3savev2_adam_conv2d_194_kernel_v_read_readvariableop1savev2_adam_conv2d_194_bias_v_read_readvariableop?savev2_adam_batch_normalization_186_gamma_v_read_readvariableop>savev2_adam_batch_normalization_186_beta_v_read_readvariableop3savev2_adam_conv2d_195_kernel_v_read_readvariableop1savev2_adam_conv2d_195_bias_v_read_readvariableop?savev2_adam_batch_normalization_187_gamma_v_read_readvariableop>savev2_adam_batch_normalization_187_beta_v_read_readvariableop3savev2_adam_conv2d_196_kernel_v_read_readvariableop1savev2_adam_conv2d_196_bias_v_read_readvariableop?savev2_adam_batch_normalization_188_gamma_v_read_readvariableop>savev2_adam_batch_normalization_188_beta_v_read_readvariableop1savev2_adam_dense_61_kernel_v_read_readvariableop/savev2_adam_dense_61_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::: : : : : : : 0:0:0:0:0:0:0:: : : : : : : : : ::::: : : : : 0:0:0:0:0:::::: : : : : 0:0:0:0:0:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::  

_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
: : #

_output_shapes
: : $

_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
: 0: '

_output_shapes
:0: (

_output_shapes
:0: )

_output_shapes
:0:$* 

_output_shapes

:0: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
:: .

_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
: : 1

_output_shapes
: : 2

_output_shapes
: : 3

_output_shapes
: :,4(
&
_output_shapes
: 0: 5

_output_shapes
:0: 6

_output_shapes
:0: 7

_output_shapes
:0:$8 

_output_shapes

:0: 9

_output_shapes
:::

_output_shapes
: 
?
j
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_2750896

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_2750748

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?%
#__inference__traced_restore_2753019
file_prefix<
"assignvariableop_conv2d_194_kernel:0
"assignvariableop_1_conv2d_194_bias:>
0assignvariableop_2_batch_normalization_186_gamma:=
/assignvariableop_3_batch_normalization_186_beta:D
6assignvariableop_4_batch_normalization_186_moving_mean:H
:assignvariableop_5_batch_normalization_186_moving_variance:>
$assignvariableop_6_conv2d_195_kernel: 0
"assignvariableop_7_conv2d_195_bias: >
0assignvariableop_8_batch_normalization_187_gamma: =
/assignvariableop_9_batch_normalization_187_beta: E
7assignvariableop_10_batch_normalization_187_moving_mean: I
;assignvariableop_11_batch_normalization_187_moving_variance: ?
%assignvariableop_12_conv2d_196_kernel: 01
#assignvariableop_13_conv2d_196_bias:0?
1assignvariableop_14_batch_normalization_188_gamma:0>
0assignvariableop_15_batch_normalization_188_beta:0E
7assignvariableop_16_batch_normalization_188_moving_mean:0I
;assignvariableop_17_batch_normalization_188_moving_variance:05
#assignvariableop_18_dense_61_kernel:0/
!assignvariableop_19_dense_61_bias:'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: #
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: F
,assignvariableop_29_adam_conv2d_194_kernel_m:8
*assignvariableop_30_adam_conv2d_194_bias_m:F
8assignvariableop_31_adam_batch_normalization_186_gamma_m:E
7assignvariableop_32_adam_batch_normalization_186_beta_m:F
,assignvariableop_33_adam_conv2d_195_kernel_m: 8
*assignvariableop_34_adam_conv2d_195_bias_m: F
8assignvariableop_35_adam_batch_normalization_187_gamma_m: E
7assignvariableop_36_adam_batch_normalization_187_beta_m: F
,assignvariableop_37_adam_conv2d_196_kernel_m: 08
*assignvariableop_38_adam_conv2d_196_bias_m:0F
8assignvariableop_39_adam_batch_normalization_188_gamma_m:0E
7assignvariableop_40_adam_batch_normalization_188_beta_m:0<
*assignvariableop_41_adam_dense_61_kernel_m:06
(assignvariableop_42_adam_dense_61_bias_m:F
,assignvariableop_43_adam_conv2d_194_kernel_v:8
*assignvariableop_44_adam_conv2d_194_bias_v:F
8assignvariableop_45_adam_batch_normalization_186_gamma_v:E
7assignvariableop_46_adam_batch_normalization_186_beta_v:F
,assignvariableop_47_adam_conv2d_195_kernel_v: 8
*assignvariableop_48_adam_conv2d_195_bias_v: F
8assignvariableop_49_adam_batch_normalization_187_gamma_v: E
7assignvariableop_50_adam_batch_normalization_187_beta_v: F
,assignvariableop_51_adam_conv2d_196_kernel_v: 08
*assignvariableop_52_adam_conv2d_196_bias_v:0F
8assignvariableop_53_adam_batch_normalization_188_gamma_v:0E
7assignvariableop_54_adam_batch_normalization_188_beta_v:0<
*assignvariableop_55_adam_dense_61_kernel_v:06
(assignvariableop_56_adam_dense_61_bias_v:
identity_58??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_194_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_194_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_186_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_186_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_186_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_186_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_195_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_195_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_187_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_187_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_187_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_187_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_196_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_196_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_188_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_188_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_188_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_188_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_61_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_61_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_194_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_194_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_batch_normalization_186_gamma_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp7assignvariableop_32_adam_batch_normalization_186_beta_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_195_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_195_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp8assignvariableop_35_adam_batch_normalization_187_gamma_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp7assignvariableop_36_adam_batch_normalization_187_beta_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_196_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_196_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp8assignvariableop_39_adam_batch_normalization_188_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp7assignvariableop_40_adam_batch_normalization_188_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_61_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_61_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_194_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_194_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_batch_normalization_186_gamma_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp7assignvariableop_46_adam_batch_normalization_186_beta_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp,assignvariableop_47_adam_conv2d_195_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_conv2d_195_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp8assignvariableop_49_adam_batch_normalization_187_gamma_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_batch_normalization_187_beta_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp,assignvariableop_51_adam_conv2d_196_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_conv2d_196_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp8assignvariableop_53_adam_batch_normalization_188_gamma_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp7assignvariableop_54_adam_batch_normalization_188_beta_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_61_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_61_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57f
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_58?

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_58Identity_58:output:0*?
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
d
+__inference_dropout_6_layer_call_fn_2752585

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_27513202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752539

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?n
?
J__inference_sequential_68_layer_call_and_return_conditional_losses_2752017

inputsC
)conv2d_194_conv2d_readvariableop_resource:8
*conv2d_194_biasadd_readvariableop_resource:=
/batch_normalization_186_readvariableop_resource:?
1batch_normalization_186_readvariableop_1_resource:N
@batch_normalization_186_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_186_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_195_conv2d_readvariableop_resource: 8
*conv2d_195_biasadd_readvariableop_resource: =
/batch_normalization_187_readvariableop_resource: ?
1batch_normalization_187_readvariableop_1_resource: N
@batch_normalization_187_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_187_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_196_conv2d_readvariableop_resource: 08
*conv2d_196_biasadd_readvariableop_resource:0=
/batch_normalization_188_readvariableop_resource:0?
1batch_normalization_188_readvariableop_1_resource:0N
@batch_normalization_188_fusedbatchnormv3_readvariableop_resource:0P
Bbatch_normalization_188_fusedbatchnormv3_readvariableop_1_resource:09
'dense_61_matmul_readvariableop_resource:06
(dense_61_biasadd_readvariableop_resource:
identity??7batch_normalization_186/FusedBatchNormV3/ReadVariableOp?9batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_186/ReadVariableOp?(batch_normalization_186/ReadVariableOp_1?7batch_normalization_187/FusedBatchNormV3/ReadVariableOp?9batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_187/ReadVariableOp?(batch_normalization_187/ReadVariableOp_1?7batch_normalization_188/FusedBatchNormV3/ReadVariableOp?9batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_188/ReadVariableOp?(batch_normalization_188/ReadVariableOp_1?!conv2d_194/BiasAdd/ReadVariableOp? conv2d_194/Conv2D/ReadVariableOp?!conv2d_195/BiasAdd/ReadVariableOp? conv2d_195/Conv2D/ReadVariableOp?!conv2d_196/BiasAdd/ReadVariableOp? conv2d_196/Conv2D/ReadVariableOp?dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?
 conv2d_194/Conv2D/ReadVariableOpReadVariableOp)conv2d_194_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_194/Conv2D/ReadVariableOp?
conv2d_194/Conv2DConv2Dinputs(conv2d_194/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?*
paddingVALID*
strides
2
conv2d_194/Conv2D?
!conv2d_194/BiasAdd/ReadVariableOpReadVariableOp*conv2d_194_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_194/BiasAdd/ReadVariableOp?
conv2d_194/BiasAddBiasAddconv2d_194/Conv2D:output:0)conv2d_194/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?2
conv2d_194/BiasAdd?
conv2d_194/ReluReluconv2d_194/BiasAdd:output:0*
T0*0
_output_shapes
:?????????|?2
conv2d_194/Relu?
&batch_normalization_186/ReadVariableOpReadVariableOp/batch_normalization_186_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_186/ReadVariableOp?
(batch_normalization_186/ReadVariableOp_1ReadVariableOp1batch_normalization_186_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_186/ReadVariableOp_1?
7batch_normalization_186/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_186_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_186/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_186_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_186/FusedBatchNormV3FusedBatchNormV3conv2d_194/Relu:activations:0.batch_normalization_186/ReadVariableOp:value:00batch_normalization_186/ReadVariableOp_1:value:0?batch_normalization_186/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_186/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????|?:::::*
epsilon%o?:*
is_training( 2*
(batch_normalization_186/FusedBatchNormV3?
max_pooling2d_121/MaxPoolMaxPool,batch_normalization_186/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_121/MaxPool?
 conv2d_195/Conv2D/ReadVariableOpReadVariableOp)conv2d_195_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_195/Conv2D/ReadVariableOp?
conv2d_195/Conv2DConv2D"max_pooling2d_121/MaxPool:output:0(conv2d_195/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_195/Conv2D?
!conv2d_195/BiasAdd/ReadVariableOpReadVariableOp*conv2d_195_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_195/BiasAdd/ReadVariableOp?
conv2d_195/BiasAddBiasAddconv2d_195/Conv2D:output:0)conv2d_195/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_195/BiasAdd?
conv2d_195/ReluReluconv2d_195/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_195/Relu?
&batch_normalization_187/ReadVariableOpReadVariableOp/batch_normalization_187_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_187/ReadVariableOp?
(batch_normalization_187/ReadVariableOp_1ReadVariableOp1batch_normalization_187_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_187/ReadVariableOp_1?
7batch_normalization_187/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_187_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_187/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_187_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_187/FusedBatchNormV3FusedBatchNormV3conv2d_195/Relu:activations:0.batch_normalization_187/ReadVariableOp:value:00batch_normalization_187/ReadVariableOp_1:value:0?batch_normalization_187/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_187/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_187/FusedBatchNormV3?
max_pooling2d_122/MaxPoolMaxPool,batch_normalization_187/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_122/MaxPool?
 conv2d_196/Conv2D/ReadVariableOpReadVariableOp)conv2d_196_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_196/Conv2D/ReadVariableOp?
conv2d_196/Conv2DConv2D"max_pooling2d_122/MaxPool:output:0(conv2d_196/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2
conv2d_196/Conv2D?
!conv2d_196/BiasAdd/ReadVariableOpReadVariableOp*conv2d_196_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_196/BiasAdd/ReadVariableOp?
conv2d_196/BiasAddBiasAddconv2d_196/Conv2D:output:0)conv2d_196/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_196/BiasAdd?
conv2d_196/ReluReluconv2d_196/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_196/Relu?
&batch_normalization_188/ReadVariableOpReadVariableOp/batch_normalization_188_readvariableop_resource*
_output_shapes
:0*
dtype02(
&batch_normalization_188/ReadVariableOp?
(batch_normalization_188/ReadVariableOp_1ReadVariableOp1batch_normalization_188_readvariableop_1_resource*
_output_shapes
:0*
dtype02*
(batch_normalization_188/ReadVariableOp_1?
7batch_normalization_188/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_188_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype029
7batch_normalization_188/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_188_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02;
9batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_188/FusedBatchNormV3FusedBatchNormV3conv2d_196/Relu:activations:0.batch_normalization_188/ReadVariableOp:value:00batch_normalization_188/ReadVariableOp_1:value:0?batch_normalization_188/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_188/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2*
(batch_normalization_188/FusedBatchNormV3?
dropout_6/IdentityIdentity,batch_normalization_188/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????02
dropout_6/Identity?
2global_average_pooling2d_61/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      24
2global_average_pooling2d_61/Mean/reduction_indices?
 global_average_pooling2d_61/MeanMeandropout_6/Identity:output:0;global_average_pooling2d_61/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????02"
 global_average_pooling2d_61/Mean?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02 
dense_61/MatMul/ReadVariableOp?
dense_61/MatMulMatMul)global_average_pooling2d_61/Mean:output:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/MatMul?
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_61/BiasAdd/ReadVariableOp?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/BiasAdd|
dense_61/SoftmaxSoftmaxdense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_61/Softmaxu
IdentityIdentitydense_61/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_186/FusedBatchNormV3/ReadVariableOp:^batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_186/ReadVariableOp)^batch_normalization_186/ReadVariableOp_18^batch_normalization_187/FusedBatchNormV3/ReadVariableOp:^batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_187/ReadVariableOp)^batch_normalization_187/ReadVariableOp_18^batch_normalization_188/FusedBatchNormV3/ReadVariableOp:^batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_188/ReadVariableOp)^batch_normalization_188/ReadVariableOp_1"^conv2d_194/BiasAdd/ReadVariableOp!^conv2d_194/Conv2D/ReadVariableOp"^conv2d_195/BiasAdd/ReadVariableOp!^conv2d_195/Conv2D/ReadVariableOp"^conv2d_196/BiasAdd/ReadVariableOp!^conv2d_196/Conv2D/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_186/FusedBatchNormV3/ReadVariableOp7batch_normalization_186/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_186/FusedBatchNormV3/ReadVariableOp_19batch_normalization_186/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_186/ReadVariableOp&batch_normalization_186/ReadVariableOp2T
(batch_normalization_186/ReadVariableOp_1(batch_normalization_186/ReadVariableOp_12r
7batch_normalization_187/FusedBatchNormV3/ReadVariableOp7batch_normalization_187/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_187/FusedBatchNormV3/ReadVariableOp_19batch_normalization_187/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_187/ReadVariableOp&batch_normalization_187/ReadVariableOp2T
(batch_normalization_187/ReadVariableOp_1(batch_normalization_187/ReadVariableOp_12r
7batch_normalization_188/FusedBatchNormV3/ReadVariableOp7batch_normalization_188/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_188/FusedBatchNormV3/ReadVariableOp_19batch_normalization_188/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_188/ReadVariableOp&batch_normalization_188/ReadVariableOp2T
(batch_normalization_188/ReadVariableOp_1(batch_normalization_188/ReadVariableOp_12F
!conv2d_194/BiasAdd/ReadVariableOp!conv2d_194/BiasAdd/ReadVariableOp2D
 conv2d_194/Conv2D/ReadVariableOp conv2d_194/Conv2D/ReadVariableOp2F
!conv2d_195/BiasAdd/ReadVariableOp!conv2d_195/BiasAdd/ReadVariableOp2D
 conv2d_195/Conv2D/ReadVariableOp conv2d_195/Conv2D/ReadVariableOp2F
!conv2d_196/BiasAdd/ReadVariableOp!conv2d_196/BiasAdd/ReadVariableOp2D
 conv2d_196/Conv2D/ReadVariableOp conv2d_196/Conv2D/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_2751848
conv2d_194_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 0

unknown_12:0

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_194_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_27506132
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_194_input
?
?
G__inference_conv2d_196_layer_call_and_return_conditional_losses_2751177

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????02
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????02

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?

J__inference_sequential_68_layer_call_and_return_conditional_losses_2751795
conv2d_194_input,
conv2d_194_2751743: 
conv2d_194_2751745:-
batch_normalization_186_2751748:-
batch_normalization_186_2751750:-
batch_normalization_186_2751752:-
batch_normalization_186_2751754:,
conv2d_195_2751758:  
conv2d_195_2751760: -
batch_normalization_187_2751763: -
batch_normalization_187_2751765: -
batch_normalization_187_2751767: -
batch_normalization_187_2751769: ,
conv2d_196_2751773: 0 
conv2d_196_2751775:0-
batch_normalization_188_2751778:0-
batch_normalization_188_2751780:0-
batch_normalization_188_2751782:0-
batch_normalization_188_2751784:0"
dense_61_2751789:0
dense_61_2751791:
identity??/batch_normalization_186/StatefulPartitionedCall?/batch_normalization_187/StatefulPartitionedCall?/batch_normalization_188/StatefulPartitionedCall?"conv2d_194/StatefulPartitionedCall?"conv2d_195/StatefulPartitionedCall?"conv2d_196/StatefulPartitionedCall? dense_61/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?
"conv2d_194/StatefulPartitionedCallStatefulPartitionedCallconv2d_194_inputconv2d_194_2751743conv2d_194_2751745*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_194_layer_call_and_return_conditional_losses_27510772$
"conv2d_194/StatefulPartitionedCall?
/batch_normalization_186/StatefulPartitionedCallStatefulPartitionedCall+conv2d_194/StatefulPartitionedCall:output:0batch_normalization_186_2751748batch_normalization_186_2751750batch_normalization_186_2751752batch_normalization_186_2751754*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_275147421
/batch_normalization_186/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall8batch_normalization_186/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_27511142#
!max_pooling2d_121/PartitionedCall?
"conv2d_195/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_195_2751758conv2d_195_2751760*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_195_layer_call_and_return_conditional_losses_27511272$
"conv2d_195/StatefulPartitionedCall?
/batch_normalization_187/StatefulPartitionedCallStatefulPartitionedCall+conv2d_195/StatefulPartitionedCall:output:0batch_normalization_187_2751763batch_normalization_187_2751765batch_normalization_187_2751767batch_normalization_187_2751769*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_275141521
/batch_normalization_187/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall8batch_normalization_187/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_27511642#
!max_pooling2d_122/PartitionedCall?
"conv2d_196/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_122/PartitionedCall:output:0conv2d_196_2751773conv2d_196_2751775*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_196_layer_call_and_return_conditional_losses_27511772$
"conv2d_196/StatefulPartitionedCall?
/batch_normalization_188/StatefulPartitionedCallStatefulPartitionedCall+conv2d_196/StatefulPartitionedCall:output:0batch_normalization_188_2751778batch_normalization_188_2751780batch_normalization_188_2751782batch_normalization_188_2751784*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_275135621
/batch_normalization_188/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_188/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_27513202#
!dropout_6/StatefulPartitionedCall?
+global_average_pooling2d_61/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_27512222-
+global_average_pooling2d_61/PartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_61/PartitionedCall:output:0dense_61_2751789dense_61_2751791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_27512352"
 dense_61/StatefulPartitionedCall?
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_186/StatefulPartitionedCall0^batch_normalization_187/StatefulPartitionedCall0^batch_normalization_188/StatefulPartitionedCall#^conv2d_194/StatefulPartitionedCall#^conv2d_195/StatefulPartitionedCall#^conv2d_196/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_186/StatefulPartitionedCall/batch_normalization_186/StatefulPartitionedCall2b
/batch_normalization_187/StatefulPartitionedCall/batch_normalization_187/StatefulPartitionedCall2b
/batch_normalization_188/StatefulPartitionedCall/batch_normalization_188/StatefulPartitionedCall2H
"conv2d_194/StatefulPartitionedCall"conv2d_194/StatefulPartitionedCall2H
"conv2d_195/StatefulPartitionedCall"conv2d_195/StatefulPartitionedCall2H
"conv2d_196/StatefulPartitionedCall"conv2d_196/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_194_input
?
?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752229

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????|?:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????|?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs
?
t
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_2751222

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????02
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_121_layer_call_fn_2752252

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_27507482
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_2752426

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_187_layer_call_fn_2752300

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_27507832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_187_layer_call_fn_2752313

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_27508272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_188_layer_call_fn_2752490

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_27512002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_186_layer_call_fn_2752162

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_27511002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????|?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs
?>
?

J__inference_sequential_68_layer_call_and_return_conditional_losses_2751740
conv2d_194_input,
conv2d_194_2751688: 
conv2d_194_2751690:-
batch_normalization_186_2751693:-
batch_normalization_186_2751695:-
batch_normalization_186_2751697:-
batch_normalization_186_2751699:,
conv2d_195_2751703:  
conv2d_195_2751705: -
batch_normalization_187_2751708: -
batch_normalization_187_2751710: -
batch_normalization_187_2751712: -
batch_normalization_187_2751714: ,
conv2d_196_2751718: 0 
conv2d_196_2751720:0-
batch_normalization_188_2751723:0-
batch_normalization_188_2751725:0-
batch_normalization_188_2751727:0-
batch_normalization_188_2751729:0"
dense_61_2751734:0
dense_61_2751736:
identity??/batch_normalization_186/StatefulPartitionedCall?/batch_normalization_187/StatefulPartitionedCall?/batch_normalization_188/StatefulPartitionedCall?"conv2d_194/StatefulPartitionedCall?"conv2d_195/StatefulPartitionedCall?"conv2d_196/StatefulPartitionedCall? dense_61/StatefulPartitionedCall?
"conv2d_194/StatefulPartitionedCallStatefulPartitionedCallconv2d_194_inputconv2d_194_2751688conv2d_194_2751690*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_194_layer_call_and_return_conditional_losses_27510772$
"conv2d_194/StatefulPartitionedCall?
/batch_normalization_186/StatefulPartitionedCallStatefulPartitionedCall+conv2d_194/StatefulPartitionedCall:output:0batch_normalization_186_2751693batch_normalization_186_2751695batch_normalization_186_2751697batch_normalization_186_2751699*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_275110021
/batch_normalization_186/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall8batch_normalization_186/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_27511142#
!max_pooling2d_121/PartitionedCall?
"conv2d_195/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_195_2751703conv2d_195_2751705*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_195_layer_call_and_return_conditional_losses_27511272$
"conv2d_195/StatefulPartitionedCall?
/batch_normalization_187/StatefulPartitionedCallStatefulPartitionedCall+conv2d_195/StatefulPartitionedCall:output:0batch_normalization_187_2751708batch_normalization_187_2751710batch_normalization_187_2751712batch_normalization_187_2751714*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_275115021
/batch_normalization_187/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall8batch_normalization_187/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_27511642#
!max_pooling2d_122/PartitionedCall?
"conv2d_196/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_122/PartitionedCall:output:0conv2d_196_2751718conv2d_196_2751720*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_196_layer_call_and_return_conditional_losses_27511772$
"conv2d_196/StatefulPartitionedCall?
/batch_normalization_188/StatefulPartitionedCallStatefulPartitionedCall+conv2d_196/StatefulPartitionedCall:output:0batch_normalization_188_2751723batch_normalization_188_2751725batch_normalization_188_2751727batch_normalization_188_2751729*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_275120021
/batch_normalization_188/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall8batch_normalization_188/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_27512152
dropout_6/PartitionedCall?
+global_average_pooling2d_61/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_27512222-
+global_average_pooling2d_61/PartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_61/PartitionedCall:output:0dense_61_2751734dense_61_2751736*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_27512352"
 dense_61/StatefulPartitionedCall?
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_186/StatefulPartitionedCall0^batch_normalization_187/StatefulPartitionedCall0^batch_normalization_188/StatefulPartitionedCall#^conv2d_194/StatefulPartitionedCall#^conv2d_195/StatefulPartitionedCall#^conv2d_196/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_186/StatefulPartitionedCall/batch_normalization_186/StatefulPartitionedCall2b
/batch_normalization_187/StatefulPartitionedCall/batch_normalization_187/StatefulPartitionedCall2b
/batch_normalization_188/StatefulPartitionedCall/batch_normalization_188/StatefulPartitionedCall2H
"conv2d_194/StatefulPartitionedCall"conv2d_194/StatefulPartitionedCall2H
"conv2d_195/StatefulPartitionedCall"conv2d_195/StatefulPartitionedCall2H
"conv2d_196/StatefulPartitionedCall"conv2d_196/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_194_input
??
?

J__inference_sequential_68_layer_call_and_return_conditional_losses_2751597

inputs,
conv2d_194_2751545: 
conv2d_194_2751547:-
batch_normalization_186_2751550:-
batch_normalization_186_2751552:-
batch_normalization_186_2751554:-
batch_normalization_186_2751556:,
conv2d_195_2751560:  
conv2d_195_2751562: -
batch_normalization_187_2751565: -
batch_normalization_187_2751567: -
batch_normalization_187_2751569: -
batch_normalization_187_2751571: ,
conv2d_196_2751575: 0 
conv2d_196_2751577:0-
batch_normalization_188_2751580:0-
batch_normalization_188_2751582:0-
batch_normalization_188_2751584:0-
batch_normalization_188_2751586:0"
dense_61_2751591:0
dense_61_2751593:
identity??/batch_normalization_186/StatefulPartitionedCall?/batch_normalization_187/StatefulPartitionedCall?/batch_normalization_188/StatefulPartitionedCall?"conv2d_194/StatefulPartitionedCall?"conv2d_195/StatefulPartitionedCall?"conv2d_196/StatefulPartitionedCall? dense_61/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?
"conv2d_194/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_194_2751545conv2d_194_2751547*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_194_layer_call_and_return_conditional_losses_27510772$
"conv2d_194/StatefulPartitionedCall?
/batch_normalization_186/StatefulPartitionedCallStatefulPartitionedCall+conv2d_194/StatefulPartitionedCall:output:0batch_normalization_186_2751550batch_normalization_186_2751552batch_normalization_186_2751554batch_normalization_186_2751556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_275147421
/batch_normalization_186/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall8batch_normalization_186/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_27511142#
!max_pooling2d_121/PartitionedCall?
"conv2d_195/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_195_2751560conv2d_195_2751562*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_195_layer_call_and_return_conditional_losses_27511272$
"conv2d_195/StatefulPartitionedCall?
/batch_normalization_187/StatefulPartitionedCallStatefulPartitionedCall+conv2d_195/StatefulPartitionedCall:output:0batch_normalization_187_2751565batch_normalization_187_2751567batch_normalization_187_2751569batch_normalization_187_2751571*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_275141521
/batch_normalization_187/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall8batch_normalization_187/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_27511642#
!max_pooling2d_122/PartitionedCall?
"conv2d_196/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_122/PartitionedCall:output:0conv2d_196_2751575conv2d_196_2751577*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_196_layer_call_and_return_conditional_losses_27511772$
"conv2d_196/StatefulPartitionedCall?
/batch_normalization_188/StatefulPartitionedCallStatefulPartitionedCall+conv2d_196/StatefulPartitionedCall:output:0batch_normalization_188_2751580batch_normalization_188_2751582batch_normalization_188_2751584batch_normalization_188_2751586*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_275135621
/batch_normalization_188/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_188/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_27513202#
!dropout_6/StatefulPartitionedCall?
+global_average_pooling2d_61/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_27512222-
+global_average_pooling2d_61/PartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_61/PartitionedCall:output:0dense_61_2751591dense_61_2751593*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_27512352"
 dense_61/StatefulPartitionedCall?
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_186/StatefulPartitionedCall0^batch_normalization_187/StatefulPartitionedCall0^batch_normalization_188/StatefulPartitionedCall#^conv2d_194/StatefulPartitionedCall#^conv2d_195/StatefulPartitionedCall#^conv2d_196/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_186/StatefulPartitionedCall/batch_normalization_186/StatefulPartitionedCall2b
/batch_normalization_187/StatefulPartitionedCall/batch_normalization_187/StatefulPartitionedCall2b
/batch_normalization_188/StatefulPartitionedCall/batch_normalization_188/StatefulPartitionedCall2H
"conv2d_194/StatefulPartitionedCall"conv2d_194/StatefulPartitionedCall2H
"conv2d_195/StatefulPartitionedCall"conv2d_195/StatefulPartitionedCall2H
"conv2d_196/StatefulPartitionedCall"conv2d_196/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2750635

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_187_layer_call_fn_2752326

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_27511502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752411

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2751200

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????02

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2750975

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
t
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_2752624

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????02
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2750827

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_122_layer_call_fn_2752416

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_27508962
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_196_layer_call_fn_2752440

inputs!
unknown: 0
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_196_layer_call_and_return_conditional_losses_27511772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752557

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????02

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752575

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????02

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
G__inference_conv2d_194_layer_call_and_return_conditional_losses_2751077

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????|?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_194_layer_call_and_return_conditional_losses_2752123

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????|?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_2752590

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????02

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????02

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_188_layer_call_fn_2752503

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_27513562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752193

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2751415

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_186_layer_call_fn_2752149

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_27506792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2750931

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752211

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_dense_61_layer_call_fn_2752633

inputs
unknown:0
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_61_layer_call_and_return_conditional_losses_27512352
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
??
?
J__inference_sequential_68_layer_call_and_return_conditional_losses_2752103

inputsC
)conv2d_194_conv2d_readvariableop_resource:8
*conv2d_194_biasadd_readvariableop_resource:=
/batch_normalization_186_readvariableop_resource:?
1batch_normalization_186_readvariableop_1_resource:N
@batch_normalization_186_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_186_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_195_conv2d_readvariableop_resource: 8
*conv2d_195_biasadd_readvariableop_resource: =
/batch_normalization_187_readvariableop_resource: ?
1batch_normalization_187_readvariableop_1_resource: N
@batch_normalization_187_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_187_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_196_conv2d_readvariableop_resource: 08
*conv2d_196_biasadd_readvariableop_resource:0=
/batch_normalization_188_readvariableop_resource:0?
1batch_normalization_188_readvariableop_1_resource:0N
@batch_normalization_188_fusedbatchnormv3_readvariableop_resource:0P
Bbatch_normalization_188_fusedbatchnormv3_readvariableop_1_resource:09
'dense_61_matmul_readvariableop_resource:06
(dense_61_biasadd_readvariableop_resource:
identity??&batch_normalization_186/AssignNewValue?(batch_normalization_186/AssignNewValue_1?7batch_normalization_186/FusedBatchNormV3/ReadVariableOp?9batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_186/ReadVariableOp?(batch_normalization_186/ReadVariableOp_1?&batch_normalization_187/AssignNewValue?(batch_normalization_187/AssignNewValue_1?7batch_normalization_187/FusedBatchNormV3/ReadVariableOp?9batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_187/ReadVariableOp?(batch_normalization_187/ReadVariableOp_1?&batch_normalization_188/AssignNewValue?(batch_normalization_188/AssignNewValue_1?7batch_normalization_188/FusedBatchNormV3/ReadVariableOp?9batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_188/ReadVariableOp?(batch_normalization_188/ReadVariableOp_1?!conv2d_194/BiasAdd/ReadVariableOp? conv2d_194/Conv2D/ReadVariableOp?!conv2d_195/BiasAdd/ReadVariableOp? conv2d_195/Conv2D/ReadVariableOp?!conv2d_196/BiasAdd/ReadVariableOp? conv2d_196/Conv2D/ReadVariableOp?dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?
 conv2d_194/Conv2D/ReadVariableOpReadVariableOp)conv2d_194_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_194/Conv2D/ReadVariableOp?
conv2d_194/Conv2DConv2Dinputs(conv2d_194/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?*
paddingVALID*
strides
2
conv2d_194/Conv2D?
!conv2d_194/BiasAdd/ReadVariableOpReadVariableOp*conv2d_194_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_194/BiasAdd/ReadVariableOp?
conv2d_194/BiasAddBiasAddconv2d_194/Conv2D:output:0)conv2d_194/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????|?2
conv2d_194/BiasAdd?
conv2d_194/ReluReluconv2d_194/BiasAdd:output:0*
T0*0
_output_shapes
:?????????|?2
conv2d_194/Relu?
&batch_normalization_186/ReadVariableOpReadVariableOp/batch_normalization_186_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_186/ReadVariableOp?
(batch_normalization_186/ReadVariableOp_1ReadVariableOp1batch_normalization_186_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_186/ReadVariableOp_1?
7batch_normalization_186/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_186_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_186/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_186_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_186/FusedBatchNormV3FusedBatchNormV3conv2d_194/Relu:activations:0.batch_normalization_186/ReadVariableOp:value:00batch_normalization_186/ReadVariableOp_1:value:0?batch_normalization_186/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_186/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????|?:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_186/FusedBatchNormV3?
&batch_normalization_186/AssignNewValueAssignVariableOp@batch_normalization_186_fusedbatchnormv3_readvariableop_resource5batch_normalization_186/FusedBatchNormV3:batch_mean:08^batch_normalization_186/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_186/AssignNewValue?
(batch_normalization_186/AssignNewValue_1AssignVariableOpBbatch_normalization_186_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_186/FusedBatchNormV3:batch_variance:0:^batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_186/AssignNewValue_1?
max_pooling2d_121/MaxPoolMaxPool,batch_normalization_186/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_121/MaxPool?
 conv2d_195/Conv2D/ReadVariableOpReadVariableOp)conv2d_195_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_195/Conv2D/ReadVariableOp?
conv2d_195/Conv2DConv2D"max_pooling2d_121/MaxPool:output:0(conv2d_195/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_195/Conv2D?
!conv2d_195/BiasAdd/ReadVariableOpReadVariableOp*conv2d_195_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_195/BiasAdd/ReadVariableOp?
conv2d_195/BiasAddBiasAddconv2d_195/Conv2D:output:0)conv2d_195/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_195/BiasAdd?
conv2d_195/ReluReluconv2d_195/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_195/Relu?
&batch_normalization_187/ReadVariableOpReadVariableOp/batch_normalization_187_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_187/ReadVariableOp?
(batch_normalization_187/ReadVariableOp_1ReadVariableOp1batch_normalization_187_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_187/ReadVariableOp_1?
7batch_normalization_187/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_187_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_187/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_187_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_187/FusedBatchNormV3FusedBatchNormV3conv2d_195/Relu:activations:0.batch_normalization_187/ReadVariableOp:value:00batch_normalization_187/ReadVariableOp_1:value:0?batch_normalization_187/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_187/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_187/FusedBatchNormV3?
&batch_normalization_187/AssignNewValueAssignVariableOp@batch_normalization_187_fusedbatchnormv3_readvariableop_resource5batch_normalization_187/FusedBatchNormV3:batch_mean:08^batch_normalization_187/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_187/AssignNewValue?
(batch_normalization_187/AssignNewValue_1AssignVariableOpBbatch_normalization_187_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_187/FusedBatchNormV3:batch_variance:0:^batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_187/AssignNewValue_1?
max_pooling2d_122/MaxPoolMaxPool,batch_normalization_187/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_122/MaxPool?
 conv2d_196/Conv2D/ReadVariableOpReadVariableOp)conv2d_196_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_196/Conv2D/ReadVariableOp?
conv2d_196/Conv2DConv2D"max_pooling2d_122/MaxPool:output:0(conv2d_196/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2
conv2d_196/Conv2D?
!conv2d_196/BiasAdd/ReadVariableOpReadVariableOp*conv2d_196_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_196/BiasAdd/ReadVariableOp?
conv2d_196/BiasAddBiasAddconv2d_196/Conv2D:output:0)conv2d_196/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_196/BiasAdd?
conv2d_196/ReluReluconv2d_196/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_196/Relu?
&batch_normalization_188/ReadVariableOpReadVariableOp/batch_normalization_188_readvariableop_resource*
_output_shapes
:0*
dtype02(
&batch_normalization_188/ReadVariableOp?
(batch_normalization_188/ReadVariableOp_1ReadVariableOp1batch_normalization_188_readvariableop_1_resource*
_output_shapes
:0*
dtype02*
(batch_normalization_188/ReadVariableOp_1?
7batch_normalization_188/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_188_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype029
7batch_normalization_188/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_188_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02;
9batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_188/FusedBatchNormV3FusedBatchNormV3conv2d_196/Relu:activations:0.batch_normalization_188/ReadVariableOp:value:00batch_normalization_188/ReadVariableOp_1:value:0?batch_normalization_188/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_188/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_188/FusedBatchNormV3?
&batch_normalization_188/AssignNewValueAssignVariableOp@batch_normalization_188_fusedbatchnormv3_readvariableop_resource5batch_normalization_188/FusedBatchNormV3:batch_mean:08^batch_normalization_188/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_188/AssignNewValue?
(batch_normalization_188/AssignNewValue_1AssignVariableOpBbatch_normalization_188_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_188/FusedBatchNormV3:batch_variance:0:^batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_188/AssignNewValue_1w
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@2
dropout_6/dropout/Const?
dropout_6/dropout/MulMul,batch_normalization_188/FusedBatchNormV3:y:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout_6/dropout/Mul?
dropout_6/dropout/ShapeShape,batch_normalization_188/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333?2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout_6/dropout/Mul_1?
2global_average_pooling2d_61/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      24
2global_average_pooling2d_61/Mean/reduction_indices?
 global_average_pooling2d_61/MeanMeandropout_6/dropout/Mul_1:z:0;global_average_pooling2d_61/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????02"
 global_average_pooling2d_61/Mean?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02 
dense_61/MatMul/ReadVariableOp?
dense_61/MatMulMatMul)global_average_pooling2d_61/Mean:output:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/MatMul?
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_61/BiasAdd/ReadVariableOp?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/BiasAdd|
dense_61/SoftmaxSoftmaxdense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_61/Softmaxu
IdentityIdentitydense_61/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?	
NoOpNoOp'^batch_normalization_186/AssignNewValue)^batch_normalization_186/AssignNewValue_18^batch_normalization_186/FusedBatchNormV3/ReadVariableOp:^batch_normalization_186/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_186/ReadVariableOp)^batch_normalization_186/ReadVariableOp_1'^batch_normalization_187/AssignNewValue)^batch_normalization_187/AssignNewValue_18^batch_normalization_187/FusedBatchNormV3/ReadVariableOp:^batch_normalization_187/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_187/ReadVariableOp)^batch_normalization_187/ReadVariableOp_1'^batch_normalization_188/AssignNewValue)^batch_normalization_188/AssignNewValue_18^batch_normalization_188/FusedBatchNormV3/ReadVariableOp:^batch_normalization_188/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_188/ReadVariableOp)^batch_normalization_188/ReadVariableOp_1"^conv2d_194/BiasAdd/ReadVariableOp!^conv2d_194/Conv2D/ReadVariableOp"^conv2d_195/BiasAdd/ReadVariableOp!^conv2d_195/Conv2D/ReadVariableOp"^conv2d_196/BiasAdd/ReadVariableOp!^conv2d_196/Conv2D/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_186/AssignNewValue&batch_normalization_186/AssignNewValue2T
(batch_normalization_186/AssignNewValue_1(batch_normalization_186/AssignNewValue_12r
7batch_normalization_186/FusedBatchNormV3/ReadVariableOp7batch_normalization_186/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_186/FusedBatchNormV3/ReadVariableOp_19batch_normalization_186/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_186/ReadVariableOp&batch_normalization_186/ReadVariableOp2T
(batch_normalization_186/ReadVariableOp_1(batch_normalization_186/ReadVariableOp_12P
&batch_normalization_187/AssignNewValue&batch_normalization_187/AssignNewValue2T
(batch_normalization_187/AssignNewValue_1(batch_normalization_187/AssignNewValue_12r
7batch_normalization_187/FusedBatchNormV3/ReadVariableOp7batch_normalization_187/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_187/FusedBatchNormV3/ReadVariableOp_19batch_normalization_187/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_187/ReadVariableOp&batch_normalization_187/ReadVariableOp2T
(batch_normalization_187/ReadVariableOp_1(batch_normalization_187/ReadVariableOp_12P
&batch_normalization_188/AssignNewValue&batch_normalization_188/AssignNewValue2T
(batch_normalization_188/AssignNewValue_1(batch_normalization_188/AssignNewValue_12r
7batch_normalization_188/FusedBatchNormV3/ReadVariableOp7batch_normalization_188/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_188/FusedBatchNormV3/ReadVariableOp_19batch_normalization_188/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_188/ReadVariableOp&batch_normalization_188/ReadVariableOp2T
(batch_normalization_188/ReadVariableOp_1(batch_normalization_188/ReadVariableOp_12F
!conv2d_194/BiasAdd/ReadVariableOp!conv2d_194/BiasAdd/ReadVariableOp2D
 conv2d_194/Conv2D/ReadVariableOp conv2d_194/Conv2D/ReadVariableOp2F
!conv2d_195/BiasAdd/ReadVariableOp!conv2d_195/BiasAdd/ReadVariableOp2D
 conv2d_195/Conv2D/ReadVariableOp conv2d_195/Conv2D/ReadVariableOp2F
!conv2d_196/BiasAdd/ReadVariableOp!conv2d_196/BiasAdd/ReadVariableOp2D
 conv2d_196/Conv2D/ReadVariableOp conv2d_196/Conv2D/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_68_layer_call_fn_2751685
conv2d_194_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 0

unknown_12:0

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_194_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_68_layer_call_and_return_conditional_losses_27515972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_194_input
?
Y
=__inference_global_average_pooling2d_61_layer_call_fn_2752612

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_27512222
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
,__inference_conv2d_194_layer_call_fn_2752112

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????|?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_194_layer_call_and_return_conditional_losses_27510772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_121_layer_call_fn_2752257

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_27511142
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????|?:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752375

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_2751164

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2750783

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
E__inference_dense_61_layer_call_and_return_conditional_losses_2751235

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_2752431

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
/__inference_sequential_68_layer_call_fn_2751938

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 0

unknown_12:0

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_68_layer_call_and_return_conditional_losses_27515972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:???????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752357

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2751474

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????|?:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????|?2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????|?: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????|?
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_194_inputC
"serving_default_conv2d_194_input:0???????????<
dense_610
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
!	variables
"regularization_losses
#trainable_variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

%kernel
&bias
'	variables
(regularization_losses
)trainable_variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
+axis
	,gamma
-beta
.moving_mean
/moving_variance
0	variables
1regularization_losses
2trainable_variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
4	variables
5regularization_losses
6trainable_variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

8kernel
9bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Uiter

Vbeta_1

Wbeta_2
	Xdecay
Ylearning_ratem?m?m?m?%m?&m?,m?-m?8m?9m??m?@m?Om?Pm?v?v?v?v?%v?&v?,v?-v?8v?9v??v?@v?Ov?Pv?"
	optimizer
?
0
1
2
3
4
5
%6
&7
,8
-9
.10
/11
812
913
?14
@15
A16
B17
O18
P19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
%4
&5
,6
-7
88
99
?10
@11
O12
P13"
trackable_list_wrapper
?
Zlayer_metrics
	variables
[metrics
\non_trainable_variables
regularization_losses
trainable_variables
]layer_regularization_losses

^layers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)2conv2d_194/kernel
:2conv2d_194/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
_layer_metrics
	variables
`metrics
anon_trainable_variables
regularization_losses
trainable_variables
blayer_regularization_losses

clayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_186/gamma
*:(2batch_normalization_186/beta
3:1 (2#batch_normalization_186/moving_mean
7:5 (2'batch_normalization_186/moving_variance
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
dlayer_metrics
	variables
emetrics
fnon_trainable_variables
regularization_losses
trainable_variables
glayer_regularization_losses

hlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ilayer_metrics
!	variables
jmetrics
knon_trainable_variables
"regularization_losses
#trainable_variables
llayer_regularization_losses

mlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_195/kernel
: 2conv2d_195/bias
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
nlayer_metrics
'	variables
ometrics
pnon_trainable_variables
(regularization_losses
)trainable_variables
qlayer_regularization_losses

rlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:) 2batch_normalization_187/gamma
*:( 2batch_normalization_187/beta
3:1  (2#batch_normalization_187/moving_mean
7:5  (2'batch_normalization_187/moving_variance
<
,0
-1
.2
/3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
slayer_metrics
0	variables
tmetrics
unon_trainable_variables
1regularization_losses
2trainable_variables
vlayer_regularization_losses

wlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
xlayer_metrics
4	variables
ymetrics
znon_trainable_variables
5regularization_losses
6trainable_variables
{layer_regularization_losses

|layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 02conv2d_196/kernel
:02conv2d_196/bias
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
}layer_metrics
:	variables
~metrics
non_trainable_variables
;regularization_losses
<trainable_variables
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)02batch_normalization_188/gamma
*:(02batch_normalization_188/beta
3:10 (2#batch_normalization_188/moving_mean
7:50 (2'batch_normalization_188/moving_variance
<
?0
@1
A2
B3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
?
?layer_metrics
C	variables
?metrics
?non_trainable_variables
Dregularization_losses
Etrainable_variables
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
G	variables
?metrics
?non_trainable_variables
Hregularization_losses
Itrainable_variables
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
K	variables
?metrics
?non_trainable_variables
Lregularization_losses
Mtrainable_variables
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:02dense_61/kernel
:2dense_61/bias
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
?
?layer_metrics
Q	variables
?metrics
?non_trainable_variables
Rregularization_losses
Strainable_variables
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
J
0
1
.2
/3
A4
B5"
trackable_list_wrapper
 "
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
.
0
1"
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
.
.0
/1"
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
.
A0
B1"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
0:.2Adam/conv2d_194/kernel/m
": 2Adam/conv2d_194/bias/m
0:.2$Adam/batch_normalization_186/gamma/m
/:-2#Adam/batch_normalization_186/beta/m
0:. 2Adam/conv2d_195/kernel/m
":  2Adam/conv2d_195/bias/m
0:. 2$Adam/batch_normalization_187/gamma/m
/:- 2#Adam/batch_normalization_187/beta/m
0:. 02Adam/conv2d_196/kernel/m
": 02Adam/conv2d_196/bias/m
0:.02$Adam/batch_normalization_188/gamma/m
/:-02#Adam/batch_normalization_188/beta/m
&:$02Adam/dense_61/kernel/m
 :2Adam/dense_61/bias/m
0:.2Adam/conv2d_194/kernel/v
": 2Adam/conv2d_194/bias/v
0:.2$Adam/batch_normalization_186/gamma/v
/:-2#Adam/batch_normalization_186/beta/v
0:. 2Adam/conv2d_195/kernel/v
":  2Adam/conv2d_195/bias/v
0:. 2$Adam/batch_normalization_187/gamma/v
/:- 2#Adam/batch_normalization_187/beta/v
0:. 02Adam/conv2d_196/kernel/v
": 02Adam/conv2d_196/bias/v
0:.02$Adam/batch_normalization_188/gamma/v
/:-02#Adam/batch_normalization_188/beta/v
&:$02Adam/dense_61/kernel/v
 :2Adam/dense_61/bias/v
?2?
/__inference_sequential_68_layer_call_fn_2751285
/__inference_sequential_68_layer_call_fn_2751893
/__inference_sequential_68_layer_call_fn_2751938
/__inference_sequential_68_layer_call_fn_2751685?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_2750613conv2d_194_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_sequential_68_layer_call_and_return_conditional_losses_2752017
J__inference_sequential_68_layer_call_and_return_conditional_losses_2752103
J__inference_sequential_68_layer_call_and_return_conditional_losses_2751740
J__inference_sequential_68_layer_call_and_return_conditional_losses_2751795?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_conv2d_194_layer_call_fn_2752112?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_194_layer_call_and_return_conditional_losses_2752123?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
9__inference_batch_normalization_186_layer_call_fn_2752136
9__inference_batch_normalization_186_layer_call_fn_2752149
9__inference_batch_normalization_186_layer_call_fn_2752162
9__inference_batch_normalization_186_layer_call_fn_2752175?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752193
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752211
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752229
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752247?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_max_pooling2d_121_layer_call_fn_2752252
3__inference_max_pooling2d_121_layer_call_fn_2752257?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_2752262
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_2752267?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv2d_195_layer_call_fn_2752276?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_195_layer_call_and_return_conditional_losses_2752287?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
9__inference_batch_normalization_187_layer_call_fn_2752300
9__inference_batch_normalization_187_layer_call_fn_2752313
9__inference_batch_normalization_187_layer_call_fn_2752326
9__inference_batch_normalization_187_layer_call_fn_2752339?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752357
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752375
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752393
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752411?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_max_pooling2d_122_layer_call_fn_2752416
3__inference_max_pooling2d_122_layer_call_fn_2752421?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_2752426
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_2752431?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv2d_196_layer_call_fn_2752440?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_196_layer_call_and_return_conditional_losses_2752451?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
9__inference_batch_normalization_188_layer_call_fn_2752464
9__inference_batch_normalization_188_layer_call_fn_2752477
9__inference_batch_normalization_188_layer_call_fn_2752490
9__inference_batch_normalization_188_layer_call_fn_2752503?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752521
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752539
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752557
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752575?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_6_layer_call_fn_2752580
+__inference_dropout_6_layer_call_fn_2752585?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_6_layer_call_and_return_conditional_losses_2752590
F__inference_dropout_6_layer_call_and_return_conditional_losses_2752602?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
=__inference_global_average_pooling2d_61_layer_call_fn_2752607
=__inference_global_average_pooling2d_61_layer_call_fn_2752612?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_2752618
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_2752624?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_61_layer_call_fn_2752633?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_61_layer_call_and_return_conditional_losses_2752644?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2751848conv2d_194_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_2750613?%&,-./89?@ABOPC?@
9?6
4?1
conv2d_194_input???????????
? "3?0
.
dense_61"?
dense_61??????????
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752193?M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752211?M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752229t<?9
2?/
)?&
inputs?????????|?
p 
? ".?+
$?!
0?????????|?
? ?
T__inference_batch_normalization_186_layer_call_and_return_conditional_losses_2752247t<?9
2?/
)?&
inputs?????????|?
p
? ".?+
$?!
0?????????|?
? ?
9__inference_batch_normalization_186_layer_call_fn_2752136?M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
9__inference_batch_normalization_186_layer_call_fn_2752149?M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
9__inference_batch_normalization_186_layer_call_fn_2752162g<?9
2?/
)?&
inputs?????????|?
p 
? "!??????????|??
9__inference_batch_normalization_186_layer_call_fn_2752175g<?9
2?/
)?&
inputs?????????|?
p
? "!??????????|??
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752357?,-./M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752375?,-./M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752393r,-./;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
T__inference_batch_normalization_187_layer_call_and_return_conditional_losses_2752411r,-./;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
9__inference_batch_normalization_187_layer_call_fn_2752300?,-./M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_187_layer_call_fn_2752313?,-./M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_187_layer_call_fn_2752326e,-./;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
9__inference_batch_normalization_187_layer_call_fn_2752339e,-./;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752521??@ABM?J
C?@
:?7
inputs+???????????????????????????0
p 
? "??<
5?2
0+???????????????????????????0
? ?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752539??@ABM?J
C?@
:?7
inputs+???????????????????????????0
p
? "??<
5?2
0+???????????????????????????0
? ?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752557r?@AB;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
T__inference_batch_normalization_188_layer_call_and_return_conditional_losses_2752575r?@AB;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
9__inference_batch_normalization_188_layer_call_fn_2752464??@ABM?J
C?@
:?7
inputs+???????????????????????????0
p 
? "2?/+???????????????????????????0?
9__inference_batch_normalization_188_layer_call_fn_2752477??@ABM?J
C?@
:?7
inputs+???????????????????????????0
p
? "2?/+???????????????????????????0?
9__inference_batch_normalization_188_layer_call_fn_2752490e?@AB;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
9__inference_batch_normalization_188_layer_call_fn_2752503e?@AB;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
G__inference_conv2d_194_layer_call_and_return_conditional_losses_2752123o9?6
/?,
*?'
inputs???????????
? ".?+
$?!
0?????????|?
? ?
,__inference_conv2d_194_layer_call_fn_2752112b9?6
/?,
*?'
inputs???????????
? "!??????????|??
G__inference_conv2d_195_layer_call_and_return_conditional_losses_2752287l%&7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_195_layer_call_fn_2752276_%&7?4
-?*
(?%
inputs?????????
? " ?????????? ?
G__inference_conv2d_196_layer_call_and_return_conditional_losses_2752451l897?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????0
? ?
,__inference_conv2d_196_layer_call_fn_2752440_897?4
-?*
(?%
inputs????????? 
? " ??????????0?
E__inference_dense_61_layer_call_and_return_conditional_losses_2752644\OP/?,
%?"
 ?
inputs?????????0
? "%?"
?
0?????????
? }
*__inference_dense_61_layer_call_fn_2752633OOP/?,
%?"
 ?
inputs?????????0
? "???????????
F__inference_dropout_6_layer_call_and_return_conditional_losses_2752590l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
F__inference_dropout_6_layer_call_and_return_conditional_losses_2752602l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
+__inference_dropout_6_layer_call_fn_2752580_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
+__inference_dropout_6_layer_call_fn_2752585_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_2752618?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
X__inference_global_average_pooling2d_61_layer_call_and_return_conditional_losses_2752624`7?4
-?*
(?%
inputs?????????0
? "%?"
?
0?????????0
? ?
=__inference_global_average_pooling2d_61_layer_call_fn_2752607wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
=__inference_global_average_pooling2d_61_layer_call_fn_2752612S7?4
-?*
(?%
inputs?????????0
? "??????????0?
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_2752262?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_2752267i8?5
.?+
)?&
inputs?????????|?
? "-?*
#? 
0?????????
? ?
3__inference_max_pooling2d_121_layer_call_fn_2752252?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_121_layer_call_fn_2752257\8?5
.?+
)?&
inputs?????????|?
? " ???????????
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_2752426?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_2752431h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
3__inference_max_pooling2d_122_layer_call_fn_2752416?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_122_layer_call_fn_2752421[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
J__inference_sequential_68_layer_call_and_return_conditional_losses_2751740?%&,-./89?@ABOPK?H
A?>
4?1
conv2d_194_input???????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_68_layer_call_and_return_conditional_losses_2751795?%&,-./89?@ABOPK?H
A?>
4?1
conv2d_194_input???????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_68_layer_call_and_return_conditional_losses_2752017?%&,-./89?@ABOPA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_68_layer_call_and_return_conditional_losses_2752103?%&,-./89?@ABOPA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_68_layer_call_fn_2751285}%&,-./89?@ABOPK?H
A?>
4?1
conv2d_194_input???????????
p 

 
? "???????????
/__inference_sequential_68_layer_call_fn_2751685}%&,-./89?@ABOPK?H
A?>
4?1
conv2d_194_input???????????
p

 
? "???????????
/__inference_sequential_68_layer_call_fn_2751893s%&,-./89?@ABOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
/__inference_sequential_68_layer_call_fn_2751938s%&,-./89?@ABOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_2751848?%&,-./89?@ABOPW?T
? 
M?J
H
conv2d_194_input4?1
conv2d_194_input???????????"3?0
.
dense_61"?
dense_61?????????