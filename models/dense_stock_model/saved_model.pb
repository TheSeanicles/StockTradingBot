??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ǵ

dense_2496/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*"
shared_namedense_2496/kernel
x
%dense_2496/kernel/Read/ReadVariableOpReadVariableOpdense_2496/kernel*
_output_shapes
:	
?*
dtype0
w
dense_2496/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namedense_2496/bias
p
#dense_2496/bias/Read/ReadVariableOpReadVariableOpdense_2496/bias*
_output_shapes	
:?*
dtype0
?
dense_2497/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*"
shared_namedense_2497/kernel
y
%dense_2497/kernel/Read/ReadVariableOpReadVariableOpdense_2497/kernel* 
_output_shapes
:
??*
dtype0
w
dense_2497/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namedense_2497/bias
p
#dense_2497/bias/Read/ReadVariableOpReadVariableOpdense_2497/bias*
_output_shapes	
:?*
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
Adam/dense_2496/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*)
shared_nameAdam/dense_2496/kernel/m
?
,Adam/dense_2496/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2496/kernel/m*
_output_shapes
:	
?*
dtype0
?
Adam/dense_2496/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dense_2496/bias/m
~
*Adam/dense_2496/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2496/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2497/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdam/dense_2497/kernel/m
?
,Adam/dense_2497/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2497/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_2497/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dense_2497/bias/m
~
*Adam/dense_2497/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2497/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2496/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*)
shared_nameAdam/dense_2496/kernel/v
?
,Adam/dense_2496/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2496/kernel/v*
_output_shapes
:	
?*
dtype0
?
Adam/dense_2496/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dense_2496/bias/v
~
*Adam/dense_2496/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2496/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_2497/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdam/dense_2497/kernel/v
?
,Adam/dense_2497/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2497/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_2497/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dense_2497/bias/v
~
*Adam/dense_2497/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2497/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?)B?) B?)
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
?
*iter

+beta_1

,beta_2
	-decay
.learning_ratemTmUmVmWvXvYvZv[*
 
0
1
2
3*
 
0
1
2
3*
* 
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

4serving_default* 
* 
* 
* 
?
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEdense_2496/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2496/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_2497/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2497/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

I0
J1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	Ktotal
	Lcount
M	variables
N	keras_api*
H
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

M	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

O0
P1*

R	variables*
?~
VARIABLE_VALUEAdam/dense_2496/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2496/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2497/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2497/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2496/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2496/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2497/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2497/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
!serving_default_lambda_1498_inputPlaceholder*+
_output_shapes
:?????????d
*
dtype0* 
shape:?????????d

?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_lambda_1498_inputdense_2496/kerneldense_2496/biasdense_2497/kerneldense_2497/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_11107852
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_2496/kernel/Read/ReadVariableOp#dense_2496/bias/Read/ReadVariableOp%dense_2497/kernel/Read/ReadVariableOp#dense_2497/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/dense_2496/kernel/m/Read/ReadVariableOp*Adam/dense_2496/bias/m/Read/ReadVariableOp,Adam/dense_2497/kernel/m/Read/ReadVariableOp*Adam/dense_2497/bias/m/Read/ReadVariableOp,Adam/dense_2496/kernel/v/Read/ReadVariableOp*Adam/dense_2496/bias/v/Read/ReadVariableOp,Adam/dense_2497/kernel/v/Read/ReadVariableOp*Adam/dense_2497/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
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
GPU2*0J 8? **
f%R#
!__inference__traced_save_11108061
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2496/kerneldense_2496/biasdense_2497/kerneldense_2497/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_2496/kernel/mAdam/dense_2496/bias/mAdam/dense_2497/kernel/mAdam/dense_2497/bias/mAdam/dense_2496/kernel/vAdam/dense_2496/bias/vAdam/dense_2497/kernel/vAdam/dense_2497/bias/v*!
Tin
2*
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
GPU2*0J 8? *-
f(R&
$__inference__traced_restore_11108134??
?
?
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107464

inputs4
!tensordot_readvariableop_resource:	
?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	
?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107500

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

f
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107519

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :dQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????d
\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????d
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?Q
?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107767

inputs?
,dense_2496_tensordot_readvariableop_resource:	
?9
*dense_2496_biasadd_readvariableop_resource:	?@
,dense_2497_tensordot_readvariableop_resource:
??9
*dense_2497_biasadd_readvariableop_resource:	?
identity??!dense_2496/BiasAdd/ReadVariableOp?#dense_2496/Tensordot/ReadVariableOp?!dense_2497/BiasAdd/ReadVariableOp?#dense_2497/Tensordot/ReadVariableOpt
lambda_1498/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    v
!lambda_1498/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            v
!lambda_1498/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
lambda_1498/strided_sliceStridedSliceinputs(lambda_1498/strided_slice/stack:output:0*lambda_1498/strided_slice/stack_1:output:0*lambda_1498/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*

begin_mask*
end_mask?
#dense_2496/Tensordot/ReadVariableOpReadVariableOp,dense_2496_tensordot_readvariableop_resource*
_output_shapes
:	
?*
dtype0c
dense_2496/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:j
dense_2496/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense_2496/Tensordot/ShapeShape"lambda_1498/strided_slice:output:0*
T0*
_output_shapes
:d
"dense_2496/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2496/Tensordot/GatherV2GatherV2#dense_2496/Tensordot/Shape:output:0"dense_2496/Tensordot/free:output:0+dense_2496/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
$dense_2496/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2496/Tensordot/GatherV2_1GatherV2#dense_2496/Tensordot/Shape:output:0"dense_2496/Tensordot/axes:output:0-dense_2496/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
dense_2496/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_2496/Tensordot/ProdProd&dense_2496/Tensordot/GatherV2:output:0#dense_2496/Tensordot/Const:output:0*
T0*
_output_shapes
: f
dense_2496/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_2496/Tensordot/Prod_1Prod(dense_2496/Tensordot/GatherV2_1:output:0%dense_2496/Tensordot/Const_1:output:0*
T0*
_output_shapes
: b
 dense_2496/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2496/Tensordot/concatConcatV2"dense_2496/Tensordot/free:output:0"dense_2496/Tensordot/axes:output:0)dense_2496/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2496/Tensordot/stackPack"dense_2496/Tensordot/Prod:output:0$dense_2496/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_2496/Tensordot/transpose	Transpose"lambda_1498/strided_slice:output:0$dense_2496/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
dense_2496/Tensordot/ReshapeReshape"dense_2496/Tensordot/transpose:y:0#dense_2496/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_2496/Tensordot/MatMulMatMul%dense_2496/Tensordot/Reshape:output:0+dense_2496/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
dense_2496/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?d
"dense_2496/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2496/Tensordot/concat_1ConcatV2&dense_2496/Tensordot/GatherV2:output:0%dense_2496/Tensordot/Const_2:output:0+dense_2496/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2496/TensordotReshape%dense_2496/Tensordot/MatMul:product:0&dense_2496/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
!dense_2496/BiasAdd/ReadVariableOpReadVariableOp*dense_2496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2496/BiasAddBiasAdddense_2496/Tensordot:output:0)dense_2496/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????k
dense_2496/ReluReludense_2496/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
#dense_2497/Tensordot/ReadVariableOpReadVariableOp,dense_2497_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0c
dense_2497/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:j
dense_2497/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
dense_2497/Tensordot/ShapeShapedense_2496/Relu:activations:0*
T0*
_output_shapes
:d
"dense_2497/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2497/Tensordot/GatherV2GatherV2#dense_2497/Tensordot/Shape:output:0"dense_2497/Tensordot/free:output:0+dense_2497/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
$dense_2497/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2497/Tensordot/GatherV2_1GatherV2#dense_2497/Tensordot/Shape:output:0"dense_2497/Tensordot/axes:output:0-dense_2497/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
dense_2497/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_2497/Tensordot/ProdProd&dense_2497/Tensordot/GatherV2:output:0#dense_2497/Tensordot/Const:output:0*
T0*
_output_shapes
: f
dense_2497/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_2497/Tensordot/Prod_1Prod(dense_2497/Tensordot/GatherV2_1:output:0%dense_2497/Tensordot/Const_1:output:0*
T0*
_output_shapes
: b
 dense_2497/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2497/Tensordot/concatConcatV2"dense_2497/Tensordot/free:output:0"dense_2497/Tensordot/axes:output:0)dense_2497/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2497/Tensordot/stackPack"dense_2497/Tensordot/Prod:output:0$dense_2497/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_2497/Tensordot/transpose	Transposedense_2496/Relu:activations:0$dense_2497/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_2497/Tensordot/ReshapeReshape"dense_2497/Tensordot/transpose:y:0#dense_2497/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_2497/Tensordot/MatMulMatMul%dense_2497/Tensordot/Reshape:output:0+dense_2497/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
dense_2497/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?d
"dense_2497/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2497/Tensordot/concat_1ConcatV2&dense_2497/Tensordot/GatherV2:output:0%dense_2497/Tensordot/Const_2:output:0+dense_2497/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2497/TensordotReshape%dense_2497/Tensordot/MatMul:product:0&dense_2497/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
!dense_2497/BiasAdd/ReadVariableOpReadVariableOp*dense_2497_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2497/BiasAddBiasAdddense_2497/Tensordot:output:0)dense_2497/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????]
reshape_1997/ShapeShapedense_2497/BiasAdd:output:0*
T0*
_output_shapes
:j
 reshape_1997/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"reshape_1997/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"reshape_1997/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_1997/strided_sliceStridedSlicereshape_1997/Shape:output:0)reshape_1997/strided_slice/stack:output:0+reshape_1997/strided_slice/stack_1:output:0+reshape_1997/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
