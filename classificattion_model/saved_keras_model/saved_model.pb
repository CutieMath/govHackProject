É
Ú¾
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02unknown8Ï

simple_classifier/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
 */
shared_name simple_classifier/dense/kernel

2simple_classifier/dense/kernel/Read/ReadVariableOpReadVariableOpsimple_classifier/dense/kernel*
_output_shapes

:
 *
dtype0

simple_classifier/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namesimple_classifier/dense/bias

0simple_classifier/dense/bias/Read/ReadVariableOpReadVariableOpsimple_classifier/dense/bias*
_output_shapes
: *
dtype0

 simple_classifier/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*1
shared_name" simple_classifier/dense_1/kernel

4simple_classifier/dense_1/kernel/Read/ReadVariableOpReadVariableOp simple_classifier/dense_1/kernel*
_output_shapes

: @*
dtype0

simple_classifier/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name simple_classifier/dense_1/bias

2simple_classifier/dense_1/bias/Read/ReadVariableOpReadVariableOpsimple_classifier/dense_1/bias*
_output_shapes
:@*
dtype0

 simple_classifier/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*1
shared_name" simple_classifier/dense_2/kernel

4simple_classifier/dense_2/kernel/Read/ReadVariableOpReadVariableOp simple_classifier/dense_2/kernel*
_output_shapes
:	@*
dtype0

simple_classifier/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name simple_classifier/dense_2/bias

2simple_classifier/dense_2/bias/Read/ReadVariableOpReadVariableOpsimple_classifier/dense_2/bias*
_output_shapes	
:*
dtype0

 simple_classifier/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ø*1
shared_name" simple_classifier/dense_3/kernel

4simple_classifier/dense_3/kernel/Read/ReadVariableOpReadVariableOp simple_classifier/dense_3/kernel* 
_output_shapes
:
Ø*
dtype0

simple_classifier/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*/
shared_name simple_classifier/dense_3/bias

2simple_classifier/dense_3/bias/Read/ReadVariableOpReadVariableOpsimple_classifier/dense_3/bias*
_output_shapes	
:Ø*
dtype0

NoOpNoOp
À
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*û
valueñBî Bç


dense1

dense2

dense3

dense4
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
h


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
8

0
1
2
3
4
5
6
7
8

0
1
2
3
4
5
6
7
 
­
"metrics
trainable_variables
	variables
#layer_regularization_losses

$layers
%non_trainable_variables
&layer_metrics
regularization_losses
 
\Z
VARIABLE_VALUEsimple_classifier/dense/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEsimple_classifier/dense/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1


0
1
 
­
'metrics
trainable_variables
	variables
