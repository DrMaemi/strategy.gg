ощ+
╤г
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
dtypetypeИ
╛
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.3.02v2.3.0-rc2-23-gb36436b0878╔╚*
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:,*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
Л
gru_7/gru_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Д*(
shared_namegru_7/gru_cell_7/kernel
Д
+gru_7/gru_cell_7/kernel/Read/ReadVariableOpReadVariableOpgru_7/gru_cell_7/kernel*
_output_shapes
:	Д*
dtype0
Я
!gru_7/gru_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	,Д*2
shared_name#!gru_7/gru_cell_7/recurrent_kernel
Ш
5gru_7/gru_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_7/gru_cell_7/recurrent_kernel*
_output_shapes
:	,Д*
dtype0
З
gru_7/gru_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Д*&
shared_namegru_7/gru_cell_7/bias
А
)gru_7/gru_cell_7/bias/Read/ReadVariableOpReadVariableOpgru_7/gru_cell_7/bias*
_output_shapes
:	Д*
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

NoOpNoOp
л
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ц
value▄B┘ B╥
╠
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
l

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
6
iter
	decay
learning_rate
momentum
#
0
1
 2
3
4
 
#
0
1
 2
3
4
н
!layer_regularization_losses
"layer_metrics
	variables
#non_trainable_variables
$metrics
regularization_losses
trainable_variables

%layers
 
~

kernel
recurrent_kernel
 bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
 

0
1
 2
 

0
1
 2
╣
*layer_regularization_losses
+layer_metrics

,states
	variables
-non_trainable_variables
.metrics
regularization_losses
trainable_variables

/layers
 
 
 
н
0layer_regularization_losses
1layer_metrics
	variables
2non_trainable_variables
3metrics
regularization_losses
trainable_variables

4layers
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
5layer_regularization_losses
6layer_metrics
	variables
7non_trainable_variables
8metrics
regularization_losses
trainable_variables

9layers
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEgru_7/gru_cell_7/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!gru_7/gru_cell_7/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEgru_7/gru_cell_7/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

:0

0
1
2

0
1
 2
 

0
1
 2
н
;layer_regularization_losses
<layer_metrics
&	variables
=non_trainable_variables
>metrics
'regularization_losses
(trainable_variables

?layers
 
 
 
 
 


0
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
4
	@total
	Acount
B	variables
C	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

B	variables
Ж
serving_default_gru_7_inputPlaceholder*+
_output_shapes
:         	*
dtype0* 
shape:         	
┤
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_7_inputgru_7/gru_cell_7/kernel!gru_7/gru_cell_7/recurrent_kernelgru_7/gru_cell_7/biasdense_7/kerneldense_7/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_485118
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
║
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp+gru_7/gru_cell_7/kernel/Read/ReadVariableOp5gru_7/gru_cell_7/recurrent_kernel/Read/ReadVariableOp)gru_7/gru_cell_7/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_487616
┘
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_7/kerneldense_7/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumgru_7/gru_cell_7/kernel!gru_7/gru_cell_7/recurrent_kernelgru_7/gru_cell_7/biastotalcount*
Tin
2*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_487659ёО*
шE
г
__inference_standard_gru_483540

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_483449*
condR
while_cond_483448*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  ,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_ecbc0f85-dc9f-420a-b238-824f2bea6487*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
▒E
г
__inference_standard_gru_486494

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_486403*
condR
while_cond_486402*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	         ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         	,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_3d8978d2-53d4-4ea7-8793-ebcbee41eb73*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
ч
М
H__inference_sequential_7_layer_call_and_return_conditional_losses_485030
gru_7_input
gru_7_485016
gru_7_485018
gru_7_485020
dense_7_485024
dense_7_485026
identityИвdense_7/StatefulPartitionedCallвgru_7/StatefulPartitionedCallЭ
gru_7/StatefulPartitionedCallStatefulPartitionedCallgru_7_inputgru_7_485016gru_7_485018gru_7_485020*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_7_layer_call_and_return_conditional_losses_4849422
gru_7/StatefulPartitionedCallГ
activation_7/PartitionedCallPartitionedCall&gru_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_4849772
activation_7/PartitionedCall▒
dense_7/StatefulPartitionedCallStatefulPartitionedCall%activation_7/PartitionedCall:output:0dense_7_485024dense_7_485026*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4849962!
dense_7/StatefulPartitionedCall╛
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_7/StatefulPartitionedCall^gru_7/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2>
gru_7/StatefulPartitionedCallgru_7/StatefulPartitionedCall:X T
+
_output_shapes
:         	
%
_user_specified_namegru_7_input
Ж	
▐
while_cond_486402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_486402___redundant_placeholder04
0while_while_cond_486402___redundant_placeholder14
0while_while_cond_486402___redundant_placeholder24
0while_while_cond_486402___redundant_placeholder34
0while_while_cond_486402___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ў#
╝
H__inference_sequential_7_layer_call_and_return_conditional_losses_485513

inputs&
"gru_7_read_readvariableop_resource(
$gru_7_read_1_readvariableop_resource(
$gru_7_read_2_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identityИP
gru_7/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_7/ShapeА
gru_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_7/strided_slice/stackД
gru_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_7/strided_slice/stack_1Д
gru_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_7/strided_slice/stack_2Ж
gru_7/strided_sliceStridedSlicegru_7/Shape:output:0"gru_7/strided_slice/stack:output:0$gru_7/strided_slice/stack_1:output:0$gru_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_7/strided_sliceh
gru_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :,2
gru_7/zeros/mul/yД
gru_7/zeros/mulMulgru_7/strided_slice:output:0gru_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_7/zeros/mulk
gru_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
gru_7/zeros/Less/y
gru_7/zeros/LessLessgru_7/zeros/mul:z:0gru_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_7/zeros/Lessn
gru_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :,2
gru_7/zeros/packed/1Ы
gru_7/zeros/packedPackgru_7/strided_slice:output:0gru_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_7/zeros/packedk
gru_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_7/zeros/ConstН
gru_7/zerosFillgru_7/zeros/packed:output:0gru_7/zeros/Const:output:0*
T0*'
_output_shapes
:         ,2
gru_7/zerosЪ
gru_7/Read/ReadVariableOpReadVariableOp"gru_7_read_readvariableop_resource*
_output_shapes
:	Д*
dtype02
gru_7/Read/ReadVariableOpy
gru_7/IdentityIdentity!gru_7/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2
gru_7/Identityа
gru_7/Read_1/ReadVariableOpReadVariableOp$gru_7_read_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
gru_7/Read_1/ReadVariableOp
gru_7/Identity_1Identity#gru_7/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2
gru_7/Identity_1а
gru_7/Read_2/ReadVariableOpReadVariableOp$gru_7_read_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
gru_7/Read_2/ReadVariableOp
gru_7/Identity_2Identity#gru_7/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2
gru_7/Identity_2─
gru_7/PartitionedCallPartitionedCallinputsgru_7/zeros:output:0gru_7/Identity:output:0gru_7/Identity_1:output:0gru_7/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         ,:         	,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4852872
gru_7/PartitionedCallА
activation_7/ReluRelugru_7/PartitionedCall:output:0*
T0*'
_output_shapes
:         ,2
activation_7/Reluе
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:,*
dtype02
dense_7/MatMul/ReadVariableOpд
dense_7/MatMulMatMulactivation_7/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_7/MatMulд
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOpб
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_7/Softmaxm
IdentityIdentitydense_7/Softmax:softmax:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	::::::S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
╝░
С
:__inference___backward_gpu_gru_with_fallback_486983_487119
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  ,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :                  ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationш
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ь
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:                  :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshape▓
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*4
_output_shapes"
 :                  2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*е
_input_shapesУ
Р:         ,:                  ,:         ,: :                  ,::         ,: ::                  :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_2a2c08b5-0a23-4a81-9cd5-1b96154abb15*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_487118*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,::6
4
_output_shapes"
 :                  ,:-)