reshape_1997/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d^
reshape_1997/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
?
reshape_1997/Reshape/shapePack#reshape_1997/strided_slice:output:0%reshape_1997/Reshape/shape/1:output:0%reshape_1997/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_1997/ReshapeReshapedense_2497/BiasAdd:output:0#reshape_1997/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????d
p
IdentityIdentityreshape_1997/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????d
?
NoOpNoOp"^dense_2496/BiasAdd/ReadVariableOp$^dense_2496/Tensordot/ReadVariableOp"^dense_2497/BiasAdd/ReadVariableOp$^dense_2497/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 2F
!dense_2496/BiasAdd/ReadVariableOp!dense_2496/BiasAdd/ReadVariableOp2J
#dense_2496/Tensordot/ReadVariableOp#dense_2496/Tensordot/ReadVariableOp2F
!dense_2497/BiasAdd/ReadVariableOp!dense_2497/BiasAdd/ReadVariableOp2J
#dense_2497/Tensordot/ReadVariableOp#dense_2497/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
e
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107431

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d
:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
?
-__inference_dense_2496_layer_call_fn_11107887

inputs
unknown:	
?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107464t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
e
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107878

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d
:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
?
2__inference_sequential_1997_layer_call_fn_11107697

inputs
unknown:	
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107609s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
e
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107575

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d
:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
J
.__inference_lambda_1498_layer_call_fn_11107857

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107431d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d
:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107665
lambda_1498_input&
dense_2496_11107653:	
?"
dense_2496_11107655:	?'
dense_2497_11107658:
??"
dense_2497_11107660:	?
identity??"dense_2496/StatefulPartitionedCall?"dense_2497/StatefulPartitionedCall?
lambda_1498/PartitionedCallPartitionedCalllambda_1498_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107575?
"dense_2496/StatefulPartitionedCallStatefulPartitionedCall$lambda_1498/PartitionedCall:output:0dense_2496_11107653dense_2496_11107655*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107464?
"dense_2497/StatefulPartitionedCallStatefulPartitionedCall+dense_2496/StatefulPartitionedCall:output:0dense_2497_11107658dense_2497_11107660*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107500?
reshape_1997/PartitionedCallPartitionedCall+dense_2497/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107519x
IdentityIdentity%reshape_1997/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
?
NoOpNoOp#^dense_2496/StatefulPartitionedCall#^dense_2497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 2H
"dense_2496/StatefulPartitionedCall"dense_2496/StatefulPartitionedCall2H
"dense_2497/StatefulPartitionedCall"dense_2497/StatefulPartitionedCall:^ Z
+
_output_shapes
:?????????d

+
_user_specified_namelambda_1498_input
?
J
.__inference_lambda_1498_layer_call_fn_11107862

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107575d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d
:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?

f
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107975

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :dQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????d
\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????d
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
2__inference_sequential_1997_layer_call_fn_11107633
lambda_1498_input
unknown:	
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_1498_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107609s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
+
_output_shapes
:?????????d

+
_user_specified_namelambda_1498_input
?
?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107609

inputs&
dense_2496_11107597:	
?"
dense_2496_11107599:	?'
dense_2497_11107602:
??"
dense_2497_11107604:	?
identity??"dense_2496/StatefulPartitionedCall?"dense_2497/StatefulPartitionedCall?
lambda_1498/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107575?
"dense_2496/StatefulPartitionedCallStatefulPartitionedCall$lambda_1498/PartitionedCall:output:0dense_2496_11107597dense_2496_11107599*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107464?
"dense_2497/StatefulPartitionedCallStatefulPartitionedCall+dense_2496/StatefulPartitionedCall:output:0dense_2497_11107602dense_2497_11107604*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107500?
reshape_1997/PartitionedCallPartitionedCall+dense_2497/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107519x
IdentityIdentity%reshape_1997/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
?
NoOpNoOp#^dense_2496/StatefulPartitionedCall#^dense_2497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 2H
"dense_2496/StatefulPartitionedCall"dense_2496/StatefulPartitionedCall2H
"dense_2497/StatefulPartitionedCall"dense_2497/StatefulPartitionedCall:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
?
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107957

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107870

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d
:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?Q
?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107837