(layer_regularization_losses

)layers
*non_trainable_variables
+layer_metrics
regularization_losses
^\
VARIABLE_VALUE simple_classifier/dense_1/kernel(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEsimple_classifier/dense_1/bias&dense2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
,metrics
trainable_variables
	variables
-layer_regularization_losses

.layers
/non_trainable_variables
0layer_metrics
regularization_losses
^\
VARIABLE_VALUE simple_classifier/dense_2/kernel(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEsimple_classifier/dense_2/bias&dense3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
1metrics
trainable_variables
	variables
2layer_regularization_losses

3layers
4non_trainable_variables
5layer_metrics
regularization_losses
^\
VARIABLE_VALUE simple_classifier/dense_3/kernel(dense4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEsimple_classifier/dense_3/bias&dense4/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
6metrics
trainable_variables
	variables
7layer_regularization_losses

8layers
9non_trainable_variables
:layer_metrics
 regularization_losses
 
 

0
1
2
3
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
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

È
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1simple_classifier/dense/kernelsimple_classifier/dense/bias simple_classifier/dense_1/kernelsimple_classifier/dense_1/bias simple_classifier/dense_2/kernelsimple_classifier/dense_2/bias simple_classifier/dense_3/kernelsimple_classifier/dense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1976356
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
È
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename2simple_classifier/dense/kernel/Read/ReadVariableOp0simple_classifier/dense/bias/Read/ReadVariableOp4simple_classifier/dense_1/kernel/Read/ReadVariableOp2simple_classifier/dense_1/bias/Read/ReadVariableOp4simple_classifier/dense_2/kernel/Read/ReadVariableOp2simple_classifier/dense_2/bias/Read/ReadVariableOp4simple_classifier/dense_3/kernel/Read/ReadVariableOp2simple_classifier/dense_3/bias/Read/ReadVariableOpConst*
Tin
2
*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1976483
£
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamesimple_classifier/dense/kernelsimple_classifier/dense/bias simple_classifier/dense_1/kernelsimple_classifier/dense_1/bias simple_classifier/dense_2/kernelsimple_classifier/dense_2/bias simple_classifier/dense_3/kernelsimple_classifier/dense_3/bias*
Tin
2	*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1976517·
ª

ó
B__inference_dense_layer_call_and_return_conditional_losses_1976376

inputs0
matmul_readvariableop_resource:
 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ó'

#__inference__traced_restore_1976517
file_prefixA
/assignvariableop_simple_classifier_dense_kernel:
 =
/assignvariableop_1_simple_classifier_dense_bias: E
3assignvariableop_2_simple_classifier_dense_1_kernel: @?
1assignvariableop_3_simple_classifier_dense_1_bias:@F
3assignvariableop_4_simple_classifier_dense_2_kernel:	@@
1assignvariableop_5_simple_classifier_dense_2_bias:	G
3assignvariableop_6_simple_classifier_dense_3_kernel:
Ø@
1assignvariableop_7_simple_classifier_dense_3_bias:	Ø

identity_9¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7ï
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*û
valueñBî	B(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense3/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense4/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slicesØ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity®
AssignVariableOpAssignVariableOp/assignvariableop_simple_classifier_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1´
AssignVariableOp_1AssignVariableOp/assignvariableop_1_simple_classifier_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¸
AssignVariableOp_2AssignVariableOp3assignvariableop_2_simple_classifier_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp1assignvariableop_3_simple_classifier_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¸
AssignVariableOp_4AssignVariableOp3assignvariableop_4_simple_classifier_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp1assignvariableop_5_simple_classifier_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¸
AssignVariableOp_6AssignVariableOp3assignvariableop_6_simple_classifier_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp1assignvariableop_7_simple_classifier_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


)__inference_dense_1_layer_call_fn_1976385

inputs
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_19762302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


)__inference_dense_2_layer_call_fn_1976405

inputs
unknown:	@
	unknown_0:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_19762472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
À

ø
D__inference_dense_3_layer_call_and_return_conditional_losses_1976264

inputs2
matmul_readvariableop_resource:
Ø.
biasadd_readvariableop_resource:	Ø
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ø*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
BiasAddb
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

õ
D__inference_dense_1_layer_call_and_return_conditional_losses_1976230

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ª

ó
B__inference_dense_layer_call_and_return_conditional_losses_1976213

inputs0
matmul_readvariableop_resource:
 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
å5
§
"__inference__wrapped_model_1976198
input_1H
6simple_classifier_dense_matmul_readvariableop_resource:
 E
7simple_classifier_dense_biasadd_readvariableop_resource: J
8simple_classifier_dense_1_matmul_readvariableop_resource: @G
9simple_classifier_dense_1_biasadd_readvariableop_resource:@K
8simple_classifier_dense_2_matmul_readvariableop_resource:	@H
9simple_classifier_dense_2_biasadd_readvariableop_resource:	L
8simple_classifier_dense_3_matmul_readvariableop_resource:
ØH
9simple_classifier_dense_3_biasadd_readvariableop_resource:	Ø
identity¢.simple_classifier/dense/BiasAdd/ReadVariableOp¢-simple_classifier/dense/MatMul/ReadVariableOp¢0simple_classifier/dense_1/BiasAdd/ReadVariableOp¢/simple_classifier/dense_1/MatMul/ReadVariableOp¢0simple_classifier/dense_2/BiasAdd/ReadVariableOp¢/simple_classifier/dense_2/MatMul/ReadVariableOp¢0simple_classifier/dense_3/BiasAdd/ReadVariableOp¢/simple_classifier/dense_3/MatMul/ReadVariableOpÕ
-simple_classifier/dense/MatMul/ReadVariableOpReadVariableOp6simple_classifier_dense_matmul_readvariableop_resource*
_output_shapes

:
 *
dtype02/
-simple_classifier/dense/MatMul/ReadVariableOp¼
simple_classifier/dense/MatMulMatMulinput_15simple_classifier/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
simple_classifier/dense/MatMulÔ
.simple_classifier/dense/BiasAdd/ReadVariableOpReadVariableOp7simple_classifier_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.simple_classifier/dense/BiasAdd/ReadVariableOpá
simple_classifier/dense/BiasAddBiasAdd(simple_classifier/dense/MatMul:product:06simple_classifier/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
simple_classifier/dense/BiasAdd 
simple_classifier/dense/ReluRelu(simple_classifier/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
simple_classifier/dense/ReluÛ
/simple_classifier/dense_1/MatMul/ReadVariableOpReadVariableOp8simple_classifier_dense_1_matmul_readvariableop_resource*
_output_shapes

: @*
dtype021
/simple_classifier/dense_1/MatMul/ReadVariableOpå
 simple_classifier/dense_1/MatMulMatMul*simple_classifier/dense/Relu:activations:07simple_classifier/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 simple_classifier/dense_1/MatMulÚ
0simple_classifier/dense_1/BiasAdd/ReadVariableOpReadVariableOp9simple_classifier_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0simple_classifier/dense_1/BiasAdd/ReadVariableOpé
!simple_classifier/dense_1/BiasAddBiasAdd*simple_classifier/dense_1/MatMul:product:08simple_classifier/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!simple_classifier/dense_1/BiasAdd¦
simple_classifier/dense_1/ReluRelu*simple_classifier/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_classifier/dense_1/ReluÜ
/simple_classifier/dense_2/MatMul/ReadVariableOpReadVariableOp8simple_classifier_dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype021
/simple_classifier/dense_2/MatMul/ReadVariableOpè
 simple_classifier/dense_2/MatMulMatMul,simple_classifier/dense_1/Relu:activations:07simple_classifier/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 simple_classifier/dense_2/MatMulÛ
0simple_classifier/dense_2/BiasAdd/ReadVariableOpReadVariableOp9simple_classifier_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype022
0simple_classifier/dense_2/BiasAdd/ReadVariableOpê
!simple_classifier/dense_2/BiasAddBiasAdd*simple_classifier/dense_2/MatMul:product:08simple_classifier/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!simple_classifier/dense_2/BiasAdd§
simple_classifier/dense_2/ReluRelu*simple_classifier/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
simple_classifier/dense_2/ReluÝ
/simple_classifier/dense_3/MatMul/ReadVariableOpReadVariableOp8simple_classifier_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
Ø*
dtype021
/simple_classifier/dense_3/MatMul/ReadVariableOpè
 simple_classifier/dense_3/MatMulMatMul,simple_classifier/dense_2/Relu:activations:07simple_classifier/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2"
 simple_classifier/dense_3/MatMulÛ
0simple_classifier/dense_3/BiasAdd/ReadVariableOpReadVariableOp9simple_classifier_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype022
0simple_classifier/dense_3/BiasAdd/ReadVariableOpê
!simple_classifier/dense_3/BiasAddBiasAdd*simple_classifier/dense_3/MatMul:product:08simple_classifier/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2#
!simple_classifier/dense_3/BiasAdd°
!simple_classifier/dense_3/SoftmaxSoftmax*simple_classifier/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2#
!simple_classifier/dense_3/Softmax
IdentityIdentity+simple_classifier/dense_3/Softmax:softmax:0/^simple_classifier/dense/BiasAdd/ReadVariableOp.^simple_classifier/dense/MatMul/ReadVariableOp1^simple_classifier/dense_1/BiasAdd/ReadVariableOp0^simple_classifier/dense_1/MatMul/ReadVariableOp1^simple_classifier/dense_2/BiasAdd/ReadVariableOp0^simple_classifier/dense_2/MatMul/ReadVariableOp1^simple_classifier/dense_3/BiasAdd/ReadVariableOp0^simple_classifier/dense_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : 2`
.simple_classifier/dense/BiasAdd/ReadVariableOp.simple_classifier/dense/BiasAdd/ReadVariableOp2^
-simple_classifier/dense/MatMul/ReadVariableOp-simple_classifier/dense/MatMul/ReadVariableOp2d
0simple_classifier/dense_1/BiasAdd/ReadVariableOp0simple_classifier/dense_1/BiasAdd/ReadVariableOp2b
/simple_classifier/dense_1/MatMul/ReadVariableOp/simple_classifier/dense_1/MatMul/ReadVariableOp2d
0simple_classifier/dense_2/BiasAdd/ReadVariableOp0simple_classifier/dense_2/BiasAdd/ReadVariableOp2b
/simple_classifier/dense_2/MatMul/ReadVariableOp/simple_classifier/dense_2/MatMul/ReadVariableOp2d
0simple_classifier/dense_3/BiasAdd/ReadVariableOp0simple_classifier/dense_3/BiasAdd/ReadVariableOp2b
/simple_classifier/dense_3/MatMul/ReadVariableOp/simple_classifier/dense_3/MatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

!
_user_specified_name	input_1
´

÷
D__inference_dense_2_layer_call_and_return_conditional_losses_1976416

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
À

ø
D__inference_dense_3_layer_call_and_return_conditional_losses_1976436

inputs2
matmul_readvariableop_resource:
Ø.
biasadd_readvariableop_resource:	Ø
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ø*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
BiasAddb
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ	
È
3__inference_simple_classifier_layer_call_fn_1976293
input_1
unknown:
 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@
	unknown_4:	
	unknown_5:
Ø
	unknown_6:	Ø
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_classifier_layer_call_and_return_conditional_losses_19762712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

!
_user_specified_name	input_1


'__inference_dense_layer_call_fn_1976365

inputs
unknown:
 
	unknown_0: 
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_19762132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ü
é
 __inference__traced_save_1976483
file_prefix=
9savev2_simple_classifier_dense_kernel_read_readvariableop;
7savev2_simple_classifier_dense_bias_read_readvariableop?
;savev2_simple_classifier_dense_1_kernel_read_readvariableop=
9savev2_simple_classifier_dense_1_bias_read_readvariableop?
;savev2_simple_classifier_dense_2_kernel_read_readvariableop=
9savev2_simple_classifier_dense_2_bias_read_readvariableop?
;savev2_simple_classifier_dense_3_kernel_read_readvariableop=
9savev2_simple_classifier_dense_3_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameé
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*û
valueñBî	B(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense3/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense4/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:09savev2_simple_classifier_dense_kernel_read_readvariableop7savev2_simple_classifier_dense_bias_read_readvariableop;savev2_simple_classifier_dense_1_kernel_read_readvariableop9savev2_simple_classifier_dense_1_bias_read_readvariableop;savev2_simple_classifier_dense_2_kernel_read_readvariableop9savev2_simple_classifier_dense_2_bias_read_readvariableop;savev2_simple_classifier_dense_3_kernel_read_readvariableop9savev2_simple_classifier_dense_3_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*\
_input_shapesK
I: :
 : : @:@:	@::
Ø:Ø: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
 : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::&"
 
_output_shapes
:
Ø:!

_output_shapes	
:Ø:	

_output_shapes
: 
û
º
%__inference_signature_wrapper_1976356
input_1
unknown:
 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@
	unknown_4:	
	unknown_5:
Ø
	unknown_6:	Ø
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_19761982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

!
_user_specified_name	input_1
´

÷
D__inference_dense_2_layer_call_and_return_conditional_losses_1976247

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¢

)__inference_dense_3_layer_call_fn_1976425

inputs
unknown:
Ø
	unknown_0:	Ø
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_19762642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
N__inference_simple_classifier_layer_call_and_return_conditional_losses_1976271
input_1
dense_1976214:
 
dense_1976216: !
dense_1_1976231: @
dense_1_1976233:@"
dense_2_1976248:	@
dense_2_1976250:	#
dense_3_1976265:
Ø
dense_3_1976267:	Ø
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_1976214dense_1976216*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_19762132
dense/StatefulPartitionedCall²
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1976231dense_1_1976233*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_19762302!
dense_1/StatefulPartitionedCallµ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1976248dense_2_1976250*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_19762472!
dense_2/StatefulPartitionedCallµ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_1976265dense_3_1976267*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_19762642!
dense_3/StatefulPartitionedCall
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

!
_user_specified_name	input_1
¬

õ
D__inference_dense_1_layer_call_and_return_conditional_losses_1976396

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¬
serving_default
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ
=
output_11
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿØtensorflow/serving/predict:¼i
å

dense1

dense2

dense3

dense4
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
;__call__
<_default_save_signature
*=&call_and_return_all_conditional_losses"ù
_tf_keras_modelß{"name": "simple_classifier", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "SimpleClassifier", "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 10]}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 10]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "SimpleClassifier"}}
Æ


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
>__call__
*?&call_and_return_all_conditional_losses"¡
_tf_keras_layer{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 0}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 2, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}, "shared_object_id": 3}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 10]}}
Ê

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
@__call__
*A&call_and_return_all_conditional_losses"¥
_tf_keras_layer{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 7}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 32]}}
Í

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
B__call__
*C&call_and_return_all_conditional_losses"¨
_tf_keras_layer{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 64]}}
Ô

kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
D__call__
*E&call_and_return_all_conditional_losses"¯
_tf_keras_layer{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 600, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 128]}}
X

0
1
2
3
4
5
6
7"
trackable_list_wrapper
X

0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
"metrics
trainable_variables
	variables
#layer_regularization_losses

$layers
%non_trainable_variables
&layer_metrics
regularization_losses
;__call__
<_default_save_signature
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
,
Fserving_default"
signature_map
0:.
 2simple_classifier/dense/kernel
*:( 2simple_classifier/dense/bias
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
'metrics
trainable_variables
	variables
(layer_regularization_losses

)layers
*non_trainable_variables
+layer_metrics
regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
2:0 @2 simple_classifier/dense_1/kernel
,:*@2simple_classifier/dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
,metrics
trainable_variables
	variables
-layer_regularization_losses

.layers
/non_trainable_variables
0layer_metrics
regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
3:1	@2 simple_classifier/dense_2/kernel
-:+2simple_classifier/dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
1metrics
trainable_variables
	variables
2layer_regularization_losses

3layers
4non_trainable_variables
5layer_metrics
regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
4:2
Ø2 simple_classifier/dense_3/kernel
-:+Ø2simple_classifier/dense_3/bias
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
­
6metrics
trainable_variables
	variables
7layer_regularization_losses

8layers
9non_trainable_variables
:layer_metrics
 regularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
ü2ù
3__inference_simple_classifier_layer_call_fn_1976293Á
²
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ

à2Ý
"__inference__wrapped_model_1976198¶
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ

2
N__inference_simple_classifier_layer_call_and_return_conditional_losses_1976271Á
²
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ

Ñ2Î
'__inference_dense_layer_call_fn_1976365¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_layer_call_and_return_conditional_losses_1976376¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_1_layer_call_fn_1976385¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_1_layer_call_and_return_conditional_losses_1976396¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_2_layer_call_fn_1976405¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_2_layer_call_and_return_conditional_losses_1976416¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_3_layer_call_fn_1976425¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_3_layer_call_and_return_conditional_losses_1976436¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÌBÉ
%__inference_signature_wrapper_1976356input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"__inference__wrapped_model_1976198r
0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ

ª "4ª1
/
output_1# 
output_1ÿÿÿÿÿÿÿÿÿØ¤
D__inference_dense_1_layer_call_and_return_conditional_losses_1976396\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 |
)__inference_dense_1_layer_call_fn_1976385O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ@¥
D__inference_dense_2_layer_call_and_return_conditional_losses_1976416]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_2_layer_call_fn_1976405P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¦
D__inference_dense_3_layer_call_and_return_conditional_losses_1976436^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿØ
 ~
)__inference_dense_3_layer_call_fn_1976425Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿØ¢
B__inference_dense_layer_call_and_return_conditional_losses_1976376\
/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 z
'__inference_dense_layer_call_fn_1976365O
/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ ¦
%__inference_signature_wrapper_1976356}
;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ
"4ª1
/
output_1# 
output_1ÿÿÿÿÿÿÿÿÿØ¶
N__inference_simple_classifier_layer_call_and_return_conditional_losses_1976271d
0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ

ª "&¢#

0ÿÿÿÿÿÿÿÿÿØ
 
3__inference_simple_classifier_layer_call_fn_1976293W
0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿØