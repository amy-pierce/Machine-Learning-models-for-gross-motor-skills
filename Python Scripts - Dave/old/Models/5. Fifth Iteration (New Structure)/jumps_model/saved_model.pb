��
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.1.02v2.1.0-rc2-17-ge5bf8de4108��	
�
sequential_2/dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*-
shared_namesequential_2/dense_14/kernel
�
0sequential_2/dense_14/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_14/kernel*
_output_shapes
:	d�*
dtype0
�
sequential_2/dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namesequential_2/dense_14/bias
�
.sequential_2/dense_14/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_14/bias*
_output_shapes	
:�*
dtype0
�
sequential_2/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namesequential_2/dense_15/kernel
�
0sequential_2/dense_15/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_15/kernel* 
_output_shapes
:
��*
dtype0
�
sequential_2/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namesequential_2/dense_15/bias
�
.sequential_2/dense_15/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_15/bias*
_output_shapes	
:�*
dtype0
�
sequential_2/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namesequential_2/dense_16/kernel
�
0sequential_2/dense_16/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_16/kernel* 
_output_shapes
:
��*
dtype0
�
sequential_2/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namesequential_2/dense_16/bias
�
.sequential_2/dense_16/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_16/bias*
_output_shapes	
:�*
dtype0
�
sequential_2/dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namesequential_2/dense_17/kernel
�
0sequential_2/dense_17/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_17/kernel* 
_output_shapes
:
��*
dtype0
�
sequential_2/dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namesequential_2/dense_17/bias
�
.sequential_2/dense_17/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_17/bias*
_output_shapes	
:�*
dtype0
�
sequential_2/dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namesequential_2/dense_18/kernel
�
0sequential_2/dense_18/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_18/kernel* 
_output_shapes
:
��*
dtype0
�
sequential_2/dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namesequential_2/dense_18/bias
�
.sequential_2/dense_18/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_18/bias*
_output_shapes	
:�*
dtype0
�
sequential_2/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namesequential_2/dense_19/kernel
�
0sequential_2/dense_19/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_19/kernel* 
_output_shapes
:
��*
dtype0
�
sequential_2/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namesequential_2/dense_19/bias
�
.sequential_2/dense_19/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_19/bias*
_output_shapes	
:�*
dtype0
�
sequential_2/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_namesequential_2/dense_20/kernel
�
0sequential_2/dense_20/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_20/kernel*
_output_shapes
:	�*
dtype0
�
sequential_2/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namesequential_2/dense_20/bias
�
.sequential_2/dense_20/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_20/bias*
_output_shapes
:*
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
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
�
$Nadam/sequential_2/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Nadam/sequential_2/dense_14/kernel/m
�
8Nadam/sequential_2/dense_14/kernel/m/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_14/kernel/m*
_output_shapes
:	d�*
dtype0
�
"Nadam/sequential_2/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_14/bias/m
�
6Nadam/sequential_2/dense_14/bias/m/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_14/bias/m*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_15/kernel/m
�
8Nadam/sequential_2/dense_15/kernel/m/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_15/kernel/m* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_15/bias/m
�
6Nadam/sequential_2/dense_15/bias/m/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_15/bias/m*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_16/kernel/m
�
8Nadam/sequential_2/dense_16/kernel/m/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_16/kernel/m* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_16/bias/m
�
6Nadam/sequential_2/dense_16/bias/m/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_16/bias/m*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_17/kernel/m
�
8Nadam/sequential_2/dense_17/kernel/m/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_17/kernel/m* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_17/bias/m
�
6Nadam/sequential_2/dense_17/bias/m/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_17/bias/m*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_18/kernel/m
�
8Nadam/sequential_2/dense_18/kernel/m/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_18/kernel/m* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_18/bias/m
�
6Nadam/sequential_2/dense_18/bias/m/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_18/bias/m*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_19/kernel/m
�
8Nadam/sequential_2/dense_19/kernel/m/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_19/kernel/m* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_19/bias/m
�
6Nadam/sequential_2/dense_19/bias/m/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_19/bias/m*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Nadam/sequential_2/dense_20/kernel/m
�
8Nadam/sequential_2/dense_20/kernel/m/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_20/kernel/m*
_output_shapes
:	�*
dtype0
�
"Nadam/sequential_2/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Nadam/sequential_2/dense_20/bias/m
�
6Nadam/sequential_2/dense_20/bias/m/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_20/bias/m*
_output_shapes
:*
dtype0
�
$Nadam/sequential_2/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Nadam/sequential_2/dense_14/kernel/v
�
8Nadam/sequential_2/dense_14/kernel/v/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_14/kernel/v*
_output_shapes
:	d�*
dtype0
�
"Nadam/sequential_2/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_14/bias/v
�
6Nadam/sequential_2/dense_14/bias/v/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_14/bias/v*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_15/kernel/v
�
8Nadam/sequential_2/dense_15/kernel/v/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_15/kernel/v* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_15/bias/v
�
6Nadam/sequential_2/dense_15/bias/v/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_15/bias/v*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_16/kernel/v
�
8Nadam/sequential_2/dense_16/kernel/v/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_16/kernel/v* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_16/bias/v
�
6Nadam/sequential_2/dense_16/bias/v/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_16/bias/v*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_17/kernel/v
�
8Nadam/sequential_2/dense_17/kernel/v/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_17/kernel/v* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_17/bias/v
�
6Nadam/sequential_2/dense_17/bias/v/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_17/bias/v*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_18/kernel/v
�
8Nadam/sequential_2/dense_18/kernel/v/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_18/kernel/v* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_18/bias/v
�
6Nadam/sequential_2/dense_18/bias/v/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_18/bias/v*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$Nadam/sequential_2/dense_19/kernel/v
�
8Nadam/sequential_2/dense_19/kernel/v/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_19/kernel/v* 
_output_shapes
:
��*
dtype0
�
"Nadam/sequential_2/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Nadam/sequential_2/dense_19/bias/v
�
6Nadam/sequential_2/dense_19/bias/v/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_19/bias/v*
_output_shapes	
:�*
dtype0
�
$Nadam/sequential_2/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Nadam/sequential_2/dense_20/kernel/v
�
8Nadam/sequential_2/dense_20/kernel/v/Read/ReadVariableOpReadVariableOp$Nadam/sequential_2/dense_20/kernel/v*
_output_shapes
:	�*
dtype0
�
"Nadam/sequential_2/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Nadam/sequential_2/dense_20/bias/v
�
6Nadam/sequential_2/dense_20/bias/v/Read/ReadVariableOpReadVariableOp"Nadam/sequential_2/dense_20/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�H
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�H
value�HB�H B�H
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
		optimizer

regularization_losses
trainable_variables
	variables
	keras_api

signatures
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
 bias
!regularization_losses
"trainable_variables
#	variables
$	keras_api
h

%kernel
&bias
'regularization_losses
(trainable_variables
)	variables
*	keras_api
h

+kernel
,bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
h

1kernel
2bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
h

7kernel
8bias
9regularization_losses
:trainable_variables
;	variables
<	keras_api
�
=iter

>beta_1

?beta_2
	@decay
Alearning_rate
Bmomentum_cachemsmtmumvmw mx%my&mz+m{,m|1m}2m~7m8m�v�v�v�v�v� v�%v�&v�+v�,v�1v�2v�7v�8v�
 
f
0
1
2
3
4
 5
%6
&7
+8
,9
110
211
712
813
f
0
1
2
3
4
 5
%6
&7
+8
,9
110
211
712
813
�

regularization_losses
Cnon_trainable_variables
trainable_variables
Dlayer_regularization_losses
	variables

Elayers
Fmetrics
 
 
 
 
�
regularization_losses
Gnon_trainable_variables
trainable_variables
Hlayer_regularization_losses
	variables

Ilayers
Jmetrics
[Y
VARIABLE_VALUEsequential_2/dense_14/kernel)layer-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsequential_2/dense_14/bias'layer-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses
Knon_trainable_variables
trainable_variables
Llayer_regularization_losses
	variables

Mlayers
Nmetrics
[Y
VARIABLE_VALUEsequential_2/dense_15/kernel)layer-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsequential_2/dense_15/bias'layer-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses
Onon_trainable_variables
trainable_variables
Player_regularization_losses
	variables

Qlayers
Rmetrics
[Y
VARIABLE_VALUEsequential_2/dense_16/kernel)layer-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsequential_2/dense_16/bias'layer-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1

0
 1
�
!regularization_losses
Snon_trainable_variables
"trainable_variables
Tlayer_regularization_losses
#	variables

Ulayers
Vmetrics
[Y
VARIABLE_VALUEsequential_2/dense_17/kernel)layer-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsequential_2/dense_17/bias'layer-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1

%0
&1
�
'regularization_losses
Wnon_trainable_variables
(trainable_variables
Xlayer_regularization_losses
)	variables

Ylayers
Zmetrics
[Y
VARIABLE_VALUEsequential_2/dense_18/kernel)layer-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsequential_2/dense_18/bias'layer-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
�
-regularization_losses
[non_trainable_variables
.trainable_variables
\layer_regularization_losses
/	variables

]layers
^metrics
[Y
VARIABLE_VALUEsequential_2/dense_19/kernel)layer-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsequential_2/dense_19/bias'layer-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

10
21

10
21
�
3regularization_losses
_non_trainable_variables
4trainable_variables
`layer_regularization_losses
5	variables

alayers
bmetrics
[Y
VARIABLE_VALUEsequential_2/dense_20/kernel)layer-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsequential_2/dense_20/bias'layer-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

70
81

70
81
�
9regularization_losses
cnon_trainable_variables
:trainable_variables
dlayer_regularization_losses
;	variables

elayers
fmetrics
IG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
2
3
4
5
6
7

g0
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
x
	htotal
	icount
j
_fn_kwargs
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

h0
i1
�
kregularization_losses
onon_trainable_variables
ltrainable_variables
player_regularization_losses
m	variables

qlayers
rmetrics

h0
i1
 
 
 
}
VARIABLE_VALUE$Nadam/sequential_2/dense_14/kernel/mElayer-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_14/bias/mClayer-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_15/kernel/mElayer-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_15/bias/mClayer-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_16/kernel/mElayer-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_16/bias/mClayer-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_17/kernel/mElayer-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_17/bias/mClayer-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_18/kernel/mElayer-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_18/bias/mClayer-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_19/kernel/mElayer-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_19/bias/mClayer-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_20/kernel/mElayer-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_20/bias/mClayer-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_14/kernel/vElayer-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_14/bias/vClayer-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_15/kernel/vElayer-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_15/bias/vClayer-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_16/kernel/vElayer-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_16/bias/vClayer-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_17/kernel/vElayer-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_17/bias/vClayer-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_18/kernel/vElayer-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_18/bias/vClayer-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_19/kernel/vElayer-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_19/bias/vClayer-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$Nadam/sequential_2/dense_20/kernel/vElayer-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Nadam/sequential_2/dense_20/bias/vClayer-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1sequential_2/dense_14/kernelsequential_2/dense_14/biassequential_2/dense_15/kernelsequential_2/dense_15/biassequential_2/dense_16/kernelsequential_2/dense_16/biassequential_2/dense_17/kernelsequential_2/dense_17/biassequential_2/dense_18/kernelsequential_2/dense_18/biassequential_2/dense_19/kernelsequential_2/dense_19/biassequential_2/dense_20/kernelsequential_2/dense_20/bias*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*-
f(R&
$__inference_signature_wrapper_153643
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0sequential_2/dense_14/kernel/Read/ReadVariableOp.sequential_2/dense_14/bias/Read/ReadVariableOp0sequential_2/dense_15/kernel/Read/ReadVariableOp.sequential_2/dense_15/bias/Read/ReadVariableOp0sequential_2/dense_16/kernel/Read/ReadVariableOp.sequential_2/dense_16/bias/Read/ReadVariableOp0sequential_2/dense_17/kernel/Read/ReadVariableOp.sequential_2/dense_17/bias/Read/ReadVariableOp0sequential_2/dense_18/kernel/Read/ReadVariableOp.sequential_2/dense_18/bias/Read/ReadVariableOp0sequential_2/dense_19/kernel/Read/ReadVariableOp.sequential_2/dense_19/bias/Read/ReadVariableOp0sequential_2/dense_20/kernel/Read/ReadVariableOp.sequential_2/dense_20/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp8Nadam/sequential_2/dense_14/kernel/m/Read/ReadVariableOp6Nadam/sequential_2/dense_14/bias/m/Read/ReadVariableOp8Nadam/sequential_2/dense_15/kernel/m/Read/ReadVariableOp6Nadam/sequential_2/dense_15/bias/m/Read/ReadVariableOp8Nadam/sequential_2/dense_16/kernel/m/Read/ReadVariableOp6Nadam/sequential_2/dense_16/bias/m/Read/ReadVariableOp8Nadam/sequential_2/dense_17/kernel/m/Read/ReadVariableOp6Nadam/sequential_2/dense_17/bias/m/Read/ReadVariableOp8Nadam/sequential_2/dense_18/kernel/m/Read/ReadVariableOp6Nadam/sequential_2/dense_18/bias/m/Read/ReadVariableOp8Nadam/sequential_2/dense_19/kernel/m/Read/ReadVariableOp6Nadam/sequential_2/dense_19/bias/m/Read/ReadVariableOp8Nadam/sequential_2/dense_20/kernel/m/Read/ReadVariableOp6Nadam/sequential_2/dense_20/bias/m/Read/ReadVariableOp8Nadam/sequential_2/dense_14/kernel/v/Read/ReadVariableOp6Nadam/sequential_2/dense_14/bias/v/Read/ReadVariableOp8Nadam/sequential_2/dense_15/kernel/v/Read/ReadVariableOp6Nadam/sequential_2/dense_15/bias/v/Read/ReadVariableOp8Nadam/sequential_2/dense_16/kernel/v/Read/ReadVariableOp6Nadam/sequential_2/dense_16/bias/v/Read/ReadVariableOp8Nadam/sequential_2/dense_17/kernel/v/Read/ReadVariableOp6Nadam/sequential_2/dense_17/bias/v/Read/ReadVariableOp8Nadam/sequential_2/dense_18/kernel/v/Read/ReadVariableOp6Nadam/sequential_2/dense_18/bias/v/Read/ReadVariableOp8Nadam/sequential_2/dense_19/kernel/v/Read/ReadVariableOp6Nadam/sequential_2/dense_19/bias/v/Read/ReadVariableOp8Nadam/sequential_2/dense_20/kernel/v/Read/ReadVariableOp6Nadam/sequential_2/dense_20/bias/v/Read/ReadVariableOpConst*?
Tin8
624	*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

CPU

GPU 2J 8*(
f#R!
__inference__traced_save_154102
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamesequential_2/dense_14/kernelsequential_2/dense_14/biassequential_2/dense_15/kernelsequential_2/dense_15/biassequential_2/dense_16/kernelsequential_2/dense_16/biassequential_2/dense_17/kernelsequential_2/dense_17/biassequential_2/dense_18/kernelsequential_2/dense_18/biassequential_2/dense_19/kernelsequential_2/dense_19/biassequential_2/dense_20/kernelsequential_2/dense_20/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcount$Nadam/sequential_2/dense_14/kernel/m"Nadam/sequential_2/dense_14/bias/m$Nadam/sequential_2/dense_15/kernel/m"Nadam/sequential_2/dense_15/bias/m$Nadam/sequential_2/dense_16/kernel/m"Nadam/sequential_2/dense_16/bias/m$Nadam/sequential_2/dense_17/kernel/m"Nadam/sequential_2/dense_17/bias/m$Nadam/sequential_2/dense_18/kernel/m"Nadam/sequential_2/dense_18/bias/m$Nadam/sequential_2/dense_19/kernel/m"Nadam/sequential_2/dense_19/bias/m$Nadam/sequential_2/dense_20/kernel/m"Nadam/sequential_2/dense_20/bias/m$Nadam/sequential_2/dense_14/kernel/v"Nadam/sequential_2/dense_14/bias/v$Nadam/sequential_2/dense_15/kernel/v"Nadam/sequential_2/dense_15/bias/v$Nadam/sequential_2/dense_16/kernel/v"Nadam/sequential_2/dense_16/bias/v$Nadam/sequential_2/dense_17/kernel/v"Nadam/sequential_2/dense_17/bias/v$Nadam/sequential_2/dense_18/kernel/v"Nadam/sequential_2/dense_18/bias/v$Nadam/sequential_2/dense_19/kernel/v"Nadam/sequential_2/dense_19/bias/v$Nadam/sequential_2/dense_20/kernel/v"Nadam/sequential_2/dense_20/bias/v*>
Tin7
523*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

CPU

GPU 2J 8*+
f&R$
"__inference__traced_restore_154264��
�	
�
D__inference_dense_14_layer_call_and_return_conditional_losses_153347

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_16_layer_call_and_return_conditional_losses_153393

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
)__inference_dense_19_layer_call_fn_153910

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_1534622
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_153643
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8**
f%R#
!__inference__wrapped_model_1533182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	input_1
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_153328

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����d   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������d2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_14_layer_call_and_return_conditional_losses_153813

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�+
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_153524
input_1+
'dense_14_statefulpartitionedcall_args_1+
'dense_14_statefulpartitionedcall_args_2+
'dense_15_statefulpartitionedcall_args_1+
'dense_15_statefulpartitionedcall_args_2+
'dense_16_statefulpartitionedcall_args_1+
'dense_16_statefulpartitionedcall_args_2+
'dense_17_statefulpartitionedcall_args_1+
'dense_17_statefulpartitionedcall_args_2+
'dense_18_statefulpartitionedcall_args_1+
'dense_18_statefulpartitionedcall_args_2+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity�� dense_14/StatefulPartitionedCall� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
flatten_2/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������d**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1533282
flatten_2/PartitionedCall�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0'dense_14_statefulpartitionedcall_args_1'dense_14_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_1533472"
 dense_14/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0'dense_15_statefulpartitionedcall_args_1'dense_15_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_1533702"
 dense_15/StatefulPartitionedCall�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0'dense_16_statefulpartitionedcall_args_1'dense_16_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1533932"
 dense_16/StatefulPartitionedCall�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0'dense_17_statefulpartitionedcall_args_1'dense_17_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1534162"
 dense_17/StatefulPartitionedCall�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0'dense_18_statefulpartitionedcall_args_1'dense_18_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_1534392"
 dense_18/StatefulPartitionedCall�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_1534622"
 dense_19/StatefulPartitionedCall�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_1534852"
 dense_20/StatefulPartitionedCall�
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:' #
!
_user_specified_name	input_1
�
�
-__inference_sequential_2_layer_call_fn_153570
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1535532
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	input_1
�W
�
!__inference__wrapped_model_153318
input_18
4sequential_2_dense_14_matmul_readvariableop_resource9
5sequential_2_dense_14_biasadd_readvariableop_resource8
4sequential_2_dense_15_matmul_readvariableop_resource9
5sequential_2_dense_15_biasadd_readvariableop_resource8
4sequential_2_dense_16_matmul_readvariableop_resource9
5sequential_2_dense_16_biasadd_readvariableop_resource8
4sequential_2_dense_17_matmul_readvariableop_resource9
5sequential_2_dense_17_biasadd_readvariableop_resource8
4sequential_2_dense_18_matmul_readvariableop_resource9
5sequential_2_dense_18_biasadd_readvariableop_resource8
4sequential_2_dense_19_matmul_readvariableop_resource9
5sequential_2_dense_19_biasadd_readvariableop_resource8
4sequential_2_dense_20_matmul_readvariableop_resource9
5sequential_2_dense_20_biasadd_readvariableop_resource
identity��,sequential_2/dense_14/BiasAdd/ReadVariableOp�+sequential_2/dense_14/MatMul/ReadVariableOp�,sequential_2/dense_15/BiasAdd/ReadVariableOp�+sequential_2/dense_15/MatMul/ReadVariableOp�,sequential_2/dense_16/BiasAdd/ReadVariableOp�+sequential_2/dense_16/MatMul/ReadVariableOp�,sequential_2/dense_17/BiasAdd/ReadVariableOp�+sequential_2/dense_17/MatMul/ReadVariableOp�,sequential_2/dense_18/BiasAdd/ReadVariableOp�+sequential_2/dense_18/MatMul/ReadVariableOp�,sequential_2/dense_19/BiasAdd/ReadVariableOp�+sequential_2/dense_19/MatMul/ReadVariableOp�,sequential_2/dense_20/BiasAdd/ReadVariableOp�+sequential_2/dense_20/MatMul/ReadVariableOp�
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����d   2
sequential_2/flatten_2/Const�
sequential_2/flatten_2/ReshapeReshapeinput_1%sequential_2/flatten_2/Const:output:0*
T0*'
_output_shapes
:���������d2 
sequential_2/flatten_2/Reshape�
+sequential_2/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_14_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype02-
+sequential_2/dense_14/MatMul/ReadVariableOp�
sequential_2/dense_14/MatMulMatMul'sequential_2/flatten_2/Reshape:output:03sequential_2/dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_14/MatMul�
,sequential_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,sequential_2/dense_14/BiasAdd/ReadVariableOp�
sequential_2/dense_14/BiasAddBiasAdd&sequential_2/dense_14/MatMul:product:04sequential_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_14/BiasAdd�
sequential_2/dense_14/ReluRelu&sequential_2/dense_14/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_14/Relu�
+sequential_2/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_15_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+sequential_2/dense_15/MatMul/ReadVariableOp�
sequential_2/dense_15/MatMulMatMul(sequential_2/dense_14/Relu:activations:03sequential_2/dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_15/MatMul�
,sequential_2/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,sequential_2/dense_15/BiasAdd/ReadVariableOp�
sequential_2/dense_15/BiasAddBiasAdd&sequential_2/dense_15/MatMul:product:04sequential_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_15/BiasAdd�
sequential_2/dense_15/ReluRelu&sequential_2/dense_15/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_15/Relu�
+sequential_2/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_16_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+sequential_2/dense_16/MatMul/ReadVariableOp�
sequential_2/dense_16/MatMulMatMul(sequential_2/dense_15/Relu:activations:03sequential_2/dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_16/MatMul�
,sequential_2/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,sequential_2/dense_16/BiasAdd/ReadVariableOp�
sequential_2/dense_16/BiasAddBiasAdd&sequential_2/dense_16/MatMul:product:04sequential_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_16/BiasAdd�
sequential_2/dense_16/ReluRelu&sequential_2/dense_16/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_16/Relu�
+sequential_2/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+sequential_2/dense_17/MatMul/ReadVariableOp�
sequential_2/dense_17/MatMulMatMul(sequential_2/dense_16/Relu:activations:03sequential_2/dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_17/MatMul�
,sequential_2/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,sequential_2/dense_17/BiasAdd/ReadVariableOp�
sequential_2/dense_17/BiasAddBiasAdd&sequential_2/dense_17/MatMul:product:04sequential_2/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_17/BiasAdd�
sequential_2/dense_17/ReluRelu&sequential_2/dense_17/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_17/Relu�
+sequential_2/dense_18/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+sequential_2/dense_18/MatMul/ReadVariableOp�
sequential_2/dense_18/MatMulMatMul(sequential_2/dense_17/Relu:activations:03sequential_2/dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_18/MatMul�
,sequential_2/dense_18/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,sequential_2/dense_18/BiasAdd/ReadVariableOp�
sequential_2/dense_18/BiasAddBiasAdd&sequential_2/dense_18/MatMul:product:04sequential_2/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_18/BiasAdd�
sequential_2/dense_18/ReluRelu&sequential_2/dense_18/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_18/Relu�
+sequential_2/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+sequential_2/dense_19/MatMul/ReadVariableOp�
sequential_2/dense_19/MatMulMatMul(sequential_2/dense_18/Relu:activations:03sequential_2/dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_19/MatMul�
,sequential_2/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,sequential_2/dense_19/BiasAdd/ReadVariableOp�
sequential_2/dense_19/BiasAddBiasAdd&sequential_2/dense_19/MatMul:product:04sequential_2/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_19/BiasAdd�
sequential_2/dense_19/ReluRelu&sequential_2/dense_19/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_2/dense_19/Relu�
+sequential_2/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_20_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02-
+sequential_2/dense_20/MatMul/ReadVariableOp�
sequential_2/dense_20/MatMulMatMul(sequential_2/dense_19/Relu:activations:03sequential_2/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_2/dense_20/MatMul�
,sequential_2/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_2/dense_20/BiasAdd/ReadVariableOp�
sequential_2/dense_20/BiasAddBiasAdd&sequential_2/dense_20/MatMul:product:04sequential_2/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_2/dense_20/BiasAdd�
sequential_2/dense_20/SoftmaxSoftmax&sequential_2/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential_2/dense_20/Softmax�
IdentityIdentity'sequential_2/dense_20/Softmax:softmax:0-^sequential_2/dense_14/BiasAdd/ReadVariableOp,^sequential_2/dense_14/MatMul/ReadVariableOp-^sequential_2/dense_15/BiasAdd/ReadVariableOp,^sequential_2/dense_15/MatMul/ReadVariableOp-^sequential_2/dense_16/BiasAdd/ReadVariableOp,^sequential_2/dense_16/MatMul/ReadVariableOp-^sequential_2/dense_17/BiasAdd/ReadVariableOp,^sequential_2/dense_17/MatMul/ReadVariableOp-^sequential_2/dense_18/BiasAdd/ReadVariableOp,^sequential_2/dense_18/MatMul/ReadVariableOp-^sequential_2/dense_19/BiasAdd/ReadVariableOp,^sequential_2/dense_19/MatMul/ReadVariableOp-^sequential_2/dense_20/BiasAdd/ReadVariableOp,^sequential_2/dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::2\
,sequential_2/dense_14/BiasAdd/ReadVariableOp,sequential_2/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_14/MatMul/ReadVariableOp+sequential_2/dense_14/MatMul/ReadVariableOp2\
,sequential_2/dense_15/BiasAdd/ReadVariableOp,sequential_2/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_15/MatMul/ReadVariableOp+sequential_2/dense_15/MatMul/ReadVariableOp2\
,sequential_2/dense_16/BiasAdd/ReadVariableOp,sequential_2/dense_16/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_16/MatMul/ReadVariableOp+sequential_2/dense_16/MatMul/ReadVariableOp2\
,sequential_2/dense_17/BiasAdd/ReadVariableOp,sequential_2/dense_17/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_17/MatMul/ReadVariableOp+sequential_2/dense_17/MatMul/ReadVariableOp2\
,sequential_2/dense_18/BiasAdd/ReadVariableOp,sequential_2/dense_18/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_18/MatMul/ReadVariableOp+sequential_2/dense_18/MatMul/ReadVariableOp2\
,sequential_2/dense_19/BiasAdd/ReadVariableOp,sequential_2/dense_19/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_19/MatMul/ReadVariableOp+sequential_2/dense_19/MatMul/ReadVariableOp2\
,sequential_2/dense_20/BiasAdd/ReadVariableOp,sequential_2/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_20/MatMul/ReadVariableOp+sequential_2/dense_20/MatMul/ReadVariableOp:' #
!
_user_specified_name	input_1
�	
�
D__inference_dense_17_layer_call_and_return_conditional_losses_153416

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�+
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_153498
input_1+
'dense_14_statefulpartitionedcall_args_1+
'dense_14_statefulpartitionedcall_args_2+
'dense_15_statefulpartitionedcall_args_1+
'dense_15_statefulpartitionedcall_args_2+
'dense_16_statefulpartitionedcall_args_1+
'dense_16_statefulpartitionedcall_args_2+
'dense_17_statefulpartitionedcall_args_1+
'dense_17_statefulpartitionedcall_args_2+
'dense_18_statefulpartitionedcall_args_1+
'dense_18_statefulpartitionedcall_args_2+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity�� dense_14/StatefulPartitionedCall� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
flatten_2/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������d**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1533282
flatten_2/PartitionedCall�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0'dense_14_statefulpartitionedcall_args_1'dense_14_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_1533472"
 dense_14/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0'dense_15_statefulpartitionedcall_args_1'dense_15_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_1533702"
 dense_15/StatefulPartitionedCall�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0'dense_16_statefulpartitionedcall_args_1'dense_16_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1533932"
 dense_16/StatefulPartitionedCall�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0'dense_17_statefulpartitionedcall_args_1'dense_17_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1534162"
 dense_17/StatefulPartitionedCall�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0'dense_18_statefulpartitionedcall_args_1'dense_18_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_1534392"
 dense_18/StatefulPartitionedCall�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_1534622"
 dense_19/StatefulPartitionedCall�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_1534852"
 dense_20/StatefulPartitionedCall�
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:' #
!
_user_specified_name	input_1
�	
�
D__inference_dense_19_layer_call_and_return_conditional_losses_153462

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
-__inference_sequential_2_layer_call_fn_153772

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1535532
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
)__inference_dense_14_layer_call_fn_153820

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_1533472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������d::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
F
*__inference_flatten_2_layer_call_fn_153802

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������d**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1533282
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:& "
 
_user_specified_nameinputs
�D
�	
H__inference_sequential_2_layer_call_and_return_conditional_losses_153698

inputs+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource+
'dense_16_matmul_readvariableop_resource,
(dense_16_biasadd_readvariableop_resource+
'dense_17_matmul_readvariableop_resource,
(dense_17_biasadd_readvariableop_resource+
'dense_18_matmul_readvariableop_resource,
(dense_18_biasadd_readvariableop_resource+
'dense_19_matmul_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource
identity��dense_14/BiasAdd/ReadVariableOp�dense_14/MatMul/ReadVariableOp�dense_15/BiasAdd/ReadVariableOp�dense_15/MatMul/ReadVariableOp�dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�dense_18/BiasAdd/ReadVariableOp�dense_18/MatMul/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����d   2
flatten_2/Const�
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*'
_output_shapes
:���������d2
flatten_2/Reshape�
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype02 
dense_14/MatMul/ReadVariableOp�
dense_14/MatMulMatMulflatten_2/Reshape:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_14/MatMul�
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_14/BiasAdd/ReadVariableOp�
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_14/BiasAddt
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_14/Relu�
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_15/MatMul/ReadVariableOp�
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_15/MatMul�
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_15/BiasAdd/ReadVariableOp�
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_15/BiasAddt
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_15/Relu�
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_16/MatMul/ReadVariableOp�
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_16/MatMul�
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_16/BiasAdd/ReadVariableOp�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_16/BiasAddt
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_16/Relu�
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_17/MatMul/ReadVariableOp�
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_17/MatMul�
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_17/BiasAdd/ReadVariableOp�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_17/BiasAddt
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_17/Relu�
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_18/MatMul/ReadVariableOp�
dense_18/MatMulMatMuldense_17/Relu:activations:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_18/MatMul�
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_18/BiasAdd/ReadVariableOp�
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_18/BiasAddt
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_18/Relu�
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_19/MatMul/ReadVariableOp�
dense_19/MatMulMatMuldense_18/Relu:activations:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_19/MatMul�
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_19/BiasAdd/ReadVariableOp�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_19/BiasAddt
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_19/Relu�
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02 
dense_20/MatMul/ReadVariableOp�
dense_20/MatMulMatMuldense_19/Relu:activations:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_20/MatMul�
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_20/BiasAdd/ReadVariableOp�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_20/BiasAdd|
dense_20/SoftmaxSoftmaxdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_20/Softmax�
IdentityIdentitydense_20/Softmax:softmax:0 ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
)__inference_dense_15_layer_call_fn_153838

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_1533702
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
)__inference_dense_17_layer_call_fn_153874

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1534162
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�+
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_153598

inputs+
'dense_14_statefulpartitionedcall_args_1+
'dense_14_statefulpartitionedcall_args_2+
'dense_15_statefulpartitionedcall_args_1+
'dense_15_statefulpartitionedcall_args_2+
'dense_16_statefulpartitionedcall_args_1+
'dense_16_statefulpartitionedcall_args_2+
'dense_17_statefulpartitionedcall_args_1+
'dense_17_statefulpartitionedcall_args_2+
'dense_18_statefulpartitionedcall_args_1+
'dense_18_statefulpartitionedcall_args_2+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity�� dense_14/StatefulPartitionedCall� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
flatten_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������d**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1533282
flatten_2/PartitionedCall�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0'dense_14_statefulpartitionedcall_args_1'dense_14_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_1533472"
 dense_14/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0'dense_15_statefulpartitionedcall_args_1'dense_15_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_1533702"
 dense_15/StatefulPartitionedCall�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0'dense_16_statefulpartitionedcall_args_1'dense_16_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1533932"
 dense_16/StatefulPartitionedCall�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0'dense_17_statefulpartitionedcall_args_1'dense_17_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1534162"
 dense_17/StatefulPartitionedCall�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0'dense_18_statefulpartitionedcall_args_1'dense_18_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_1534392"
 dense_18/StatefulPartitionedCall�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_1534622"
 dense_19/StatefulPartitionedCall�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_1534852"
 dense_20/StatefulPartitionedCall�
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
�D
�	
H__inference_sequential_2_layer_call_and_return_conditional_losses_153753

inputs+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource+
'dense_16_matmul_readvariableop_resource,
(dense_16_biasadd_readvariableop_resource+
'dense_17_matmul_readvariableop_resource,
(dense_17_biasadd_readvariableop_resource+
'dense_18_matmul_readvariableop_resource,
(dense_18_biasadd_readvariableop_resource+
'dense_19_matmul_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource
identity��dense_14/BiasAdd/ReadVariableOp�dense_14/MatMul/ReadVariableOp�dense_15/BiasAdd/ReadVariableOp�dense_15/MatMul/ReadVariableOp�dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�dense_18/BiasAdd/ReadVariableOp�dense_18/MatMul/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����d   2
flatten_2/Const�
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*'
_output_shapes
:���������d2
flatten_2/Reshape�
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype02 
dense_14/MatMul/ReadVariableOp�
dense_14/MatMulMatMulflatten_2/Reshape:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_14/MatMul�
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_14/BiasAdd/ReadVariableOp�
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_14/BiasAddt
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_14/Relu�
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_15/MatMul/ReadVariableOp�
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_15/MatMul�
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_15/BiasAdd/ReadVariableOp�
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_15/BiasAddt
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_15/Relu�
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_16/MatMul/ReadVariableOp�
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_16/MatMul�
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_16/BiasAdd/ReadVariableOp�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_16/BiasAddt
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_16/Relu�
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_17/MatMul/ReadVariableOp�
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_17/MatMul�
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_17/BiasAdd/ReadVariableOp�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_17/BiasAddt
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_17/Relu�
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_18/MatMul/ReadVariableOp�
dense_18/MatMulMatMuldense_17/Relu:activations:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_18/MatMul�
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_18/BiasAdd/ReadVariableOp�
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_18/BiasAddt
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_18/Relu�
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_19/MatMul/ReadVariableOp�
dense_19/MatMulMatMuldense_18/Relu:activations:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_19/MatMul�
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_19/BiasAdd/ReadVariableOp�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_19/BiasAddt
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_19/Relu�
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02 
dense_20/MatMul/ReadVariableOp�
dense_20/MatMulMatMuldense_19/Relu:activations:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_20/MatMul�
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_20/BiasAdd/ReadVariableOp�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_20/BiasAdd|
dense_20/SoftmaxSoftmaxdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_20/Softmax�
IdentityIdentitydense_20/Softmax:softmax:0 ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_19_layer_call_and_return_conditional_losses_153903

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_15_layer_call_and_return_conditional_losses_153831

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
-__inference_sequential_2_layer_call_fn_153791

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1535982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_153797

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����d   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������d2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:& "
 
_user_specified_nameinputs
�
�
-__inference_sequential_2_layer_call_fn_153615
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1535982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	input_1
�+
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_153553

inputs+
'dense_14_statefulpartitionedcall_args_1+
'dense_14_statefulpartitionedcall_args_2+
'dense_15_statefulpartitionedcall_args_1+
'dense_15_statefulpartitionedcall_args_2+
'dense_16_statefulpartitionedcall_args_1+
'dense_16_statefulpartitionedcall_args_2+
'dense_17_statefulpartitionedcall_args_1+
'dense_17_statefulpartitionedcall_args_2+
'dense_18_statefulpartitionedcall_args_1+
'dense_18_statefulpartitionedcall_args_2+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity�� dense_14/StatefulPartitionedCall� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
flatten_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������d**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1533282
flatten_2/PartitionedCall�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0'dense_14_statefulpartitionedcall_args_1'dense_14_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_1533472"
 dense_14/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0'dense_15_statefulpartitionedcall_args_1'dense_15_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_1533702"
 dense_15/StatefulPartitionedCall�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0'dense_16_statefulpartitionedcall_args_1'dense_16_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1533932"
 dense_16/StatefulPartitionedCall�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0'dense_17_statefulpartitionedcall_args_1'dense_17_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1534162"
 dense_17/StatefulPartitionedCall�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0'dense_18_statefulpartitionedcall_args_1'dense_18_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_1534392"
 dense_18/StatefulPartitionedCall�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_1534622"
 dense_19/StatefulPartitionedCall�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_1534852"
 dense_20/StatefulPartitionedCall�
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:���������::::::::::::::2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_20_layer_call_and_return_conditional_losses_153921

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_15_layer_call_and_return_conditional_losses_153370

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_20_layer_call_and_return_conditional_losses_153485

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_154264
file_prefix1
-assignvariableop_sequential_2_dense_14_kernel1
-assignvariableop_1_sequential_2_dense_14_bias3
/assignvariableop_2_sequential_2_dense_15_kernel1
-assignvariableop_3_sequential_2_dense_15_bias3
/assignvariableop_4_sequential_2_dense_16_kernel1
-assignvariableop_5_sequential_2_dense_16_bias3
/assignvariableop_6_sequential_2_dense_17_kernel1
-assignvariableop_7_sequential_2_dense_17_bias3
/assignvariableop_8_sequential_2_dense_18_kernel1
-assignvariableop_9_sequential_2_dense_18_bias4
0assignvariableop_10_sequential_2_dense_19_kernel2
.assignvariableop_11_sequential_2_dense_19_bias4
0assignvariableop_12_sequential_2_dense_20_kernel2
.assignvariableop_13_sequential_2_dense_20_bias"
assignvariableop_14_nadam_iter$
 assignvariableop_15_nadam_beta_1$
 assignvariableop_16_nadam_beta_2#
assignvariableop_17_nadam_decay+
'assignvariableop_18_nadam_learning_rate,
(assignvariableop_19_nadam_momentum_cache
assignvariableop_20_total
assignvariableop_21_count<
8assignvariableop_22_nadam_sequential_2_dense_14_kernel_m:
6assignvariableop_23_nadam_sequential_2_dense_14_bias_m<
8assignvariableop_24_nadam_sequential_2_dense_15_kernel_m:
6assignvariableop_25_nadam_sequential_2_dense_15_bias_m<
8assignvariableop_26_nadam_sequential_2_dense_16_kernel_m:
6assignvariableop_27_nadam_sequential_2_dense_16_bias_m<
8assignvariableop_28_nadam_sequential_2_dense_17_kernel_m:
6assignvariableop_29_nadam_sequential_2_dense_17_bias_m<
8assignvariableop_30_nadam_sequential_2_dense_18_kernel_m:
6assignvariableop_31_nadam_sequential_2_dense_18_bias_m<
8assignvariableop_32_nadam_sequential_2_dense_19_kernel_m:
6assignvariableop_33_nadam_sequential_2_dense_19_bias_m<
8assignvariableop_34_nadam_sequential_2_dense_20_kernel_m:
6assignvariableop_35_nadam_sequential_2_dense_20_bias_m<
8assignvariableop_36_nadam_sequential_2_dense_14_kernel_v:
6assignvariableop_37_nadam_sequential_2_dense_14_bias_v<
8assignvariableop_38_nadam_sequential_2_dense_15_kernel_v:
6assignvariableop_39_nadam_sequential_2_dense_15_bias_v<
8assignvariableop_40_nadam_sequential_2_dense_16_kernel_v:
6assignvariableop_41_nadam_sequential_2_dense_16_bias_v<
8assignvariableop_42_nadam_sequential_2_dense_17_kernel_v:
6assignvariableop_43_nadam_sequential_2_dense_17_bias_v<
8assignvariableop_44_nadam_sequential_2_dense_18_kernel_v:
6assignvariableop_45_nadam_sequential_2_dense_18_bias_v<
8assignvariableop_46_nadam_sequential_2_dense_19_kernel_v:
6assignvariableop_47_nadam_sequential_2_dense_19_bias_v<
8assignvariableop_48_nadam_sequential_2_dense_20_kernel_v:
6assignvariableop_49_nadam_sequential_2_dense_20_bias_v
identity_51��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*�
value�B�2B)layer-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBElayer-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	2
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp-assignvariableop_sequential_2_dense_14_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp-assignvariableop_1_sequential_2_dense_14_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_sequential_2_dense_15_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_sequential_2_dense_15_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp/assignvariableop_4_sequential_2_dense_16_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp-assignvariableop_5_sequential_2_dense_16_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_sequential_2_dense_17_kernelIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_sequential_2_dense_17_biasIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_sequential_2_dense_18_kernelIdentity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_sequential_2_dense_18_biasIdentity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp0assignvariableop_10_sequential_2_dense_19_kernelIdentity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp.assignvariableop_11_sequential_2_dense_19_biasIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_sequential_2_dense_20_kernelIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp.assignvariableop_13_sequential_2_dense_20_biasIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0	*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_nadam_iterIdentity_14:output:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp assignvariableop_15_nadam_beta_1Identity_15:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp assignvariableop_16_nadam_beta_2Identity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_nadam_decayIdentity_17:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_17_
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_nadam_learning_rateIdentity_18:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_18_
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_nadam_momentum_cacheIdentity_19:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_19_
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_20_
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_21_
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp8assignvariableop_22_nadam_sequential_2_dense_14_kernel_mIdentity_22:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_22_
Identity_23IdentityRestoreV2:tensors:23*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_nadam_sequential_2_dense_14_bias_mIdentity_23:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_23_
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp8assignvariableop_24_nadam_sequential_2_dense_15_kernel_mIdentity_24:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_24_
Identity_25IdentityRestoreV2:tensors:25*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_nadam_sequential_2_dense_15_bias_mIdentity_25:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_25_
Identity_26IdentityRestoreV2:tensors:26*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_nadam_sequential_2_dense_16_kernel_mIdentity_26:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_26_
Identity_27IdentityRestoreV2:tensors:27*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp6assignvariableop_27_nadam_sequential_2_dense_16_bias_mIdentity_27:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_27_
Identity_28IdentityRestoreV2:tensors:28*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp8assignvariableop_28_nadam_sequential_2_dense_17_kernel_mIdentity_28:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_28_
Identity_29IdentityRestoreV2:tensors:29*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp6assignvariableop_29_nadam_sequential_2_dense_17_bias_mIdentity_29:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_29_
Identity_30IdentityRestoreV2:tensors:30*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp8assignvariableop_30_nadam_sequential_2_dense_18_kernel_mIdentity_30:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_30_
Identity_31IdentityRestoreV2:tensors:31*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_nadam_sequential_2_dense_18_bias_mIdentity_31:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_31_
Identity_32IdentityRestoreV2:tensors:32*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp8assignvariableop_32_nadam_sequential_2_dense_19_kernel_mIdentity_32:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_32_
Identity_33IdentityRestoreV2:tensors:33*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_nadam_sequential_2_dense_19_bias_mIdentity_33:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_33_
Identity_34IdentityRestoreV2:tensors:34*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_nadam_sequential_2_dense_20_kernel_mIdentity_34:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_34_
Identity_35IdentityRestoreV2:tensors:35*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp6assignvariableop_35_nadam_sequential_2_dense_20_bias_mIdentity_35:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_35_
Identity_36IdentityRestoreV2:tensors:36*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp8assignvariableop_36_nadam_sequential_2_dense_14_kernel_vIdentity_36:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_36_
Identity_37IdentityRestoreV2:tensors:37*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_nadam_sequential_2_dense_14_bias_vIdentity_37:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_37_
Identity_38IdentityRestoreV2:tensors:38*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp8assignvariableop_38_nadam_sequential_2_dense_15_kernel_vIdentity_38:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_38_
Identity_39IdentityRestoreV2:tensors:39*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_nadam_sequential_2_dense_15_bias_vIdentity_39:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_39_
Identity_40IdentityRestoreV2:tensors:40*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp8assignvariableop_40_nadam_sequential_2_dense_16_kernel_vIdentity_40:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_40_
Identity_41IdentityRestoreV2:tensors:41*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp6assignvariableop_41_nadam_sequential_2_dense_16_bias_vIdentity_41:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_41_
Identity_42IdentityRestoreV2:tensors:42*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp8assignvariableop_42_nadam_sequential_2_dense_17_kernel_vIdentity_42:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_42_
Identity_43IdentityRestoreV2:tensors:43*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp6assignvariableop_43_nadam_sequential_2_dense_17_bias_vIdentity_43:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_43_
Identity_44IdentityRestoreV2:tensors:44*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp8assignvariableop_44_nadam_sequential_2_dense_18_kernel_vIdentity_44:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_44_
Identity_45IdentityRestoreV2:tensors:45*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp6assignvariableop_45_nadam_sequential_2_dense_18_bias_vIdentity_45:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_45_
Identity_46IdentityRestoreV2:tensors:46*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp8assignvariableop_46_nadam_sequential_2_dense_19_kernel_vIdentity_46:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_46_
Identity_47IdentityRestoreV2:tensors:47*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp6assignvariableop_47_nadam_sequential_2_dense_19_bias_vIdentity_47:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_47_
Identity_48IdentityRestoreV2:tensors:48*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp8assignvariableop_48_nadam_sequential_2_dense_20_kernel_vIdentity_48:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_48_
Identity_49IdentityRestoreV2:tensors:49*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp6assignvariableop_49_nadam_sequential_2_dense_20_bias_vIdentity_49:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_49�
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names�
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�	
Identity_50Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_50�	
Identity_51IdentityIdentity_50:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2
Identity_51"#
identity_51Identity_51:output:0*�
_input_shapes�
�: ::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:+ '
%
_user_specified_namefile_prefix
�	
�
D__inference_dense_18_layer_call_and_return_conditional_losses_153885

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
)__inference_dense_18_layer_call_fn_153892

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_1534392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_16_layer_call_and_return_conditional_losses_153849

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�	
�
D__inference_dense_17_layer_call_and_return_conditional_losses_153867

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�a
�
__inference__traced_save_154102
file_prefix;
7savev2_sequential_2_dense_14_kernel_read_readvariableop9
5savev2_sequential_2_dense_14_bias_read_readvariableop;
7savev2_sequential_2_dense_15_kernel_read_readvariableop9
5savev2_sequential_2_dense_15_bias_read_readvariableop;
7savev2_sequential_2_dense_16_kernel_read_readvariableop9
5savev2_sequential_2_dense_16_bias_read_readvariableop;
7savev2_sequential_2_dense_17_kernel_read_readvariableop9
5savev2_sequential_2_dense_17_bias_read_readvariableop;
7savev2_sequential_2_dense_18_kernel_read_readvariableop9
5savev2_sequential_2_dense_18_bias_read_readvariableop;
7savev2_sequential_2_dense_19_kernel_read_readvariableop9
5savev2_sequential_2_dense_19_bias_read_readvariableop;
7savev2_sequential_2_dense_20_kernel_read_readvariableop9
5savev2_sequential_2_dense_20_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopC
?savev2_nadam_sequential_2_dense_14_kernel_m_read_readvariableopA
=savev2_nadam_sequential_2_dense_14_bias_m_read_readvariableopC
?savev2_nadam_sequential_2_dense_15_kernel_m_read_readvariableopA
=savev2_nadam_sequential_2_dense_15_bias_m_read_readvariableopC
?savev2_nadam_sequential_2_dense_16_kernel_m_read_readvariableopA
=savev2_nadam_sequential_2_dense_16_bias_m_read_readvariableopC
?savev2_nadam_sequential_2_dense_17_kernel_m_read_readvariableopA
=savev2_nadam_sequential_2_dense_17_bias_m_read_readvariableopC
?savev2_nadam_sequential_2_dense_18_kernel_m_read_readvariableopA
=savev2_nadam_sequential_2_dense_18_bias_m_read_readvariableopC
?savev2_nadam_sequential_2_dense_19_kernel_m_read_readvariableopA
=savev2_nadam_sequential_2_dense_19_bias_m_read_readvariableopC
?savev2_nadam_sequential_2_dense_20_kernel_m_read_readvariableopA
=savev2_nadam_sequential_2_dense_20_bias_m_read_readvariableopC
?savev2_nadam_sequential_2_dense_14_kernel_v_read_readvariableopA
=savev2_nadam_sequential_2_dense_14_bias_v_read_readvariableopC
?savev2_nadam_sequential_2_dense_15_kernel_v_read_readvariableopA
=savev2_nadam_sequential_2_dense_15_bias_v_read_readvariableopC
?savev2_nadam_sequential_2_dense_16_kernel_v_read_readvariableopA
=savev2_nadam_sequential_2_dense_16_bias_v_read_readvariableopC
?savev2_nadam_sequential_2_dense_17_kernel_v_read_readvariableopA
=savev2_nadam_sequential_2_dense_17_bias_v_read_readvariableopC
?savev2_nadam_sequential_2_dense_18_kernel_v_read_readvariableopA
=savev2_nadam_sequential_2_dense_18_bias_v_read_readvariableopC
?savev2_nadam_sequential_2_dense_19_kernel_v_read_readvariableopA
=savev2_nadam_sequential_2_dense_19_bias_v_read_readvariableopC
?savev2_nadam_sequential_2_dense_20_kernel_v_read_readvariableopA
=savev2_nadam_sequential_2_dense_20_bias_v_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_2946f56715c740d5b07afde5afc6cb44/part2
StringJoin/inputs_1�

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*�
value�B�2B)layer-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)layer-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB'layer-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBElayer-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClayer-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElayer-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClayer-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_sequential_2_dense_14_kernel_read_readvariableop5savev2_sequential_2_dense_14_bias_read_readvariableop7savev2_sequential_2_dense_15_kernel_read_readvariableop5savev2_sequential_2_dense_15_bias_read_readvariableop7savev2_sequential_2_dense_16_kernel_read_readvariableop5savev2_sequential_2_dense_16_bias_read_readvariableop7savev2_sequential_2_dense_17_kernel_read_readvariableop5savev2_sequential_2_dense_17_bias_read_readvariableop7savev2_sequential_2_dense_18_kernel_read_readvariableop5savev2_sequential_2_dense_18_bias_read_readvariableop7savev2_sequential_2_dense_19_kernel_read_readvariableop5savev2_sequential_2_dense_19_bias_read_readvariableop7savev2_sequential_2_dense_20_kernel_read_readvariableop5savev2_sequential_2_dense_20_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop?savev2_nadam_sequential_2_dense_14_kernel_m_read_readvariableop=savev2_nadam_sequential_2_dense_14_bias_m_read_readvariableop?savev2_nadam_sequential_2_dense_15_kernel_m_read_readvariableop=savev2_nadam_sequential_2_dense_15_bias_m_read_readvariableop?savev2_nadam_sequential_2_dense_16_kernel_m_read_readvariableop=savev2_nadam_sequential_2_dense_16_bias_m_read_readvariableop?savev2_nadam_sequential_2_dense_17_kernel_m_read_readvariableop=savev2_nadam_sequential_2_dense_17_bias_m_read_readvariableop?savev2_nadam_sequential_2_dense_18_kernel_m_read_readvariableop=savev2_nadam_sequential_2_dense_18_bias_m_read_readvariableop?savev2_nadam_sequential_2_dense_19_kernel_m_read_readvariableop=savev2_nadam_sequential_2_dense_19_bias_m_read_readvariableop?savev2_nadam_sequential_2_dense_20_kernel_m_read_readvariableop=savev2_nadam_sequential_2_dense_20_bias_m_read_readvariableop?savev2_nadam_sequential_2_dense_14_kernel_v_read_readvariableop=savev2_nadam_sequential_2_dense_14_bias_v_read_readvariableop?savev2_nadam_sequential_2_dense_15_kernel_v_read_readvariableop=savev2_nadam_sequential_2_dense_15_bias_v_read_readvariableop?savev2_nadam_sequential_2_dense_16_kernel_v_read_readvariableop=savev2_nadam_sequential_2_dense_16_bias_v_read_readvariableop?savev2_nadam_sequential_2_dense_17_kernel_v_read_readvariableop=savev2_nadam_sequential_2_dense_17_bias_v_read_readvariableop?savev2_nadam_sequential_2_dense_18_kernel_v_read_readvariableop=savev2_nadam_sequential_2_dense_18_bias_v_read_readvariableop?savev2_nadam_sequential_2_dense_19_kernel_v_read_readvariableop=savev2_nadam_sequential_2_dense_19_bias_v_read_readvariableop?savev2_nadam_sequential_2_dense_20_kernel_v_read_readvariableop=savev2_nadam_sequential_2_dense_20_bias_v_read_readvariableop"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	2
SaveV2�
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard�
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1�
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names�
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity�

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	d�:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:: : : : : : : : :	d�:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�::	d�:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix
�	
�
D__inference_dense_18_layer_call_and_return_conditional_losses_153439

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
)__inference_dense_16_layer_call_fn_153856

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*(
_output_shapes
:����������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1533932
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
)__inference_dense_20_layer_call_fn_153928

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_1534852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_14
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�:
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
		optimizer

regularization_losses
trainable_variables
	variables
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"�8
_tf_keras_sequential�8{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential_2", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": [null, 20, 5]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "is_graph_network": false, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": [null, 20, 5]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": ["accuracy"], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "Nadam", "config": {"name": "Nadam", "learning_rate": 0.0010000000474974513, "decay": 0.004000000189989805, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}
�
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Flatten", "name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}}
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}}
�

kernel
 bias
!regularization_losses
"trainable_variables
#	variables
$	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}}
�

%kernel
&bias
'regularization_losses
(trainable_variables
)	variables
*	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}}
�

+kernel
,bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}}
�

1kernel
2bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}}
�

7kernel
8bias
9regularization_losses
:trainable_variables
;	variables
<	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}}
�
=iter

>beta_1

?beta_2
	@decay
Alearning_rate
Bmomentum_cachemsmtmumvmw mx%my&mz+m{,m|1m}2m~7m8m�v�v�v�v�v� v�%v�&v�+v�,v�1v�2v�7v�8v�"
	optimizer
 "
trackable_list_wrapper
�
0
1
2
3
4
 5
%6
&7
+8
,9
110
211
712
813"
trackable_list_wrapper
�
0
1
2
3
4
 5
%6
&7
+8
,9
110
211
712
813"
trackable_list_wrapper
�

regularization_losses
Cnon_trainable_variables
trainable_variables
Dlayer_regularization_losses
	variables

Elayers
Fmetrics
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
regularization_losses
Gnon_trainable_variables
trainable_variables
Hlayer_regularization_losses
	variables

Ilayers
Jmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/:-	d�2sequential_2/dense_14/kernel
):'�2sequential_2/dense_14/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses
Knon_trainable_variables
trainable_variables
Llayer_regularization_losses
	variables

Mlayers
Nmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:.
��2sequential_2/dense_15/kernel
):'�2sequential_2/dense_15/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses
Onon_trainable_variables
trainable_variables
Player_regularization_losses
	variables

Qlayers
Rmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:.
��2sequential_2/dense_16/kernel
):'�2sequential_2/dense_16/bias
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
�
!regularization_losses
Snon_trainable_variables
"trainable_variables
Tlayer_regularization_losses
#	variables

Ulayers
Vmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:.
��2sequential_2/dense_17/kernel
):'�2sequential_2/dense_17/bias
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
�
'regularization_losses
Wnon_trainable_variables
(trainable_variables
Xlayer_regularization_losses
)	variables

Ylayers
Zmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:.
��2sequential_2/dense_18/kernel
):'�2sequential_2/dense_18/bias
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
�
-regularization_losses
[non_trainable_variables
.trainable_variables
\layer_regularization_losses
/	variables

]layers
^metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:.
��2sequential_2/dense_19/kernel
):'�2sequential_2/dense_19/bias
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
�
3regularization_losses
_non_trainable_variables
4trainable_variables
`layer_regularization_losses
5	variables

alayers
bmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/:-	�2sequential_2/dense_20/kernel
(:&2sequential_2/dense_20/bias
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
�
9regularization_losses
cnon_trainable_variables
:trainable_variables
dlayer_regularization_losses
;	variables

elayers
fmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
'
g0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	htotal
	icount
j
_fn_kwargs
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MeanMetricWrapper", "name": "accuracy", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "accuracy", "dtype": "float32"}}
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
�
kregularization_losses
onon_trainable_variables
ltrainable_variables
player_regularization_losses
m	variables

qlayers
rmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5:3	d�2$Nadam/sequential_2/dense_14/kernel/m
/:-�2"Nadam/sequential_2/dense_14/bias/m
6:4
��2$Nadam/sequential_2/dense_15/kernel/m
/:-�2"Nadam/sequential_2/dense_15/bias/m
6:4
��2$Nadam/sequential_2/dense_16/kernel/m
/:-�2"Nadam/sequential_2/dense_16/bias/m
6:4
��2$Nadam/sequential_2/dense_17/kernel/m
/:-�2"Nadam/sequential_2/dense_17/bias/m
6:4
��2$Nadam/sequential_2/dense_18/kernel/m
/:-�2"Nadam/sequential_2/dense_18/bias/m
6:4
��2$Nadam/sequential_2/dense_19/kernel/m
/:-�2"Nadam/sequential_2/dense_19/bias/m
5:3	�2$Nadam/sequential_2/dense_20/kernel/m
.:,2"Nadam/sequential_2/dense_20/bias/m
5:3	d�2$Nadam/sequential_2/dense_14/kernel/v
/:-�2"Nadam/sequential_2/dense_14/bias/v
6:4
��2$Nadam/sequential_2/dense_15/kernel/v
/:-�2"Nadam/sequential_2/dense_15/bias/v
6:4
��2$Nadam/sequential_2/dense_16/kernel/v
/:-�2"Nadam/sequential_2/dense_16/bias/v
6:4
��2$Nadam/sequential_2/dense_17/kernel/v
/:-�2"Nadam/sequential_2/dense_17/bias/v
6:4
��2$Nadam/sequential_2/dense_18/kernel/v
/:-�2"Nadam/sequential_2/dense_18/bias/v
6:4
��2$Nadam/sequential_2/dense_19/kernel/v
/:-�2"Nadam/sequential_2/dense_19/bias/v
5:3	�2$Nadam/sequential_2/dense_20/kernel/v
.:,2"Nadam/sequential_2/dense_20/bias/v
�2�
-__inference_sequential_2_layer_call_fn_153570
-__inference_sequential_2_layer_call_fn_153791
-__inference_sequential_2_layer_call_fn_153615
-__inference_sequential_2_layer_call_fn_153772�
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_153698
H__inference_sequential_2_layer_call_and_return_conditional_losses_153498
H__inference_sequential_2_layer_call_and_return_conditional_losses_153524
H__inference_sequential_2_layer_call_and_return_conditional_losses_153753�
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
!__inference__wrapped_model_153318�
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
annotations� **�'
%�"
input_1���������
�2�
*__inference_flatten_2_layer_call_fn_153802�
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
E__inference_flatten_2_layer_call_and_return_conditional_losses_153797�
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
)__inference_dense_14_layer_call_fn_153820�
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
D__inference_dense_14_layer_call_and_return_conditional_losses_153813�
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
)__inference_dense_15_layer_call_fn_153838�
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
D__inference_dense_15_layer_call_and_return_conditional_losses_153831�
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
)__inference_dense_16_layer_call_fn_153856�
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
D__inference_dense_16_layer_call_and_return_conditional_losses_153849�
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
)__inference_dense_17_layer_call_fn_153874�
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
D__inference_dense_17_layer_call_and_return_conditional_losses_153867�
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
)__inference_dense_18_layer_call_fn_153892�
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
D__inference_dense_18_layer_call_and_return_conditional_losses_153885�
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
)__inference_dense_19_layer_call_fn_153910�
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
D__inference_dense_19_layer_call_and_return_conditional_losses_153903�
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
)__inference_dense_20_layer_call_fn_153928�
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
D__inference_dense_20_layer_call_and_return_conditional_losses_153921�
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
3B1
$__inference_signature_wrapper_153643input_1
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 �
!__inference__wrapped_model_153318{ %&+,12784�1
*�'
%�"
input_1���������
� "3�0
.
output_1"�
output_1����������
D__inference_dense_14_layer_call_and_return_conditional_losses_153813]/�,
%�"
 �
inputs���������d
� "&�#
�
0����������
� }
)__inference_dense_14_layer_call_fn_153820P/�,
%�"
 �
inputs���������d
� "������������
D__inference_dense_15_layer_call_and_return_conditional_losses_153831^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_15_layer_call_fn_153838Q0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_16_layer_call_and_return_conditional_losses_153849^ 0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_16_layer_call_fn_153856Q 0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_17_layer_call_and_return_conditional_losses_153867^%&0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_17_layer_call_fn_153874Q%&0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_18_layer_call_and_return_conditional_losses_153885^+,0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_18_layer_call_fn_153892Q+,0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_19_layer_call_and_return_conditional_losses_153903^120�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_19_layer_call_fn_153910Q120�-
&�#
!�
inputs����������
� "������������
D__inference_dense_20_layer_call_and_return_conditional_losses_153921]780�-
&�#
!�
inputs����������
� "%�"
�
0���������
� }
)__inference_dense_20_layer_call_fn_153928P780�-
&�#
!�
inputs����������
� "�����������
E__inference_flatten_2_layer_call_and_return_conditional_losses_153797\3�0
)�&
$�!
inputs���������
� "%�"
�
0���������d
� }
*__inference_flatten_2_layer_call_fn_153802O3�0
)�&
$�!
inputs���������
� "����������d�
H__inference_sequential_2_layer_call_and_return_conditional_losses_153498u %&+,1278<�9
2�/
%�"
input_1���������
p

 
� "%�"
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_153524u %&+,1278<�9
2�/
%�"
input_1���������
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_153698t %&+,1278;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_153753t %&+,1278;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
-__inference_sequential_2_layer_call_fn_153570h %&+,1278<�9
2�/
%�"
input_1���������
p

 
� "�����������
-__inference_sequential_2_layer_call_fn_153615h %&+,1278<�9
2�/
%�"
input_1���������
p 

 
� "�����������
-__inference_sequential_2_layer_call_fn_153772g %&+,1278;�8
1�.
$�!
inputs���������
p

 
� "�����������
-__inference_sequential_2_layer_call_fn_153791g %&+,1278;�8
1�.
$�!
inputs���������
p 

 
� "�����������
$__inference_signature_wrapper_153643� %&+,1278?�<
� 
5�2
0
input_1%�"
input_1���������"3�0
.
output_1"�
output_1���������