'
_output_shapes
:         ,:

_output_shapes
: ::6
4
_output_shapes"
 :                  ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :                  :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╨
п
-__inference_sequential_7_layer_call_fn_485938

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_4850822
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
└G
╟
&__forward_gpu_gru_with_fallback_486322

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_70376cf6-b8ab-47f2-bc2a-040a73e455fa*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_486187_486323*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
ў#
╝
H__inference_sequential_7_layer_call_and_return_conditional_losses_485908

inputs&
"gru_7_read_readvariableop_resource(
$gru_7_read_1_readvariableop_resource(
$gru_7_read_2_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identityИP
gru_7/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_7/ShapeА
gru_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_7/strided_slice/stackД
gru_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_7/strided_slice/stack_1Д
gru_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_7/strided_slice/stack_2Ж
gru_7/strided_sliceStridedSlicegru_7/Shape:output:0"gru_7/strided_slice/stack:output:0$gru_7/strided_slice/stack_1:output:0$gru_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_7/strided_sliceh
gru_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :,2
gru_7/zeros/mul/yД
gru_7/zeros/mulMulgru_7/strided_slice:output:0gru_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_7/zeros/mulk
gru_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
gru_7/zeros/Less/y
gru_7/zeros/LessLessgru_7/zeros/mul:z:0gru_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_7/zeros/Lessn
gru_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :,2
gru_7/zeros/packed/1Ы
gru_7/zeros/packedPackgru_7/strided_slice:output:0gru_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_7/zeros/packedk
gru_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_7/zeros/ConstН
gru_7/zerosFillgru_7/zeros/packed:output:0gru_7/zeros/Const:output:0*
T0*'
_output_shapes
:         ,2
gru_7/zerosЪ
gru_7/Read/ReadVariableOpReadVariableOp"gru_7_read_readvariableop_resource*
_output_shapes
:	Д*
dtype02
gru_7/Read/ReadVariableOpy
gru_7/IdentityIdentity!gru_7/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2
gru_7/Identityа
gru_7/Read_1/ReadVariableOpReadVariableOp$gru_7_read_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
gru_7/Read_1/ReadVariableOp
gru_7/Identity_1Identity#gru_7/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2
gru_7/Identity_1а
gru_7/Read_2/ReadVariableOpReadVariableOp$gru_7_read_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
gru_7/Read_2/ReadVariableOp
gru_7/Identity_2Identity#gru_7/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2
gru_7/Identity_2─
gru_7/PartitionedCallPartitionedCallinputsgru_7/zeros:output:0gru_7/Identity:output:0gru_7/Identity_1:output:0gru_7/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         ,:         	,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4856822
gru_7/PartitionedCallА
activation_7/ReluRelugru_7/PartitionedCall:output:0*
T0*'
_output_shapes
:         ,2
activation_7/Reluе
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:,*
dtype02
dense_7/MatMul/ReadVariableOpд
dense_7/MatMulMatMulactivation_7/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_7/MatMulд
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOpб
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_7/Softmaxm
IdentityIdentitydense_7/Softmax:softmax:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	::::::S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ж	
▐
while_cond_486811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_486811___redundant_placeholder04
0while_while_cond_486811___redundant_placeholder14
0while_while_cond_486811___redundant_placeholder24
0while_while_cond_486811___redundant_placeholder34
0while_while_cond_486811___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
▒E
г
__inference_standard_gru_485287

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_485196*
condR
while_cond_485195*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	         ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         	,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_95620f18-92d6-4521-afae-c5bc550a10d2*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
Р
╠
A__inference_gru_7_layer_call_and_return_conditional_losses_484156

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИD
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
strided_slice/stack_2т
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
value	B :,2
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
B :ш2
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
value	B :,2
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
:         ,2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

Identity_2й
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:         ,:                  ,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4839382
PartitionedCallp

Identity_3IdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:                  ::::\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╞п
С
:__inference___backward_gpu_gru_with_fallback_484804_484940
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         	,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides╥
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:	         ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:	         ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeЛ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:	         ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1У
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:	         :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЎ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         	2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshapeй
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*+
_output_shapes
:         	2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*К
_input_shapes°
ї:         ,:         	,:         ,: :	         ,::         ,: ::	         :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_390ed0c3-d29b-4458-9ab6-6bb622dd01e3*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_484939*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,:1-
+
_output_shapes
:         	,:-)
'
_output_shapes
:         ,:

_output_shapes
: :1-
+
_output_shapes
:	         ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:	         :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
№=
║
(__inference_gpu_gru_with_fallback_486982

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*4
_output_shapes"
 :                  ,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_2a2c08b5-0a23-4a81-9cd5-1b96154abb15*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
┼=
║
(__inference_gpu_gru_with_fallback_486573

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_3d8978d2-53d4-4ea7-8793-ebcbee41eb73*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
Ж	
▐
while_cond_482275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_482275___redundant_placeholder04
0while_while_cond_482275___redundant_placeholder14
0while_while_cond_482275___redundant_placeholder24
0while_while_cond_482275___redundant_placeholder34
0while_while_cond_482275___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
╪
З
H__inference_sequential_7_layer_call_and_return_conditional_losses_485082

inputs
gru_7_485068
gru_7_485070
gru_7_485072
dense_7_485076
dense_7_485078
identityИвdense_7/StatefulPartitionedCallвgru_7/StatefulPartitionedCallШ
gru_7/StatefulPartitionedCallStatefulPartitionedCallinputsgru_7_485068gru_7_485070gru_7_485072*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_7_layer_call_and_return_conditional_losses_4849422
gru_7/StatefulPartitionedCallГ
activation_7/PartitionedCallPartitionedCall&gru_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_4849772
activation_7/PartitionedCall▒
dense_7/StatefulPartitionedCallStatefulPartitionedCall%activation_7/PartitionedCall:output:0dense_7_485076dense_7_485078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4849962!
dense_7/StatefulPartitionedCall╛
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_7/StatefulPartitionedCall^gru_7/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2>
gru_7/StatefulPartitionedCallgru_7/StatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
╫2
т
while_body_483449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
╫2
т
while_body_487199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
ї
╠
A__inference_gru_7_layer_call_and_return_conditional_losses_484942

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИD
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
strided_slice/stack_2т
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
value	B :,2
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
B :ш2
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
value	B :,2
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
:         ,2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

Identity_2а
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         ,:         	,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4847242
PartitionedCallp

Identity_3IdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity_3"!

identity_3Identity_3:output:0*6
_input_shapes%
#:         	::::S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
░
л
C__inference_dense_7_layer_call_and_return_conditional_losses_484996

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         ,:::O K
'
_output_shapes
:         ,
 
_user_specified_nameinputs
▒E
г
__inference_standard_gru_484724

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_484633*
condR
while_cond_484632*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	         ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         	,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_390ed0c3-d29b-4458-9ab6-6bb622dd01e3*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
└G
╟
&__forward_gpu_gru_with_fallback_486709

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_3d8978d2-53d4-4ea7-8793-ebcbee41eb73*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_486574_486710*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
┼=
║
(__inference_gpu_gru_with_fallback_485761

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_1d427fc0-c18b-4739-90d4-b013458508e6*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╨
п
-__inference_sequential_7_layer_call_fn_485923

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_4850502
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ш
╬
A__inference_gru_7_layer_call_and_return_conditional_losses_487121
inputs_0 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИF
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
strided_slice/stack_2т
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
value	B :,2
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
B :ш2
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
value	B :,2
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
:         ,2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

Identity_2л
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:         ,:                  ,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4869032
PartitionedCallp

Identity_3IdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:                  ::::^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╝░
С
:__inference___backward_gpu_gru_with_fallback_487370_487506
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  ,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :                  ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationш
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ь
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:                  :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshape▓
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*4
_output_shapes"
 :                  2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*е
_input_shapesУ
Р:         ,:                  ,:         ,: :                  ,::         ,: ::                  :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_5d6fdda0-01e2-4224-9c85-0e4609b74f30*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_487505*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,::6
4
_output_shapes"
 :                  ,:-)
'
_output_shapes
:         ,:

_output_shapes
: ::6
4
_output_shapes"
 :                  ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :                  :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╫2
т
while_body_484633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
▀
┤
-__inference_sequential_7_layer_call_fn_485063
gru_7_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallgru_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_4850502
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:         	
%
_user_specified_namegru_7_input
Ж	
▐
while_cond_484632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_484632___redundant_placeholder04
0while_while_cond_484632___redundant_placeholder14
0while_while_cond_484632___redundant_placeholder24
0while_while_cond_484632___redundant_placeholder34
0while_while_cond_484632___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ъ
М
&__inference_gru_7_layer_call_fn_487530
inputs_0
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_7_layer_call_and_return_conditional_losses_4841562
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         ,2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
№=
║
(__inference_gpu_gru_with_fallback_487369

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*4
_output_shapes"
 :                  ,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_5d6fdda0-01e2-4224-9c85-0e4609b74f30*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
▒E
г
__inference_standard_gru_484337

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_484246*
condR
while_cond_484245*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	         ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         	,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_63205c60-b3f4-4553-9f24-75e4129cc9ae*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
Ж	
▐
while_cond_483448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_483448___redundant_placeholder04
0while_while_cond_483448___redundant_placeholder14
0while_while_cond_483448___redundant_placeholder24
0while_while_cond_483448___redundant_placeholder34
0while_while_cond_483448___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
╫2
т
while_body_485196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
шE
г
__inference_standard_gru_483938

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_483847*
condR
while_cond_483846*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  ,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_2ea50bf1-1dea-4e27-a9a6-b775d3355ff7*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
└G
╟
&__forward_gpu_gru_with_fallback_484552

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_63205c60-b3f4-4553-9f24-75e4129cc9ae*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_484417_484553*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╫2
т
while_body_484246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
х,
█
!__inference__wrapped_model_482593
gru_7_input3
/sequential_7_gru_7_read_readvariableop_resource5
1sequential_7_gru_7_read_1_readvariableop_resource5
1sequential_7_gru_7_read_2_readvariableop_resource7
3sequential_7_dense_7_matmul_readvariableop_resource8
4sequential_7_dense_7_biasadd_readvariableop_resource
identityИo
sequential_7/gru_7/ShapeShapegru_7_input*
T0*
_output_shapes
:2
sequential_7/gru_7/ShapeЪ
&sequential_7/gru_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_7/gru_7/strided_slice/stackЮ
(sequential_7/gru_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential_7/gru_7/strided_slice/stack_1Ю
(sequential_7/gru_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential_7/gru_7/strided_slice/stack_2╘
 sequential_7/gru_7/strided_sliceStridedSlice!sequential_7/gru_7/Shape:output:0/sequential_7/gru_7/strided_slice/stack:output:01sequential_7/gru_7/strided_slice/stack_1:output:01sequential_7/gru_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential_7/gru_7/strided_sliceВ
sequential_7/gru_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :,2 
sequential_7/gru_7/zeros/mul/y╕
sequential_7/gru_7/zeros/mulMul)sequential_7/gru_7/strided_slice:output:0'sequential_7/gru_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_7/gru_7/zeros/mulЕ
sequential_7/gru_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2!
sequential_7/gru_7/zeros/Less/y│
sequential_7/gru_7/zeros/LessLess sequential_7/gru_7/zeros/mul:z:0(sequential_7/gru_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential_7/gru_7/zeros/LessИ
!sequential_7/gru_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :,2#
!sequential_7/gru_7/zeros/packed/1╧
sequential_7/gru_7/zeros/packedPack)sequential_7/gru_7/strided_slice:output:0*sequential_7/gru_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2!
sequential_7/gru_7/zeros/packedЕ
sequential_7/gru_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_7/gru_7/zeros/Const┴
sequential_7/gru_7/zerosFill(sequential_7/gru_7/zeros/packed:output:0'sequential_7/gru_7/zeros/Const:output:0*
T0*'
_output_shapes
:         ,2
sequential_7/gru_7/zeros┴
&sequential_7/gru_7/Read/ReadVariableOpReadVariableOp/sequential_7_gru_7_read_readvariableop_resource*
_output_shapes
:	Д*
dtype02(
&sequential_7/gru_7/Read/ReadVariableOpа
sequential_7/gru_7/IdentityIdentity.sequential_7/gru_7/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2
sequential_7/gru_7/Identity╟
(sequential_7/gru_7/Read_1/ReadVariableOpReadVariableOp1sequential_7_gru_7_read_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02*
(sequential_7/gru_7/Read_1/ReadVariableOpж
sequential_7/gru_7/Identity_1Identity0sequential_7/gru_7/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2
sequential_7/gru_7/Identity_1╟
(sequential_7/gru_7/Read_2/ReadVariableOpReadVariableOp1sequential_7_gru_7_read_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02*
(sequential_7/gru_7/Read_2/ReadVariableOpж
sequential_7/gru_7/Identity_2Identity0sequential_7/gru_7/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2
sequential_7/gru_7/Identity_2Ч
"sequential_7/gru_7/PartitionedCallPartitionedCallgru_7_input!sequential_7/gru_7/zeros:output:0$sequential_7/gru_7/Identity:output:0&sequential_7/gru_7/Identity_1:output:0&sequential_7/gru_7/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         ,:         	,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4823672$
"sequential_7/gru_7/PartitionedCallз
sequential_7/activation_7/ReluRelu+sequential_7/gru_7/PartitionedCall:output:0*
T0*'
_output_shapes
:         ,2 
sequential_7/activation_7/Relu╠
*sequential_7/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_7_dense_7_matmul_readvariableop_resource*
_output_shapes

:,*
dtype02,
*sequential_7/dense_7/MatMul/ReadVariableOp╪
sequential_7/dense_7/MatMulMatMul,sequential_7/activation_7/Relu:activations:02sequential_7/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_7/dense_7/MatMul╦
+sequential_7/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_7_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_7/dense_7/BiasAdd/ReadVariableOp╒
sequential_7/dense_7/BiasAddBiasAdd%sequential_7/dense_7/MatMul:product:03sequential_7/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_7/dense_7/BiasAddа
sequential_7/dense_7/SoftmaxSoftmax%sequential_7/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_7/dense_7/Softmaxz
IdentityIdentity&sequential_7/dense_7/Softmax:softmax:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	::::::X T
+
_output_shapes
:         	
%
_user_specified_namegru_7_input
эG
╟
&__forward_gpu_gru_with_fallback_483755

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_cу
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*4
_output_shapes"
 :                  ,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_ecbc0f85-dc9f-420a-b238-824f2bea6487*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_483620_483756*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
▌
}
(__inference_dense_7_layer_call_fn_487560

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4849962
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         ,::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         ,
 
_user_specified_nameinputs
╞п
С
:__inference___backward_gpu_gru_with_fallback_486187_486323
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         	,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides╥
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:	         ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:	         ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeЛ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:	         ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1У
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:	         :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЎ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         	2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshapeй
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*+
_output_shapes
:         	2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*К
_input_shapes°
ї:         ,:         	,:         ,: :	         ,::         ,: ::	         :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_70376cf6-b8ab-47f2-bc2a-040a73e455fa*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_486322*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,:1-
+
_output_shapes
:         	,:-)
'
_output_shapes
:         ,:

_output_shapes
: :1-
+
_output_shapes
:	         ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:	         :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
№=
║
(__inference_gpu_gru_with_fallback_483619

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*4
_output_shapes"
 :                  ,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_ecbc0f85-dc9f-420a-b238-824f2bea6487*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╫2
т
while_body_486812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
В
К
&__inference_gru_7_layer_call_fn_486734

inputs
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_7_layer_call_and_return_conditional_losses_4849422
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         ,2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         	:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
эG
╟
&__forward_gpu_gru_with_fallback_484153

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_cу
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*4
_output_shapes"
 :                  ,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_2ea50bf1-1dea-4e27-a9a6-b775d3355ff7*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_484018_484154*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
┼=
║
(__inference_gpu_gru_with_fallback_482446

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_d11b362a-dc76-435f-a303-4421ed80c0c6*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
Ж	
▐
while_cond_487198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_487198___redundant_placeholder04
0while_while_cond_487198___redundant_placeholder14
0while_while_cond_487198___redundant_placeholder24
0while_while_cond_487198___redundant_placeholder34
0while_while_cond_487198___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
эG
╟
&__forward_gpu_gru_with_fallback_487118

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_cу
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*4
_output_shapes"
 :                  ,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_2a2c08b5-0a23-4a81-9cd5-1b96154abb15*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_486983_487119*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
Ъ
М
&__inference_gru_7_layer_call_fn_487519
inputs_0
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_7_layer_call_and_return_conditional_losses_4837582
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         ,2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
└G
╟
&__forward_gpu_gru_with_fallback_485897

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_1d427fc0-c18b-4739-90d4-b013458508e6*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_485762_485898*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╛"
Ў
__inference__traced_save_487616
file_prefix-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop6
2savev2_gru_7_gru_cell_7_kernel_read_readvariableop@
<savev2_gru_7_gru_cell_7_recurrent_kernel_read_readvariableop4
0savev2_gru_7_gru_cell_7_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
ConstН
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_311f62facf4147df9a524c416ef90db3/part2	
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameн
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*┐
value╡B▓B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesа
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesг
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop2savev2_gru_7_gru_cell_7_kernel_read_readvariableop<savev2_gru_7_gru_cell_7_recurrent_kernel_read_readvariableop0savev2_gru_7_gru_cell_7_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*T
_input_shapesC
A: :,:: : : : :	Д:	,Д:	Д: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:,: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:%!

_output_shapes
:	,Д:%	!

_output_shapes
:	Д:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╫2
т
while_body_482276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
╞п
С
:__inference___backward_gpu_gru_with_fallback_485367_485503
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         	,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides╥
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:	         ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:	         ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeЛ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:	         ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1У
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:	         :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЎ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         	2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshapeй
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*+
_output_shapes
:         	2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*К
_input_shapes°
ї:         ,:         	,:         ,: :	         ,::         ,: ::	         :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_95620f18-92d6-4521-afae-c5bc550a10d2*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_485502*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,:1-
+
_output_shapes
:         	,:-)
'
_output_shapes
:         ,:

_output_shapes
: :1-
+
_output_shapes
:	         ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:	         :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ж	
▐
while_cond_485195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_485195___redundant_placeholder04
0while_while_cond_485195___redundant_placeholder14
0while_while_cond_485195___redundant_placeholder24
0while_while_cond_485195___redundant_placeholder34
0while_while_cond_485195___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Р
╠
A__inference_gru_7_layer_call_and_return_conditional_losses_483758

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИD
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
strided_slice/stack_2т
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
value	B :,2
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
B :ш2
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
value	B :,2
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
:         ,2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

Identity_2й
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:         ,:                  ,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4835402
PartitionedCallp

Identity_3IdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:                  ::::\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
┼=
║
(__inference_gpu_gru_with_fallback_484803

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_390ed0c3-d29b-4458-9ab6-6bb622dd01e3*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╞п
С
:__inference___backward_gpu_gru_with_fallback_486574_486710
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         	,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides╥
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:	         ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:	         ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeЛ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:	         ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1У
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:	         :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЎ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         	2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshapeй
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*+
_output_shapes
:         	2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*К
_input_shapes°
ї:         ,:         	,:         ,: :	         ,::         ,: ::	         :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_3d8978d2-53d4-4ea7-8793-ebcbee41eb73*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_486709*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,:1-
+
_output_shapes
:         	,:-)
'
_output_shapes
:         ,:

_output_shapes
: :1-
+
_output_shapes
:	         ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:	         :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
шE
г
__inference_standard_gru_486903

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_486812*
condR
while_cond_486811*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  ,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_2a2c08b5-0a23-4a81-9cd5-1b96154abb15*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
№=
║
(__inference_gpu_gru_with_fallback_484017

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*4
_output_shapes"
 :                  ,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_2ea50bf1-1dea-4e27-a9a6-b775d3355ff7*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
ї
╠
A__inference_gru_7_layer_call_and_return_conditional_losses_486712

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИD
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
strided_slice/stack_2т
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
value	B :,2
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
B :ш2
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
value	B :,2
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
:         ,2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

Identity_2а
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         ,:         	,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4864942
PartitionedCallp

Identity_3IdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity_3"!

identity_3Identity_3:output:0*6
_input_shapes%
#:         	::::S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
п
л
$__inference_signature_wrapper_485118
gru_7_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallgru_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_4825932
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:         	
%
_user_specified_namegru_7_input
ч
М
H__inference_sequential_7_layer_call_and_return_conditional_losses_485013
gru_7_input
gru_7_484965
gru_7_484967
gru_7_484969
dense_7_485007
dense_7_485009
identityИвdense_7/StatefulPartitionedCallвgru_7/StatefulPartitionedCallЭ
gru_7/StatefulPartitionedCallStatefulPartitionedCallgru_7_inputgru_7_484965gru_7_484967gru_7_484969*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_7_layer_call_and_return_conditional_losses_4845552
gru_7/StatefulPartitionedCallГ
activation_7/PartitionedCallPartitionedCall&gru_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_4849772
activation_7/PartitionedCall▒
dense_7/StatefulPartitionedCallStatefulPartitionedCall%activation_7/PartitionedCall:output:0dense_7_485007dense_7_485009*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4849962!
dense_7/StatefulPartitionedCall╛
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_7/StatefulPartitionedCall^gru_7/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2>
gru_7/StatefulPartitionedCallgru_7/StatefulPartitionedCall:X T
+
_output_shapes
:         	
%
_user_specified_namegru_7_input
▀
┤
-__inference_sequential_7_layer_call_fn_485095
gru_7_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallgru_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_4850822
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:         	
%
_user_specified_namegru_7_input
└G
╟
&__forward_gpu_gru_with_fallback_485502

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_95620f18-92d6-4521-afae-c5bc550a10d2*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_485367_485503*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╢
d
H__inference_activation_7_layer_call_and_return_conditional_losses_487535

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         ,2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         ,2

Identity"
identityIdentity:output:0*&
_input_shapes
:         ,:O K
'
_output_shapes
:         ,
 
_user_specified_nameinputs
╫2
т
while_body_486403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
В
К
&__inference_gru_7_layer_call_fn_486723

inputs
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_7_layer_call_and_return_conditional_losses_4845552
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         ,2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         	:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
▒E
г
__inference_standard_gru_485682

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_485591*
condR
while_cond_485590*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	         ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         	,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_1d427fc0-c18b-4739-90d4-b013458508e6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
▒E
г
__inference_standard_gru_482367

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_482276*
condR
while_cond_482275*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	         ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         	,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_d11b362a-dc76-435f-a303-4421ed80c0c6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
Ж	
▐
while_cond_484245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_484245___redundant_placeholder04
0while_while_cond_484245___redundant_placeholder14
0while_while_cond_484245___redundant_placeholder24
0while_while_cond_484245___redundant_placeholder34
0while_while_cond_484245___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
╪
З
H__inference_sequential_7_layer_call_and_return_conditional_losses_485050

inputs
gru_7_485036
gru_7_485038
gru_7_485040
dense_7_485044
dense_7_485046
identityИвdense_7/StatefulPartitionedCallвgru_7/StatefulPartitionedCallШ
gru_7/StatefulPartitionedCallStatefulPartitionedCallinputsgru_7_485036gru_7_485038gru_7_485040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_7_layer_call_and_return_conditional_losses_4845552
gru_7/StatefulPartitionedCallГ
activation_7/PartitionedCallPartitionedCall&gru_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_4849772
activation_7/PartitionedCall▒
dense_7/StatefulPartitionedCallStatefulPartitionedCall%activation_7/PartitionedCall:output:0dense_7_485044dense_7_485046*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4849962!
dense_7/StatefulPartitionedCall╛
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_7/StatefulPartitionedCall^gru_7/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         	:::::2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2>
gru_7/StatefulPartitionedCallgru_7/StatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ж	
▐
while_cond_485590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_485590___redundant_placeholder04
0while_while_cond_485590___redundant_placeholder14
0while_while_cond_485590___redundant_placeholder24
0while_while_cond_485590___redundant_placeholder34
0while_while_cond_485590___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ш
╬
A__inference_gru_7_layer_call_and_return_conditional_losses_487508
inputs_0 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИF
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
strided_slice/stack_2т
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
value	B :,2
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
B :ш2
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
value	B :,2
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
:         ,2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

Identity_2л
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:         ,:                  ,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4872902
PartitionedCallp

Identity_3IdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:                  ::::^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
└G
╟
&__forward_gpu_gru_with_fallback_482582

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_d11b362a-dc76-435f-a303-4421ed80c0c6*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_482447_482583*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
┼=
║
(__inference_gpu_gru_with_fallback_484416

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_63205c60-b3f4-4553-9f24-75e4129cc9ae*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
Ж	
▐
while_cond_486015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_486015___redundant_placeholder04
0while_while_cond_486015___redundant_placeholder14
0while_while_cond_486015___redundant_placeholder24
0while_while_cond_486015___redundant_placeholder34
0while_while_cond_486015___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
▒E
г
__inference_standard_gru_486107

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_486016*
condR
while_cond_486015*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	         ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         	,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_70376cf6-b8ab-47f2-bc2a-040a73e455fa*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╫2
т
while_body_486016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
╞п
С
:__inference___backward_gpu_gru_with_fallback_482447_482583
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         	,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides╥
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:	         ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:	         ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeЛ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:	         ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1У
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:	         :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЎ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         	2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshapeй
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*+
_output_shapes
:         	2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*К
_input_shapes°
ї:         ,:         	,:         ,: :	         ,::         ,: ::	         :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_d11b362a-dc76-435f-a303-4421ed80c0c6*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_482582*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,:1-
+
_output_shapes
:         	,:-)
'
_output_shapes
:         ,:

_output_shapes
: :1-
+
_output_shapes
:	         ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:	         :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┼=
║
(__inference_gpu_gru_with_fallback_486186

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_70376cf6-b8ab-47f2-bc2a-040a73e455fa*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╞п
С
:__inference___backward_gpu_gru_with_fallback_485762_485898
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         	,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides╥
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:	         ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:	         ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeЛ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:	         ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1У
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:	         :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЎ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         	2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshapeй
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*+
_output_shapes
:         	2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*К
_input_shapes°
ї:         ,:         	,:         ,: :	         ,::         ,: ::	         :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_1d427fc0-c18b-4739-90d4-b013458508e6*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_485897*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,:1-
+
_output_shapes
:         	,:-)
'
_output_shapes
:         ,:

_output_shapes
: :1-
+
_output_shapes
:	         ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:	         :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╝░
С
:__inference___backward_gpu_gru_with_fallback_484018_484154
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  ,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :                  ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationш
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ь
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:                  :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshape▓
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*4
_output_shapes"
 :                  2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*е
_input_shapesУ
Р:         ,:                  ,:         ,: :                  ,::         ,: ::                  :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_2ea50bf1-1dea-4e27-a9a6-b775d3355ff7*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_484153*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,::6
4
_output_shapes"
 :                  ,:-)
'
_output_shapes
:         ,:

_output_shapes
: ::6
4
_output_shapes"
 :                  ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :                  :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╫2
т
while_body_483847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
└G
╟
&__forward_gpu_gru_with_fallback_484939

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_390ed0c3-d29b-4458-9ab6-6bb622dd01e3*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_484804_484940*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
┼=
║
(__inference_gpu_gru_with_fallback_485366

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3ИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╘
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ШH2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:	         ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permЛ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:         	,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identityv

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*+
_output_shapes
:         	,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*^
_input_shapesM
K:         	:         ,:	Д:	,Д:	Д*<
api_implements*(gru_95620f18-92d6-4521-afae-c5bc550a10d2*
api_preferred_deviceGPU*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
ї
╠
A__inference_gru_7_layer_call_and_return_conditional_losses_486325

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИD
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
strided_slice/stack_2т
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
value	B :,2
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
B :ш2
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
value	B :,2
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
:         ,2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

Identity_2а
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         ,:         	,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4861072
PartitionedCallp

Identity_3IdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity_3"!

identity_3Identity_3:output:0*6
_input_shapes%
#:         	::::S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Э
I
-__inference_activation_7_layer_call_fn_487540

inputs
identity╔
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_4849772
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity"
identityIdentity:output:0*&
_input_shapes
:         ,:O K
'
_output_shapes
:         ,
 
_user_specified_nameinputs
шE
г
__inference_standard_gru_487290

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Д:Д*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeK
ShapeShapetranspose:y:0*
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
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
strided_slice_1/stack_2№
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Д2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Д2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Д2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         ,2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         ,2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         ,2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         ,2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         ,2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         ,2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         ,2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         ,2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         ,2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         ,2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д* 
_read_only_resource_inputs
 *
bodyR
while_body_487199*
condR
while_cond_487198*V
output_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  ,*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ,2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  ,2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         ,2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_5d6fdda0-01e2-4224-9c85-0e4609b74f30*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
Ж	
▐
while_cond_483846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_483846___redundant_placeholder04
0while_while_cond_483846___redundant_placeholder14
0while_while_cond_483846___redundant_placeholder24
0while_while_cond_483846___redundant_placeholder34
0while_while_cond_483846___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         ,: :::::: 
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
:         ,:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
░
л
C__inference_dense_7_layer_call_and_return_conditional_losses_487551

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         ,:::O K
'
_output_shapes
:         ,
 
_user_specified_nameinputs
╞п
С
:__inference___backward_gpu_gru_with_fallback_484417_484553
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         	,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides╥
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:	         ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:	         ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeЛ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:	         ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1У
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:	         :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЎ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         	2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshapeй
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*+
_output_shapes
:         	2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*К
_input_shapes°
ї:         ,:         	,:         ,: :	         ,::         ,: ::	         :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_63205c60-b3f4-4553-9f24-75e4129cc9ae*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_484552*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,:1-
+
_output_shapes
:         	,:-)
'
_output_shapes
:         ,:

_output_shapes
: :1-
+
_output_shapes
:	         ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:	         :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╫2
т
while_body_485591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Д2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Д2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         ,:         ,:         ,*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         ,2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         ,2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         ,2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         ,2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         ,2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         ,2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         ,2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         ,2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         ,2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         ,2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         ,2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         ,2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         ,: : :	Д:Д:	,Д:Д: 
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
:         ,:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Д:!

_output_shapes	
:Д:%	!

_output_shapes
:	,Д:!


_output_shapes	
:Д
ї
╠
A__inference_gru_7_layer_call_and_return_conditional_losses_484555

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИD
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
strided_slice/stack_2т
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
value	B :,2
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
B :ш2
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
value	B :,2
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
:         ,2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	,Д*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	,Д2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Д*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Д2

Identity_2а
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         ,:         	,:         ,: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_4843372
PartitionedCallp

Identity_3IdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         ,2

Identity_3"!

identity_3Identity_3:output:0*6
_input_shapes%
#:         	::::S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
эG
╟
&__forward_gpu_gru_with_fallback_487505

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИвCudnnRNNu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ,2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:,:,:,*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:,,:,,:,,*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:И2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:,:,:,:,:,:,*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:,2
transpose_1j
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:,2
transpose_2j
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:,2
transpose_3j
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
:а2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:,,2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:,,2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:,,2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:Р2
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:,2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:,2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_cу
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  ,:         ,: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         ,*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  ,2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         ,*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeu
IdentityIdentitystrided_slice:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity

Identity_1Identitytranspose_7:y:0	^CudnnRNN*
T0*4
_output_shapes"
 :                  ,2

Identity_1s

Identity_2IdentitySqueeze:output:0	^CudnnRNN*
T0*'
_output_shapes
:         ,2

Identity_2b

Identity_3Identityruntime:output:0	^CudnnRNN*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*g
_input_shapesV
T:                  :         ,:	Д:	,Д:	Д*<
api_implements*(gru_5d6fdda0-01e2-4224-9c85-0e4609b74f30*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_487370_487506*
go_backwards( *

time_major( 2
CudnnRNNCudnnRNN:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         ,
 
_user_specified_nameinit_h:GC

_output_shapes
:	Д
 
_user_specified_namekernel:QM

_output_shapes
:	,Д
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Д

_user_specified_namebias
╢
d
H__inference_activation_7_layer_call_and_return_conditional_losses_484977

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         ,2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         ,2

Identity"
identityIdentity:output:0*&
_input_shapes
:         ,:O K
'
_output_shapes
:         ,
 
_user_specified_nameinputs
╝░
С
:__inference___backward_gpu_gru_with_fallback_483620_483756
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Ив(gradients/CudnnRNN_grad/CudnnRNNBackpropu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  ,2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         ,2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :                  ,*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationш
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  ,2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         ,2 
gradients/Squeeze_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  ,2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ь
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:                  :         ,: :ШH*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         ,2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_1Й
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:а2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Р2
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:,2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetЕ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/SliceЛ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_1Л
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:а2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Р2
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:,2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:,2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:,2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB",   ,   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:,,2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:,2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:,2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:,2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:,,2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Д2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	,Д2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Д   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Д2 
gradients/Reshape_grad/Reshape▓
IdentityIdentity&gradients/transpose_grad/transpose:y:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*4
_output_shapes"
 :                  2

Identityн

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*'
_output_shapes
:         ,2

Identity_1Я

Identity_2Identity$gradients/split_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_2б

Identity_3Identity&gradients/split_1_grad/concat:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	,Д2

Identity_3в

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0)^gradients/CudnnRNN_grad/CudnnRNNBackprop*
T0*
_output_shapes
:	Д2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*е
_input_shapesУ
Р:         ,:                  ,:         ,: :                  ,::         ,: ::                  :         ,: :ШH::         ,: ::::::: : : *<
api_implements*(gru_ecbc0f85-dc9f-420a-b238-824f2bea6487*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_483755*
go_backwards( *

time_major( 2T
(gradients/CudnnRNN_grad/CudnnRNNBackprop(gradients/CudnnRNN_grad/CudnnRNNBackprop:- )
'
_output_shapes
:         ,::6
4
_output_shapes"
 :                  ,:-)
'
_output_shapes
:         ,:

_output_shapes
: ::6
4
_output_shapes"
 :                  ,: 

_output_shapes
::1-
+
_output_shapes
:         ,:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :                  :1
-
+
_output_shapes
:         ,:

_output_shapes
: :!

_output_shapes	
:ШH: 

_output_shapes
::-)
'
_output_shapes
:         ,:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ы0
р
"__inference__traced_restore_487659
file_prefix#
assignvariableop_dense_7_kernel#
assignvariableop_1_dense_7_bias
assignvariableop_2_sgd_iter 
assignvariableop_3_sgd_decay(
$assignvariableop_4_sgd_learning_rate#
assignvariableop_5_sgd_momentum.
*assignvariableop_6_gru_7_gru_cell_7_kernel8
4assignvariableop_7_gru_7_gru_cell_7_recurrent_kernel,
(assignvariableop_8_gru_7_gru_cell_7_bias
assignvariableop_9_total
assignvariableop_10_count
identity_12ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9│
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*┐
value╡B▓B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesж
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesч
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЮ
AssignVariableOpAssignVariableOpassignvariableop_dense_7_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_7_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2а
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3б
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5д
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6п
AssignVariableOp_6AssignVariableOp*assignvariableop_6_gru_7_gru_cell_7_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7╣
AssignVariableOp_7AssignVariableOp4assignvariableop_7_gru_7_gru_cell_7_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8н
AssignVariableOp_8AssignVariableOp(assignvariableop_8_gru_7_gru_cell_7_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Э
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10б
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╨
Identity_11Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_11├
Identity_12IdentityIdentity_11:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_12"#
identity_12Identity_12:output:0*A
_input_shapes0
.: :::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102(
AssignVariableOp_2AssignVariableOp_22(
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
_user_specified_namefile_prefix"╕L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╢
serving_defaultв
G
gru_7_input8
serving_default_gru_7_input:0         	;
dense_70
StatefulPartitionedCall:0         tensorflow/serving/predict:бЩ
╥#
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
*D&call_and_return_all_conditional_losses
E__call__
F_default_save_signature"м!
_tf_keras_sequentialН!{"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_7_input"}}, {"class_name": "GRU", "config": {"name": "gru_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 24]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 44, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 24]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 9, 24]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_7_input"}}, {"class_name": "GRU", "config": {"name": "gru_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 24]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 44, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
н

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*G&call_and_return_all_conditional_losses
H__call__"Д
_tf_keras_rnn_layerц
{"class_name": "GRU", "name": "gru_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 24]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 24]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 44, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 24]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 9, 24]}}
╒
	variables
regularization_losses
trainable_variables
	keras_api
*I&call_and_return_all_conditional_losses
J__call__"╞
_tf_keras_layerм{"class_name": "Activation", "name": "activation_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}
Є

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*K&call_and_return_all_conditional_losses
L__call__"═
_tf_keras_layer│{"class_name": "Dense", "name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 44}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 44]}}
I
iter
	decay
learning_rate
momentum"
	optimizer
C
0
1
 2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
 2
3
4"
trackable_list_wrapper
╩
!layer_regularization_losses
"layer_metrics
	variables
#non_trainable_variables
$metrics
regularization_losses
trainable_variables

%layers
E__call__
F_default_save_signature
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
,
Mserving_default"
signature_map
а

kernel
recurrent_kernel
 bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
*N&call_and_return_all_conditional_losses
O__call__"х
_tf_keras_layer╦{"class_name": "GRUCell", "name": "gru_cell_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_cell_7", "trainable": true, "dtype": "float32", "units": 44, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}
 "
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
╣
*layer_regularization_losses
+layer_metrics

,states
	variables
-non_trainable_variables
.metrics
regularization_losses
trainable_variables

/layers
H__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
0layer_regularization_losses
1layer_metrics
	variables
2non_trainable_variables
3metrics
regularization_losses
trainable_variables

4layers
J__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
 :,2dense_7/kernel
:2dense_7/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
н
5layer_regularization_losses
6layer_metrics
	variables
7non_trainable_variables
8metrics
regularization_losses
trainable_variables

9layers
L__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
*:(	Д2gru_7/gru_cell_7/kernel
4:2	,Д2!gru_7/gru_cell_7/recurrent_kernel
(:&	Д2gru_7/gru_cell_7/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
:0"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
н
;layer_regularization_losses
<layer_metrics
&	variables
=non_trainable_variables
>metrics
'regularization_losses
(trainable_variables

?layers
O__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
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
'

0"
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
╗
	@total
	Acount
B	variables
C	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
:  (2total
:  (2count
.
@0
A1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
ю2ы
H__inference_sequential_7_layer_call_and_return_conditional_losses_485513
H__inference_sequential_7_layer_call_and_return_conditional_losses_485908
H__inference_sequential_7_layer_call_and_return_conditional_losses_485013
H__inference_sequential_7_layer_call_and_return_conditional_losses_485030└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
В2 
-__inference_sequential_7_layer_call_fn_485938
-__inference_sequential_7_layer_call_fn_485923
-__inference_sequential_7_layer_call_fn_485095
-__inference_sequential_7_layer_call_fn_485063└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
ч2ф
!__inference__wrapped_model_482593╛
Л▓З
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
annotationsк *.в+
)К&
gru_7_input         	
ч2ф
A__inference_gru_7_layer_call_and_return_conditional_losses_486712
A__inference_gru_7_layer_call_and_return_conditional_losses_486325
A__inference_gru_7_layer_call_and_return_conditional_losses_487121
A__inference_gru_7_layer_call_and_return_conditional_losses_487508╒
╠▓╚
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
kwonlydefaultsк 
annotationsк *
 
√2°
&__inference_gru_7_layer_call_fn_487519
&__inference_gru_7_layer_call_fn_486723
&__inference_gru_7_layer_call_fn_487530
&__inference_gru_7_layer_call_fn_486734╒
╠▓╚
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
kwonlydefaultsк 
annotationsк *
 
Є2я
H__inference_activation_7_layer_call_and_return_conditional_losses_487535в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_activation_7_layer_call_fn_487540в
Щ▓Х
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
annotationsк *
 
э2ъ
C__inference_dense_7_layer_call_and_return_conditional_losses_487551в
Щ▓Х
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
annotationsк *
 
╥2╧
(__inference_dense_7_layer_call_fn_487560в
Щ▓Х
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
annotationsк *
 
7B5
$__inference_signature_wrapper_485118gru_7_input
─2┴╛
╡▓▒
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
kwonlydefaultsк 
annotationsк *
 
─2┴╛
╡▓▒
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
kwonlydefaultsк 
annotationsк *
 Щ
!__inference__wrapped_model_482593t 8в5
.в+
)К&
gru_7_input         	
к "1к.
,
dense_7!К
dense_7         д
H__inference_activation_7_layer_call_and_return_conditional_losses_487535X/в,
%в"
 К
inputs         ,
к "%в"
К
0         ,
Ъ |
-__inference_activation_7_layer_call_fn_487540K/в,
%в"
 К
inputs         ,
к "К         ,г
C__inference_dense_7_layer_call_and_return_conditional_losses_487551\/в,
%в"
 К
inputs         ,
к "%в"
К
0         
Ъ {
(__inference_dense_7_layer_call_fn_487560O/в,
%в"
 К
inputs         ,
к "К         ▓
A__inference_gru_7_layer_call_and_return_conditional_losses_486325m ?в<
5в2
$К!
inputs         	

 
p

 
к "%в"
К
0         ,
Ъ ▓
A__inference_gru_7_layer_call_and_return_conditional_losses_486712m ?в<
5в2
$К!
inputs         	

 
p 

 
к "%в"
К
0         ,
Ъ ┬
A__inference_gru_7_layer_call_and_return_conditional_losses_487121} OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "%в"
К
0         ,
Ъ ┬
A__inference_gru_7_layer_call_and_return_conditional_losses_487508} OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "%в"
К
0         ,
Ъ К
&__inference_gru_7_layer_call_fn_486723` ?в<
5в2
$К!
inputs         	

 
p

 
к "К         ,К
&__inference_gru_7_layer_call_fn_486734` ?в<
5в2
$К!
inputs         	

 
p 

 
к "К         ,Ъ
&__inference_gru_7_layer_call_fn_487519p OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "К         ,Ъ
&__inference_gru_7_layer_call_fn_487530p OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "К         ,╝
H__inference_sequential_7_layer_call_and_return_conditional_losses_485013p @в=
6в3
)К&
gru_7_input         	
p

 
к "%в"
К
0         
Ъ ╝
H__inference_sequential_7_layer_call_and_return_conditional_losses_485030p @в=
6в3
)К&
gru_7_input         	
p 

 
к "%в"
К
0         
Ъ ╖
H__inference_sequential_7_layer_call_and_return_conditional_losses_485513k ;в8
1в.
$К!
inputs         	
p

 
к "%в"
К
0         
Ъ ╖
H__inference_sequential_7_layer_call_and_return_conditional_losses_485908k ;в8
1в.
$К!
inputs         	
p 

 
к "%в"
К
0         
Ъ Ф
-__inference_sequential_7_layer_call_fn_485063c @в=
6в3
)К&
gru_7_input         	
p

 
к "К         Ф
-__inference_sequential_7_layer_call_fn_485095c @в=
6в3
)К&
gru_7_input         	
p 

 
к "К         П
-__inference_sequential_7_layer_call_fn_485923^ ;в8
1в.
$К!
inputs         	
p

 
к "К         П
-__inference_sequential_7_layer_call_fn_485938^ ;в8
1в.
$К!
inputs         	
p 

 
к "К         м
$__inference_signature_wrapper_485118Г GвD
в 
=к:
8
gru_7_input)К&
gru_7_input         	"1к.
,
dense_7!К
dense_7         