inputs?
,dense_2496_tensordot_readvariableop_resource:	
?9
*dense_2496_biasadd_readvariableop_resource:	?@
,dense_2497_tensordot_readvariableop_resource:
??9
*dense_2497_biasadd_readvariableop_resource:	?
identity??!dense_2496/BiasAdd/ReadVariableOp?#dense_2496/Tensordot/ReadVariableOp?!dense_2497/BiasAdd/ReadVariableOp?#dense_2497/Tensordot/ReadVariableOpt
lambda_1498/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    v
!lambda_1498/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            v
!lambda_1498/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
lambda_1498/strided_sliceStridedSliceinputs(lambda_1498/strided_slice/stack:output:0*lambda_1498/strided_slice/stack_1:output:0*lambda_1498/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*

begin_mask*
end_mask?
#dense_2496/Tensordot/ReadVariableOpReadVariableOp,dense_2496_tensordot_readvariableop_resource*
_output_shapes
:	
?*
dtype0c
dense_2496/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:j
dense_2496/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense_2496/Tensordot/ShapeShape"lambda_1498/strided_slice:output:0*
T0*
_output_shapes
:d
"dense_2496/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2496/Tensordot/GatherV2GatherV2#dense_2496/Tensordot/Shape:output:0"dense_2496/Tensordot/free:output:0+dense_2496/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
$dense_2496/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2496/Tensordot/GatherV2_1GatherV2#dense_2496/Tensordot/Shape:output:0"dense_2496/Tensordot/axes:output:0-dense_2496/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
dense_2496/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_2496/Tensordot/ProdProd&dense_2496/Tensordot/GatherV2:output:0#dense_2496/Tensordot/Const:output:0*
T0*
_output_shapes
: f
dense_2496/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_2496/Tensordot/Prod_1Prod(dense_2496/Tensordot/GatherV2_1:output:0%dense_2496/Tensordot/Const_1:output:0*
T0*
_output_shapes
: b
 dense_2496/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2496/Tensordot/concatConcatV2"dense_2496/Tensordot/free:output:0"dense_2496/Tensordot/axes:output:0)dense_2496/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2496/Tensordot/stackPack"dense_2496/Tensordot/Prod:output:0$dense_2496/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_2496/Tensordot/transpose	Transpose"lambda_1498/strided_slice:output:0$dense_2496/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
dense_2496/Tensordot/ReshapeReshape"dense_2496/Tensordot/transpose:y:0#dense_2496/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_2496/Tensordot/MatMulMatMul%dense_2496/Tensordot/Reshape:output:0+dense_2496/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
dense_2496/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?d
"dense_2496/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2496/Tensordot/concat_1ConcatV2&dense_2496/Tensordot/GatherV2:output:0%dense_2496/Tensordot/Const_2:output:0+dense_2496/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2496/TensordotReshape%dense_2496/Tensordot/MatMul:product:0&dense_2496/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
!dense_2496/BiasAdd/ReadVariableOpReadVariableOp*dense_2496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2496/BiasAddBiasAdddense_2496/Tensordot:output:0)dense_2496/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????k
dense_2496/ReluReludense_2496/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
#dense_2497/Tensordot/ReadVariableOpReadVariableOp,dense_2497_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0c
dense_2497/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:j
dense_2497/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
dense_2497/Tensordot/ShapeShapedense_2496/Relu:activations:0*
T0*
_output_shapes
:d
"dense_2497/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2497/Tensordot/GatherV2GatherV2#dense_2497/Tensordot/Shape:output:0"dense_2497/Tensordot/free:output:0+dense_2497/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
$dense_2497/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2497/Tensordot/GatherV2_1GatherV2#dense_2497/Tensordot/Shape:output:0"dense_2497/Tensordot/axes:output:0-dense_2497/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
dense_2497/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_2497/Tensordot/ProdProd&dense_2497/Tensordot/GatherV2:output:0#dense_2497/Tensordot/Const:output:0*
T0*
_output_shapes
: f
dense_2497/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_2497/Tensordot/Prod_1Prod(dense_2497/Tensordot/GatherV2_1:output:0%dense_2497/Tensordot/Const_1:output:0*
T0*
_output_shapes
: b
 dense_2497/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2497/Tensordot/concatConcatV2"dense_2497/Tensordot/free:output:0"dense_2497/Tensordot/axes:output:0)dense_2497/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2497/Tensordot/stackPack"dense_2497/Tensordot/Prod:output:0$dense_2497/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_2497/Tensordot/transpose	Transposedense_2496/Relu:activations:0$dense_2497/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_2497/Tensordot/ReshapeReshape"dense_2497/Tensordot/transpose:y:0#dense_2497/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_2497/Tensordot/MatMulMatMul%dense_2497/Tensordot/Reshape:output:0+dense_2497/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
dense_2497/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?d
"dense_2497/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2497/Tensordot/concat_1ConcatV2&dense_2497/Tensordot/GatherV2:output:0%dense_2497/Tensordot/Const_2:output:0+dense_2497/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2497/TensordotReshape%dense_2497/Tensordot/MatMul:product:0&dense_2497/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
!dense_2497/BiasAdd/ReadVariableOpReadVariableOp*dense_2497_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2497/BiasAddBiasAdddense_2497/Tensordot:output:0)dense_2497/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????]
reshape_1997/ShapeShapedense_2497/BiasAdd:output:0*
T0*
_output_shapes
:j
 reshape_1997/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"reshape_1997/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"reshape_1997/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_1997/strided_sliceStridedSlicereshape_1997/Shape:output:0)reshape_1997/strided_slice/stack:output:0+reshape_1997/strided_slice/stack_1:output:0+reshape_1997/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
reshape_1997/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d^
reshape_1997/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
?
reshape_1997/Reshape/shapePack#reshape_1997/strided_slice:output:0%reshape_1997/Reshape/shape/1:output:0%reshape_1997/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_1997/ReshapeReshapedense_2497/BiasAdd:output:0#reshape_1997/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????d
p
IdentityIdentityreshape_1997/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????d
?
NoOpNoOp"^dense_2496/BiasAdd/ReadVariableOp$^dense_2496/Tensordot/ReadVariableOp"^dense_2497/BiasAdd/ReadVariableOp$^dense_2497/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 2F
!dense_2496/BiasAdd/ReadVariableOp!dense_2496/BiasAdd/ReadVariableOp2J
#dense_2496/Tensordot/ReadVariableOp#dense_2496/Tensordot/ReadVariableOp2F
!dense_2497/BiasAdd/ReadVariableOp!dense_2497/BiasAdd/ReadVariableOp2J
#dense_2497/Tensordot/ReadVariableOp#dense_2497/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?2
?
!__inference__traced_save_11108061
file_prefix0
,savev2_dense_2496_kernel_read_readvariableop.
*savev2_dense_2496_bias_read_readvariableop0
,savev2_dense_2497_kernel_read_readvariableop.
*savev2_dense_2497_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_dense_2496_kernel_m_read_readvariableop5
1savev2_adam_dense_2496_bias_m_read_readvariableop7
3savev2_adam_dense_2497_kernel_m_read_readvariableop5
1savev2_adam_dense_2497_bias_m_read_readvariableop7
3savev2_adam_dense_2496_kernel_v_read_readvariableop5
1savev2_adam_dense_2496_bias_v_read_readvariableop7
3savev2_adam_dense_2497_kernel_v_read_readvariableop5
1savev2_adam_dense_2497_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_2496_kernel_read_readvariableop*savev2_dense_2496_bias_read_readvariableop,savev2_dense_2497_kernel_read_readvariableop*savev2_dense_2497_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_dense_2496_kernel_m_read_readvariableop1savev2_adam_dense_2496_bias_m_read_readvariableop3savev2_adam_dense_2497_kernel_m_read_readvariableop1savev2_adam_dense_2497_bias_m_read_readvariableop3savev2_adam_dense_2496_kernel_v_read_readvariableop1savev2_adam_dense_2496_bias_v_read_readvariableop3savev2_adam_dense_2497_kernel_v_read_readvariableop1savev2_adam_dense_2497_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	
?:?:
??:?: : : : : : : : : :	
?:?:
??:?:	
?:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:
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
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: 
?
?
2__inference_sequential_1997_layer_call_fn_11107684

inputs
unknown:	
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107522s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
K
/__inference_reshape_1997_layer_call_fn_11107962

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107519d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????d
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?d
?
#__inference__wrapped_model_11107416
lambda_1498_inputO
<sequential_1997_dense_2496_tensordot_readvariableop_resource:	
?I
:sequential_1997_dense_2496_biasadd_readvariableop_resource:	?P
<sequential_1997_dense_2497_tensordot_readvariableop_resource:
??I
:sequential_1997_dense_2497_biasadd_readvariableop_resource:	?
identity??1sequential_1997/dense_2496/BiasAdd/ReadVariableOp?3sequential_1997/dense_2496/Tensordot/ReadVariableOp?1sequential_1997/dense_2497/BiasAdd/ReadVariableOp?3sequential_1997/dense_2497/Tensordot/ReadVariableOp?
/sequential_1997/lambda_1498/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    ?
1sequential_1997/lambda_1498/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            ?
1sequential_1997/lambda_1498/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
)sequential_1997/lambda_1498/strided_sliceStridedSlicelambda_1498_input8sequential_1997/lambda_1498/strided_slice/stack:output:0:sequential_1997/lambda_1498/strided_slice/stack_1:output:0:sequential_1997/lambda_1498/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*

begin_mask*
end_mask?
3sequential_1997/dense_2496/Tensordot/ReadVariableOpReadVariableOp<sequential_1997_dense_2496_tensordot_readvariableop_resource*
_output_shapes
:	
?*
dtype0s
)sequential_1997/dense_2496/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)sequential_1997/dense_2496/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
*sequential_1997/dense_2496/Tensordot/ShapeShape2sequential_1997/lambda_1498/strided_slice:output:0*
T0*
_output_shapes
:t
2sequential_1997/dense_2496/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
-sequential_1997/dense_2496/Tensordot/GatherV2GatherV23sequential_1997/dense_2496/Tensordot/Shape:output:02sequential_1997/dense_2496/Tensordot/free:output:0;sequential_1997/dense_2496/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4sequential_1997/dense_2496/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
/sequential_1997/dense_2496/Tensordot/GatherV2_1GatherV23sequential_1997/dense_2496/Tensordot/Shape:output:02sequential_1997/dense_2496/Tensordot/axes:output:0=sequential_1997/dense_2496/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*sequential_1997/dense_2496/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
)sequential_1997/dense_2496/Tensordot/ProdProd6sequential_1997/dense_2496/Tensordot/GatherV2:output:03sequential_1997/dense_2496/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,sequential_1997/dense_2496/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
+sequential_1997/dense_2496/Tensordot/Prod_1Prod8sequential_1997/dense_2496/Tensordot/GatherV2_1:output:05sequential_1997/dense_2496/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0sequential_1997/dense_2496/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
+sequential_1997/dense_2496/Tensordot/concatConcatV22sequential_1997/dense_2496/Tensordot/free:output:02sequential_1997/dense_2496/Tensordot/axes:output:09sequential_1997/dense_2496/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
*sequential_1997/dense_2496/Tensordot/stackPack2sequential_1997/dense_2496/Tensordot/Prod:output:04sequential_1997/dense_2496/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
.sequential_1997/dense_2496/Tensordot/transpose	Transpose2sequential_1997/lambda_1498/strided_slice:output:04sequential_1997/dense_2496/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
,sequential_1997/dense_2496/Tensordot/ReshapeReshape2sequential_1997/dense_2496/Tensordot/transpose:y:03sequential_1997/dense_2496/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
+sequential_1997/dense_2496/Tensordot/MatMulMatMul5sequential_1997/dense_2496/Tensordot/Reshape:output:0;sequential_1997/dense_2496/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
,sequential_1997/dense_2496/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?t
2sequential_1997/dense_2496/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
-sequential_1997/dense_2496/Tensordot/concat_1ConcatV26sequential_1997/dense_2496/Tensordot/GatherV2:output:05sequential_1997/dense_2496/Tensordot/Const_2:output:0;sequential_1997/dense_2496/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1997/dense_2496/TensordotReshape5sequential_1997/dense_2496/Tensordot/MatMul:product:06sequential_1997/dense_2496/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
1sequential_1997/dense_2496/BiasAdd/ReadVariableOpReadVariableOp:sequential_1997_dense_2496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"sequential_1997/dense_2496/BiasAddBiasAdd-sequential_1997/dense_2496/Tensordot:output:09sequential_1997/dense_2496/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
sequential_1997/dense_2496/ReluRelu+sequential_1997/dense_2496/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
3sequential_1997/dense_2497/Tensordot/ReadVariableOpReadVariableOp<sequential_1997_dense_2497_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0s
)sequential_1997/dense_2497/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)sequential_1997/dense_2497/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
*sequential_1997/dense_2497/Tensordot/ShapeShape-sequential_1997/dense_2496/Relu:activations:0*
T0*
_output_shapes
:t
2sequential_1997/dense_2497/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
-sequential_1997/dense_2497/Tensordot/GatherV2GatherV23sequential_1997/dense_2497/Tensordot/Shape:output:02sequential_1997/dense_2497/Tensordot/free:output:0;sequential_1997/dense_2497/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4sequential_1997/dense_2497/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
/sequential_1997/dense_2497/Tensordot/GatherV2_1GatherV23sequential_1997/dense_2497/Tensordot/Shape:output:02sequential_1997/dense_2497/Tensordot/axes:output:0=sequential_1997/dense_2497/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*sequential_1997/dense_2497/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
)sequential_1997/dense_2497/Tensordot/ProdProd6sequential_1997/dense_2497/Tensordot/GatherV2:output:03sequential_1997/dense_2497/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,sequential_1997/dense_2497/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
+sequential_1997/dense_2497/Tensordot/Prod_1Prod8sequential_1997/dense_2497/Tensordot/GatherV2_1:output:05sequential_1997/dense_2497/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0sequential_1997/dense_2497/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
+sequential_1997/dense_2497/Tensordot/concatConcatV22sequential_1997/dense_2497/Tensordot/free:output:02sequential_1997/dense_2497/Tensordot/axes:output:09sequential_1997/dense_2497/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
*sequential_1997/dense_2497/Tensordot/stackPack2sequential_1997/dense_2497/Tensordot/Prod:output:04sequential_1997/dense_2497/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
.sequential_1997/dense_2497/Tensordot/transpose	Transpose-sequential_1997/dense_2496/Relu:activations:04sequential_1997/dense_2497/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
,sequential_1997/dense_2497/Tensordot/ReshapeReshape2sequential_1997/dense_2497/Tensordot/transpose:y:03sequential_1997/dense_2497/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
+sequential_1997/dense_2497/Tensordot/MatMulMatMul5sequential_1997/dense_2497/Tensordot/Reshape:output:0;sequential_1997/dense_2497/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
,sequential_1997/dense_2497/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?t
2sequential_1997/dense_2497/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
-sequential_1997/dense_2497/Tensordot/concat_1ConcatV26sequential_1997/dense_2497/Tensordot/GatherV2:output:05sequential_1997/dense_2497/Tensordot/Const_2:output:0;sequential_1997/dense_2497/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1997/dense_2497/TensordotReshape5sequential_1997/dense_2497/Tensordot/MatMul:product:06sequential_1997/dense_2497/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
1sequential_1997/dense_2497/BiasAdd/ReadVariableOpReadVariableOp:sequential_1997_dense_2497_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"sequential_1997/dense_2497/BiasAddBiasAdd-sequential_1997/dense_2497/Tensordot:output:09sequential_1997/dense_2497/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????}
"sequential_1997/reshape_1997/ShapeShape+sequential_1997/dense_2497/BiasAdd:output:0*
T0*
_output_shapes
:z
0sequential_1997/reshape_1997/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_1997/reshape_1997/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_1997/reshape_1997/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*sequential_1997/reshape_1997/strided_sliceStridedSlice+sequential_1997/reshape_1997/Shape:output:09sequential_1997/reshape_1997/strided_slice/stack:output:0;sequential_1997/reshape_1997/strided_slice/stack_1:output:0;sequential_1997/reshape_1997/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,sequential_1997/reshape_1997/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :dn
,sequential_1997/reshape_1997/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
?
*sequential_1997/reshape_1997/Reshape/shapePack3sequential_1997/reshape_1997/strided_slice:output:05sequential_1997/reshape_1997/Reshape/shape/1:output:05sequential_1997/reshape_1997/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
$sequential_1997/reshape_1997/ReshapeReshape+sequential_1997/dense_2497/BiasAdd:output:03sequential_1997/reshape_1997/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????d
?
IdentityIdentity-sequential_1997/reshape_1997/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????d
?
NoOpNoOp2^sequential_1997/dense_2496/BiasAdd/ReadVariableOp4^sequential_1997/dense_2496/Tensordot/ReadVariableOp2^sequential_1997/dense_2497/BiasAdd/ReadVariableOp4^sequential_1997/dense_2497/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 2f
1sequential_1997/dense_2496/BiasAdd/ReadVariableOp1sequential_1997/dense_2496/BiasAdd/ReadVariableOp2j
3sequential_1997/dense_2496/Tensordot/ReadVariableOp3sequential_1997/dense_2496/Tensordot/ReadVariableOp2f
1sequential_1997/dense_2497/BiasAdd/ReadVariableOp1sequential_1997/dense_2497/BiasAdd/ReadVariableOp2j
3sequential_1997/dense_2497/Tensordot/ReadVariableOp3sequential_1997/dense_2497/Tensordot/ReadVariableOp:^ Z
+
_output_shapes
:?????????d

+
_user_specified_namelambda_1498_input
?
?
&__inference_signature_wrapper_11107852
lambda_1498_input
unknown:	
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_1498_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__wrapped_model_11107416s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
+
_output_shapes
:?????????d

+
_user_specified_namelambda_1498_input
?
?
2__inference_sequential_1997_layer_call_fn_11107533
lambda_1498_input
unknown:	
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_1498_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107522s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
+
_output_shapes
:?????????d

+
_user_specified_namelambda_1498_input
?
?
-__inference_dense_2497_layer_call_fn_11107927

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107500t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107522

inputs&
dense_2496_11107465:	
?"
dense_2496_11107467:	?'
dense_2497_11107501:
??"
dense_2497_11107503:	?
identity??"dense_2496/StatefulPartitionedCall?"dense_2497/StatefulPartitionedCall?
lambda_1498/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107431?
"dense_2496/StatefulPartitionedCallStatefulPartitionedCall$lambda_1498/PartitionedCall:output:0dense_2496_11107465dense_2496_11107467*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107464?
"dense_2497/StatefulPartitionedCallStatefulPartitionedCall+dense_2496/StatefulPartitionedCall:output:0dense_2497_11107501dense_2497_11107503*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107500?
reshape_1997/PartitionedCallPartitionedCall+dense_2497/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107519x
IdentityIdentity%reshape_1997/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
?
NoOpNoOp#^dense_2496/StatefulPartitionedCall#^dense_2497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 2H
"dense_2496/StatefulPartitionedCall"dense_2496/StatefulPartitionedCall2H
"dense_2497/StatefulPartitionedCall"dense_2497/StatefulPartitionedCall:S O
+
_output_shapes
:?????????d

 
_user_specified_nameinputs
?
?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107649
lambda_1498_input&
dense_2496_11107637:	
?"
dense_2496_11107639:	?'
dense_2497_11107642:
??"
dense_2497_11107644:	?
identity??"dense_2496/StatefulPartitionedCall?"dense_2497/StatefulPartitionedCall?
lambda_1498/PartitionedCallPartitionedCalllambda_1498_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107431?
"dense_2496/StatefulPartitionedCallStatefulPartitionedCall$lambda_1498/PartitionedCall:output:0dense_2496_11107637dense_2496_11107639*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107464?
"dense_2497/StatefulPartitionedCallStatefulPartitionedCall+dense_2496/StatefulPartitionedCall:output:0dense_2497_11107642dense_2497_11107644*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107500?
reshape_1997/PartitionedCallPartitionedCall+dense_2497/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107519x
IdentityIdentity%reshape_1997/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d
?
NoOpNoOp#^dense_2496/StatefulPartitionedCall#^dense_2497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d
: : : : 2H
"dense_2496/StatefulPartitionedCall"dense_2496/StatefulPartitionedCall2H
"dense_2497/StatefulPartitionedCall"dense_2497/StatefulPartitionedCall:^ Z
+
_output_shapes
:?????????d

+
_user_specified_namelambda_1498_input
?U
?
$__inference__traced_restore_11108134
file_prefix5
"assignvariableop_dense_2496_kernel:	
?1
"assignvariableop_1_dense_2496_bias:	?8
$assignvariableop_2_dense_2497_kernel:
??1
"assignvariableop_3_dense_2497_bias:	?&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: ?
,assignvariableop_13_adam_dense_2496_kernel_m:	
?9
*assignvariableop_14_adam_dense_2496_bias_m:	?@
,assignvariableop_15_adam_dense_2497_kernel_m:
??9
*assignvariableop_16_adam_dense_2497_bias_m:	??
,assignvariableop_17_adam_dense_2496_kernel_v:	
?9
*assignvariableop_18_adam_dense_2496_bias_v:	?@
,assignvariableop_19_adam_dense_2497_kernel_v:
??9
*assignvariableop_20_adam_dense_2497_bias_v:	?
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp"assignvariableop_dense_2496_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_2496_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_2497_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_2497_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_2496_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_2496_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_2497_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_2497_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_2496_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_2496_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_2497_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_2497_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
?
?
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107918

inputs4
!tensordot_readvariableop_resource:	
?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	
?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
lambda_1498_input>
#serving_default_lambda_1498_input:0?????????d
D
reshape_19974
StatefulPartitionedCall:0?????????d
tensorflow/serving/predict:?_
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
?
*iter

+beta_1

,beta_2
	-decay
.learning_ratemTmUmVmWvXvYvZv["
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_sequential_1997_layer_call_fn_11107533
2__inference_sequential_1997_layer_call_fn_11107684
2__inference_sequential_1997_layer_call_fn_11107697
2__inference_sequential_1997_layer_call_fn_11107633?
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
?2?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107767
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107837
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107649
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107665?
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
#__inference__wrapped_model_11107416lambda_1498_input"?
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
,
4serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_lambda_1498_layer_call_fn_11107857
.__inference_lambda_1498_layer_call_fn_11107862?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107870
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107878?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
$:"	
?2dense_2496/kernel
:?2dense_2496/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_dense_2496_layer_call_fn_11107887?
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
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107918?
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
%:#
??2dense_2497/kernel
:?2dense_2497/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_dense_2497_layer_call_fn_11107927?
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
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107957?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_reshape_1997_layer_call_fn_11107962?
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
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107975?
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_signature_wrapper_11107852lambda_1498_input"?
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
 
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
N
	Ktotal
	Lcount
M	variables
N	keras_api"
_tf_keras_metric
^
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
K0
L1"
trackable_list_wrapper
-
M	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
):'	
?2Adam/dense_2496/kernel/m
#:!?2Adam/dense_2496/bias/m
*:(
??2Adam/dense_2497/kernel/m
#:!?2Adam/dense_2497/bias/m
):'	
?2Adam/dense_2496/kernel/v
#:!?2Adam/dense_2496/bias/v
*:(
??2Adam/dense_2497/kernel/v
#:!?2Adam/dense_2497/bias/v?
#__inference__wrapped_model_11107416?>?;
4?1
/?,
lambda_1498_input?????????d

? "??<
:
reshape_1997*?'
reshape_1997?????????d
?
H__inference_dense_2496_layer_call_and_return_conditional_losses_11107918e3?0
)?&
$?!
inputs?????????

? "*?'
 ?
0??????????
? ?
-__inference_dense_2496_layer_call_fn_11107887X3?0
)?&
$?!
inputs?????????

? "????????????
H__inference_dense_2497_layer_call_and_return_conditional_losses_11107957f4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
-__inference_dense_2497_layer_call_fn_11107927Y4?1
*?'
%?"
inputs??????????
? "????????????
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107870h;?8
1?.
$?!
inputs?????????d


 
p 
? ")?&
?
0?????????

? ?
I__inference_lambda_1498_layer_call_and_return_conditional_losses_11107878h;?8
1?.
$?!
inputs?????????d


 
p
? ")?&
?
0?????????

? ?
.__inference_lambda_1498_layer_call_fn_11107857[;?8
1?.
$?!
inputs?????????d


 
p 
? "??????????
?
.__inference_lambda_1498_layer_call_fn_11107862[;?8
1?.
$?!
inputs?????????d


 
p
? "??????????
?
J__inference_reshape_1997_layer_call_and_return_conditional_losses_11107975a4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????d

? ?
/__inference_reshape_1997_layer_call_fn_11107962T4?1
*?'
%?"
inputs??????????
? "??????????d
?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107649yF?C
<?9
/?,
lambda_1498_input?????????d

p 

 
? ")?&
?
0?????????d

? ?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107665yF?C
<?9
/?,
lambda_1498_input?????????d

p

 
? ")?&
?
0?????????d

? ?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107767n;?8
1?.
$?!
inputs?????????d

p 

 
? ")?&
?
0?????????d

? ?
M__inference_sequential_1997_layer_call_and_return_conditional_losses_11107837n;?8
1?.
$?!
inputs?????????d

p

 
? ")?&
?
0?????????d

? ?
2__inference_sequential_1997_layer_call_fn_11107533lF?C
<?9
/?,
lambda_1498_input?????????d

p 

 
? "??????????d
?
2__inference_sequential_1997_layer_call_fn_11107633lF?C
<?9
/?,
lambda_1498_input?????????d

p

 
? "??????????d
?
2__inference_sequential_1997_layer_call_fn_11107684a;?8
1?.
$?!
inputs?????????d

p 

 
? "??????????d
?
2__inference_sequential_1997_layer_call_fn_11107697a;?8
1?.
$?!
inputs?????????d

p

 
? "??????????d
?
&__inference_signature_wrapper_11107852?S?P
? 
I?F
D
lambda_1498_input/?,
lambda_1498_input?????????d
"??<
:
reshape_1997*?'
reshape_1997?????????d
