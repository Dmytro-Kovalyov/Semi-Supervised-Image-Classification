уЯ/
я╙
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
Ы
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
·
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
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
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
 И"serve*2.6.02unknown8б┐+
В
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
: *
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
: *
dtype0
Р
batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_16/gamma
Й
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
: *
dtype0
О
batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_16/beta
З
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
: *
dtype0
Ь
"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_16/moving_mean
Х
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
: *
dtype0
д
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_16/moving_variance
Э
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
: *
dtype0
В
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
: 0*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:0*
dtype0
Р
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*-
shared_namebatch_normalization_17/gamma
Й
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes
:0*
dtype0
О
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*,
shared_namebatch_normalization_17/beta
З
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes
:0*
dtype0
Ь
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"batch_normalization_17/moving_mean
Х
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes
:0*
dtype0
д
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*7
shared_name(&batch_normalization_17/moving_variance
Э
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes
:0*
dtype0
Д
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:0@*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:@*
dtype0
Р
batch_normalization_18/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_18/gamma
Й
0batch_normalization_18/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_18/gamma*
_output_shapes
:@*
dtype0
О
batch_normalization_18/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_18/beta
З
/batch_normalization_18/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_18/beta*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_18/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_18/moving_mean
Х
6batch_normalization_18/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*
_output_shapes
:@*
dtype0
д
&batch_normalization_18/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_18/moving_variance
Э
:batch_normalization_18/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_18/moving_variance*
_output_shapes
:@*
dtype0
Д
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:@*
dtype0
Р
batch_normalization_19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_19/gamma
Й
0batch_normalization_19/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_19/gamma*
_output_shapes
:@*
dtype0
О
batch_normalization_19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_19/beta
З
/batch_normalization_19/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_19/beta*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_19/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_19/moving_mean
Х
6batch_normalization_19/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*
_output_shapes
:@*
dtype0
д
&batch_normalization_19/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_19/moving_variance
Э
:batch_normalization_19/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_19/moving_variance*
_output_shapes
:@*
dtype0
Ш
conv2d_transpose_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*+
shared_nameconv2d_transpose_10/kernel
С
.conv2d_transpose_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/kernel*&
_output_shapes
:@@*
dtype0
И
conv2d_transpose_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_10/bias
Б
,conv2d_transpose_10/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/bias*
_output_shapes
:@*
dtype0
Р
batch_normalization_20/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_20/gamma
Й
0batch_normalization_20/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_20/gamma*
_output_shapes
:@*
dtype0
О
batch_normalization_20/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_20/beta
З
/batch_normalization_20/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_20/beta*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_20/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_20/moving_mean
Х
6batch_normalization_20/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
_output_shapes
:@*
dtype0
д
&batch_normalization_20/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_20/moving_variance
Э
:batch_normalization_20/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_20/moving_variance*
_output_shapes
:@*
dtype0
Ш
conv2d_transpose_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_11/kernel
С
.conv2d_transpose_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*&
_output_shapes
: @*
dtype0
И
conv2d_transpose_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_11/bias
Б
,conv2d_transpose_11/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/bias*
_output_shapes
: *
dtype0
Р
batch_normalization_21/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_21/gamma
Й
0batch_normalization_21/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_21/gamma*
_output_shapes
: *
dtype0
О
batch_normalization_21/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_21/beta
З
/batch_normalization_21/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_21/beta*
_output_shapes
: *
dtype0
Ь
"batch_normalization_21/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_21/moving_mean
Х
6batch_normalization_21/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_21/moving_mean*
_output_shapes
: *
dtype0
д
&batch_normalization_21/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_21/moving_variance
Э
:batch_normalization_21/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_21/moving_variance*
_output_shapes
: *
dtype0
Ш
conv2d_transpose_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *+
shared_nameconv2d_transpose_12/kernel
С
.conv2d_transpose_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/kernel*&
_output_shapes
:0 *
dtype0
И
conv2d_transpose_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameconv2d_transpose_12/bias
Б
,conv2d_transpose_12/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/bias*
_output_shapes
:0*
dtype0
Р
batch_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*-
shared_namebatch_normalization_22/gamma
Й
0batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_22/gamma*
_output_shapes
:0*
dtype0
О
batch_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*,
shared_namebatch_normalization_22/beta
З
/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_22/beta*
_output_shapes
:0*
dtype0
Ь
"batch_normalization_22/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"batch_normalization_22/moving_mean
Х
6batch_normalization_22/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*
_output_shapes
:0*
dtype0
д
&batch_normalization_22/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*7
shared_name(&batch_normalization_22/moving_variance
Э
:batch_normalization_22/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_22/moving_variance*
_output_shapes
:0*
dtype0
Ш
conv2d_transpose_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@0*+
shared_nameconv2d_transpose_13/kernel
С
.conv2d_transpose_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_13/kernel*&
_output_shapes
:@0*
dtype0
И
conv2d_transpose_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_13/bias
Б
,conv2d_transpose_13/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_13/bias*
_output_shapes
:@*
dtype0
Р
batch_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_23/gamma
Й
0batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*
_output_shapes
:@*
dtype0
О
batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_23/beta
З
/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_23/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_23/moving_mean
Х
6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes
:@*
dtype0
д
&batch_normalization_23/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_23/moving_variance
Э
:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes
:@*
dtype0
Ш
conv2d_transpose_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv2d_transpose_14/kernel
С
.conv2d_transpose_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_14/kernel*&
_output_shapes
:@*
dtype0
И
conv2d_transpose_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_14/bias
Б
,conv2d_transpose_14/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_14/bias*
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
Р
Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_8/kernel/m
Й
*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
: *
dtype0
А
Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_8/bias/m
y
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_16/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_16/gamma/m
Ч
7Adam/batch_normalization_16/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_16/gamma/m*
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_16/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_16/beta/m
Х
6Adam/batch_normalization_16/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_16/beta/m*
_output_shapes
: *
dtype0
Р
Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*'
shared_nameAdam/conv2d_9/kernel/m
Й
*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
_output_shapes
: 0*
dtype0
А
Adam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameAdam/conv2d_9/bias/m
y
(Adam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/m*
_output_shapes
:0*
dtype0
Ю
#Adam/batch_normalization_17/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_17/gamma/m
Ч
7Adam/batch_normalization_17/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_17/gamma/m*
_output_shapes
:0*
dtype0
Ь
"Adam/batch_normalization_17/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"Adam/batch_normalization_17/beta/m
Х
6Adam/batch_normalization_17/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_17/beta/m*
_output_shapes
:0*
dtype0
Т
Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*(
shared_nameAdam/conv2d_10/kernel/m
Л
+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
:0@*
dtype0
В
Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_10/bias/m
{
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_18/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_18/gamma/m
Ч
7Adam/batch_normalization_18/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_18/gamma/m*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_18/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_18/beta/m
Х
6Adam/batch_normalization_18/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_18/beta/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_11/kernel/m
Л
+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_11/bias/m
{
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_19/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_19/gamma/m
Ч
7Adam/batch_normalization_19/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_19/gamma/m*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_19/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_19/beta/m
Х
6Adam/batch_normalization_19/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_19/beta/m*
_output_shapes
:@*
dtype0
ж
!Adam/conv2d_transpose_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/conv2d_transpose_10/kernel/m
Я
5Adam/conv2d_transpose_10/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_10/kernel/m*&
_output_shapes
:@@*
dtype0
Ц
Adam/conv2d_transpose_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_10/bias/m
П
3Adam/conv2d_transpose_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_10/bias/m*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_20/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_20/gamma/m
Ч
7Adam/batch_normalization_20/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_20/gamma/m*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_20/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_20/beta/m
Х
6Adam/batch_normalization_20/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_20/beta/m*
_output_shapes
:@*
dtype0
ж
!Adam/conv2d_transpose_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_11/kernel/m
Я
5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/m*&
_output_shapes
: @*
dtype0
Ц
Adam/conv2d_transpose_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_11/bias/m
П
3Adam/conv2d_transpose_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_11/bias/m*
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_21/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_21/gamma/m
Ч
7Adam/batch_normalization_21/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_21/gamma/m*
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_21/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_21/beta/m
Х
6Adam/batch_normalization_21/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_21/beta/m*
_output_shapes
: *
dtype0
ж
!Adam/conv2d_transpose_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *2
shared_name#!Adam/conv2d_transpose_12/kernel/m
Я
5Adam/conv2d_transpose_12/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_12/kernel/m*&
_output_shapes
:0 *
dtype0
Ц
Adam/conv2d_transpose_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/conv2d_transpose_12/bias/m
П
3Adam/conv2d_transpose_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_12/bias/m*
_output_shapes
:0*
dtype0
Ю
#Adam/batch_normalization_22/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_22/gamma/m
Ч
7Adam/batch_normalization_22/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_22/gamma/m*
_output_shapes
:0*
dtype0
Ь
"Adam/batch_normalization_22/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"Adam/batch_normalization_22/beta/m
Х
6Adam/batch_normalization_22/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_22/beta/m*
_output_shapes
:0*
dtype0
ж
!Adam/conv2d_transpose_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@0*2
shared_name#!Adam/conv2d_transpose_13/kernel/m
Я
5Adam/conv2d_transpose_13/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_13/kernel/m*&
_output_shapes
:@0*
dtype0
Ц
Adam/conv2d_transpose_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_13/bias/m
П
3Adam/conv2d_transpose_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_13/bias/m*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_23/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_23/gamma/m
Ч
7Adam/batch_normalization_23/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_23/gamma/m*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_23/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_23/beta/m
Х
6Adam/batch_normalization_23/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_23/beta/m*
_output_shapes
:@*
dtype0
ж
!Adam/conv2d_transpose_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/conv2d_transpose_14/kernel/m
Я
5Adam/conv2d_transpose_14/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_14/kernel/m*&
_output_shapes
:@*
dtype0
Ц
Adam/conv2d_transpose_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_14/bias/m
П
3Adam/conv2d_transpose_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_14/bias/m*
_output_shapes
:*
dtype0
Р
Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_8/kernel/v
Й
*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
: *
dtype0
А
Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_8/bias/v
y
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_16/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_16/gamma/v
Ч
7Adam/batch_normalization_16/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_16/gamma/v*
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_16/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_16/beta/v
Х
6Adam/batch_normalization_16/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_16/beta/v*
_output_shapes
: *
dtype0
Р
Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*'
shared_nameAdam/conv2d_9/kernel/v
Й
*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
: 0*
dtype0
А
Adam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameAdam/conv2d_9/bias/v
y
(Adam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/v*
_output_shapes
:0*
dtype0
Ю
#Adam/batch_normalization_17/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_17/gamma/v
Ч
7Adam/batch_normalization_17/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_17/gamma/v*
_output_shapes
:0*
dtype0
Ь
"Adam/batch_normalization_17/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"Adam/batch_normalization_17/beta/v
Х
6Adam/batch_normalization_17/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_17/beta/v*
_output_shapes
:0*
dtype0
Т
Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*(
shared_nameAdam/conv2d_10/kernel/v
Л
+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
:0@*
dtype0
В
Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_10/bias/v
{
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_18/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_18/gamma/v
Ч
7Adam/batch_normalization_18/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_18/gamma/v*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_18/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_18/beta/v
Х
6Adam/batch_normalization_18/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_18/beta/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_11/kernel/v
Л
+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_11/bias/v
{
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_19/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_19/gamma/v
Ч
7Adam/batch_normalization_19/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_19/gamma/v*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_19/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_19/beta/v
Х
6Adam/batch_normalization_19/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_19/beta/v*
_output_shapes
:@*
dtype0
ж
!Adam/conv2d_transpose_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/conv2d_transpose_10/kernel/v
Я
5Adam/conv2d_transpose_10/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_10/kernel/v*&
_output_shapes
:@@*
dtype0
Ц
Adam/conv2d_transpose_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_10/bias/v
П
3Adam/conv2d_transpose_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_10/bias/v*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_20/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_20/gamma/v
Ч
7Adam/batch_normalization_20/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_20/gamma/v*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_20/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_20/beta/v
Х
6Adam/batch_normalization_20/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_20/beta/v*
_output_shapes
:@*
dtype0
ж
!Adam/conv2d_transpose_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_11/kernel/v
Я
5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/v*&
_output_shapes
: @*
dtype0
Ц
Adam/conv2d_transpose_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_11/bias/v
П
3Adam/conv2d_transpose_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_11/bias/v*
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_21/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_21/gamma/v
Ч
7Adam/batch_normalization_21/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_21/gamma/v*
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_21/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_21/beta/v
Х
6Adam/batch_normalization_21/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_21/beta/v*
_output_shapes
: *
dtype0
ж
!Adam/conv2d_transpose_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *2
shared_name#!Adam/conv2d_transpose_12/kernel/v
Я
5Adam/conv2d_transpose_12/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_12/kernel/v*&
_output_shapes
:0 *
dtype0
Ц
Adam/conv2d_transpose_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/conv2d_transpose_12/bias/v
П
3Adam/conv2d_transpose_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_12/bias/v*
_output_shapes
:0*
dtype0
Ю
#Adam/batch_normalization_22/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_22/gamma/v
Ч
7Adam/batch_normalization_22/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_22/gamma/v*
_output_shapes
:0*
dtype0
Ь
"Adam/batch_normalization_22/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"Adam/batch_normalization_22/beta/v
Х
6Adam/batch_normalization_22/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_22/beta/v*
_output_shapes
:0*
dtype0
ж
!Adam/conv2d_transpose_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@0*2
shared_name#!Adam/conv2d_transpose_13/kernel/v
Я
5Adam/conv2d_transpose_13/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_13/kernel/v*&
_output_shapes
:@0*
dtype0
Ц
Adam/conv2d_transpose_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_13/bias/v
П
3Adam/conv2d_transpose_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_13/bias/v*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_23/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_23/gamma/v
Ч
7Adam/batch_normalization_23/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_23/gamma/v*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_23/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_23/beta/v
Х
6Adam/batch_normalization_23/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_23/beta/v*
_output_shapes
:@*
dtype0
ж
!Adam/conv2d_transpose_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/conv2d_transpose_14/kernel/v
Я
5Adam/conv2d_transpose_14/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_14/kernel/v*&
_output_shapes
:@*
dtype0
Ц
Adam/conv2d_transpose_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_14/bias/v
П
3Adam/conv2d_transpose_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_14/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Г┴
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╜└
value▓└Bо└ Bж└
Ц
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

layer_with_weights-9

layer-9
layer_with_weights-10
layer-10
layer_with_weights-11
layer-11
layer_with_weights-12
layer-12
layer_with_weights-13
layer-13
layer_with_weights-14
layer-14
layer_with_weights-15
layer-15
layer_with_weights-16
layer-16
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
Ч
axis
	gamma
 beta
!moving_mean
"moving_variance
#regularization_losses
$trainable_variables
%	variables
&	keras_api
h

'kernel
(bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
Ч
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2regularization_losses
3trainable_variables
4	variables
5	keras_api
h

6kernel
7bias
8regularization_losses
9trainable_variables
:	variables
;	keras_api
Ч
<axis
	=gamma
>beta
?moving_mean
@moving_variance
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
h

Ekernel
Fbias
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
Ч
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
h

Tkernel
Ubias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
Ч
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_regularization_losses
`trainable_variables
a	variables
b	keras_api
h

ckernel
dbias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
Ч
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
nregularization_losses
otrainable_variables
p	variables
q	keras_api
h

rkernel
sbias
tregularization_losses
utrainable_variables
v	variables
w	keras_api
Ш
xaxis
	ygamma
zbeta
{moving_mean
|moving_variance
}regularization_losses
~trainable_variables
	variables
А	keras_api
n
Бkernel
	Вbias
Гregularization_losses
Дtrainable_variables
Е	variables
Ж	keras_api
а
	Зaxis

Иgamma
	Йbeta
Кmoving_mean
Лmoving_variance
Мregularization_losses
Нtrainable_variables
О	variables
П	keras_api
n
Рkernel
	Сbias
Тregularization_losses
Уtrainable_variables
Ф	variables
Х	keras_api
∙
	Цiter
Чbeta_1
Шbeta_2

Щdecay
Ъlearning_ratem mАmБ mВ'mГ(mД.mЕ/mЖ6mЗ7mИ=mЙ>mКEmЛFmМLmНMmОTmПUmР[mС\mТcmУdmФjmХkmЦrmЧsmШymЩzmЪ	БmЫ	ВmЬ	ИmЭ	ЙmЮ	РmЯ	Сmаvбvвvг vд'vе(vж.vз/vи6vй7vк=vл>vмEvнFvоLvпMv░Tv▒Uv▓[v│\v┤cv╡dv╢jv╖kv╕rv╣sv║yv╗zv╝	Бv╜	Вv╛	Иv┐	Йv└	Рv┴	Сv┬
 
М
0
1
2
 3
'4
(5
.6
/7
68
79
=10
>11
E12
F13
L14
M15
T16
U17
[18
\19
c20
d21
j22
k23
r24
s25
y26
z27
Б28
В29
И30
Й31
Р32
С33
О
0
1
2
 3
!4
"5
'6
(7
.8
/9
010
111
612
713
=14
>15
?16
@17
E18
F19
L20
M21
N22
O23
T24
U25
[26
\27
]28
^29
c30
d31
j32
k33
l34
m35
r36
s37
y38
z39
{40
|41
Б42
В43
И44
Й45
К46
Л47
Р48
С49
▓
Ыlayers
 Ьlayer_regularization_losses
regularization_losses
Эmetrics
trainable_variables
Юnon_trainable_variables
	variables
Яlayer_metrics
 
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
▓
аlayers
 бlayer_regularization_losses
вmetrics
regularization_losses
trainable_variables
гnon_trainable_variables
	variables
дlayer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1

0
 1
!2
"3
▓
еlayers
 жlayer_regularization_losses
зmetrics
#regularization_losses
$trainable_variables
иnon_trainable_variables
%	variables
йlayer_metrics
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
▓
кlayers
 лlayer_regularization_losses
мmetrics
)regularization_losses
*trainable_variables
нnon_trainable_variables
+	variables
оlayer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
02
13
▓
пlayers
 ░layer_regularization_losses
▒metrics
2regularization_losses
3trainable_variables
▓non_trainable_variables
4	variables
│layer_metrics
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

60
71

60
71
▓
┤layers
 ╡layer_regularization_losses
╢metrics
8regularization_losses
9trainable_variables
╖non_trainable_variables
:	variables
╕layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_18/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_18/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_18/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_18/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

=0
>1
?2
@3
▓
╣layers
 ║layer_regularization_losses
╗metrics
Aregularization_losses
Btrainable_variables
╝non_trainable_variables
C	variables
╜layer_metrics
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

E0
F1
▓
╛layers
 ┐layer_regularization_losses
└metrics
Gregularization_losses
Htrainable_variables
┴non_trainable_variables
I	variables
┬layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_19/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_19/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_19/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_19/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
N2
O3
▓
├layers
 ─layer_regularization_losses
┼metrics
Pregularization_losses
Qtrainable_variables
╞non_trainable_variables
R	variables
╟layer_metrics
fd
VARIABLE_VALUEconv2d_transpose_10/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_10/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

T0
U1

T0
U1
▓
╚layers
 ╔layer_regularization_losses
╩metrics
Vregularization_losses
Wtrainable_variables
╦non_trainable_variables
X	variables
╠layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_20/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_20/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_20/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_20/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

[0
\1
]2
^3
▓
═layers
 ╬layer_regularization_losses
╧metrics
_regularization_losses
`trainable_variables
╨non_trainable_variables
a	variables
╤layer_metrics
ge
VARIABLE_VALUEconv2d_transpose_11/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_11/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

c0
d1

c0
d1
▓
╥layers
 ╙layer_regularization_losses
╘metrics
eregularization_losses
ftrainable_variables
╒non_trainable_variables
g	variables
╓layer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_21/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_21/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_21/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_21/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

j0
k1

j0
k1
l2
m3
▓
╫layers
 ╪layer_regularization_losses
┘metrics
nregularization_losses
otrainable_variables
┌non_trainable_variables
p	variables
█layer_metrics
ge
VARIABLE_VALUEconv2d_transpose_12/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_12/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

r0
s1

r0
s1
▓
▄layers
 ▌layer_regularization_losses
▐metrics
tregularization_losses
utrainable_variables
▀non_trainable_variables
v	variables
рlayer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_22/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_22/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_22/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_22/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

y0
z1

y0
z1
{2
|3
▓
сlayers
 тlayer_regularization_losses
уmetrics
}regularization_losses
~trainable_variables
фnon_trainable_variables
	variables
хlayer_metrics
ge
VARIABLE_VALUEconv2d_transpose_13/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_13/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Б0
В1

Б0
В1
╡
цlayers
 чlayer_regularization_losses
шmetrics
Гregularization_losses
Дtrainable_variables
щnon_trainable_variables
Е	variables
ъlayer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_23/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_23/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_23/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_23/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

И0
Й1
 
И0
Й1
К2
Л3
╡
ыlayers
 ьlayer_regularization_losses
эmetrics
Мregularization_losses
Нtrainable_variables
юnon_trainable_variables
О	variables
яlayer_metrics
ge
VARIABLE_VALUEconv2d_transpose_14/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_14/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Р0
С1

Р0
С1
╡
Ёlayers
 ёlayer_regularization_losses
Єmetrics
Тregularization_losses
Уtrainable_variables
єnon_trainable_variables
Ф	variables
Їlayer_metrics
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
~
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
 

ї0
Ў1
x
!0
"1
02
13
?4
@5
N6
O7
]8
^9
l10
m11
{12
|13
К14
Л15
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
!0
"1
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
00
11
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
?0
@1
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
N0
O1
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
]0
^1
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
l0
m1
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
{0
|1
 
 
 
 
 
 
 
 
 

К0
Л1
 
 
 
 
 
 
8

ўtotal

°count
∙	variables
·	keras_api
8

√total

№count
¤	variables
■	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ў0
°1

∙	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

√0
№1

¤	variables
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_16/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_16/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_17/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_17/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_18/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_18/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_11/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_11/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_19/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_19/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/conv2d_transpose_10/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/conv2d_transpose_10/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_20/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_20/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_11/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUE#Adam/batch_normalization_21/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_21/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_12/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_12/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUE#Adam/batch_normalization_22/gamma/mRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_22/beta/mQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_13/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_13/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUE#Adam/batch_normalization_23/gamma/mRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_23/beta/mQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_14/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_14/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_16/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_16/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_17/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_17/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_18/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_18/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_11/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_11/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_19/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_19/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/conv2d_transpose_10/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/conv2d_transpose_10/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_20/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_20/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_11/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUE#Adam/batch_normalization_21/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_21/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_12/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_12/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUE#Adam/batch_normalization_22/gamma/vRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_22/beta/vQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_13/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_13/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUE#Adam/batch_normalization_23/gamma/vRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_23/beta/vQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_14/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_14/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
К
serving_default_input_3Placeholder*/
_output_shapes
:         ``*
dtype0*$
shape:         ``
ы
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv2d_8/kernelconv2d_8/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_9/kernelconv2d_9/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_10/kernelconv2d_10/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_varianceconv2d_transpose_10/kernelconv2d_transpose_10/biasbatch_normalization_20/gammabatch_normalization_20/beta"batch_normalization_20/moving_mean&batch_normalization_20/moving_varianceconv2d_transpose_11/kernelconv2d_transpose_11/biasbatch_normalization_21/gammabatch_normalization_21/beta"batch_normalization_21/moving_mean&batch_normalization_21/moving_varianceconv2d_transpose_12/kernelconv2d_transpose_12/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceconv2d_transpose_13/kernelconv2d_transpose_13/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv2d_transpose_14/kernelconv2d_transpose_14/bias*>
Tin7
523*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_145244
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ь4
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp0batch_normalization_16/gamma/Read/ReadVariableOp/batch_normalization_16/beta/Read/ReadVariableOp6batch_normalization_16/moving_mean/Read/ReadVariableOp:batch_normalization_16/moving_variance/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp0batch_normalization_17/gamma/Read/ReadVariableOp/batch_normalization_17/beta/Read/ReadVariableOp6batch_normalization_17/moving_mean/Read/ReadVariableOp:batch_normalization_17/moving_variance/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp0batch_normalization_18/gamma/Read/ReadVariableOp/batch_normalization_18/beta/Read/ReadVariableOp6batch_normalization_18/moving_mean/Read/ReadVariableOp:batch_normalization_18/moving_variance/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp0batch_normalization_19/gamma/Read/ReadVariableOp/batch_normalization_19/beta/Read/ReadVariableOp6batch_normalization_19/moving_mean/Read/ReadVariableOp:batch_normalization_19/moving_variance/Read/ReadVariableOp.conv2d_transpose_10/kernel/Read/ReadVariableOp,conv2d_transpose_10/bias/Read/ReadVariableOp0batch_normalization_20/gamma/Read/ReadVariableOp/batch_normalization_20/beta/Read/ReadVariableOp6batch_normalization_20/moving_mean/Read/ReadVariableOp:batch_normalization_20/moving_variance/Read/ReadVariableOp.conv2d_transpose_11/kernel/Read/ReadVariableOp,conv2d_transpose_11/bias/Read/ReadVariableOp0batch_normalization_21/gamma/Read/ReadVariableOp/batch_normalization_21/beta/Read/ReadVariableOp6batch_normalization_21/moving_mean/Read/ReadVariableOp:batch_normalization_21/moving_variance/Read/ReadVariableOp.conv2d_transpose_12/kernel/Read/ReadVariableOp,conv2d_transpose_12/bias/Read/ReadVariableOp0batch_normalization_22/gamma/Read/ReadVariableOp/batch_normalization_22/beta/Read/ReadVariableOp6batch_normalization_22/moving_mean/Read/ReadVariableOp:batch_normalization_22/moving_variance/Read/ReadVariableOp.conv2d_transpose_13/kernel/Read/ReadVariableOp,conv2d_transpose_13/bias/Read/ReadVariableOp0batch_normalization_23/gamma/Read/ReadVariableOp/batch_normalization_23/beta/Read/ReadVariableOp6batch_normalization_23/moving_mean/Read/ReadVariableOp:batch_normalization_23/moving_variance/Read/ReadVariableOp.conv2d_transpose_14/kernel/Read/ReadVariableOp,conv2d_transpose_14/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp7Adam/batch_normalization_16/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_16/beta/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp(Adam/conv2d_9/bias/m/Read/ReadVariableOp7Adam/batch_normalization_17/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_17/beta/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp7Adam/batch_normalization_18/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_18/beta/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp7Adam/batch_normalization_19/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_19/beta/m/Read/ReadVariableOp5Adam/conv2d_transpose_10/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_10/bias/m/Read/ReadVariableOp7Adam/batch_normalization_20/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_20/beta/m/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_11/bias/m/Read/ReadVariableOp7Adam/batch_normalization_21/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_21/beta/m/Read/ReadVariableOp5Adam/conv2d_transpose_12/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_12/bias/m/Read/ReadVariableOp7Adam/batch_normalization_22/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_22/beta/m/Read/ReadVariableOp5Adam/conv2d_transpose_13/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_13/bias/m/Read/ReadVariableOp7Adam/batch_normalization_23/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_23/beta/m/Read/ReadVariableOp5Adam/conv2d_transpose_14/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_14/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp7Adam/batch_normalization_16/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_16/beta/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp(Adam/conv2d_9/bias/v/Read/ReadVariableOp7Adam/batch_normalization_17/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_17/beta/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp7Adam/batch_normalization_18/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_18/beta/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp7Adam/batch_normalization_19/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_19/beta/v/Read/ReadVariableOp5Adam/conv2d_transpose_10/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_10/bias/v/Read/ReadVariableOp7Adam/batch_normalization_20/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_20/beta/v/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_11/bias/v/Read/ReadVariableOp7Adam/batch_normalization_21/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_21/beta/v/Read/ReadVariableOp5Adam/conv2d_transpose_12/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_12/bias/v/Read/ReadVariableOp7Adam/batch_normalization_22/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_22/beta/v/Read/ReadVariableOp5Adam/conv2d_transpose_13/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_13/bias/v/Read/ReadVariableOp7Adam/batch_normalization_23/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_23/beta/v/Read/ReadVariableOp5Adam/conv2d_transpose_14/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_14/bias/v/Read/ReadVariableOpConst*П
TinЗ
Д2Б	*
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
__inference__traced_save_147798
√ 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_9/kernelconv2d_9/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_10/kernelconv2d_10/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_varianceconv2d_transpose_10/kernelconv2d_transpose_10/biasbatch_normalization_20/gammabatch_normalization_20/beta"batch_normalization_20/moving_mean&batch_normalization_20/moving_varianceconv2d_transpose_11/kernelconv2d_transpose_11/biasbatch_normalization_21/gammabatch_normalization_21/beta"batch_normalization_21/moving_mean&batch_normalization_21/moving_varianceconv2d_transpose_12/kernelconv2d_transpose_12/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceconv2d_transpose_13/kernelconv2d_transpose_13/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv2d_transpose_14/kernelconv2d_transpose_14/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_8/kernel/mAdam/conv2d_8/bias/m#Adam/batch_normalization_16/gamma/m"Adam/batch_normalization_16/beta/mAdam/conv2d_9/kernel/mAdam/conv2d_9/bias/m#Adam/batch_normalization_17/gamma/m"Adam/batch_normalization_17/beta/mAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/m#Adam/batch_normalization_18/gamma/m"Adam/batch_normalization_18/beta/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/m#Adam/batch_normalization_19/gamma/m"Adam/batch_normalization_19/beta/m!Adam/conv2d_transpose_10/kernel/mAdam/conv2d_transpose_10/bias/m#Adam/batch_normalization_20/gamma/m"Adam/batch_normalization_20/beta/m!Adam/conv2d_transpose_11/kernel/mAdam/conv2d_transpose_11/bias/m#Adam/batch_normalization_21/gamma/m"Adam/batch_normalization_21/beta/m!Adam/conv2d_transpose_12/kernel/mAdam/conv2d_transpose_12/bias/m#Adam/batch_normalization_22/gamma/m"Adam/batch_normalization_22/beta/m!Adam/conv2d_transpose_13/kernel/mAdam/conv2d_transpose_13/bias/m#Adam/batch_normalization_23/gamma/m"Adam/batch_normalization_23/beta/m!Adam/conv2d_transpose_14/kernel/mAdam/conv2d_transpose_14/bias/mAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/v#Adam/batch_normalization_16/gamma/v"Adam/batch_normalization_16/beta/vAdam/conv2d_9/kernel/vAdam/conv2d_9/bias/v#Adam/batch_normalization_17/gamma/v"Adam/batch_normalization_17/beta/vAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/v#Adam/batch_normalization_18/gamma/v"Adam/batch_normalization_18/beta/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/v#Adam/batch_normalization_19/gamma/v"Adam/batch_normalization_19/beta/v!Adam/conv2d_transpose_10/kernel/vAdam/conv2d_transpose_10/bias/v#Adam/batch_normalization_20/gamma/v"Adam/batch_normalization_20/beta/v!Adam/conv2d_transpose_11/kernel/vAdam/conv2d_transpose_11/bias/v#Adam/batch_normalization_21/gamma/v"Adam/batch_normalization_21/beta/v!Adam/conv2d_transpose_12/kernel/vAdam/conv2d_transpose_12/bias/v#Adam/batch_normalization_22/gamma/v"Adam/batch_normalization_22/beta/v!Adam/conv2d_transpose_13/kernel/vAdam/conv2d_transpose_13/bias/v#Adam/batch_normalization_23/gamma/v"Adam/batch_normalization_23/beta/v!Adam/conv2d_transpose_14/kernel/vAdam/conv2d_transpose_14/bias/v*О
TinЖ
Г2А*
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
"__inference__traced_restore_148189┘Ў&
√
╥
7__inference_batch_normalization_19_layer_call_fn_146518

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1442702
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_145998

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Т
Ь
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_143682

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         @2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┼	
╥
7__inference_batch_normalization_20_layer_call_fn_146679

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_1426422
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_142050

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Г&
Ь
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_147352

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           2	
SigmoidА
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┼	
╥
7__inference_batch_normalization_21_layer_call_fn_146879

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_1428562
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146268

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Цv
П
H__inference_sequential_2_layer_call_and_return_conditional_losses_143913

inputs)
conv2d_8_143495: 
conv2d_8_143497: +
batch_normalization_16_143518: +
batch_normalization_16_143520: +
batch_normalization_16_143522: +
batch_normalization_16_143524: )
conv2d_9_143539: 0
conv2d_9_143541:0+
batch_normalization_17_143562:0+
batch_normalization_17_143564:0+
batch_normalization_17_143566:0+
batch_normalization_17_143568:0*
conv2d_10_143583:0@
conv2d_10_143585:@+
batch_normalization_18_143606:@+
batch_normalization_18_143608:@+
batch_normalization_18_143610:@+
batch_normalization_18_143612:@*
conv2d_11_143627:@@
conv2d_11_143629:@+
batch_normalization_19_143650:@+
batch_normalization_19_143652:@+
batch_normalization_19_143654:@+
batch_normalization_19_143656:@4
conv2d_transpose_10_143683:@@(
conv2d_transpose_10_143685:@+
batch_normalization_20_143706:@+
batch_normalization_20_143708:@+
batch_normalization_20_143710:@+
batch_normalization_20_143712:@4
conv2d_transpose_11_143739: @(
conv2d_transpose_11_143741: +
batch_normalization_21_143762: +
batch_normalization_21_143764: +
batch_normalization_21_143766: +
batch_normalization_21_143768: 4
conv2d_transpose_12_143795:0 (
conv2d_transpose_12_143797:0+
batch_normalization_22_143818:0+
batch_normalization_22_143820:0+
batch_normalization_22_143822:0+
batch_normalization_22_143824:04
conv2d_transpose_13_143851:@0(
conv2d_transpose_13_143853:@+
batch_normalization_23_143874:@+
batch_normalization_23_143876:@+
batch_normalization_23_143878:@+
batch_normalization_23_143880:@4
conv2d_transpose_14_143907:@(
conv2d_transpose_14_143909:
identityИв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв.batch_normalization_18/StatefulPartitionedCallв.batch_normalization_19/StatefulPartitionedCallв.batch_normalization_20/StatefulPartitionedCallв.batch_normalization_21/StatefulPartitionedCallв.batch_normalization_22/StatefulPartitionedCallв.batch_normalization_23/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв+conv2d_transpose_10/StatefulPartitionedCallв+conv2d_transpose_11/StatefulPartitionedCallв+conv2d_transpose_12/StatefulPartitionedCallв+conv2d_transpose_13/StatefulPartitionedCallв+conv2d_transpose_14/StatefulPartitionedCallЯ
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_143495conv2d_8_143497*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1434942"
 conv2d_8/StatefulPartitionedCall╩
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_16_143518batch_normalization_16_143520batch_normalization_16_143522batch_normalization_16_143524*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_14351720
.batch_normalization_16/StatefulPartitionedCall╨
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0conv2d_9_143539conv2d_9_143541*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1435382"
 conv2d_9/StatefulPartitionedCall╩
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_17_143562batch_normalization_17_143564batch_normalization_17_143566batch_normalization_17_143568*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_14356120
.batch_normalization_17/StatefulPartitionedCall╒
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_10_143583conv2d_10_143585*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_1435822#
!conv2d_10/StatefulPartitionedCall╦
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_18_143606batch_normalization_18_143608batch_normalization_18_143610batch_normalization_18_143612*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_14360520
.batch_normalization_18/StatefulPartitionedCall╒
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0conv2d_11_143627conv2d_11_143629*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_1436262#
!conv2d_11/StatefulPartitionedCall╦
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_19_143650batch_normalization_19_143652batch_normalization_19_143654batch_normalization_19_143656*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_14364920
.batch_normalization_19/StatefulPartitionedCallЗ
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0conv2d_transpose_10_143683conv2d_transpose_10_143685*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1436822-
+conv2d_transpose_10/StatefulPartitionedCall╒
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0batch_normalization_20_143706batch_normalization_20_143708batch_normalization_20_143710batch_normalization_20_143712*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_14370520
.batch_normalization_20/StatefulPartitionedCallЗ
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0conv2d_transpose_11_143739conv2d_transpose_11_143741*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1437382-
+conv2d_transpose_11/StatefulPartitionedCall╒
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0batch_normalization_21_143762batch_normalization_21_143764batch_normalization_21_143766batch_normalization_21_143768*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_14376120
.batch_normalization_21/StatefulPartitionedCallЗ
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0conv2d_transpose_12_143795conv2d_transpose_12_143797*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1437942-
+conv2d_transpose_12/StatefulPartitionedCall╒
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0batch_normalization_22_143818batch_normalization_22_143820batch_normalization_22_143822batch_normalization_22_143824*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_14381720
.batch_normalization_22/StatefulPartitionedCallЗ
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv2d_transpose_13_143851conv2d_transpose_13_143853*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1438502-
+conv2d_transpose_13/StatefulPartitionedCall╒
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0batch_normalization_23_143874batch_normalization_23_143876batch_normalization_23_143878batch_normalization_23_143880*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_14387320
.batch_normalization_23/StatefulPartitionedCallЗ
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv2d_transpose_14_143907conv2d_transpose_14_143909*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1439062-
+conv2d_transpose_14/StatefulPartitionedCallЧ
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identity╩
NoOpNoOp/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall/^batch_normalization_20/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_143328

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_146034

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         00 2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00 : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
√
╥
7__inference_batch_normalization_16_layer_call_fn_146086

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1444322
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         00 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00 : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146430

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
├	
╥
7__inference_batch_normalization_18_layer_call_fn_146348

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1423462
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_144270

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_143605

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
├	
╥
7__inference_batch_normalization_16_layer_call_fn_146060

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1420942
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_144432

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         00 2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00 : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
¤
╥
7__inference_batch_normalization_18_layer_call_fn_146361

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1436052
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
├	
╥
7__inference_batch_normalization_23_layer_call_fn_147292

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_1433282
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
¤
╥
7__inference_batch_normalization_23_layer_call_fn_147305

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_1438732
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ``@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
╚
┌
-__inference_sequential_2_layer_call_fn_144889
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35:0 

unknown_36:0

unknown_37:0

unknown_38:0

unknown_39:0

unknown_40:0$

unknown_41:@0

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@

unknown_46:@$

unknown_47:@

unknown_48:
identityИвStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*D
_read_only_resource_inputs&
$"	
 !"%&'(+,-.12*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1446812
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         ``
!
_user_specified_name	input_3
с
■
E__inference_conv2d_11_layer_call_and_return_conditional_losses_143626

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┼	
╥
7__inference_batch_normalization_17_layer_call_fn_146191

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1421762
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
├	
╥
7__inference_batch_normalization_22_layer_call_fn_147092

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_1431142
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146322

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_142856

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_142686

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_143070

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           0:0:0:0:0:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
┼	
╥
7__inference_batch_normalization_22_layer_call_fn_147079

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_1430702
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_145980

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
¤
╥
7__inference_batch_normalization_16_layer_call_fn_146073

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1435172
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         00 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00 : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_143705

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_144111

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         000:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         0002

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         000: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
¤
╥
7__inference_batch_normalization_17_layer_call_fn_146217

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1435612
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
р
¤
D__inference_conv2d_8_layer_call_and_return_conditional_losses_143494

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         00 2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         00 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ``: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
Т
Ь
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_143794

inputsB
(conv2d_transpose_readvariableop_resource:0 -
biasadd_readvariableop_resource:0
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :02	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :02	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :02	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:0 *
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         000*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0002	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         0002
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         0002

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Э
Ю
)__inference_conv2d_8_layer_call_fn_145962

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1434942
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         00 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ``: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147066

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         000:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         0002

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         000: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146124

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           0:0:0:0:0:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
┼	
╥
7__inference_batch_normalization_18_layer_call_fn_146335

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1423022
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
√
й
4__inference_conv2d_transpose_14_layer_call_fn_147385

inputs!
unknown:@
	unknown_0:
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1434262
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Г&
Ь
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_143426

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           2	
SigmoidА
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146142

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           0:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
│
й
4__inference_conv2d_transpose_13_layer_call_fn_147194

inputs!
unknown:@0
	unknown_0:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1438502
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         000: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
Ў%
Ь
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_146552

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
с
■
E__inference_conv2d_11_layer_call_and_return_conditional_losses_146385

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147266

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ``@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ``@2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ``@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
Жv
П
H__inference_sequential_2_layer_call_and_return_conditional_losses_144681

inputs)
conv2d_8_144563: 
conv2d_8_144565: +
batch_normalization_16_144568: +
batch_normalization_16_144570: +
batch_normalization_16_144572: +
batch_normalization_16_144574: )
conv2d_9_144577: 0
conv2d_9_144579:0+
batch_normalization_17_144582:0+
batch_normalization_17_144584:0+
batch_normalization_17_144586:0+
batch_normalization_17_144588:0*
conv2d_10_144591:0@
conv2d_10_144593:@+
batch_normalization_18_144596:@+
batch_normalization_18_144598:@+
batch_normalization_18_144600:@+
batch_normalization_18_144602:@*
conv2d_11_144605:@@
conv2d_11_144607:@+
batch_normalization_19_144610:@+
batch_normalization_19_144612:@+
batch_normalization_19_144614:@+
batch_normalization_19_144616:@4
conv2d_transpose_10_144619:@@(
conv2d_transpose_10_144621:@+
batch_normalization_20_144624:@+
batch_normalization_20_144626:@+
batch_normalization_20_144628:@+
batch_normalization_20_144630:@4
conv2d_transpose_11_144633: @(
conv2d_transpose_11_144635: +
batch_normalization_21_144638: +
batch_normalization_21_144640: +
batch_normalization_21_144642: +
batch_normalization_21_144644: 4
conv2d_transpose_12_144647:0 (
conv2d_transpose_12_144649:0+
batch_normalization_22_144652:0+
batch_normalization_22_144654:0+
batch_normalization_22_144656:0+
batch_normalization_22_144658:04
conv2d_transpose_13_144661:@0(
conv2d_transpose_13_144663:@+
batch_normalization_23_144666:@+
batch_normalization_23_144668:@+
batch_normalization_23_144670:@+
batch_normalization_23_144672:@4
conv2d_transpose_14_144675:@(
conv2d_transpose_14_144677:
identityИв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв.batch_normalization_18/StatefulPartitionedCallв.batch_normalization_19/StatefulPartitionedCallв.batch_normalization_20/StatefulPartitionedCallв.batch_normalization_21/StatefulPartitionedCallв.batch_normalization_22/StatefulPartitionedCallв.batch_normalization_23/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв+conv2d_transpose_10/StatefulPartitionedCallв+conv2d_transpose_11/StatefulPartitionedCallв+conv2d_transpose_12/StatefulPartitionedCallв+conv2d_transpose_13/StatefulPartitionedCallв+conv2d_transpose_14/StatefulPartitionedCallЯ
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_144563conv2d_8_144565*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1434942"
 conv2d_8/StatefulPartitionedCall╚
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_16_144568batch_normalization_16_144570batch_normalization_16_144572batch_normalization_16_144574*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_14443220
.batch_normalization_16/StatefulPartitionedCall╨
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0conv2d_9_144577conv2d_9_144579*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1435382"
 conv2d_9/StatefulPartitionedCall╚
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_17_144582batch_normalization_17_144584batch_normalization_17_144586batch_normalization_17_144588*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_14437820
.batch_normalization_17/StatefulPartitionedCall╒
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_10_144591conv2d_10_144593*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_1435822#
!conv2d_10/StatefulPartitionedCall╔
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_18_144596batch_normalization_18_144598batch_normalization_18_144600batch_normalization_18_144602*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_14432420
.batch_normalization_18/StatefulPartitionedCall╒
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0conv2d_11_144605conv2d_11_144607*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_1436262#
!conv2d_11/StatefulPartitionedCall╔
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_19_144610batch_normalization_19_144612batch_normalization_19_144614batch_normalization_19_144616*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_14427020
.batch_normalization_19/StatefulPartitionedCallЗ
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0conv2d_transpose_10_144619conv2d_transpose_10_144621*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1436822-
+conv2d_transpose_10/StatefulPartitionedCall╙
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0batch_normalization_20_144624batch_normalization_20_144626batch_normalization_20_144628batch_normalization_20_144630*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_14421720
.batch_normalization_20/StatefulPartitionedCallЗ
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0conv2d_transpose_11_144633conv2d_transpose_11_144635*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1437382-
+conv2d_transpose_11/StatefulPartitionedCall╙
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0batch_normalization_21_144638batch_normalization_21_144640batch_normalization_21_144642batch_normalization_21_144644*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_14416420
.batch_normalization_21/StatefulPartitionedCallЗ
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0conv2d_transpose_12_144647conv2d_transpose_12_144649*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1437942-
+conv2d_transpose_12/StatefulPartitionedCall╙
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0batch_normalization_22_144652batch_normalization_22_144654batch_normalization_22_144656batch_normalization_22_144658*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_14411120
.batch_normalization_22/StatefulPartitionedCallЗ
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv2d_transpose_13_144661conv2d_transpose_13_144663*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1438502-
+conv2d_transpose_13/StatefulPartitionedCall╙
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0batch_normalization_23_144666batch_normalization_23_144668batch_normalization_23_144670batch_normalization_23_144672*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_14405820
.batch_normalization_23/StatefulPartitionedCallЗ
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv2d_transpose_14_144675conv2d_transpose_14_144677*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1439062-
+conv2d_transpose_14/StatefulPartitionedCallЧ
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identity╩
NoOpNoOp/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall/^batch_normalization_20/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
Т
Ь
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_143738

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:          *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:          2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:          2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╡ж
Н4
H__inference_sequential_2_layer_call_and_return_conditional_losses_145732

inputsA
'conv2d_8_conv2d_readvariableop_resource: 6
(conv2d_8_biasadd_readvariableop_resource: <
.batch_normalization_16_readvariableop_resource: >
0batch_normalization_16_readvariableop_1_resource: M
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource: A
'conv2d_9_conv2d_readvariableop_resource: 06
(conv2d_9_biasadd_readvariableop_resource:0<
.batch_normalization_17_readvariableop_resource:0>
0batch_normalization_17_readvariableop_1_resource:0M
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:0O
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:0B
(conv2d_10_conv2d_readvariableop_resource:0@7
)conv2d_10_biasadd_readvariableop_resource:@<
.batch_normalization_18_readvariableop_resource:@>
0batch_normalization_18_readvariableop_1_resource:@M
?batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_11_conv2d_readvariableop_resource:@@7
)conv2d_11_biasadd_readvariableop_resource:@<
.batch_normalization_19_readvariableop_resource:@>
0batch_normalization_19_readvariableop_1_resource:@M
?batch_normalization_19_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource:@@A
3conv2d_transpose_10_biasadd_readvariableop_resource:@<
.batch_normalization_20_readvariableop_resource:@>
0batch_normalization_20_readvariableop_1_resource:@M
?batch_normalization_20_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_11_biasadd_readvariableop_resource: <
.batch_normalization_21_readvariableop_resource: >
0batch_normalization_21_readvariableop_1_resource: M
?batch_normalization_21_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource: V
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:0 A
3conv2d_transpose_12_biasadd_readvariableop_resource:0<
.batch_normalization_22_readvariableop_resource:0>
0batch_normalization_22_readvariableop_1_resource:0M
?batch_normalization_22_fusedbatchnormv3_readvariableop_resource:0O
Abatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:0V
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@0A
3conv2d_transpose_13_biasadd_readvariableop_resource:@<
.batch_normalization_23_readvariableop_resource:@>
0batch_normalization_23_readvariableop_1_resource:@M
?batch_normalization_23_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource:@A
3conv2d_transpose_14_biasadd_readvariableop_resource:
identityИв%batch_normalization_16/AssignNewValueв'batch_normalization_16/AssignNewValue_1в6batch_normalization_16/FusedBatchNormV3/ReadVariableOpв8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_16/ReadVariableOpв'batch_normalization_16/ReadVariableOp_1в%batch_normalization_17/AssignNewValueв'batch_normalization_17/AssignNewValue_1в6batch_normalization_17/FusedBatchNormV3/ReadVariableOpв8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_17/ReadVariableOpв'batch_normalization_17/ReadVariableOp_1в%batch_normalization_18/AssignNewValueв'batch_normalization_18/AssignNewValue_1в6batch_normalization_18/FusedBatchNormV3/ReadVariableOpв8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_18/ReadVariableOpв'batch_normalization_18/ReadVariableOp_1в%batch_normalization_19/AssignNewValueв'batch_normalization_19/AssignNewValue_1в6batch_normalization_19/FusedBatchNormV3/ReadVariableOpв8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_19/ReadVariableOpв'batch_normalization_19/ReadVariableOp_1в%batch_normalization_20/AssignNewValueв'batch_normalization_20/AssignNewValue_1в6batch_normalization_20/FusedBatchNormV3/ReadVariableOpв8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_20/ReadVariableOpв'batch_normalization_20/ReadVariableOp_1в%batch_normalization_21/AssignNewValueв'batch_normalization_21/AssignNewValue_1в6batch_normalization_21/FusedBatchNormV3/ReadVariableOpв8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_21/ReadVariableOpв'batch_normalization_21/ReadVariableOp_1в%batch_normalization_22/AssignNewValueв'batch_normalization_22/AssignNewValue_1в6batch_normalization_22/FusedBatchNormV3/ReadVariableOpв8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_22/ReadVariableOpв'batch_normalization_22/ReadVariableOp_1в%batch_normalization_23/AssignNewValueв'batch_normalization_23/AssignNewValue_1в6batch_normalization_23/FusedBatchNormV3/ReadVariableOpв8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_23/ReadVariableOpв'batch_normalization_23/ReadVariableOp_1в conv2d_10/BiasAdd/ReadVariableOpвconv2d_10/Conv2D/ReadVariableOpв conv2d_11/BiasAdd/ReadVariableOpвconv2d_11/Conv2D/ReadVariableOpвconv2d_8/BiasAdd/ReadVariableOpвconv2d_8/Conv2D/ReadVariableOpвconv2d_9/BiasAdd/ReadVariableOpвconv2d_9/Conv2D/ReadVariableOpв*conv2d_transpose_10/BiasAdd/ReadVariableOpв3conv2d_transpose_10/conv2d_transpose/ReadVariableOpв*conv2d_transpose_11/BiasAdd/ReadVariableOpв3conv2d_transpose_11/conv2d_transpose/ReadVariableOpв*conv2d_transpose_12/BiasAdd/ReadVariableOpв3conv2d_transpose_12/conv2d_transpose/ReadVariableOpв*conv2d_transpose_13/BiasAdd/ReadVariableOpв3conv2d_transpose_13/conv2d_transpose/ReadVariableOpв*conv2d_transpose_14/BiasAdd/ReadVariableOpв3conv2d_transpose_14/conv2d_transpose/ReadVariableOp░
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_8/Conv2D/ReadVariableOp╛
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
conv2d_8/Conv2Dз
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_8/BiasAdd/ReadVariableOpм
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
conv2d_8/BiasAdd{
conv2d_8/TanhTanhconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:         00 2
conv2d_8/Tanh╣
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_16/ReadVariableOp┐
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_16/ReadVariableOp_1ь
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1э
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_8/Tanh:y:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_16/FusedBatchNormV3╡
%batch_normalization_16/AssignNewValueAssignVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource4batch_normalization_16/FusedBatchNormV3:batch_mean:07^batch_normalization_16/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_16/AssignNewValue┴
'batch_normalization_16/AssignNewValue_1AssignVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_16/FusedBatchNormV3:batch_variance:09^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_16/AssignNewValue_1░
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02 
conv2d_9/Conv2D/ReadVariableOpу
conv2d_9/Conv2DConv2D+batch_normalization_16/FusedBatchNormV3:y:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0*
paddingSAME*
strides
2
conv2d_9/Conv2Dз
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02!
conv2d_9/BiasAdd/ReadVariableOpм
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         02
conv2d_9/BiasAdd{
conv2d_9/TanhTanhconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:         02
conv2d_9/Tanh╣
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:0*
dtype02'
%batch_normalization_17/ReadVariableOp┐
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:0*
dtype02)
'batch_normalization_17/ReadVariableOp_1ь
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype028
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02:
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1э
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_9/Tanh:y:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         0:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_17/FusedBatchNormV3╡
%batch_normalization_17/AssignNewValueAssignVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource4batch_normalization_17/FusedBatchNormV3:batch_mean:07^batch_normalization_17/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_17/AssignNewValue┴
'batch_normalization_17/AssignNewValue_1AssignVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_17/FusedBatchNormV3:batch_variance:09^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_17/AssignNewValue_1│
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02!
conv2d_10/Conv2D/ReadVariableOpц
conv2d_10/Conv2DConv2D+batch_normalization_17/FusedBatchNormV3:y:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_10/Conv2Dк
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp░
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_10/BiasAdd~
conv2d_10/TanhTanhconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_10/Tanh╣
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_18/ReadVariableOp┐
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_18/ReadVariableOp_1ь
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ю
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3conv2d_10/Tanh:y:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_18/FusedBatchNormV3╡
%batch_normalization_18/AssignNewValueAssignVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource4batch_normalization_18/FusedBatchNormV3:batch_mean:07^batch_normalization_18/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_18/AssignNewValue┴
'batch_normalization_18/AssignNewValue_1AssignVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_18/FusedBatchNormV3:batch_variance:09^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_18/AssignNewValue_1│
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_11/Conv2D/ReadVariableOpц
conv2d_11/Conv2DConv2D+batch_normalization_18/FusedBatchNormV3:y:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_11/Conv2Dк
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp░
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_11/BiasAdd~
conv2d_11/TanhTanhconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_11/Tanh╣
%batch_normalization_19/ReadVariableOpReadVariableOp.batch_normalization_19_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_19/ReadVariableOp┐
'batch_normalization_19/ReadVariableOp_1ReadVariableOp0batch_normalization_19_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_19/ReadVariableOp_1ь
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ю
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3conv2d_11/Tanh:y:0-batch_normalization_19/ReadVariableOp:value:0/batch_normalization_19/ReadVariableOp_1:value:0>batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_19/FusedBatchNormV3╡
%batch_normalization_19/AssignNewValueAssignVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource4batch_normalization_19/FusedBatchNormV3:batch_mean:07^batch_normalization_19/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_19/AssignNewValue┴
'batch_normalization_19/AssignNewValue_1AssignVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_19/FusedBatchNormV3:batch_variance:09^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_19/AssignNewValue_1С
conv2d_transpose_10/ShapeShape+batch_normalization_19/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_10/ShapeЬ
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_10/strided_slice/stackа
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_1а
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_2┌
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_10/strided_slice|
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_10/stack/1|
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_10/stack/2|
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_10/stack/3К
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_10/stackа
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_10/strided_slice_1/stackд
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_1д
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_2ф
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_10/strided_slice_1я
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_19/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2&
$conv2d_transpose_10/conv2d_transpose╚
*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_10/BiasAdd/ReadVariableOpт
conv2d_transpose_10/BiasAddBiasAdd-conv2d_transpose_10/conv2d_transpose:output:02conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_10/BiasAddЬ
conv2d_transpose_10/TanhTanh$conv2d_transpose_10/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_10/Tanh╣
%batch_normalization_20/ReadVariableOpReadVariableOp.batch_normalization_20_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_20/ReadVariableOp┐
'batch_normalization_20/ReadVariableOp_1ReadVariableOp0batch_normalization_20_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_20/ReadVariableOp_1ь
6batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_20/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1°
'batch_normalization_20/FusedBatchNormV3FusedBatchNormV3conv2d_transpose_10/Tanh:y:0-batch_normalization_20/ReadVariableOp:value:0/batch_normalization_20/ReadVariableOp_1:value:0>batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_20/FusedBatchNormV3╡
%batch_normalization_20/AssignNewValueAssignVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource4batch_normalization_20/FusedBatchNormV3:batch_mean:07^batch_normalization_20/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_20/AssignNewValue┴
'batch_normalization_20/AssignNewValue_1AssignVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_20/FusedBatchNormV3:batch_variance:09^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_20/AssignNewValue_1С
conv2d_transpose_11/ShapeShape+batch_normalization_20/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_11/ShapeЬ
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_11/strided_slice/stackа
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_1а
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_2┌
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_11/strided_slice|
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/1|
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/2|
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_11/stack/3К
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_11/stackа
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_11/strided_slice_1/stackд
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_1д
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_2ф
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_11/strided_slice_1я
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_20/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
2&
$conv2d_transpose_11/conv2d_transpose╚
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_11/BiasAdd/ReadVariableOpт
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_transpose_11/BiasAddЬ
conv2d_transpose_11/TanhTanh$conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_transpose_11/Tanh╣
%batch_normalization_21/ReadVariableOpReadVariableOp.batch_normalization_21_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_21/ReadVariableOp┐
'batch_normalization_21/ReadVariableOp_1ReadVariableOp0batch_normalization_21_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_21/ReadVariableOp_1ь
6batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_21/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1°
'batch_normalization_21/FusedBatchNormV3FusedBatchNormV3conv2d_transpose_11/Tanh:y:0-batch_normalization_21/ReadVariableOp:value:0/batch_normalization_21/ReadVariableOp_1:value:0>batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_21/FusedBatchNormV3╡
%batch_normalization_21/AssignNewValueAssignVariableOp?batch_normalization_21_fusedbatchnormv3_readvariableop_resource4batch_normalization_21/FusedBatchNormV3:batch_mean:07^batch_normalization_21/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_21/AssignNewValue┴
'batch_normalization_21/AssignNewValue_1AssignVariableOpAbatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_21/FusedBatchNormV3:batch_variance:09^batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_21/AssignNewValue_1С
conv2d_transpose_12/ShapeShape+batch_normalization_21/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_12/ShapeЬ
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stackа
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1а
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2┌
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_12/stack/2|
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_12/stack/3К
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stackа
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stackд
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1д
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2ф
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1я
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:0 *
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_21/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         000*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose╚
*conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02,
*conv2d_transpose_12/BiasAdd/ReadVariableOpт
conv2d_transpose_12/BiasAddBiasAdd-conv2d_transpose_12/conv2d_transpose:output:02conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0002
conv2d_transpose_12/BiasAddЬ
conv2d_transpose_12/TanhTanh$conv2d_transpose_12/BiasAdd:output:0*
T0*/
_output_shapes
:         0002
conv2d_transpose_12/Tanh╣
%batch_normalization_22/ReadVariableOpReadVariableOp.batch_normalization_22_readvariableop_resource*
_output_shapes
:0*
dtype02'
%batch_normalization_22/ReadVariableOp┐
'batch_normalization_22/ReadVariableOp_1ReadVariableOp0batch_normalization_22_readvariableop_1_resource*
_output_shapes
:0*
dtype02)
'batch_normalization_22/ReadVariableOp_1ь
6batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype028
6batch_normalization_22/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02:
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1°
'batch_normalization_22/FusedBatchNormV3FusedBatchNormV3conv2d_transpose_12/Tanh:y:0-batch_normalization_22/ReadVariableOp:value:0/batch_normalization_22/ReadVariableOp_1:value:0>batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         000:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_22/FusedBatchNormV3╡
%batch_normalization_22/AssignNewValueAssignVariableOp?batch_normalization_22_fusedbatchnormv3_readvariableop_resource4batch_normalization_22/FusedBatchNormV3:batch_mean:07^batch_normalization_22/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_22/AssignNewValue┴
'batch_normalization_22/AssignNewValue_1AssignVariableOpAbatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_22/FusedBatchNormV3:batch_variance:09^batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_22/AssignNewValue_1С
conv2d_transpose_13/ShapeShape+batch_normalization_22/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_13/ShapeЬ
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stackа
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1а
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2┌
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/3К
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stackа
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stackд
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1д
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2ф
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1я
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@0*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_22/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose╚
*conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_13/BiasAdd/ReadVariableOpт
conv2d_transpose_13/BiasAddBiasAdd-conv2d_transpose_13/conv2d_transpose:output:02conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_transpose_13/BiasAddЬ
conv2d_transpose_13/TanhTanh$conv2d_transpose_13/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_transpose_13/Tanh╣
%batch_normalization_23/ReadVariableOpReadVariableOp.batch_normalization_23_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_23/ReadVariableOp┐
'batch_normalization_23/ReadVariableOp_1ReadVariableOp0batch_normalization_23_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_23/ReadVariableOp_1ь
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1°
'batch_normalization_23/FusedBatchNormV3FusedBatchNormV3conv2d_transpose_13/Tanh:y:0-batch_normalization_23/ReadVariableOp:value:0/batch_normalization_23/ReadVariableOp_1:value:0>batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ``@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_23/FusedBatchNormV3╡
%batch_normalization_23/AssignNewValueAssignVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource4batch_normalization_23/FusedBatchNormV3:batch_mean:07^batch_normalization_23/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_23/AssignNewValue┴
'batch_normalization_23/AssignNewValue_1AssignVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_23/FusedBatchNormV3:batch_variance:09^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_23/AssignNewValue_1С
conv2d_transpose_14/ShapeShape+batch_normalization_23/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_14/ShapeЬ
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stackа
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1а
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2┌
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_14/stack/1|
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/3К
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stackа
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stackд
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1д
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2ф
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1я
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_23/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         ``*
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose╚
*conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_14/BiasAdd/ReadVariableOpт
conv2d_transpose_14/BiasAddBiasAdd-conv2d_transpose_14/conv2d_transpose:output:02conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``2
conv2d_transpose_14/BiasAddе
conv2d_transpose_14/SigmoidSigmoid$conv2d_transpose_14/BiasAdd:output:0*
T0*/
_output_shapes
:         ``2
conv2d_transpose_14/SigmoidВ
IdentityIdentityconv2d_transpose_14/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:         ``2

IdentityН
NoOpNoOp&^batch_normalization_16/AssignNewValue(^batch_normalization_16/AssignNewValue_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_1&^batch_normalization_17/AssignNewValue(^batch_normalization_17/AssignNewValue_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1&^batch_normalization_18/AssignNewValue(^batch_normalization_18/AssignNewValue_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_1&^batch_normalization_19/AssignNewValue(^batch_normalization_19/AssignNewValue_17^batch_normalization_19/FusedBatchNormV3/ReadVariableOp9^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_19/ReadVariableOp(^batch_normalization_19/ReadVariableOp_1&^batch_normalization_20/AssignNewValue(^batch_normalization_20/AssignNewValue_17^batch_normalization_20/FusedBatchNormV3/ReadVariableOp9^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_20/ReadVariableOp(^batch_normalization_20/ReadVariableOp_1&^batch_normalization_21/AssignNewValue(^batch_normalization_21/AssignNewValue_17^batch_normalization_21/FusedBatchNormV3/ReadVariableOp9^batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_21/ReadVariableOp(^batch_normalization_21/ReadVariableOp_1&^batch_normalization_22/AssignNewValue(^batch_normalization_22/AssignNewValue_17^batch_normalization_22/FusedBatchNormV3/ReadVariableOp9^batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_22/ReadVariableOp(^batch_normalization_22/ReadVariableOp_1&^batch_normalization_23/AssignNewValue(^batch_normalization_23/AssignNewValue_17^batch_normalization_23/FusedBatchNormV3/ReadVariableOp9^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_23/ReadVariableOp(^batch_normalization_23/ReadVariableOp_1!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp+^conv2d_transpose_10/BiasAdd/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp+^conv2d_transpose_12/BiasAdd/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp+^conv2d_transpose_13/BiasAdd/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp+^conv2d_transpose_14/BiasAdd/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_16/AssignNewValue%batch_normalization_16/AssignNewValue2R
'batch_normalization_16/AssignNewValue_1'batch_normalization_16/AssignNewValue_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12N
%batch_normalization_17/AssignNewValue%batch_normalization_17/AssignNewValue2R
'batch_normalization_17/AssignNewValue_1'batch_normalization_17/AssignNewValue_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12N
%batch_normalization_18/AssignNewValue%batch_normalization_18/AssignNewValue2R
'batch_normalization_18/AssignNewValue_1'batch_normalization_18/AssignNewValue_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12N
%batch_normalization_19/AssignNewValue%batch_normalization_19/AssignNewValue2R
'batch_normalization_19/AssignNewValue_1'batch_normalization_19/AssignNewValue_12p
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp6batch_normalization_19/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_18batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_19/ReadVariableOp%batch_normalization_19/ReadVariableOp2R
'batch_normalization_19/ReadVariableOp_1'batch_normalization_19/ReadVariableOp_12N
%batch_normalization_20/AssignNewValue%batch_normalization_20/AssignNewValue2R
'batch_normalization_20/AssignNewValue_1'batch_normalization_20/AssignNewValue_12p
6batch_normalization_20/FusedBatchNormV3/ReadVariableOp6batch_normalization_20/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_18batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_20/ReadVariableOp%batch_normalization_20/ReadVariableOp2R
'batch_normalization_20/ReadVariableOp_1'batch_normalization_20/ReadVariableOp_12N
%batch_normalization_21/AssignNewValue%batch_normalization_21/AssignNewValue2R
'batch_normalization_21/AssignNewValue_1'batch_normalization_21/AssignNewValue_12p
6batch_normalization_21/FusedBatchNormV3/ReadVariableOp6batch_normalization_21/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_18batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_21/ReadVariableOp%batch_normalization_21/ReadVariableOp2R
'batch_normalization_21/ReadVariableOp_1'batch_normalization_21/ReadVariableOp_12N
%batch_normalization_22/AssignNewValue%batch_normalization_22/AssignNewValue2R
'batch_normalization_22/AssignNewValue_1'batch_normalization_22/AssignNewValue_12p
6batch_normalization_22/FusedBatchNormV3/ReadVariableOp6batch_normalization_22/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_18batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_22/ReadVariableOp%batch_normalization_22/ReadVariableOp2R
'batch_normalization_22/ReadVariableOp_1'batch_normalization_22/ReadVariableOp_12N
%batch_normalization_23/AssignNewValue%batch_normalization_23/AssignNewValue2R
'batch_normalization_23/AssignNewValue_1'batch_normalization_23/AssignNewValue_12p
6batch_normalization_23/FusedBatchNormV3/ReadVariableOp6batch_normalization_23/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_18batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_23/ReadVariableOp%batch_normalization_23/ReadVariableOp2R
'batch_normalization_23/ReadVariableOp_1'batch_normalization_23/ReadVariableOp_12D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2X
*conv2d_transpose_10/BiasAdd/ReadVariableOp*conv2d_transpose_10/BiasAdd/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_12/BiasAdd/ReadVariableOp*conv2d_transpose_12/BiasAdd/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_13/BiasAdd/ReadVariableOp*conv2d_transpose_13/BiasAdd/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_14/BiasAdd/ReadVariableOp*conv2d_transpose_14/BiasAdd/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
Э
Ю
)__inference_conv2d_9_layer_call_fn_146106

inputs!
unknown: 0
	unknown_0:0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1435382
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
╒
┘
-__inference_sequential_2_layer_call_fn_145837

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35:0 

unknown_36:0

unknown_37:0

unknown_38:0

unknown_39:0

unknown_40:0$

unknown_41:@0

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@

unknown_46:@$

unknown_47:@

unknown_48:
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1439132
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
√
й
4__inference_conv2d_transpose_11_layer_call_fn_146785

inputs!
unknown: @
	unknown_0: 
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1427842
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Т
Ь
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_146576

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         @2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146830

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
р
¤
D__inference_conv2d_9_layer_call_and_return_conditional_losses_143538

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         02	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         02
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         02

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146812

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
├	
╥
7__inference_batch_normalization_19_layer_call_fn_146492

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1424722
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
√
╥
7__inference_batch_normalization_21_layer_call_fn_146918

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_1441642
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147212

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146848

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:          2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
¤
╥
7__inference_batch_normalization_20_layer_call_fn_146705

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_1437052
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_142302

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
√
╥
7__inference_batch_normalization_18_layer_call_fn_146374

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1443242
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_142642

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
├	
╥
7__inference_batch_normalization_20_layer_call_fn_146692

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_1426862
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146178

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         0:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         02

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_142346

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_142472

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ю
Ь
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_147376

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         ``*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``2	
BiasAddi
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:         ``2	
Sigmoidn
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:         ``2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ``@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
¤
╥
7__inference_batch_normalization_19_layer_call_fn_146505

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1436492
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
с
■
E__inference_conv2d_10_layer_call_and_return_conditional_losses_143582

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
╪
┌
-__inference_sequential_2_layer_call_fn_144016
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35:0 

unknown_36:0

unknown_37:0

unknown_38:0

unknown_39:0

unknown_40:0$

unknown_41:@0

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@

unknown_46:@$

unknown_47:@

unknown_48:
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1439132
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         ``
!
_user_specified_name	input_3
Ў%
Ь
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_143212

inputsB
(conv2d_transpose_readvariableop_resource:@0-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@0*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146866

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:          2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
р
¤
D__inference_conv2d_9_layer_call_and_return_conditional_losses_146097

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         02	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         02
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         02

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146630

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_142428

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ў%
Ь
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_142570

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146648

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
√
╥
7__inference_batch_normalization_17_layer_call_fn_146230

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1443782
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
│
й
4__inference_conv2d_transpose_10_layer_call_fn_146594

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1436822
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┼	
╥
7__inference_batch_normalization_19_layer_call_fn_146479

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1424282
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_144164

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:          2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147230

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_143517

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         00 2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00 : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_143761

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:          2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┼	
╥
7__inference_batch_normalization_16_layer_call_fn_146047

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1420502
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_143284

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Т
Ь
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_146776

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:          *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:          2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:          2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_143561

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         0:0:0:0:0:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         02

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
¤
╥
7__inference_batch_normalization_22_layer_call_fn_147105

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_1438172
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         0002

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         000: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
Ў%
Ь
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_147152

inputsB
(conv2d_transpose_readvariableop_resource:@0-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@0*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
Т
Ь
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_147176

inputsB
(conv2d_transpose_readvariableop_resource:@0-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@0*
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         ``@2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         000: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_142176

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           0:0:0:0:0:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
Йv
Р
H__inference_sequential_2_layer_call_and_return_conditional_losses_145131
input_3)
conv2d_8_145013: 
conv2d_8_145015: +
batch_normalization_16_145018: +
batch_normalization_16_145020: +
batch_normalization_16_145022: +
batch_normalization_16_145024: )
conv2d_9_145027: 0
conv2d_9_145029:0+
batch_normalization_17_145032:0+
batch_normalization_17_145034:0+
batch_normalization_17_145036:0+
batch_normalization_17_145038:0*
conv2d_10_145041:0@
conv2d_10_145043:@+
batch_normalization_18_145046:@+
batch_normalization_18_145048:@+
batch_normalization_18_145050:@+
batch_normalization_18_145052:@*
conv2d_11_145055:@@
conv2d_11_145057:@+
batch_normalization_19_145060:@+
batch_normalization_19_145062:@+
batch_normalization_19_145064:@+
batch_normalization_19_145066:@4
conv2d_transpose_10_145069:@@(
conv2d_transpose_10_145071:@+
batch_normalization_20_145074:@+
batch_normalization_20_145076:@+
batch_normalization_20_145078:@+
batch_normalization_20_145080:@4
conv2d_transpose_11_145083: @(
conv2d_transpose_11_145085: +
batch_normalization_21_145088: +
batch_normalization_21_145090: +
batch_normalization_21_145092: +
batch_normalization_21_145094: 4
conv2d_transpose_12_145097:0 (
conv2d_transpose_12_145099:0+
batch_normalization_22_145102:0+
batch_normalization_22_145104:0+
batch_normalization_22_145106:0+
batch_normalization_22_145108:04
conv2d_transpose_13_145111:@0(
conv2d_transpose_13_145113:@+
batch_normalization_23_145116:@+
batch_normalization_23_145118:@+
batch_normalization_23_145120:@+
batch_normalization_23_145122:@4
conv2d_transpose_14_145125:@(
conv2d_transpose_14_145127:
identityИв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв.batch_normalization_18/StatefulPartitionedCallв.batch_normalization_19/StatefulPartitionedCallв.batch_normalization_20/StatefulPartitionedCallв.batch_normalization_21/StatefulPartitionedCallв.batch_normalization_22/StatefulPartitionedCallв.batch_normalization_23/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв+conv2d_transpose_10/StatefulPartitionedCallв+conv2d_transpose_11/StatefulPartitionedCallв+conv2d_transpose_12/StatefulPartitionedCallв+conv2d_transpose_13/StatefulPartitionedCallв+conv2d_transpose_14/StatefulPartitionedCallа
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_8_145013conv2d_8_145015*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1434942"
 conv2d_8/StatefulPartitionedCall╚
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_16_145018batch_normalization_16_145020batch_normalization_16_145022batch_normalization_16_145024*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_14443220
.batch_normalization_16/StatefulPartitionedCall╨
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0conv2d_9_145027conv2d_9_145029*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1435382"
 conv2d_9/StatefulPartitionedCall╚
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_17_145032batch_normalization_17_145034batch_normalization_17_145036batch_normalization_17_145038*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_14437820
.batch_normalization_17/StatefulPartitionedCall╒
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_10_145041conv2d_10_145043*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_1435822#
!conv2d_10/StatefulPartitionedCall╔
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_18_145046batch_normalization_18_145048batch_normalization_18_145050batch_normalization_18_145052*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_14432420
.batch_normalization_18/StatefulPartitionedCall╒
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0conv2d_11_145055conv2d_11_145057*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_1436262#
!conv2d_11/StatefulPartitionedCall╔
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_19_145060batch_normalization_19_145062batch_normalization_19_145064batch_normalization_19_145066*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_14427020
.batch_normalization_19/StatefulPartitionedCallЗ
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0conv2d_transpose_10_145069conv2d_transpose_10_145071*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1436822-
+conv2d_transpose_10/StatefulPartitionedCall╙
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0batch_normalization_20_145074batch_normalization_20_145076batch_normalization_20_145078batch_normalization_20_145080*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_14421720
.batch_normalization_20/StatefulPartitionedCallЗ
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0conv2d_transpose_11_145083conv2d_transpose_11_145085*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1437382-
+conv2d_transpose_11/StatefulPartitionedCall╙
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0batch_normalization_21_145088batch_normalization_21_145090batch_normalization_21_145092batch_normalization_21_145094*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_14416420
.batch_normalization_21/StatefulPartitionedCallЗ
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0conv2d_transpose_12_145097conv2d_transpose_12_145099*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1437942-
+conv2d_transpose_12/StatefulPartitionedCall╙
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0batch_normalization_22_145102batch_normalization_22_145104batch_normalization_22_145106batch_normalization_22_145108*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_14411120
.batch_normalization_22/StatefulPartitionedCallЗ
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv2d_transpose_13_145111conv2d_transpose_13_145113*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1438502-
+conv2d_transpose_13/StatefulPartitionedCall╙
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0batch_normalization_23_145116batch_normalization_23_145118batch_normalization_23_145120batch_normalization_23_145122*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_14405820
.batch_normalization_23/StatefulPartitionedCallЗ
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv2d_transpose_14_145125conv2d_transpose_14_145127*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1439062-
+conv2d_transpose_14/StatefulPartitionedCallЧ
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identity╩
NoOpNoOp/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall/^batch_normalization_20/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall:X T
/
_output_shapes
:         ``
!
_user_specified_name	input_3
│
й
4__inference_conv2d_transpose_11_layer_call_fn_146794

inputs!
unknown: @
	unknown_0: 
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1437382
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
р
¤
D__inference_conv2d_8_layer_call_and_return_conditional_losses_145953

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         00 2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         00 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ``: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
√
й
4__inference_conv2d_transpose_12_layer_call_fn_146985

inputs!
unknown:0 
	unknown_0:0
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1429982
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
│
й
4__inference_conv2d_transpose_12_layer_call_fn_146994

inputs!
unknown:0 
	unknown_0:0
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1437942
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         0002

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_144324

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_144058

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ``@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ``@2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ``@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
Я
Я
*__inference_conv2d_11_layer_call_fn_146394

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_1436262
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ў¤
м=
__inference__traced_save_147798
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop;
7savev2_batch_normalization_16_gamma_read_readvariableop:
6savev2_batch_normalization_16_beta_read_readvariableopA
=savev2_batch_normalization_16_moving_mean_read_readvariableopE
Asavev2_batch_normalization_16_moving_variance_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop;
7savev2_batch_normalization_17_gamma_read_readvariableop:
6savev2_batch_normalization_17_beta_read_readvariableopA
=savev2_batch_normalization_17_moving_mean_read_readvariableopE
Asavev2_batch_normalization_17_moving_variance_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop;
7savev2_batch_normalization_18_gamma_read_readvariableop:
6savev2_batch_normalization_18_beta_read_readvariableopA
=savev2_batch_normalization_18_moving_mean_read_readvariableopE
Asavev2_batch_normalization_18_moving_variance_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop;
7savev2_batch_normalization_19_gamma_read_readvariableop:
6savev2_batch_normalization_19_beta_read_readvariableopA
=savev2_batch_normalization_19_moving_mean_read_readvariableopE
Asavev2_batch_normalization_19_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_10_kernel_read_readvariableop7
3savev2_conv2d_transpose_10_bias_read_readvariableop;
7savev2_batch_normalization_20_gamma_read_readvariableop:
6savev2_batch_normalization_20_beta_read_readvariableopA
=savev2_batch_normalization_20_moving_mean_read_readvariableopE
Asavev2_batch_normalization_20_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_11_kernel_read_readvariableop7
3savev2_conv2d_transpose_11_bias_read_readvariableop;
7savev2_batch_normalization_21_gamma_read_readvariableop:
6savev2_batch_normalization_21_beta_read_readvariableopA
=savev2_batch_normalization_21_moving_mean_read_readvariableopE
Asavev2_batch_normalization_21_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_12_kernel_read_readvariableop7
3savev2_conv2d_transpose_12_bias_read_readvariableop;
7savev2_batch_normalization_22_gamma_read_readvariableop:
6savev2_batch_normalization_22_beta_read_readvariableopA
=savev2_batch_normalization_22_moving_mean_read_readvariableopE
Asavev2_batch_normalization_22_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_13_kernel_read_readvariableop7
3savev2_conv2d_transpose_13_bias_read_readvariableop;
7savev2_batch_normalization_23_gamma_read_readvariableop:
6savev2_batch_normalization_23_beta_read_readvariableopA
=savev2_batch_normalization_23_moving_mean_read_readvariableopE
Asavev2_batch_normalization_23_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_14_kernel_read_readvariableop7
3savev2_conv2d_transpose_14_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_16_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_16_beta_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop3
/savev2_adam_conv2d_9_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_17_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_17_beta_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_18_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_18_beta_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_19_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_19_beta_m_read_readvariableop@
<savev2_adam_conv2d_transpose_10_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_10_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_20_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_20_beta_m_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_11_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_21_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_21_beta_m_read_readvariableop@
<savev2_adam_conv2d_transpose_12_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_12_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_22_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_22_beta_m_read_readvariableop@
<savev2_adam_conv2d_transpose_13_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_13_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_23_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_23_beta_m_read_readvariableop@
<savev2_adam_conv2d_transpose_14_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_14_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_16_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_16_beta_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop3
/savev2_adam_conv2d_9_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_17_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_17_beta_v_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_18_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_18_beta_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_19_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_19_beta_v_read_readvariableop@
<savev2_adam_conv2d_transpose_10_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_10_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_20_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_20_beta_v_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_11_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_21_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_21_beta_v_read_readvariableop@
<savev2_adam_conv2d_transpose_12_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_12_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_22_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_22_beta_v_read_readvariableop@
<savev2_adam_conv2d_transpose_13_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_13_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_23_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_23_beta_v_read_readvariableop@
<savev2_adam_conv2d_transpose_14_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_14_bias_v_read_readvariableop
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename┬G
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:А*
dtype0*╙F
value╔FB╞FАB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesН
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:А*
dtype0*Ц
valueМBЙАB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesБ;
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop7savev2_batch_normalization_16_gamma_read_readvariableop6savev2_batch_normalization_16_beta_read_readvariableop=savev2_batch_normalization_16_moving_mean_read_readvariableopAsavev2_batch_normalization_16_moving_variance_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop7savev2_batch_normalization_17_gamma_read_readvariableop6savev2_batch_normalization_17_beta_read_readvariableop=savev2_batch_normalization_17_moving_mean_read_readvariableopAsavev2_batch_normalization_17_moving_variance_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop7savev2_batch_normalization_18_gamma_read_readvariableop6savev2_batch_normalization_18_beta_read_readvariableop=savev2_batch_normalization_18_moving_mean_read_readvariableopAsavev2_batch_normalization_18_moving_variance_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop7savev2_batch_normalization_19_gamma_read_readvariableop6savev2_batch_normalization_19_beta_read_readvariableop=savev2_batch_normalization_19_moving_mean_read_readvariableopAsavev2_batch_normalization_19_moving_variance_read_readvariableop5savev2_conv2d_transpose_10_kernel_read_readvariableop3savev2_conv2d_transpose_10_bias_read_readvariableop7savev2_batch_normalization_20_gamma_read_readvariableop6savev2_batch_normalization_20_beta_read_readvariableop=savev2_batch_normalization_20_moving_mean_read_readvariableopAsavev2_batch_normalization_20_moving_variance_read_readvariableop5savev2_conv2d_transpose_11_kernel_read_readvariableop3savev2_conv2d_transpose_11_bias_read_readvariableop7savev2_batch_normalization_21_gamma_read_readvariableop6savev2_batch_normalization_21_beta_read_readvariableop=savev2_batch_normalization_21_moving_mean_read_readvariableopAsavev2_batch_normalization_21_moving_variance_read_readvariableop5savev2_conv2d_transpose_12_kernel_read_readvariableop3savev2_conv2d_transpose_12_bias_read_readvariableop7savev2_batch_normalization_22_gamma_read_readvariableop6savev2_batch_normalization_22_beta_read_readvariableop=savev2_batch_normalization_22_moving_mean_read_readvariableopAsavev2_batch_normalization_22_moving_variance_read_readvariableop5savev2_conv2d_transpose_13_kernel_read_readvariableop3savev2_conv2d_transpose_13_bias_read_readvariableop7savev2_batch_normalization_23_gamma_read_readvariableop6savev2_batch_normalization_23_beta_read_readvariableop=savev2_batch_normalization_23_moving_mean_read_readvariableopAsavev2_batch_normalization_23_moving_variance_read_readvariableop5savev2_conv2d_transpose_14_kernel_read_readvariableop3savev2_conv2d_transpose_14_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop>savev2_adam_batch_normalization_16_gamma_m_read_readvariableop=savev2_adam_batch_normalization_16_beta_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop/savev2_adam_conv2d_9_bias_m_read_readvariableop>savev2_adam_batch_normalization_17_gamma_m_read_readvariableop=savev2_adam_batch_normalization_17_beta_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop>savev2_adam_batch_normalization_18_gamma_m_read_readvariableop=savev2_adam_batch_normalization_18_beta_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop>savev2_adam_batch_normalization_19_gamma_m_read_readvariableop=savev2_adam_batch_normalization_19_beta_m_read_readvariableop<savev2_adam_conv2d_transpose_10_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_10_bias_m_read_readvariableop>savev2_adam_batch_normalization_20_gamma_m_read_readvariableop=savev2_adam_batch_normalization_20_beta_m_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_11_bias_m_read_readvariableop>savev2_adam_batch_normalization_21_gamma_m_read_readvariableop=savev2_adam_batch_normalization_21_beta_m_read_readvariableop<savev2_adam_conv2d_transpose_12_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_12_bias_m_read_readvariableop>savev2_adam_batch_normalization_22_gamma_m_read_readvariableop=savev2_adam_batch_normalization_22_beta_m_read_readvariableop<savev2_adam_conv2d_transpose_13_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_13_bias_m_read_readvariableop>savev2_adam_batch_normalization_23_gamma_m_read_readvariableop=savev2_adam_batch_normalization_23_beta_m_read_readvariableop<savev2_adam_conv2d_transpose_14_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_14_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop>savev2_adam_batch_normalization_16_gamma_v_read_readvariableop=savev2_adam_batch_normalization_16_beta_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop/savev2_adam_conv2d_9_bias_v_read_readvariableop>savev2_adam_batch_normalization_17_gamma_v_read_readvariableop=savev2_adam_batch_normalization_17_beta_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop>savev2_adam_batch_normalization_18_gamma_v_read_readvariableop=savev2_adam_batch_normalization_18_beta_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop>savev2_adam_batch_normalization_19_gamma_v_read_readvariableop=savev2_adam_batch_normalization_19_beta_v_read_readvariableop<savev2_adam_conv2d_transpose_10_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_10_bias_v_read_readvariableop>savev2_adam_batch_normalization_20_gamma_v_read_readvariableop=savev2_adam_batch_normalization_20_beta_v_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_11_bias_v_read_readvariableop>savev2_adam_batch_normalization_21_gamma_v_read_readvariableop=savev2_adam_batch_normalization_21_beta_v_read_readvariableop<savev2_adam_conv2d_transpose_12_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_12_bias_v_read_readvariableop>savev2_adam_batch_normalization_22_gamma_v_read_readvariableop=savev2_adam_batch_normalization_22_beta_v_read_readvariableop<savev2_adam_conv2d_transpose_13_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_13_bias_v_read_readvariableop>savev2_adam_batch_normalization_23_gamma_v_read_readvariableop=savev2_adam_batch_normalization_23_beta_v_read_readvariableop<savev2_adam_conv2d_transpose_14_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *С
dtypesЖ
Г2А	2
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

identity_1Identity_1:output:0*│
_input_shapesб
Ю: : : : : : : : 0:0:0:0:0:0:0@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@: @: : : : : :0 :0:0:0:0:0:@0:@:@:@:@:@:@:: : : : : : : : : : : : : : 0:0:0:0:0@:@:@:@:@@:@:@:@:@@:@:@:@: @: : : :0 :0:0:0:@0:@:@:@:@:: : : : : 0:0:0:0:0@:@:@:@:@@:@:@:@:@@:@:@:@: @: : : :0 :0:0:0:@0:@:@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0: 	

_output_shapes
:0: 


_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0:,(
&
_output_shapes
:0@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
: @:  

_output_shapes
: : !

_output_shapes
: : "

_output_shapes
: : #

_output_shapes
: : $

_output_shapes
: :,%(
&
_output_shapes
:0 : &

_output_shapes
:0: '

_output_shapes
:0: (

_output_shapes
:0: )

_output_shapes
:0: *

_output_shapes
:0:,+(
&
_output_shapes
:@0: ,

_output_shapes
:@: -

_output_shapes
:@: .

_output_shapes
:@: /

_output_shapes
:@: 0

_output_shapes
:@:,1(
&
_output_shapes
:@: 2

_output_shapes
::3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :,<(
&
_output_shapes
: : =

_output_shapes
: : >

_output_shapes
: : ?

_output_shapes
: :,@(
&
_output_shapes
: 0: A

_output_shapes
:0: B

_output_shapes
:0: C

_output_shapes
:0:,D(
&
_output_shapes
:0@: E

_output_shapes
:@: F

_output_shapes
:@: G

_output_shapes
:@:,H(
&
_output_shapes
:@@: I

_output_shapes
:@: J

_output_shapes
:@: K

_output_shapes
:@:,L(
&
_output_shapes
:@@: M

_output_shapes
:@: N

_output_shapes
:@: O

_output_shapes
:@:,P(
&
_output_shapes
: @: Q

_output_shapes
: : R

_output_shapes
: : S

_output_shapes
: :,T(
&
_output_shapes
:0 : U

_output_shapes
:0: V

_output_shapes
:0: W

_output_shapes
:0:,X(
&
_output_shapes
:@0: Y

_output_shapes
:@: Z

_output_shapes
:@: [

_output_shapes
:@:,\(
&
_output_shapes
:@: ]

_output_shapes
::,^(
&
_output_shapes
: : _

_output_shapes
: : `

_output_shapes
: : a

_output_shapes
: :,b(
&
_output_shapes
: 0: c

_output_shapes
:0: d

_output_shapes
:0: e

_output_shapes
:0:,f(
&
_output_shapes
:0@: g

_output_shapes
:@: h

_output_shapes
:@: i

_output_shapes
:@:,j(
&
_output_shapes
:@@: k

_output_shapes
:@: l

_output_shapes
:@: m

_output_shapes
:@:,n(
&
_output_shapes
:@@: o

_output_shapes
:@: p

_output_shapes
:@: q

_output_shapes
:@:,r(
&
_output_shapes
: @: s

_output_shapes
: : t

_output_shapes
: : u

_output_shapes
: :,v(
&
_output_shapes
:0 : w

_output_shapes
:0: x

_output_shapes
:0: y

_output_shapes
:0:,z(
&
_output_shapes
:@0: {

_output_shapes
:@: |

_output_shapes
:@: }

_output_shapes
:@:,~(
&
_output_shapes
:@: 

_output_shapes
::А

_output_shapes
: 
Ў%
Ь
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_142998

inputsB
(conv2d_transpose_readvariableop_resource:0 -
biasadd_readvariableop_resource:0
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :02	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:0 *
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           0*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           02	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           02
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Т
Ь
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_143850

inputsB
(conv2d_transpose_readvariableop_resource:@0-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@0*
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         ``@2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         000: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_143114

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           0:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_142900

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Т
Ь
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_146976

inputsB
(conv2d_transpose_readvariableop_resource:0 -
biasadd_readvariableop_resource:0
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :02	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :02	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :02	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:0 *
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         000*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0002	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         0002
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         0002

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146466

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146448

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Я
Я
*__inference_conv2d_10_layer_call_fn_146250

inputs!
unknown:0@
	unknown_0:@
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_1435822
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
├	
╥
7__inference_batch_normalization_21_layer_call_fn_146892

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_1429002
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_146016

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         00 2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00 : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_142094

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
√
╥
7__inference_batch_normalization_20_layer_call_fn_146718

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_1442172
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ў%
Ь
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_146952

inputsB
(conv2d_transpose_readvariableop_resource:0 -
biasadd_readvariableop_resource:0
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :02	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:0 *
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           0*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           02	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           02
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146160

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         0:0:0:0:0:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         02

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_144378

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         0:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         02

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
√
╥
7__inference_batch_normalization_23_layer_call_fn_147318

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_1440582
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ``@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147248

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ``@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ``@2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ``@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
√
й
4__inference_conv2d_transpose_10_layer_call_fn_146585

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1425702
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╫░
пX
"__inference__traced_restore_148189
file_prefix:
 assignvariableop_conv2d_8_kernel: .
 assignvariableop_1_conv2d_8_bias: =
/assignvariableop_2_batch_normalization_16_gamma: <
.assignvariableop_3_batch_normalization_16_beta: C
5assignvariableop_4_batch_normalization_16_moving_mean: G
9assignvariableop_5_batch_normalization_16_moving_variance: <
"assignvariableop_6_conv2d_9_kernel: 0.
 assignvariableop_7_conv2d_9_bias:0=
/assignvariableop_8_batch_normalization_17_gamma:0<
.assignvariableop_9_batch_normalization_17_beta:0D
6assignvariableop_10_batch_normalization_17_moving_mean:0H
:assignvariableop_11_batch_normalization_17_moving_variance:0>
$assignvariableop_12_conv2d_10_kernel:0@0
"assignvariableop_13_conv2d_10_bias:@>
0assignvariableop_14_batch_normalization_18_gamma:@=
/assignvariableop_15_batch_normalization_18_beta:@D
6assignvariableop_16_batch_normalization_18_moving_mean:@H
:assignvariableop_17_batch_normalization_18_moving_variance:@>
$assignvariableop_18_conv2d_11_kernel:@@0
"assignvariableop_19_conv2d_11_bias:@>
0assignvariableop_20_batch_normalization_19_gamma:@=
/assignvariableop_21_batch_normalization_19_beta:@D
6assignvariableop_22_batch_normalization_19_moving_mean:@H
:assignvariableop_23_batch_normalization_19_moving_variance:@H
.assignvariableop_24_conv2d_transpose_10_kernel:@@:
,assignvariableop_25_conv2d_transpose_10_bias:@>
0assignvariableop_26_batch_normalization_20_gamma:@=
/assignvariableop_27_batch_normalization_20_beta:@D
6assignvariableop_28_batch_normalization_20_moving_mean:@H
:assignvariableop_29_batch_normalization_20_moving_variance:@H
.assignvariableop_30_conv2d_transpose_11_kernel: @:
,assignvariableop_31_conv2d_transpose_11_bias: >
0assignvariableop_32_batch_normalization_21_gamma: =
/assignvariableop_33_batch_normalization_21_beta: D
6assignvariableop_34_batch_normalization_21_moving_mean: H
:assignvariableop_35_batch_normalization_21_moving_variance: H
.assignvariableop_36_conv2d_transpose_12_kernel:0 :
,assignvariableop_37_conv2d_transpose_12_bias:0>
0assignvariableop_38_batch_normalization_22_gamma:0=
/assignvariableop_39_batch_normalization_22_beta:0D
6assignvariableop_40_batch_normalization_22_moving_mean:0H
:assignvariableop_41_batch_normalization_22_moving_variance:0H
.assignvariableop_42_conv2d_transpose_13_kernel:@0:
,assignvariableop_43_conv2d_transpose_13_bias:@>
0assignvariableop_44_batch_normalization_23_gamma:@=
/assignvariableop_45_batch_normalization_23_beta:@D
6assignvariableop_46_batch_normalization_23_moving_mean:@H
:assignvariableop_47_batch_normalization_23_moving_variance:@H
.assignvariableop_48_conv2d_transpose_14_kernel:@:
,assignvariableop_49_conv2d_transpose_14_bias:'
assignvariableop_50_adam_iter:	 )
assignvariableop_51_adam_beta_1: )
assignvariableop_52_adam_beta_2: (
assignvariableop_53_adam_decay: 0
&assignvariableop_54_adam_learning_rate: #
assignvariableop_55_total: #
assignvariableop_56_count: %
assignvariableop_57_total_1: %
assignvariableop_58_count_1: D
*assignvariableop_59_adam_conv2d_8_kernel_m: 6
(assignvariableop_60_adam_conv2d_8_bias_m: E
7assignvariableop_61_adam_batch_normalization_16_gamma_m: D
6assignvariableop_62_adam_batch_normalization_16_beta_m: D
*assignvariableop_63_adam_conv2d_9_kernel_m: 06
(assignvariableop_64_adam_conv2d_9_bias_m:0E
7assignvariableop_65_adam_batch_normalization_17_gamma_m:0D
6assignvariableop_66_adam_batch_normalization_17_beta_m:0E
+assignvariableop_67_adam_conv2d_10_kernel_m:0@7
)assignvariableop_68_adam_conv2d_10_bias_m:@E
7assignvariableop_69_adam_batch_normalization_18_gamma_m:@D
6assignvariableop_70_adam_batch_normalization_18_beta_m:@E
+assignvariableop_71_adam_conv2d_11_kernel_m:@@7
)assignvariableop_72_adam_conv2d_11_bias_m:@E
7assignvariableop_73_adam_batch_normalization_19_gamma_m:@D
6assignvariableop_74_adam_batch_normalization_19_beta_m:@O
5assignvariableop_75_adam_conv2d_transpose_10_kernel_m:@@A
3assignvariableop_76_adam_conv2d_transpose_10_bias_m:@E
7assignvariableop_77_adam_batch_normalization_20_gamma_m:@D
6assignvariableop_78_adam_batch_normalization_20_beta_m:@O
5assignvariableop_79_adam_conv2d_transpose_11_kernel_m: @A
3assignvariableop_80_adam_conv2d_transpose_11_bias_m: E
7assignvariableop_81_adam_batch_normalization_21_gamma_m: D
6assignvariableop_82_adam_batch_normalization_21_beta_m: O
5assignvariableop_83_adam_conv2d_transpose_12_kernel_m:0 A
3assignvariableop_84_adam_conv2d_transpose_12_bias_m:0E
7assignvariableop_85_adam_batch_normalization_22_gamma_m:0D
6assignvariableop_86_adam_batch_normalization_22_beta_m:0O
5assignvariableop_87_adam_conv2d_transpose_13_kernel_m:@0A
3assignvariableop_88_adam_conv2d_transpose_13_bias_m:@E
7assignvariableop_89_adam_batch_normalization_23_gamma_m:@D
6assignvariableop_90_adam_batch_normalization_23_beta_m:@O
5assignvariableop_91_adam_conv2d_transpose_14_kernel_m:@A
3assignvariableop_92_adam_conv2d_transpose_14_bias_m:D
*assignvariableop_93_adam_conv2d_8_kernel_v: 6
(assignvariableop_94_adam_conv2d_8_bias_v: E
7assignvariableop_95_adam_batch_normalization_16_gamma_v: D
6assignvariableop_96_adam_batch_normalization_16_beta_v: D
*assignvariableop_97_adam_conv2d_9_kernel_v: 06
(assignvariableop_98_adam_conv2d_9_bias_v:0E
7assignvariableop_99_adam_batch_normalization_17_gamma_v:0E
7assignvariableop_100_adam_batch_normalization_17_beta_v:0F
,assignvariableop_101_adam_conv2d_10_kernel_v:0@8
*assignvariableop_102_adam_conv2d_10_bias_v:@F
8assignvariableop_103_adam_batch_normalization_18_gamma_v:@E
7assignvariableop_104_adam_batch_normalization_18_beta_v:@F
,assignvariableop_105_adam_conv2d_11_kernel_v:@@8
*assignvariableop_106_adam_conv2d_11_bias_v:@F
8assignvariableop_107_adam_batch_normalization_19_gamma_v:@E
7assignvariableop_108_adam_batch_normalization_19_beta_v:@P
6assignvariableop_109_adam_conv2d_transpose_10_kernel_v:@@B
4assignvariableop_110_adam_conv2d_transpose_10_bias_v:@F
8assignvariableop_111_adam_batch_normalization_20_gamma_v:@E
7assignvariableop_112_adam_batch_normalization_20_beta_v:@P
6assignvariableop_113_adam_conv2d_transpose_11_kernel_v: @B
4assignvariableop_114_adam_conv2d_transpose_11_bias_v: F
8assignvariableop_115_adam_batch_normalization_21_gamma_v: E
7assignvariableop_116_adam_batch_normalization_21_beta_v: P
6assignvariableop_117_adam_conv2d_transpose_12_kernel_v:0 B
4assignvariableop_118_adam_conv2d_transpose_12_bias_v:0F
8assignvariableop_119_adam_batch_normalization_22_gamma_v:0E
7assignvariableop_120_adam_batch_normalization_22_beta_v:0P
6assignvariableop_121_adam_conv2d_transpose_13_kernel_v:@0B
4assignvariableop_122_adam_conv2d_transpose_13_bias_v:@F
8assignvariableop_123_adam_batch_normalization_23_gamma_v:@E
7assignvariableop_124_adam_batch_normalization_23_beta_v:@P
6assignvariableop_125_adam_conv2d_transpose_14_kernel_v:@B
4assignvariableop_126_adam_conv2d_transpose_14_bias_v:
identity_128ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_100вAssignVariableOp_101вAssignVariableOp_102вAssignVariableOp_103вAssignVariableOp_104вAssignVariableOp_105вAssignVariableOp_106вAssignVariableOp_107вAssignVariableOp_108вAssignVariableOp_109вAssignVariableOp_11вAssignVariableOp_110вAssignVariableOp_111вAssignVariableOp_112вAssignVariableOp_113вAssignVariableOp_114вAssignVariableOp_115вAssignVariableOp_116вAssignVariableOp_117вAssignVariableOp_118вAssignVariableOp_119вAssignVariableOp_12вAssignVariableOp_120вAssignVariableOp_121вAssignVariableOp_122вAssignVariableOp_123вAssignVariableOp_124вAssignVariableOp_125вAssignVariableOp_126вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_89вAssignVariableOp_9вAssignVariableOp_90вAssignVariableOp_91вAssignVariableOp_92вAssignVariableOp_93вAssignVariableOp_94вAssignVariableOp_95вAssignVariableOp_96вAssignVariableOp_97вAssignVariableOp_98вAssignVariableOp_99╚G
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:А*
dtype0*╙F
value╔FB╞FАB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesУ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:А*
dtype0*Ц
valueМBЙАB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices▓
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*С
dtypesЖ
Г2А	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЯ
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1е
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2┤
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_16_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3│
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_16_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4║
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_16_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5╛
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_16_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6з
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7е
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8┤
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_17_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9│
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_17_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10╛
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_17_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11┬
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_17_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12м
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_10_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13к
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_10_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14╕
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_18_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╖
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_18_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16╛
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_18_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17┬
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_18_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18м
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_11_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19к
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_11_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╕
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_19_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21╖
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_19_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22╛
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_19_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23┬
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_19_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╢
AssignVariableOp_24AssignVariableOp.assignvariableop_24_conv2d_transpose_10_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25┤
AssignVariableOp_25AssignVariableOp,assignvariableop_25_conv2d_transpose_10_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╕
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_20_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╖
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_20_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╛
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_20_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┬
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_20_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30╢
AssignVariableOp_30AssignVariableOp.assignvariableop_30_conv2d_transpose_11_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31┤
AssignVariableOp_31AssignVariableOp,assignvariableop_31_conv2d_transpose_11_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32╕
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_21_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33╖
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_21_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34╛
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_21_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35┬
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_21_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36╢
AssignVariableOp_36AssignVariableOp.assignvariableop_36_conv2d_transpose_12_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37┤
AssignVariableOp_37AssignVariableOp,assignvariableop_37_conv2d_transpose_12_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38╕
AssignVariableOp_38AssignVariableOp0assignvariableop_38_batch_normalization_22_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39╖
AssignVariableOp_39AssignVariableOp/assignvariableop_39_batch_normalization_22_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40╛
AssignVariableOp_40AssignVariableOp6assignvariableop_40_batch_normalization_22_moving_meanIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41┬
AssignVariableOp_41AssignVariableOp:assignvariableop_41_batch_normalization_22_moving_varianceIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╢
AssignVariableOp_42AssignVariableOp.assignvariableop_42_conv2d_transpose_13_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43┤
AssignVariableOp_43AssignVariableOp,assignvariableop_43_conv2d_transpose_13_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44╕
AssignVariableOp_44AssignVariableOp0assignvariableop_44_batch_normalization_23_gammaIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45╖
AssignVariableOp_45AssignVariableOp/assignvariableop_45_batch_normalization_23_betaIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46╛
AssignVariableOp_46AssignVariableOp6assignvariableop_46_batch_normalization_23_moving_meanIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47┬
AssignVariableOp_47AssignVariableOp:assignvariableop_47_batch_normalization_23_moving_varianceIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48╢
AssignVariableOp_48AssignVariableOp.assignvariableop_48_conv2d_transpose_14_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49┤
AssignVariableOp_49AssignVariableOp,assignvariableop_49_conv2d_transpose_14_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_50е
AssignVariableOp_50AssignVariableOpassignvariableop_50_adam_iterIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51з
AssignVariableOp_51AssignVariableOpassignvariableop_51_adam_beta_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52з
AssignVariableOp_52AssignVariableOpassignvariableop_52_adam_beta_2Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53ж
AssignVariableOp_53AssignVariableOpassignvariableop_53_adam_decayIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54о
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_learning_rateIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55б
AssignVariableOp_55AssignVariableOpassignvariableop_55_totalIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56б
AssignVariableOp_56AssignVariableOpassignvariableop_56_countIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57г
AssignVariableOp_57AssignVariableOpassignvariableop_57_total_1Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58г
AssignVariableOp_58AssignVariableOpassignvariableop_58_count_1Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59▓
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_conv2d_8_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60░
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_conv2d_8_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61┐
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_batch_normalization_16_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62╛
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_batch_normalization_16_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63▓
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_conv2d_9_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64░
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_conv2d_9_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65┐
AssignVariableOp_65AssignVariableOp7assignvariableop_65_adam_batch_normalization_17_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66╛
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_batch_normalization_17_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67│
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_10_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68▒
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_10_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69┐
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_batch_normalization_18_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70╛
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_batch_normalization_18_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71│
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_11_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72▒
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_11_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73┐
AssignVariableOp_73AssignVariableOp7assignvariableop_73_adam_batch_normalization_19_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74╛
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_batch_normalization_19_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75╜
AssignVariableOp_75AssignVariableOp5assignvariableop_75_adam_conv2d_transpose_10_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76╗
AssignVariableOp_76AssignVariableOp3assignvariableop_76_adam_conv2d_transpose_10_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77┐
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_batch_normalization_20_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78╛
AssignVariableOp_78AssignVariableOp6assignvariableop_78_adam_batch_normalization_20_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79╜
AssignVariableOp_79AssignVariableOp5assignvariableop_79_adam_conv2d_transpose_11_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80╗
AssignVariableOp_80AssignVariableOp3assignvariableop_80_adam_conv2d_transpose_11_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81┐
AssignVariableOp_81AssignVariableOp7assignvariableop_81_adam_batch_normalization_21_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82╛
AssignVariableOp_82AssignVariableOp6assignvariableop_82_adam_batch_normalization_21_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83╜
AssignVariableOp_83AssignVariableOp5assignvariableop_83_adam_conv2d_transpose_12_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84╗
AssignVariableOp_84AssignVariableOp3assignvariableop_84_adam_conv2d_transpose_12_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85┐
AssignVariableOp_85AssignVariableOp7assignvariableop_85_adam_batch_normalization_22_gamma_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86╛
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_batch_normalization_22_beta_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87╜
AssignVariableOp_87AssignVariableOp5assignvariableop_87_adam_conv2d_transpose_13_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88╗
AssignVariableOp_88AssignVariableOp3assignvariableop_88_adam_conv2d_transpose_13_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89┐
AssignVariableOp_89AssignVariableOp7assignvariableop_89_adam_batch_normalization_23_gamma_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90╛
AssignVariableOp_90AssignVariableOp6assignvariableop_90_adam_batch_normalization_23_beta_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91╜
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_conv2d_transpose_14_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92╗
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_conv2d_transpose_14_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93▓
AssignVariableOp_93AssignVariableOp*assignvariableop_93_adam_conv2d_8_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94░
AssignVariableOp_94AssignVariableOp(assignvariableop_94_adam_conv2d_8_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95┐
AssignVariableOp_95AssignVariableOp7assignvariableop_95_adam_batch_normalization_16_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96╛
AssignVariableOp_96AssignVariableOp6assignvariableop_96_adam_batch_normalization_16_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97▓
AssignVariableOp_97AssignVariableOp*assignvariableop_97_adam_conv2d_9_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98░
AssignVariableOp_98AssignVariableOp(assignvariableop_98_adam_conv2d_9_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99┐
AssignVariableOp_99AssignVariableOp7assignvariableop_99_adam_batch_normalization_17_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100┬
AssignVariableOp_100AssignVariableOp7assignvariableop_100_adam_batch_normalization_17_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101╖
AssignVariableOp_101AssignVariableOp,assignvariableop_101_adam_conv2d_10_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102╡
AssignVariableOp_102AssignVariableOp*assignvariableop_102_adam_conv2d_10_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103├
AssignVariableOp_103AssignVariableOp8assignvariableop_103_adam_batch_normalization_18_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104┬
AssignVariableOp_104AssignVariableOp7assignvariableop_104_adam_batch_normalization_18_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105╖
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_conv2d_11_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106╡
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_conv2d_11_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107├
AssignVariableOp_107AssignVariableOp8assignvariableop_107_adam_batch_normalization_19_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108┬
AssignVariableOp_108AssignVariableOp7assignvariableop_108_adam_batch_normalization_19_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109┴
AssignVariableOp_109AssignVariableOp6assignvariableop_109_adam_conv2d_transpose_10_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110┐
AssignVariableOp_110AssignVariableOp4assignvariableop_110_adam_conv2d_transpose_10_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111├
AssignVariableOp_111AssignVariableOp8assignvariableop_111_adam_batch_normalization_20_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112┬
AssignVariableOp_112AssignVariableOp7assignvariableop_112_adam_batch_normalization_20_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113┴
AssignVariableOp_113AssignVariableOp6assignvariableop_113_adam_conv2d_transpose_11_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114┐
AssignVariableOp_114AssignVariableOp4assignvariableop_114_adam_conv2d_transpose_11_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115├
AssignVariableOp_115AssignVariableOp8assignvariableop_115_adam_batch_normalization_21_gamma_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116┬
AssignVariableOp_116AssignVariableOp7assignvariableop_116_adam_batch_normalization_21_beta_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117┴
AssignVariableOp_117AssignVariableOp6assignvariableop_117_adam_conv2d_transpose_12_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118┐
AssignVariableOp_118AssignVariableOp4assignvariableop_118_adam_conv2d_transpose_12_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119├
AssignVariableOp_119AssignVariableOp8assignvariableop_119_adam_batch_normalization_22_gamma_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120┬
AssignVariableOp_120AssignVariableOp7assignvariableop_120_adam_batch_normalization_22_beta_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121┴
AssignVariableOp_121AssignVariableOp6assignvariableop_121_adam_conv2d_transpose_13_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122┐
AssignVariableOp_122AssignVariableOp4assignvariableop_122_adam_conv2d_transpose_13_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123├
AssignVariableOp_123AssignVariableOp8assignvariableop_123_adam_batch_normalization_23_gamma_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124┬
AssignVariableOp_124AssignVariableOp7assignvariableop_124_adam_batch_normalization_23_beta_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125┴
AssignVariableOp_125AssignVariableOp6assignvariableop_125_adam_conv2d_transpose_14_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126┐
AssignVariableOp_126AssignVariableOp4assignvariableop_126_adam_conv2d_transpose_14_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpх
Identity_127Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_127i
Identity_128IdentityIdentity_127:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_128╦
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"%
identity_128Identity_128:output:0*Х
_input_shapesГ
А: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262*
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
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╧
┴
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146666

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ещ
¤.
H__inference_sequential_2_layer_call_and_return_conditional_losses_145488

inputsA
'conv2d_8_conv2d_readvariableop_resource: 6
(conv2d_8_biasadd_readvariableop_resource: <
.batch_normalization_16_readvariableop_resource: >
0batch_normalization_16_readvariableop_1_resource: M
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource: A
'conv2d_9_conv2d_readvariableop_resource: 06
(conv2d_9_biasadd_readvariableop_resource:0<
.batch_normalization_17_readvariableop_resource:0>
0batch_normalization_17_readvariableop_1_resource:0M
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:0O
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:0B
(conv2d_10_conv2d_readvariableop_resource:0@7
)conv2d_10_biasadd_readvariableop_resource:@<
.batch_normalization_18_readvariableop_resource:@>
0batch_normalization_18_readvariableop_1_resource:@M
?batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_11_conv2d_readvariableop_resource:@@7
)conv2d_11_biasadd_readvariableop_resource:@<
.batch_normalization_19_readvariableop_resource:@>
0batch_normalization_19_readvariableop_1_resource:@M
?batch_normalization_19_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource:@@A
3conv2d_transpose_10_biasadd_readvariableop_resource:@<
.batch_normalization_20_readvariableop_resource:@>
0batch_normalization_20_readvariableop_1_resource:@M
?batch_normalization_20_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_11_biasadd_readvariableop_resource: <
.batch_normalization_21_readvariableop_resource: >
0batch_normalization_21_readvariableop_1_resource: M
?batch_normalization_21_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource: V
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:0 A
3conv2d_transpose_12_biasadd_readvariableop_resource:0<
.batch_normalization_22_readvariableop_resource:0>
0batch_normalization_22_readvariableop_1_resource:0M
?batch_normalization_22_fusedbatchnormv3_readvariableop_resource:0O
Abatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:0V
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@0A
3conv2d_transpose_13_biasadd_readvariableop_resource:@<
.batch_normalization_23_readvariableop_resource:@>
0batch_normalization_23_readvariableop_1_resource:@M
?batch_normalization_23_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource:@A
3conv2d_transpose_14_biasadd_readvariableop_resource:
identityИв6batch_normalization_16/FusedBatchNormV3/ReadVariableOpв8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_16/ReadVariableOpв'batch_normalization_16/ReadVariableOp_1в6batch_normalization_17/FusedBatchNormV3/ReadVariableOpв8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_17/ReadVariableOpв'batch_normalization_17/ReadVariableOp_1в6batch_normalization_18/FusedBatchNormV3/ReadVariableOpв8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_18/ReadVariableOpв'batch_normalization_18/ReadVariableOp_1в6batch_normalization_19/FusedBatchNormV3/ReadVariableOpв8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_19/ReadVariableOpв'batch_normalization_19/ReadVariableOp_1в6batch_normalization_20/FusedBatchNormV3/ReadVariableOpв8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_20/ReadVariableOpв'batch_normalization_20/ReadVariableOp_1в6batch_normalization_21/FusedBatchNormV3/ReadVariableOpв8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_21/ReadVariableOpв'batch_normalization_21/ReadVariableOp_1в6batch_normalization_22/FusedBatchNormV3/ReadVariableOpв8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_22/ReadVariableOpв'batch_normalization_22/ReadVariableOp_1в6batch_normalization_23/FusedBatchNormV3/ReadVariableOpв8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_23/ReadVariableOpв'batch_normalization_23/ReadVariableOp_1в conv2d_10/BiasAdd/ReadVariableOpвconv2d_10/Conv2D/ReadVariableOpв conv2d_11/BiasAdd/ReadVariableOpвconv2d_11/Conv2D/ReadVariableOpвconv2d_8/BiasAdd/ReadVariableOpвconv2d_8/Conv2D/ReadVariableOpвconv2d_9/BiasAdd/ReadVariableOpвconv2d_9/Conv2D/ReadVariableOpв*conv2d_transpose_10/BiasAdd/ReadVariableOpв3conv2d_transpose_10/conv2d_transpose/ReadVariableOpв*conv2d_transpose_11/BiasAdd/ReadVariableOpв3conv2d_transpose_11/conv2d_transpose/ReadVariableOpв*conv2d_transpose_12/BiasAdd/ReadVariableOpв3conv2d_transpose_12/conv2d_transpose/ReadVariableOpв*conv2d_transpose_13/BiasAdd/ReadVariableOpв3conv2d_transpose_13/conv2d_transpose/ReadVariableOpв*conv2d_transpose_14/BiasAdd/ReadVariableOpв3conv2d_transpose_14/conv2d_transpose/ReadVariableOp░
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_8/Conv2D/ReadVariableOp╛
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
conv2d_8/Conv2Dз
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_8/BiasAdd/ReadVariableOpм
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
conv2d_8/BiasAdd{
conv2d_8/TanhTanhconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:         00 2
conv2d_8/Tanh╣
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_16/ReadVariableOp┐
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_16/ReadVariableOp_1ь
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1▀
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_8/Tanh:y:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 2)
'batch_normalization_16/FusedBatchNormV3░
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02 
conv2d_9/Conv2D/ReadVariableOpу
conv2d_9/Conv2DConv2D+batch_normalization_16/FusedBatchNormV3:y:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0*
paddingSAME*
strides
2
conv2d_9/Conv2Dз
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02!
conv2d_9/BiasAdd/ReadVariableOpм
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         02
conv2d_9/BiasAdd{
conv2d_9/TanhTanhconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:         02
conv2d_9/Tanh╣
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:0*
dtype02'
%batch_normalization_17/ReadVariableOp┐
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:0*
dtype02)
'batch_normalization_17/ReadVariableOp_1ь
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype028
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02:
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1▀
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_9/Tanh:y:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         0:0:0:0:0:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_17/FusedBatchNormV3│
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02!
conv2d_10/Conv2D/ReadVariableOpц
conv2d_10/Conv2DConv2D+batch_normalization_17/FusedBatchNormV3:y:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_10/Conv2Dк
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp░
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_10/BiasAdd~
conv2d_10/TanhTanhconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_10/Tanh╣
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_18/ReadVariableOp┐
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_18/ReadVariableOp_1ь
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1р
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3conv2d_10/Tanh:y:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_18/FusedBatchNormV3│
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_11/Conv2D/ReadVariableOpц
conv2d_11/Conv2DConv2D+batch_normalization_18/FusedBatchNormV3:y:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_11/Conv2Dк
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp░
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_11/BiasAdd~
conv2d_11/TanhTanhconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_11/Tanh╣
%batch_normalization_19/ReadVariableOpReadVariableOp.batch_normalization_19_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_19/ReadVariableOp┐
'batch_normalization_19/ReadVariableOp_1ReadVariableOp0batch_normalization_19_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_19/ReadVariableOp_1ь
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1р
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3conv2d_11/Tanh:y:0-batch_normalization_19/ReadVariableOp:value:0/batch_normalization_19/ReadVariableOp_1:value:0>batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_19/FusedBatchNormV3С
conv2d_transpose_10/ShapeShape+batch_normalization_19/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_10/ShapeЬ
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_10/strided_slice/stackа
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_1а
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_2┌
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_10/strided_slice|
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_10/stack/1|
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_10/stack/2|
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_10/stack/3К
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_10/stackа
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_10/strided_slice_1/stackд
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_1д
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_2ф
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_10/strided_slice_1я
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_19/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2&
$conv2d_transpose_10/conv2d_transpose╚
*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_10/BiasAdd/ReadVariableOpт
conv2d_transpose_10/BiasAddBiasAdd-conv2d_transpose_10/conv2d_transpose:output:02conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_10/BiasAddЬ
conv2d_transpose_10/TanhTanh$conv2d_transpose_10/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_10/Tanh╣
%batch_normalization_20/ReadVariableOpReadVariableOp.batch_normalization_20_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_20/ReadVariableOp┐
'batch_normalization_20/ReadVariableOp_1ReadVariableOp0batch_normalization_20_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_20/ReadVariableOp_1ь
6batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_20/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ъ
'batch_normalization_20/FusedBatchNormV3FusedBatchNormV3conv2d_transpose_10/Tanh:y:0-batch_normalization_20/ReadVariableOp:value:0/batch_normalization_20/ReadVariableOp_1:value:0>batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_20/FusedBatchNormV3С
conv2d_transpose_11/ShapeShape+batch_normalization_20/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_11/ShapeЬ
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_11/strided_slice/stackа
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_1а
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_2┌
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_11/strided_slice|
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/1|
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/2|
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_11/stack/3К
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_11/stackа
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_11/strided_slice_1/stackд
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_1д
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_2ф
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_11/strided_slice_1я
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_20/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
2&
$conv2d_transpose_11/conv2d_transpose╚
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_11/BiasAdd/ReadVariableOpт
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_transpose_11/BiasAddЬ
conv2d_transpose_11/TanhTanh$conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_transpose_11/Tanh╣
%batch_normalization_21/ReadVariableOpReadVariableOp.batch_normalization_21_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_21/ReadVariableOp┐
'batch_normalization_21/ReadVariableOp_1ReadVariableOp0batch_normalization_21_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_21/ReadVariableOp_1ь
6batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_21/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ъ
'batch_normalization_21/FusedBatchNormV3FusedBatchNormV3conv2d_transpose_11/Tanh:y:0-batch_normalization_21/ReadVariableOp:value:0/batch_normalization_21/ReadVariableOp_1:value:0>batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( 2)
'batch_normalization_21/FusedBatchNormV3С
conv2d_transpose_12/ShapeShape+batch_normalization_21/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_12/ShapeЬ
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stackа
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1а
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2┌
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_12/stack/2|
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_12/stack/3К
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stackа
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stackд
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1д
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2ф
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1я
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:0 *
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_21/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         000*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose╚
*conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02,
*conv2d_transpose_12/BiasAdd/ReadVariableOpт
conv2d_transpose_12/BiasAddBiasAdd-conv2d_transpose_12/conv2d_transpose:output:02conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0002
conv2d_transpose_12/BiasAddЬ
conv2d_transpose_12/TanhTanh$conv2d_transpose_12/BiasAdd:output:0*
T0*/
_output_shapes
:         0002
conv2d_transpose_12/Tanh╣
%batch_normalization_22/ReadVariableOpReadVariableOp.batch_normalization_22_readvariableop_resource*
_output_shapes
:0*
dtype02'
%batch_normalization_22/ReadVariableOp┐
'batch_normalization_22/ReadVariableOp_1ReadVariableOp0batch_normalization_22_readvariableop_1_resource*
_output_shapes
:0*
dtype02)
'batch_normalization_22/ReadVariableOp_1ь
6batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype028
6batch_normalization_22/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02:
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ъ
'batch_normalization_22/FusedBatchNormV3FusedBatchNormV3conv2d_transpose_12/Tanh:y:0-batch_normalization_22/ReadVariableOp:value:0/batch_normalization_22/ReadVariableOp_1:value:0>batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         000:0:0:0:0:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_22/FusedBatchNormV3С
conv2d_transpose_13/ShapeShape+batch_normalization_22/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_13/ShapeЬ
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stackа
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1а
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2┌
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/3К
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stackа
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stackд
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1д
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2ф
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1я
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@0*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_22/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose╚
*conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_13/BiasAdd/ReadVariableOpт
conv2d_transpose_13/BiasAddBiasAdd-conv2d_transpose_13/conv2d_transpose:output:02conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_transpose_13/BiasAddЬ
conv2d_transpose_13/TanhTanh$conv2d_transpose_13/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_transpose_13/Tanh╣
%batch_normalization_23/ReadVariableOpReadVariableOp.batch_normalization_23_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_23/ReadVariableOp┐
'batch_normalization_23/ReadVariableOp_1ReadVariableOp0batch_normalization_23_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_23/ReadVariableOp_1ь
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ъ
'batch_normalization_23/FusedBatchNormV3FusedBatchNormV3conv2d_transpose_13/Tanh:y:0-batch_normalization_23/ReadVariableOp:value:0/batch_normalization_23/ReadVariableOp_1:value:0>batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ``@:@:@:@:@:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_23/FusedBatchNormV3С
conv2d_transpose_14/ShapeShape+batch_normalization_23/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_14/ShapeЬ
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stackа
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1а
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2┌
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_14/stack/1|
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/3К
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stackа
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stackд
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1д
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2ф
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1я
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp╙
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_23/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         ``*
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose╚
*conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_14/BiasAdd/ReadVariableOpт
conv2d_transpose_14/BiasAddBiasAdd-conv2d_transpose_14/conv2d_transpose:output:02conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``2
conv2d_transpose_14/BiasAddе
conv2d_transpose_14/SigmoidSigmoid$conv2d_transpose_14/BiasAdd:output:0*
T0*/
_output_shapes
:         ``2
conv2d_transpose_14/SigmoidВ
IdentityIdentityconv2d_transpose_14/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:         ``2

Identity¤
NoOpNoOp7^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_17^batch_normalization_19/FusedBatchNormV3/ReadVariableOp9^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_19/ReadVariableOp(^batch_normalization_19/ReadVariableOp_17^batch_normalization_20/FusedBatchNormV3/ReadVariableOp9^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_20/ReadVariableOp(^batch_normalization_20/ReadVariableOp_17^batch_normalization_21/FusedBatchNormV3/ReadVariableOp9^batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_21/ReadVariableOp(^batch_normalization_21/ReadVariableOp_17^batch_normalization_22/FusedBatchNormV3/ReadVariableOp9^batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_22/ReadVariableOp(^batch_normalization_22/ReadVariableOp_17^batch_normalization_23/FusedBatchNormV3/ReadVariableOp9^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_23/ReadVariableOp(^batch_normalization_23/ReadVariableOp_1!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp+^conv2d_transpose_10/BiasAdd/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp+^conv2d_transpose_12/BiasAdd/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp+^conv2d_transpose_13/BiasAdd/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp+^conv2d_transpose_14/BiasAdd/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12p
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp6batch_normalization_19/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_18batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_19/ReadVariableOp%batch_normalization_19/ReadVariableOp2R
'batch_normalization_19/ReadVariableOp_1'batch_normalization_19/ReadVariableOp_12p
6batch_normalization_20/FusedBatchNormV3/ReadVariableOp6batch_normalization_20/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_18batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_20/ReadVariableOp%batch_normalization_20/ReadVariableOp2R
'batch_normalization_20/ReadVariableOp_1'batch_normalization_20/ReadVariableOp_12p
6batch_normalization_21/FusedBatchNormV3/ReadVariableOp6batch_normalization_21/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_18batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_21/ReadVariableOp%batch_normalization_21/ReadVariableOp2R
'batch_normalization_21/ReadVariableOp_1'batch_normalization_21/ReadVariableOp_12p
6batch_normalization_22/FusedBatchNormV3/ReadVariableOp6batch_normalization_22/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_18batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_22/ReadVariableOp%batch_normalization_22/ReadVariableOp2R
'batch_normalization_22/ReadVariableOp_1'batch_normalization_22/ReadVariableOp_12p
6batch_normalization_23/FusedBatchNormV3/ReadVariableOp6batch_normalization_23/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_18batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_23/ReadVariableOp%batch_normalization_23/ReadVariableOp2R
'batch_normalization_23/ReadVariableOp_1'batch_normalization_23/ReadVariableOp_12D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2X
*conv2d_transpose_10/BiasAdd/ReadVariableOp*conv2d_transpose_10/BiasAdd/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_12/BiasAdd/ReadVariableOp*conv2d_transpose_12/BiasAdd/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_13/BiasAdd/ReadVariableOp*conv2d_transpose_13/BiasAdd/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_14/BiasAdd/ReadVariableOp*conv2d_transpose_14/BiasAdd/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
╧
┴
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_144217

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_143873

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ``@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ``@2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ``@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
Ў%
Ь
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_142784

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+                            2
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ю
Ь
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_143906

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3Т
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOp▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         ``*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpТ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``2	
BiasAddi
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:         ``2	
Sigmoidn
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:         ``2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ``@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146412

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
√
╥
7__inference_batch_normalization_22_layer_call_fn_147118

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_1441112
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         0002

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         000: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
│
й
4__inference_conv2d_transpose_14_layer_call_fn_147394

inputs!
unknown:@
	unknown_0:
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1439062
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ``@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
┼
┘
-__inference_sequential_2_layer_call_fn_145942

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35:0 

unknown_36:0

unknown_37:0

unknown_38:0

unknown_39:0

unknown_40:0$

unknown_41:@0

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@

unknown_46:@$

unknown_47:@

unknown_48:
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*D
_read_only_resource_inputs&
$"	
 !"%&'(+,-.12*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1446812
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ``
 
_user_specified_nameinputs
├	
╥
7__inference_batch_normalization_17_layer_call_fn_146204

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1422202
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
и
╤
$__inference_signature_wrapper_145244
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:0

unknown_10:0$

unknown_11:0@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35:0 

unknown_36:0

unknown_37:0

unknown_38:0

unknown_39:0

unknown_40:0$

unknown_41:@0

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@

unknown_46:@$

unknown_47:@

unknown_48:
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_1420282
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         ``
!
_user_specified_name	input_3
с
■
E__inference_conv2d_10_layer_call_and_return_conditional_losses_146241

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         0
 
_user_specified_nameinputs
┼	
╥
7__inference_batch_normalization_23_layer_call_fn_147279

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_1432842
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146286

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_143649

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ш
┴
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147030

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           0:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
А╢
ы8
!__inference__wrapped_model_142028
input_3N
4sequential_2_conv2d_8_conv2d_readvariableop_resource: C
5sequential_2_conv2d_8_biasadd_readvariableop_resource: I
;sequential_2_batch_normalization_16_readvariableop_resource: K
=sequential_2_batch_normalization_16_readvariableop_1_resource: Z
Lsequential_2_batch_normalization_16_fusedbatchnormv3_readvariableop_resource: \
Nsequential_2_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource: N
4sequential_2_conv2d_9_conv2d_readvariableop_resource: 0C
5sequential_2_conv2d_9_biasadd_readvariableop_resource:0I
;sequential_2_batch_normalization_17_readvariableop_resource:0K
=sequential_2_batch_normalization_17_readvariableop_1_resource:0Z
Lsequential_2_batch_normalization_17_fusedbatchnormv3_readvariableop_resource:0\
Nsequential_2_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:0O
5sequential_2_conv2d_10_conv2d_readvariableop_resource:0@D
6sequential_2_conv2d_10_biasadd_readvariableop_resource:@I
;sequential_2_batch_normalization_18_readvariableop_resource:@K
=sequential_2_batch_normalization_18_readvariableop_1_resource:@Z
Lsequential_2_batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@\
Nsequential_2_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@O
5sequential_2_conv2d_11_conv2d_readvariableop_resource:@@D
6sequential_2_conv2d_11_biasadd_readvariableop_resource:@I
;sequential_2_batch_normalization_19_readvariableop_resource:@K
=sequential_2_batch_normalization_19_readvariableop_1_resource:@Z
Lsequential_2_batch_normalization_19_fusedbatchnormv3_readvariableop_resource:@\
Nsequential_2_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:@c
Isequential_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource:@@N
@sequential_2_conv2d_transpose_10_biasadd_readvariableop_resource:@I
;sequential_2_batch_normalization_20_readvariableop_resource:@K
=sequential_2_batch_normalization_20_readvariableop_1_resource:@Z
Lsequential_2_batch_normalization_20_fusedbatchnormv3_readvariableop_resource:@\
Nsequential_2_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource:@c
Isequential_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource: @N
@sequential_2_conv2d_transpose_11_biasadd_readvariableop_resource: I
;sequential_2_batch_normalization_21_readvariableop_resource: K
=sequential_2_batch_normalization_21_readvariableop_1_resource: Z
Lsequential_2_batch_normalization_21_fusedbatchnormv3_readvariableop_resource: \
Nsequential_2_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource: c
Isequential_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource:0 N
@sequential_2_conv2d_transpose_12_biasadd_readvariableop_resource:0I
;sequential_2_batch_normalization_22_readvariableop_resource:0K
=sequential_2_batch_normalization_22_readvariableop_1_resource:0Z
Lsequential_2_batch_normalization_22_fusedbatchnormv3_readvariableop_resource:0\
Nsequential_2_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:0c
Isequential_2_conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@0N
@sequential_2_conv2d_transpose_13_biasadd_readvariableop_resource:@I
;sequential_2_batch_normalization_23_readvariableop_resource:@K
=sequential_2_batch_normalization_23_readvariableop_1_resource:@Z
Lsequential_2_batch_normalization_23_fusedbatchnormv3_readvariableop_resource:@\
Nsequential_2_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:@c
Isequential_2_conv2d_transpose_14_conv2d_transpose_readvariableop_resource:@N
@sequential_2_conv2d_transpose_14_biasadd_readvariableop_resource:
identityИвCsequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpвEsequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в2sequential_2/batch_normalization_16/ReadVariableOpв4sequential_2/batch_normalization_16/ReadVariableOp_1вCsequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOpвEsequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в2sequential_2/batch_normalization_17/ReadVariableOpв4sequential_2/batch_normalization_17/ReadVariableOp_1вCsequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOpвEsequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1в2sequential_2/batch_normalization_18/ReadVariableOpв4sequential_2/batch_normalization_18/ReadVariableOp_1вCsequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOpвEsequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1в2sequential_2/batch_normalization_19/ReadVariableOpв4sequential_2/batch_normalization_19/ReadVariableOp_1вCsequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOpвEsequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1в2sequential_2/batch_normalization_20/ReadVariableOpв4sequential_2/batch_normalization_20/ReadVariableOp_1вCsequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOpвEsequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1в2sequential_2/batch_normalization_21/ReadVariableOpв4sequential_2/batch_normalization_21/ReadVariableOp_1вCsequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOpвEsequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1в2sequential_2/batch_normalization_22/ReadVariableOpв4sequential_2/batch_normalization_22/ReadVariableOp_1вCsequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOpвEsequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1в2sequential_2/batch_normalization_23/ReadVariableOpв4sequential_2/batch_normalization_23/ReadVariableOp_1в-sequential_2/conv2d_10/BiasAdd/ReadVariableOpв,sequential_2/conv2d_10/Conv2D/ReadVariableOpв-sequential_2/conv2d_11/BiasAdd/ReadVariableOpв,sequential_2/conv2d_11/Conv2D/ReadVariableOpв,sequential_2/conv2d_8/BiasAdd/ReadVariableOpв+sequential_2/conv2d_8/Conv2D/ReadVariableOpв,sequential_2/conv2d_9/BiasAdd/ReadVariableOpв+sequential_2/conv2d_9/Conv2D/ReadVariableOpв7sequential_2/conv2d_transpose_10/BiasAdd/ReadVariableOpв@sequential_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpв7sequential_2/conv2d_transpose_11/BiasAdd/ReadVariableOpв@sequential_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpв7sequential_2/conv2d_transpose_12/BiasAdd/ReadVariableOpв@sequential_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOpв7sequential_2/conv2d_transpose_13/BiasAdd/ReadVariableOpв@sequential_2/conv2d_transpose_13/conv2d_transpose/ReadVariableOpв7sequential_2/conv2d_transpose_14/BiasAdd/ReadVariableOpв@sequential_2/conv2d_transpose_14/conv2d_transpose/ReadVariableOp╫
+sequential_2/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_2/conv2d_8/Conv2D/ReadVariableOpц
sequential_2/conv2d_8/Conv2DConv2Dinput_33sequential_2/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
sequential_2/conv2d_8/Conv2D╬
,sequential_2/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_2/conv2d_8/BiasAdd/ReadVariableOpр
sequential_2/conv2d_8/BiasAddBiasAdd%sequential_2/conv2d_8/Conv2D:output:04sequential_2/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
sequential_2/conv2d_8/BiasAddв
sequential_2/conv2d_8/TanhTanh&sequential_2/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:         00 2
sequential_2/conv2d_8/Tanhр
2sequential_2/batch_normalization_16/ReadVariableOpReadVariableOp;sequential_2_batch_normalization_16_readvariableop_resource*
_output_shapes
: *
dtype024
2sequential_2/batch_normalization_16/ReadVariableOpц
4sequential_2/batch_normalization_16/ReadVariableOp_1ReadVariableOp=sequential_2_batch_normalization_16_readvariableop_1_resource*
_output_shapes
: *
dtype026
4sequential_2/batch_normalization_16/ReadVariableOp_1У
Csequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_2_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
Csequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpЩ
Esequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_2_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Esequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1║
4sequential_2/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3sequential_2/conv2d_8/Tanh:y:0:sequential_2/batch_normalization_16/ReadVariableOp:value:0<sequential_2/batch_normalization_16/ReadVariableOp_1:value:0Ksequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Msequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 26
4sequential_2/batch_normalization_16/FusedBatchNormV3╫
+sequential_2/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02-
+sequential_2/conv2d_9/Conv2D/ReadVariableOpЧ
sequential_2/conv2d_9/Conv2DConv2D8sequential_2/batch_normalization_16/FusedBatchNormV3:y:03sequential_2/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0*
paddingSAME*
strides
2
sequential_2/conv2d_9/Conv2D╬
,sequential_2/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02.
,sequential_2/conv2d_9/BiasAdd/ReadVariableOpр
sequential_2/conv2d_9/BiasAddBiasAdd%sequential_2/conv2d_9/Conv2D:output:04sequential_2/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         02
sequential_2/conv2d_9/BiasAddв
sequential_2/conv2d_9/TanhTanh&sequential_2/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:         02
sequential_2/conv2d_9/Tanhр
2sequential_2/batch_normalization_17/ReadVariableOpReadVariableOp;sequential_2_batch_normalization_17_readvariableop_resource*
_output_shapes
:0*
dtype024
2sequential_2/batch_normalization_17/ReadVariableOpц
4sequential_2/batch_normalization_17/ReadVariableOp_1ReadVariableOp=sequential_2_batch_normalization_17_readvariableop_1_resource*
_output_shapes
:0*
dtype026
4sequential_2/batch_normalization_17/ReadVariableOp_1У
Csequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_2_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02E
Csequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOpЩ
Esequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_2_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02G
Esequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1║
4sequential_2/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3sequential_2/conv2d_9/Tanh:y:0:sequential_2/batch_normalization_17/ReadVariableOp:value:0<sequential_2/batch_normalization_17/ReadVariableOp_1:value:0Ksequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Msequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         0:0:0:0:0:*
epsilon%oГ:*
is_training( 26
4sequential_2/batch_normalization_17/FusedBatchNormV3┌
,sequential_2/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype02.
,sequential_2/conv2d_10/Conv2D/ReadVariableOpЪ
sequential_2/conv2d_10/Conv2DConv2D8sequential_2/batch_normalization_17/FusedBatchNormV3:y:04sequential_2/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
sequential_2/conv2d_10/Conv2D╤
-sequential_2/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_2/conv2d_10/BiasAdd/ReadVariableOpф
sequential_2/conv2d_10/BiasAddBiasAdd&sequential_2/conv2d_10/Conv2D:output:05sequential_2/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
sequential_2/conv2d_10/BiasAddе
sequential_2/conv2d_10/TanhTanh'sequential_2/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential_2/conv2d_10/Tanhр
2sequential_2/batch_normalization_18/ReadVariableOpReadVariableOp;sequential_2_batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_2/batch_normalization_18/ReadVariableOpц
4sequential_2/batch_normalization_18/ReadVariableOp_1ReadVariableOp=sequential_2_batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4sequential_2/batch_normalization_18/ReadVariableOp_1У
Csequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_2_batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Csequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOpЩ
Esequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_2_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Esequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1╗
4sequential_2/batch_normalization_18/FusedBatchNormV3FusedBatchNormV3sequential_2/conv2d_10/Tanh:y:0:sequential_2/batch_normalization_18/ReadVariableOp:value:0<sequential_2/batch_normalization_18/ReadVariableOp_1:value:0Ksequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0Msequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4sequential_2/batch_normalization_18/FusedBatchNormV3┌
,sequential_2/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_2/conv2d_11/Conv2D/ReadVariableOpЪ
sequential_2/conv2d_11/Conv2DConv2D8sequential_2/batch_normalization_18/FusedBatchNormV3:y:04sequential_2/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
sequential_2/conv2d_11/Conv2D╤
-sequential_2/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_2/conv2d_11/BiasAdd/ReadVariableOpф
sequential_2/conv2d_11/BiasAddBiasAdd&sequential_2/conv2d_11/Conv2D:output:05sequential_2/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
sequential_2/conv2d_11/BiasAddе
sequential_2/conv2d_11/TanhTanh'sequential_2/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential_2/conv2d_11/Tanhр
2sequential_2/batch_normalization_19/ReadVariableOpReadVariableOp;sequential_2_batch_normalization_19_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_2/batch_normalization_19/ReadVariableOpц
4sequential_2/batch_normalization_19/ReadVariableOp_1ReadVariableOp=sequential_2_batch_normalization_19_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4sequential_2/batch_normalization_19/ReadVariableOp_1У
Csequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_2_batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Csequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOpЩ
Esequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_2_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Esequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1╗
4sequential_2/batch_normalization_19/FusedBatchNormV3FusedBatchNormV3sequential_2/conv2d_11/Tanh:y:0:sequential_2/batch_normalization_19/ReadVariableOp:value:0<sequential_2/batch_normalization_19/ReadVariableOp_1:value:0Ksequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0Msequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4sequential_2/batch_normalization_19/FusedBatchNormV3╕
&sequential_2/conv2d_transpose_10/ShapeShape8sequential_2/batch_normalization_19/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_10/Shape╢
4sequential_2/conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_2/conv2d_transpose_10/strided_slice/stack║
6sequential_2/conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_10/strided_slice/stack_1║
6sequential_2/conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_10/strided_slice/stack_2и
.sequential_2/conv2d_transpose_10/strided_sliceStridedSlice/sequential_2/conv2d_transpose_10/Shape:output:0=sequential_2/conv2d_transpose_10/strided_slice/stack:output:0?sequential_2/conv2d_transpose_10/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/conv2d_transpose_10/strided_sliceЦ
(sequential_2/conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_2/conv2d_transpose_10/stack/1Ц
(sequential_2/conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_2/conv2d_transpose_10/stack/2Ц
(sequential_2/conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_2/conv2d_transpose_10/stack/3╪
&sequential_2/conv2d_transpose_10/stackPack7sequential_2/conv2d_transpose_10/strided_slice:output:01sequential_2/conv2d_transpose_10/stack/1:output:01sequential_2/conv2d_transpose_10/stack/2:output:01sequential_2/conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_10/stack║
6sequential_2/conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_2/conv2d_transpose_10/strided_slice_1/stack╛
8sequential_2/conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_10/strided_slice_1/stack_1╛
8sequential_2/conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_10/strided_slice_1/stack_2▓
0sequential_2/conv2d_transpose_10/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_10/stack:output:0?sequential_2/conv2d_transpose_10/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_10/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_2/conv2d_transpose_10/strided_slice_1Ц
@sequential_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02B
@sequential_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpФ
1sequential_2/conv2d_transpose_10/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_10/stack:output:0Hsequential_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:08sequential_2/batch_normalization_19/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
23
1sequential_2/conv2d_transpose_10/conv2d_transposeя
7sequential_2/conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7sequential_2/conv2d_transpose_10/BiasAdd/ReadVariableOpЦ
(sequential_2/conv2d_transpose_10/BiasAddBiasAdd:sequential_2/conv2d_transpose_10/conv2d_transpose:output:0?sequential_2/conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2*
(sequential_2/conv2d_transpose_10/BiasAdd├
%sequential_2/conv2d_transpose_10/TanhTanh1sequential_2/conv2d_transpose_10/BiasAdd:output:0*
T0*/
_output_shapes
:         @2'
%sequential_2/conv2d_transpose_10/Tanhр
2sequential_2/batch_normalization_20/ReadVariableOpReadVariableOp;sequential_2_batch_normalization_20_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_2/batch_normalization_20/ReadVariableOpц
4sequential_2/batch_normalization_20/ReadVariableOp_1ReadVariableOp=sequential_2_batch_normalization_20_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4sequential_2/batch_normalization_20/ReadVariableOp_1У
Csequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_2_batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Csequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOpЩ
Esequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_2_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Esequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1┼
4sequential_2/batch_normalization_20/FusedBatchNormV3FusedBatchNormV3)sequential_2/conv2d_transpose_10/Tanh:y:0:sequential_2/batch_normalization_20/ReadVariableOp:value:0<sequential_2/batch_normalization_20/ReadVariableOp_1:value:0Ksequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0Msequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4sequential_2/batch_normalization_20/FusedBatchNormV3╕
&sequential_2/conv2d_transpose_11/ShapeShape8sequential_2/batch_normalization_20/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_11/Shape╢
4sequential_2/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_2/conv2d_transpose_11/strided_slice/stack║
6sequential_2/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_11/strided_slice/stack_1║
6sequential_2/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_11/strided_slice/stack_2и
.sequential_2/conv2d_transpose_11/strided_sliceStridedSlice/sequential_2/conv2d_transpose_11/Shape:output:0=sequential_2/conv2d_transpose_11/strided_slice/stack:output:0?sequential_2/conv2d_transpose_11/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/conv2d_transpose_11/strided_sliceЦ
(sequential_2/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_2/conv2d_transpose_11/stack/1Ц
(sequential_2/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_2/conv2d_transpose_11/stack/2Ц
(sequential_2/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_2/conv2d_transpose_11/stack/3╪
&sequential_2/conv2d_transpose_11/stackPack7sequential_2/conv2d_transpose_11/strided_slice:output:01sequential_2/conv2d_transpose_11/stack/1:output:01sequential_2/conv2d_transpose_11/stack/2:output:01sequential_2/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_11/stack║
6sequential_2/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_2/conv2d_transpose_11/strided_slice_1/stack╛
8sequential_2/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_11/strided_slice_1/stack_1╛
8sequential_2/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_11/strided_slice_1/stack_2▓
0sequential_2/conv2d_transpose_11/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_11/stack:output:0?sequential_2/conv2d_transpose_11/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_11/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_2/conv2d_transpose_11/strided_slice_1Ц
@sequential_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02B
@sequential_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpФ
1sequential_2/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_11/stack:output:0Hsequential_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:08sequential_2/batch_normalization_20/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
23
1sequential_2/conv2d_transpose_11/conv2d_transposeя
7sequential_2/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype029
7sequential_2/conv2d_transpose_11/BiasAdd/ReadVariableOpЦ
(sequential_2/conv2d_transpose_11/BiasAddBiasAdd:sequential_2/conv2d_transpose_11/conv2d_transpose:output:0?sequential_2/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2*
(sequential_2/conv2d_transpose_11/BiasAdd├
%sequential_2/conv2d_transpose_11/TanhTanh1sequential_2/conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:          2'
%sequential_2/conv2d_transpose_11/Tanhр
2sequential_2/batch_normalization_21/ReadVariableOpReadVariableOp;sequential_2_batch_normalization_21_readvariableop_resource*
_output_shapes
: *
dtype024
2sequential_2/batch_normalization_21/ReadVariableOpц
4sequential_2/batch_normalization_21/ReadVariableOp_1ReadVariableOp=sequential_2_batch_normalization_21_readvariableop_1_resource*
_output_shapes
: *
dtype026
4sequential_2/batch_normalization_21/ReadVariableOp_1У
Csequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_2_batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
Csequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOpЩ
Esequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_2_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Esequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1┼
4sequential_2/batch_normalization_21/FusedBatchNormV3FusedBatchNormV3)sequential_2/conv2d_transpose_11/Tanh:y:0:sequential_2/batch_normalization_21/ReadVariableOp:value:0<sequential_2/batch_normalization_21/ReadVariableOp_1:value:0Ksequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0Msequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( 26
4sequential_2/batch_normalization_21/FusedBatchNormV3╕
&sequential_2/conv2d_transpose_12/ShapeShape8sequential_2/batch_normalization_21/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_12/Shape╢
4sequential_2/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_2/conv2d_transpose_12/strided_slice/stack║
6sequential_2/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_12/strided_slice/stack_1║
6sequential_2/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_12/strided_slice/stack_2и
.sequential_2/conv2d_transpose_12/strided_sliceStridedSlice/sequential_2/conv2d_transpose_12/Shape:output:0=sequential_2/conv2d_transpose_12/strided_slice/stack:output:0?sequential_2/conv2d_transpose_12/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/conv2d_transpose_12/strided_sliceЦ
(sequential_2/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02*
(sequential_2/conv2d_transpose_12/stack/1Ц
(sequential_2/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :02*
(sequential_2/conv2d_transpose_12/stack/2Ц
(sequential_2/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :02*
(sequential_2/conv2d_transpose_12/stack/3╪
&sequential_2/conv2d_transpose_12/stackPack7sequential_2/conv2d_transpose_12/strided_slice:output:01sequential_2/conv2d_transpose_12/stack/1:output:01sequential_2/conv2d_transpose_12/stack/2:output:01sequential_2/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_12/stack║
6sequential_2/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_2/conv2d_transpose_12/strided_slice_1/stack╛
8sequential_2/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_12/strided_slice_1/stack_1╛
8sequential_2/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_12/strided_slice_1/stack_2▓
0sequential_2/conv2d_transpose_12/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_12/stack:output:0?sequential_2/conv2d_transpose_12/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_12/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_2/conv2d_transpose_12/strided_slice_1Ц
@sequential_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:0 *
dtype02B
@sequential_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOpФ
1sequential_2/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_12/stack:output:0Hsequential_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:08sequential_2/batch_normalization_21/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         000*
paddingSAME*
strides
23
1sequential_2/conv2d_transpose_12/conv2d_transposeя
7sequential_2/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype029
7sequential_2/conv2d_transpose_12/BiasAdd/ReadVariableOpЦ
(sequential_2/conv2d_transpose_12/BiasAddBiasAdd:sequential_2/conv2d_transpose_12/conv2d_transpose:output:0?sequential_2/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         0002*
(sequential_2/conv2d_transpose_12/BiasAdd├
%sequential_2/conv2d_transpose_12/TanhTanh1sequential_2/conv2d_transpose_12/BiasAdd:output:0*
T0*/
_output_shapes
:         0002'
%sequential_2/conv2d_transpose_12/Tanhр
2sequential_2/batch_normalization_22/ReadVariableOpReadVariableOp;sequential_2_batch_normalization_22_readvariableop_resource*
_output_shapes
:0*
dtype024
2sequential_2/batch_normalization_22/ReadVariableOpц
4sequential_2/batch_normalization_22/ReadVariableOp_1ReadVariableOp=sequential_2_batch_normalization_22_readvariableop_1_resource*
_output_shapes
:0*
dtype026
4sequential_2/batch_normalization_22/ReadVariableOp_1У
Csequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_2_batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02E
Csequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOpЩ
Esequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_2_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02G
Esequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1┼
4sequential_2/batch_normalization_22/FusedBatchNormV3FusedBatchNormV3)sequential_2/conv2d_transpose_12/Tanh:y:0:sequential_2/batch_normalization_22/ReadVariableOp:value:0<sequential_2/batch_normalization_22/ReadVariableOp_1:value:0Ksequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0Msequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         000:0:0:0:0:*
epsilon%oГ:*
is_training( 26
4sequential_2/batch_normalization_22/FusedBatchNormV3╕
&sequential_2/conv2d_transpose_13/ShapeShape8sequential_2/batch_normalization_22/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_13/Shape╢
4sequential_2/conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_2/conv2d_transpose_13/strided_slice/stack║
6sequential_2/conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_13/strided_slice/stack_1║
6sequential_2/conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_13/strided_slice/stack_2и
.sequential_2/conv2d_transpose_13/strided_sliceStridedSlice/sequential_2/conv2d_transpose_13/Shape:output:0=sequential_2/conv2d_transpose_13/strided_slice/stack:output:0?sequential_2/conv2d_transpose_13/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/conv2d_transpose_13/strided_sliceЦ
(sequential_2/conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2*
(sequential_2/conv2d_transpose_13/stack/1Ц
(sequential_2/conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2*
(sequential_2/conv2d_transpose_13/stack/2Ц
(sequential_2/conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_2/conv2d_transpose_13/stack/3╪
&sequential_2/conv2d_transpose_13/stackPack7sequential_2/conv2d_transpose_13/strided_slice:output:01sequential_2/conv2d_transpose_13/stack/1:output:01sequential_2/conv2d_transpose_13/stack/2:output:01sequential_2/conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_13/stack║
6sequential_2/conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_2/conv2d_transpose_13/strided_slice_1/stack╛
8sequential_2/conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_13/strided_slice_1/stack_1╛
8sequential_2/conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_13/strided_slice_1/stack_2▓
0sequential_2/conv2d_transpose_13/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_13/stack:output:0?sequential_2/conv2d_transpose_13/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_13/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_2/conv2d_transpose_13/strided_slice_1Ц
@sequential_2/conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@0*
dtype02B
@sequential_2/conv2d_transpose_13/conv2d_transpose/ReadVariableOpФ
1sequential_2/conv2d_transpose_13/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_13/stack:output:0Hsequential_2/conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:08sequential_2/batch_normalization_22/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
23
1sequential_2/conv2d_transpose_13/conv2d_transposeя
7sequential_2/conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7sequential_2/conv2d_transpose_13/BiasAdd/ReadVariableOpЦ
(sequential_2/conv2d_transpose_13/BiasAddBiasAdd:sequential_2/conv2d_transpose_13/conv2d_transpose:output:0?sequential_2/conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2*
(sequential_2/conv2d_transpose_13/BiasAdd├
%sequential_2/conv2d_transpose_13/TanhTanh1sequential_2/conv2d_transpose_13/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2'
%sequential_2/conv2d_transpose_13/Tanhр
2sequential_2/batch_normalization_23/ReadVariableOpReadVariableOp;sequential_2_batch_normalization_23_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_2/batch_normalization_23/ReadVariableOpц
4sequential_2/batch_normalization_23/ReadVariableOp_1ReadVariableOp=sequential_2_batch_normalization_23_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4sequential_2/batch_normalization_23/ReadVariableOp_1У
Csequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_2_batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Csequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOpЩ
Esequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_2_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Esequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1┼
4sequential_2/batch_normalization_23/FusedBatchNormV3FusedBatchNormV3)sequential_2/conv2d_transpose_13/Tanh:y:0:sequential_2/batch_normalization_23/ReadVariableOp:value:0<sequential_2/batch_normalization_23/ReadVariableOp_1:value:0Ksequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0Msequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ``@:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4sequential_2/batch_normalization_23/FusedBatchNormV3╕
&sequential_2/conv2d_transpose_14/ShapeShape8sequential_2/batch_normalization_23/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_14/Shape╢
4sequential_2/conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_2/conv2d_transpose_14/strided_slice/stack║
6sequential_2/conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_14/strided_slice/stack_1║
6sequential_2/conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/conv2d_transpose_14/strided_slice/stack_2и
.sequential_2/conv2d_transpose_14/strided_sliceStridedSlice/sequential_2/conv2d_transpose_14/Shape:output:0=sequential_2/conv2d_transpose_14/strided_slice/stack:output:0?sequential_2/conv2d_transpose_14/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/conv2d_transpose_14/strided_sliceЦ
(sequential_2/conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2*
(sequential_2/conv2d_transpose_14/stack/1Ц
(sequential_2/conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2*
(sequential_2/conv2d_transpose_14/stack/2Ц
(sequential_2/conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_2/conv2d_transpose_14/stack/3╪
&sequential_2/conv2d_transpose_14/stackPack7sequential_2/conv2d_transpose_14/strided_slice:output:01sequential_2/conv2d_transpose_14/stack/1:output:01sequential_2/conv2d_transpose_14/stack/2:output:01sequential_2/conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_2/conv2d_transpose_14/stack║
6sequential_2/conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_2/conv2d_transpose_14/strided_slice_1/stack╛
8sequential_2/conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_14/strided_slice_1/stack_1╛
8sequential_2/conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/conv2d_transpose_14/strided_slice_1/stack_2▓
0sequential_2/conv2d_transpose_14/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_14/stack:output:0?sequential_2/conv2d_transpose_14/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_14/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_2/conv2d_transpose_14/strided_slice_1Ц
@sequential_2/conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02B
@sequential_2/conv2d_transpose_14/conv2d_transpose/ReadVariableOpФ
1sequential_2/conv2d_transpose_14/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_14/stack:output:0Hsequential_2/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:08sequential_2/batch_normalization_23/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         ``*
paddingSAME*
strides
23
1sequential_2/conv2d_transpose_14/conv2d_transposeя
7sequential_2/conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential_2/conv2d_transpose_14/BiasAdd/ReadVariableOpЦ
(sequential_2/conv2d_transpose_14/BiasAddBiasAdd:sequential_2/conv2d_transpose_14/conv2d_transpose:output:0?sequential_2/conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``2*
(sequential_2/conv2d_transpose_14/BiasAdd╠
(sequential_2/conv2d_transpose_14/SigmoidSigmoid1sequential_2/conv2d_transpose_14/BiasAdd:output:0*
T0*/
_output_shapes
:         ``2*
(sequential_2/conv2d_transpose_14/SigmoidП
IdentityIdentity,sequential_2/conv2d_transpose_14/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:         ``2

IdentityЗ
NoOpNoOpD^sequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpF^sequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_13^sequential_2/batch_normalization_16/ReadVariableOp5^sequential_2/batch_normalization_16/ReadVariableOp_1D^sequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOpF^sequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_13^sequential_2/batch_normalization_17/ReadVariableOp5^sequential_2/batch_normalization_17/ReadVariableOp_1D^sequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOpF^sequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_13^sequential_2/batch_normalization_18/ReadVariableOp5^sequential_2/batch_normalization_18/ReadVariableOp_1D^sequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOpF^sequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_13^sequential_2/batch_normalization_19/ReadVariableOp5^sequential_2/batch_normalization_19/ReadVariableOp_1D^sequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOpF^sequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_13^sequential_2/batch_normalization_20/ReadVariableOp5^sequential_2/batch_normalization_20/ReadVariableOp_1D^sequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOpF^sequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_13^sequential_2/batch_normalization_21/ReadVariableOp5^sequential_2/batch_normalization_21/ReadVariableOp_1D^sequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOpF^sequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_13^sequential_2/batch_normalization_22/ReadVariableOp5^sequential_2/batch_normalization_22/ReadVariableOp_1D^sequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOpF^sequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_13^sequential_2/batch_normalization_23/ReadVariableOp5^sequential_2/batch_normalization_23/ReadVariableOp_1.^sequential_2/conv2d_10/BiasAdd/ReadVariableOp-^sequential_2/conv2d_10/Conv2D/ReadVariableOp.^sequential_2/conv2d_11/BiasAdd/ReadVariableOp-^sequential_2/conv2d_11/Conv2D/ReadVariableOp-^sequential_2/conv2d_8/BiasAdd/ReadVariableOp,^sequential_2/conv2d_8/Conv2D/ReadVariableOp-^sequential_2/conv2d_9/BiasAdd/ReadVariableOp,^sequential_2/conv2d_9/Conv2D/ReadVariableOp8^sequential_2/conv2d_transpose_10/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_11/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_12/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_13/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_13/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_14/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_14/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2К
Csequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpCsequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2О
Esequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Esequential_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12h
2sequential_2/batch_normalization_16/ReadVariableOp2sequential_2/batch_normalization_16/ReadVariableOp2l
4sequential_2/batch_normalization_16/ReadVariableOp_14sequential_2/batch_normalization_16/ReadVariableOp_12К
Csequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOpCsequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2О
Esequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Esequential_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12h
2sequential_2/batch_normalization_17/ReadVariableOp2sequential_2/batch_normalization_17/ReadVariableOp2l
4sequential_2/batch_normalization_17/ReadVariableOp_14sequential_2/batch_normalization_17/ReadVariableOp_12К
Csequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOpCsequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp2О
Esequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Esequential_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12h
2sequential_2/batch_normalization_18/ReadVariableOp2sequential_2/batch_normalization_18/ReadVariableOp2l
4sequential_2/batch_normalization_18/ReadVariableOp_14sequential_2/batch_normalization_18/ReadVariableOp_12К
Csequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOpCsequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp2О
Esequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1Esequential_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12h
2sequential_2/batch_normalization_19/ReadVariableOp2sequential_2/batch_normalization_19/ReadVariableOp2l
4sequential_2/batch_normalization_19/ReadVariableOp_14sequential_2/batch_normalization_19/ReadVariableOp_12К
Csequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOpCsequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp2О
Esequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1Esequential_2/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12h
2sequential_2/batch_normalization_20/ReadVariableOp2sequential_2/batch_normalization_20/ReadVariableOp2l
4sequential_2/batch_normalization_20/ReadVariableOp_14sequential_2/batch_normalization_20/ReadVariableOp_12К
Csequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOpCsequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp2О
Esequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1Esequential_2/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12h
2sequential_2/batch_normalization_21/ReadVariableOp2sequential_2/batch_normalization_21/ReadVariableOp2l
4sequential_2/batch_normalization_21/ReadVariableOp_14sequential_2/batch_normalization_21/ReadVariableOp_12К
Csequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOpCsequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp2О
Esequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1Esequential_2/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12h
2sequential_2/batch_normalization_22/ReadVariableOp2sequential_2/batch_normalization_22/ReadVariableOp2l
4sequential_2/batch_normalization_22/ReadVariableOp_14sequential_2/batch_normalization_22/ReadVariableOp_12К
Csequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOpCsequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp2О
Esequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1Esequential_2/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12h
2sequential_2/batch_normalization_23/ReadVariableOp2sequential_2/batch_normalization_23/ReadVariableOp2l
4sequential_2/batch_normalization_23/ReadVariableOp_14sequential_2/batch_normalization_23/ReadVariableOp_12^
-sequential_2/conv2d_10/BiasAdd/ReadVariableOp-sequential_2/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_10/Conv2D/ReadVariableOp,sequential_2/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_11/BiasAdd/ReadVariableOp-sequential_2/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_11/Conv2D/ReadVariableOp,sequential_2/conv2d_11/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_8/BiasAdd/ReadVariableOp,sequential_2/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_8/Conv2D/ReadVariableOp+sequential_2/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_9/BiasAdd/ReadVariableOp,sequential_2/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_9/Conv2D/ReadVariableOp+sequential_2/conv2d_9/Conv2D/ReadVariableOp2r
7sequential_2/conv2d_transpose_10/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2Д
@sequential_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_11/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2Д
@sequential_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_12/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_12/BiasAdd/ReadVariableOp2Д
@sequential_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_13/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_13/BiasAdd/ReadVariableOp2Д
@sequential_2/conv2d_transpose_13/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_13/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_14/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_14/BiasAdd/ReadVariableOp2Д
@sequential_2/conv2d_transpose_14/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:X T
/
_output_shapes
:         ``
!
_user_specified_name	input_3
Ш
┴
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_142220

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           0:0:0:0:0:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146304

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Щv
Р
H__inference_sequential_2_layer_call_and_return_conditional_losses_145010
input_3)
conv2d_8_144892: 
conv2d_8_144894: +
batch_normalization_16_144897: +
batch_normalization_16_144899: +
batch_normalization_16_144901: +
batch_normalization_16_144903: )
conv2d_9_144906: 0
conv2d_9_144908:0+
batch_normalization_17_144911:0+
batch_normalization_17_144913:0+
batch_normalization_17_144915:0+
batch_normalization_17_144917:0*
conv2d_10_144920:0@
conv2d_10_144922:@+
batch_normalization_18_144925:@+
batch_normalization_18_144927:@+
batch_normalization_18_144929:@+
batch_normalization_18_144931:@*
conv2d_11_144934:@@
conv2d_11_144936:@+
batch_normalization_19_144939:@+
batch_normalization_19_144941:@+
batch_normalization_19_144943:@+
batch_normalization_19_144945:@4
conv2d_transpose_10_144948:@@(
conv2d_transpose_10_144950:@+
batch_normalization_20_144953:@+
batch_normalization_20_144955:@+
batch_normalization_20_144957:@+
batch_normalization_20_144959:@4
conv2d_transpose_11_144962: @(
conv2d_transpose_11_144964: +
batch_normalization_21_144967: +
batch_normalization_21_144969: +
batch_normalization_21_144971: +
batch_normalization_21_144973: 4
conv2d_transpose_12_144976:0 (
conv2d_transpose_12_144978:0+
batch_normalization_22_144981:0+
batch_normalization_22_144983:0+
batch_normalization_22_144985:0+
batch_normalization_22_144987:04
conv2d_transpose_13_144990:@0(
conv2d_transpose_13_144992:@+
batch_normalization_23_144995:@+
batch_normalization_23_144997:@+
batch_normalization_23_144999:@+
batch_normalization_23_145001:@4
conv2d_transpose_14_145004:@(
conv2d_transpose_14_145006:
identityИв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв.batch_normalization_18/StatefulPartitionedCallв.batch_normalization_19/StatefulPartitionedCallв.batch_normalization_20/StatefulPartitionedCallв.batch_normalization_21/StatefulPartitionedCallв.batch_normalization_22/StatefulPartitionedCallв.batch_normalization_23/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв+conv2d_transpose_10/StatefulPartitionedCallв+conv2d_transpose_11/StatefulPartitionedCallв+conv2d_transpose_12/StatefulPartitionedCallв+conv2d_transpose_13/StatefulPartitionedCallв+conv2d_transpose_14/StatefulPartitionedCallа
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_8_144892conv2d_8_144894*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1434942"
 conv2d_8/StatefulPartitionedCall╩
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_16_144897batch_normalization_16_144899batch_normalization_16_144901batch_normalization_16_144903*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_14351720
.batch_normalization_16/StatefulPartitionedCall╨
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0conv2d_9_144906conv2d_9_144908*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1435382"
 conv2d_9/StatefulPartitionedCall╩
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_17_144911batch_normalization_17_144913batch_normalization_17_144915batch_normalization_17_144917*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         0*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_14356120
.batch_normalization_17/StatefulPartitionedCall╒
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_10_144920conv2d_10_144922*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_1435822#
!conv2d_10/StatefulPartitionedCall╦
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_18_144925batch_normalization_18_144927batch_normalization_18_144929batch_normalization_18_144931*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_14360520
.batch_normalization_18/StatefulPartitionedCall╒
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0conv2d_11_144934conv2d_11_144936*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_1436262#
!conv2d_11/StatefulPartitionedCall╦
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_19_144939batch_normalization_19_144941batch_normalization_19_144943batch_normalization_19_144945*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_14364920
.batch_normalization_19/StatefulPartitionedCallЗ
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0conv2d_transpose_10_144948conv2d_transpose_10_144950*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1436822-
+conv2d_transpose_10/StatefulPartitionedCall╒
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0batch_normalization_20_144953batch_normalization_20_144955batch_normalization_20_144957batch_normalization_20_144959*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_14370520
.batch_normalization_20/StatefulPartitionedCallЗ
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0conv2d_transpose_11_144962conv2d_transpose_11_144964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1437382-
+conv2d_transpose_11/StatefulPartitionedCall╒
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0batch_normalization_21_144967batch_normalization_21_144969batch_normalization_21_144971batch_normalization_21_144973*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_14376120
.batch_normalization_21/StatefulPartitionedCallЗ
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0conv2d_transpose_12_144976conv2d_transpose_12_144978*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1437942-
+conv2d_transpose_12/StatefulPartitionedCall╒
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0batch_normalization_22_144981batch_normalization_22_144983batch_normalization_22_144985batch_normalization_22_144987*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         000*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_14381720
.batch_normalization_22/StatefulPartitionedCallЗ
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv2d_transpose_13_144990conv2d_transpose_13_144992*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1438502-
+conv2d_transpose_13/StatefulPartitionedCall╒
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0batch_normalization_23_144995batch_normalization_23_144997batch_normalization_23_144999batch_normalization_23_145001*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_14387320
.batch_normalization_23/StatefulPartitionedCallЗ
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv2d_transpose_14_145004conv2d_transpose_14_145006*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1439062-
+conv2d_transpose_14/StatefulPartitionedCallЧ
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ``2

Identity╩
NoOpNoOp/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall/^batch_normalization_20/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*У
_input_shapesБ
:         ``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall:X T
/
_output_shapes
:         ``
!
_user_specified_name	input_3
ф
Э
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146612

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ф
Э
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147012

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           0:0:0:0:0:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Й
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           02

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           0: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147048

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         000:0:0:0:0:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         0002

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         000: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
Ў%
Ь
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_146752

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+                            2
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+                            2

IdentityЙ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ы
Э
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_143817

inputs%
readvariableop_resource:0'
readvariableop_1_resource:06
(fusedbatchnormv3_readvariableop_resource:08
*fusedbatchnormv3_readvariableop_1_resource:0
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         000:0:0:0:0:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         0002

Identity╕
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         000: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         000
 
_user_specified_nameinputs
¤
╥
7__inference_batch_normalization_21_layer_call_fn_146905

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_1437612
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
√
й
4__inference_conv2d_transpose_13_layer_call_fn_147185

inputs!
unknown:@0
	unknown_0:@
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1432122
StatefulPartitionedCallХ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           0: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           0
 
_user_specified_nameinputs"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╞
serving_default▓
C
input_38
serving_default_input_3:0         ``O
conv2d_transpose_148
StatefulPartitionedCall:0         ``tensorflow/serving/predict:╨╞
О
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

layer_with_weights-9

layer-9
layer_with_weights-10
layer-10
layer_with_weights-11
layer-11
layer_with_weights-12
layer-12
layer_with_weights-13
layer-13
layer_with_weights-14
layer-14
layer_with_weights-15
layer-15
layer_with_weights-16
layer-16
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+├&call_and_return_all_conditional_losses
─_default_save_signature
┼__call__"
_tf_keras_sequential
╜

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+╞&call_and_return_all_conditional_losses
╟__call__"
_tf_keras_layer
ь
axis
	gamma
 beta
!moving_mean
"moving_variance
#regularization_losses
$trainable_variables
%	variables
&	keras_api
+╚&call_and_return_all_conditional_losses
╔__call__"
_tf_keras_layer
╜

'kernel
(bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
+╩&call_and_return_all_conditional_losses
╦__call__"
_tf_keras_layer
ь
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2regularization_losses
3trainable_variables
4	variables
5	keras_api
+╠&call_and_return_all_conditional_losses
═__call__"
_tf_keras_layer
╜

6kernel
7bias
8regularization_losses
9trainable_variables
:	variables
;	keras_api
+╬&call_and_return_all_conditional_losses
╧__call__"
_tf_keras_layer
ь
<axis
	=gamma
>beta
?moving_mean
@moving_variance
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
+╨&call_and_return_all_conditional_losses
╤__call__"
_tf_keras_layer
╜

Ekernel
Fbias
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
+╥&call_and_return_all_conditional_losses
╙__call__"
_tf_keras_layer
ь
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
+╘&call_and_return_all_conditional_losses
╒__call__"
_tf_keras_layer
╜

Tkernel
Ubias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
+╓&call_and_return_all_conditional_losses
╫__call__"
_tf_keras_layer
ь
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_regularization_losses
`trainable_variables
a	variables
b	keras_api
+╪&call_and_return_all_conditional_losses
┘__call__"
_tf_keras_layer
╜

ckernel
dbias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
+┌&call_and_return_all_conditional_losses
█__call__"
_tf_keras_layer
ь
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
nregularization_losses
otrainable_variables
p	variables
q	keras_api
+▄&call_and_return_all_conditional_losses
▌__call__"
_tf_keras_layer
╜

rkernel
sbias
tregularization_losses
utrainable_variables
v	variables
w	keras_api
+▐&call_and_return_all_conditional_losses
▀__call__"
_tf_keras_layer
э
xaxis
	ygamma
zbeta
{moving_mean
|moving_variance
}regularization_losses
~trainable_variables
	variables
А	keras_api
+р&call_and_return_all_conditional_losses
с__call__"
_tf_keras_layer
├
Бkernel
	Вbias
Гregularization_losses
Дtrainable_variables
Е	variables
Ж	keras_api
+т&call_and_return_all_conditional_losses
у__call__"
_tf_keras_layer
ї
	Зaxis

Иgamma
	Йbeta
Кmoving_mean
Лmoving_variance
Мregularization_losses
Нtrainable_variables
О	variables
П	keras_api
+ф&call_and_return_all_conditional_losses
х__call__"
_tf_keras_layer
├
Рkernel
	Сbias
Тregularization_losses
Уtrainable_variables
Ф	variables
Х	keras_api
+ц&call_and_return_all_conditional_losses
ч__call__"
_tf_keras_layer
М
	Цiter
Чbeta_1
Шbeta_2

Щdecay
Ъlearning_ratem mАmБ mВ'mГ(mД.mЕ/mЖ6mЗ7mИ=mЙ>mКEmЛFmМLmНMmОTmПUmР[mС\mТcmУdmФjmХkmЦrmЧsmШymЩzmЪ	БmЫ	ВmЬ	ИmЭ	ЙmЮ	РmЯ	Сmаvбvвvг vд'vе(vж.vз/vи6vй7vк=vл>vмEvнFvоLvпMv░Tv▒Uv▓[v│\v┤cv╡dv╢jv╖kv╕rv╣sv║yv╗zv╝	Бv╜	Вv╛	Иv┐	Йv└	Рv┴	Сv┬"
	optimizer
 "
trackable_list_wrapper
м
0
1
2
 3
'4
(5
.6
/7
68
79
=10
>11
E12
F13
L14
M15
T16
U17
[18
\19
c20
d21
j22
k23
r24
s25
y26
z27
Б28
В29
И30
Й31
Р32
С33"
trackable_list_wrapper
о
0
1
2
 3
!4
"5
'6
(7
.8
/9
010
111
612
713
=14
>15
?16
@17
E18
F19
L20
M21
N22
O23
T24
U25
[26
\27
]28
^29
c30
d31
j32
k33
l34
m35
r36
s37
y38
z39
{40
|41
Б42
В43
И44
Й45
К46
Л47
Р48
С49"
trackable_list_wrapper
╙
Ыlayers
 Ьlayer_regularization_losses
regularization_losses
Эmetrics
trainable_variables
Юnon_trainable_variables
	variables
Яlayer_metrics
┼__call__
─_default_save_signature
+├&call_and_return_all_conditional_losses
'├"call_and_return_conditional_losses"
_generic_user_object
-
шserving_default"
signature_map
):' 2conv2d_8/kernel
: 2conv2d_8/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
╡
аlayers
 бlayer_regularization_losses
вmetrics
regularization_losses
trainable_variables
гnon_trainable_variables
	variables
дlayer_metrics
╟__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_16/gamma
):' 2batch_normalization_16/beta
2:0  (2"batch_normalization_16/moving_mean
6:4  (2&batch_normalization_16/moving_variance
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
<
0
 1
!2
"3"
trackable_list_wrapper
╡
еlayers
 жlayer_regularization_losses
зmetrics
#regularization_losses
$trainable_variables
иnon_trainable_variables
%	variables
йlayer_metrics
╔__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
):' 02conv2d_9/kernel
:02conv2d_9/bias
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
╡
кlayers
 лlayer_regularization_losses
мmetrics
)regularization_losses
*trainable_variables
нnon_trainable_variables
+	variables
оlayer_metrics
╦__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(02batch_normalization_17/gamma
):'02batch_normalization_17/beta
2:00 (2"batch_normalization_17/moving_mean
6:40 (2&batch_normalization_17/moving_variance
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
<
.0
/1
02
13"
trackable_list_wrapper
╡
пlayers
 ░layer_regularization_losses
▒metrics
2regularization_losses
3trainable_variables
▓non_trainable_variables
4	variables
│layer_metrics
═__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
*:(0@2conv2d_10/kernel
:@2conv2d_10/bias
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
╡
┤layers
 ╡layer_regularization_losses
╢metrics
8regularization_losses
9trainable_variables
╖non_trainable_variables
:	variables
╕layer_metrics
╧__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_18/gamma
):'@2batch_normalization_18/beta
2:0@ (2"batch_normalization_18/moving_mean
6:4@ (2&batch_normalization_18/moving_variance
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
<
=0
>1
?2
@3"
trackable_list_wrapper
╡
╣layers
 ║layer_regularization_losses
╗metrics
Aregularization_losses
Btrainable_variables
╝non_trainable_variables
C	variables
╜layer_metrics
╤__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_11/kernel
:@2conv2d_11/bias
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
╡
╛layers
 ┐layer_regularization_losses
└metrics
Gregularization_losses
Htrainable_variables
┴non_trainable_variables
I	variables
┬layer_metrics
╙__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_19/gamma
):'@2batch_normalization_19/beta
2:0@ (2"batch_normalization_19/moving_mean
6:4@ (2&batch_normalization_19/moving_variance
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
<
L0
M1
N2
O3"
trackable_list_wrapper
╡
├layers
 ─layer_regularization_losses
┼metrics
Pregularization_losses
Qtrainable_variables
╞non_trainable_variables
R	variables
╟layer_metrics
╒__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
4:2@@2conv2d_transpose_10/kernel
&:$@2conv2d_transpose_10/bias
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
╡
╚layers
 ╔layer_regularization_losses
╩metrics
Vregularization_losses
Wtrainable_variables
╦non_trainable_variables
X	variables
╠layer_metrics
╫__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_20/gamma
):'@2batch_normalization_20/beta
2:0@ (2"batch_normalization_20/moving_mean
6:4@ (2&batch_normalization_20/moving_variance
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
<
[0
\1
]2
^3"
trackable_list_wrapper
╡
═layers
 ╬layer_regularization_losses
╧metrics
_regularization_losses
`trainable_variables
╨non_trainable_variables
a	variables
╤layer_metrics
┘__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
4:2 @2conv2d_transpose_11/kernel
&:$ 2conv2d_transpose_11/bias
 "
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
╡
╥layers
 ╙layer_regularization_losses
╘metrics
eregularization_losses
ftrainable_variables
╒non_trainable_variables
g	variables
╓layer_metrics
█__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_21/gamma
):' 2batch_normalization_21/beta
2:0  (2"batch_normalization_21/moving_mean
6:4  (2&batch_normalization_21/moving_variance
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
<
j0
k1
l2
m3"
trackable_list_wrapper
╡
╫layers
 ╪layer_regularization_losses
┘metrics
nregularization_losses
otrainable_variables
┌non_trainable_variables
p	variables
█layer_metrics
▌__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
4:20 2conv2d_transpose_12/kernel
&:$02conv2d_transpose_12/bias
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
╡
▄layers
 ▌layer_regularization_losses
▐metrics
tregularization_losses
utrainable_variables
▀non_trainable_variables
v	variables
рlayer_metrics
▀__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(02batch_normalization_22/gamma
):'02batch_normalization_22/beta
2:00 (2"batch_normalization_22/moving_mean
6:40 (2&batch_normalization_22/moving_variance
 "
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
<
y0
z1
{2
|3"
trackable_list_wrapper
╡
сlayers
 тlayer_regularization_losses
уmetrics
}regularization_losses
~trainable_variables
фnon_trainable_variables
	variables
хlayer_metrics
с__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
4:2@02conv2d_transpose_13/kernel
&:$@2conv2d_transpose_13/bias
 "
trackable_list_wrapper
0
Б0
В1"
trackable_list_wrapper
0
Б0
В1"
trackable_list_wrapper
╕
цlayers
 чlayer_regularization_losses
шmetrics
Гregularization_losses
Дtrainable_variables
щnon_trainable_variables
Е	variables
ъlayer_metrics
у__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_23/gamma
):'@2batch_normalization_23/beta
2:0@ (2"batch_normalization_23/moving_mean
6:4@ (2&batch_normalization_23/moving_variance
 "
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
@
И0
Й1
К2
Л3"
trackable_list_wrapper
╕
ыlayers
 ьlayer_regularization_losses
эmetrics
Мregularization_losses
Нtrainable_variables
юnon_trainable_variables
О	variables
яlayer_metrics
х__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
4:2@2conv2d_transpose_14/kernel
&:$2conv2d_transpose_14/bias
 "
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
╕
Ёlayers
 ёlayer_regularization_losses
Єmetrics
Тregularization_losses
Уtrainable_variables
єnon_trainable_variables
Ф	variables
Їlayer_metrics
ч__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
Ю
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
16"
trackable_list_wrapper
 "
trackable_list_wrapper
0
ї0
Ў1"
trackable_list_wrapper
Ш
!0
"1
02
13
?4
@5
N6
O7
]8
^9
l10
m11
{12
|13
К14
Л15"
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
.
!0
"1"
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
.
00
11"
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
.
?0
@1"
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
.
N0
O1"
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
.
]0
^1"
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
.
l0
m1"
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
.
{0
|1"
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
0
К0
Л1"
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

ўtotal

°count
∙	variables
·	keras_api"
_tf_keras_metric
R

√total

№count
¤	variables
■	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
ў0
°1"
trackable_list_wrapper
.
∙	variables"
_generic_user_object
:  (2total
:  (2count
0
√0
№1"
trackable_list_wrapper
.
¤	variables"
_generic_user_object
.:, 2Adam/conv2d_8/kernel/m
 : 2Adam/conv2d_8/bias/m
/:- 2#Adam/batch_normalization_16/gamma/m
.:, 2"Adam/batch_normalization_16/beta/m
.:, 02Adam/conv2d_9/kernel/m
 :02Adam/conv2d_9/bias/m
/:-02#Adam/batch_normalization_17/gamma/m
.:,02"Adam/batch_normalization_17/beta/m
/:-0@2Adam/conv2d_10/kernel/m
!:@2Adam/conv2d_10/bias/m
/:-@2#Adam/batch_normalization_18/gamma/m
.:,@2"Adam/batch_normalization_18/beta/m
/:-@@2Adam/conv2d_11/kernel/m
!:@2Adam/conv2d_11/bias/m
/:-@2#Adam/batch_normalization_19/gamma/m
.:,@2"Adam/batch_normalization_19/beta/m
9:7@@2!Adam/conv2d_transpose_10/kernel/m
+:)@2Adam/conv2d_transpose_10/bias/m
/:-@2#Adam/batch_normalization_20/gamma/m
.:,@2"Adam/batch_normalization_20/beta/m
9:7 @2!Adam/conv2d_transpose_11/kernel/m
+:) 2Adam/conv2d_transpose_11/bias/m
/:- 2#Adam/batch_normalization_21/gamma/m
.:, 2"Adam/batch_normalization_21/beta/m
9:70 2!Adam/conv2d_transpose_12/kernel/m
+:)02Adam/conv2d_transpose_12/bias/m
/:-02#Adam/batch_normalization_22/gamma/m
.:,02"Adam/batch_normalization_22/beta/m
9:7@02!Adam/conv2d_transpose_13/kernel/m
+:)@2Adam/conv2d_transpose_13/bias/m
/:-@2#Adam/batch_normalization_23/gamma/m
.:,@2"Adam/batch_normalization_23/beta/m
9:7@2!Adam/conv2d_transpose_14/kernel/m
+:)2Adam/conv2d_transpose_14/bias/m
.:, 2Adam/conv2d_8/kernel/v
 : 2Adam/conv2d_8/bias/v
/:- 2#Adam/batch_normalization_16/gamma/v
.:, 2"Adam/batch_normalization_16/beta/v
.:, 02Adam/conv2d_9/kernel/v
 :02Adam/conv2d_9/bias/v
/:-02#Adam/batch_normalization_17/gamma/v
.:,02"Adam/batch_normalization_17/beta/v
/:-0@2Adam/conv2d_10/kernel/v
!:@2Adam/conv2d_10/bias/v
/:-@2#Adam/batch_normalization_18/gamma/v
.:,@2"Adam/batch_normalization_18/beta/v
/:-@@2Adam/conv2d_11/kernel/v
!:@2Adam/conv2d_11/bias/v
/:-@2#Adam/batch_normalization_19/gamma/v
.:,@2"Adam/batch_normalization_19/beta/v
9:7@@2!Adam/conv2d_transpose_10/kernel/v
+:)@2Adam/conv2d_transpose_10/bias/v
/:-@2#Adam/batch_normalization_20/gamma/v
.:,@2"Adam/batch_normalization_20/beta/v
9:7 @2!Adam/conv2d_transpose_11/kernel/v
+:) 2Adam/conv2d_transpose_11/bias/v
/:- 2#Adam/batch_normalization_21/gamma/v
.:, 2"Adam/batch_normalization_21/beta/v
9:70 2!Adam/conv2d_transpose_12/kernel/v
+:)02Adam/conv2d_transpose_12/bias/v
/:-02#Adam/batch_normalization_22/gamma/v
.:,02"Adam/batch_normalization_22/beta/v
9:7@02!Adam/conv2d_transpose_13/kernel/v
+:)@2Adam/conv2d_transpose_13/bias/v
/:-@2#Adam/batch_normalization_23/gamma/v
.:,@2"Adam/batch_normalization_23/beta/v
9:7@2!Adam/conv2d_transpose_14/kernel/v
+:)2Adam/conv2d_transpose_14/bias/v
ю2ы
H__inference_sequential_2_layer_call_and_return_conditional_losses_145488
H__inference_sequential_2_layer_call_and_return_conditional_losses_145732
H__inference_sequential_2_layer_call_and_return_conditional_losses_145010
H__inference_sequential_2_layer_call_and_return_conditional_losses_145131└
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
╠B╔
!__inference__wrapped_model_142028input_3"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
В2 
-__inference_sequential_2_layer_call_fn_144016
-__inference_sequential_2_layer_call_fn_145837
-__inference_sequential_2_layer_call_fn_145942
-__inference_sequential_2_layer_call_fn_144889└
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
ю2ы
D__inference_conv2d_8_layer_call_and_return_conditional_losses_145953в
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
╙2╨
)__inference_conv2d_8_layer_call_fn_145962в
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
К2З
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_145980
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_145998
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_146016
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_146034┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_16_layer_call_fn_146047
7__inference_batch_normalization_16_layer_call_fn_146060
7__inference_batch_normalization_16_layer_call_fn_146073
7__inference_batch_normalization_16_layer_call_fn_146086┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
ю2ы
D__inference_conv2d_9_layer_call_and_return_conditional_losses_146097в
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
╙2╨
)__inference_conv2d_9_layer_call_fn_146106в
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
К2З
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146124
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146142
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146160
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146178┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_17_layer_call_fn_146191
7__inference_batch_normalization_17_layer_call_fn_146204
7__inference_batch_normalization_17_layer_call_fn_146217
7__inference_batch_normalization_17_layer_call_fn_146230┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
я2ь
E__inference_conv2d_10_layer_call_and_return_conditional_losses_146241в
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
╘2╤
*__inference_conv2d_10_layer_call_fn_146250в
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
К2З
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146268
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146286
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146304
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146322┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_18_layer_call_fn_146335
7__inference_batch_normalization_18_layer_call_fn_146348
7__inference_batch_normalization_18_layer_call_fn_146361
7__inference_batch_normalization_18_layer_call_fn_146374┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
я2ь
E__inference_conv2d_11_layer_call_and_return_conditional_losses_146385в
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
╘2╤
*__inference_conv2d_11_layer_call_fn_146394в
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
К2З
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146412
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146430
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146448
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146466┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_19_layer_call_fn_146479
7__inference_batch_normalization_19_layer_call_fn_146492
7__inference_batch_normalization_19_layer_call_fn_146505
7__inference_batch_normalization_19_layer_call_fn_146518┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╩2╟
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_146552
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_146576в
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
Ф2С
4__inference_conv2d_transpose_10_layer_call_fn_146585
4__inference_conv2d_transpose_10_layer_call_fn_146594в
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
К2З
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146612
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146630
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146648
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146666┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_20_layer_call_fn_146679
7__inference_batch_normalization_20_layer_call_fn_146692
7__inference_batch_normalization_20_layer_call_fn_146705
7__inference_batch_normalization_20_layer_call_fn_146718┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╩2╟
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_146752
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_146776в
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
Ф2С
4__inference_conv2d_transpose_11_layer_call_fn_146785
4__inference_conv2d_transpose_11_layer_call_fn_146794в
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
К2З
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146812
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146830
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146848
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146866┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_21_layer_call_fn_146879
7__inference_batch_normalization_21_layer_call_fn_146892
7__inference_batch_normalization_21_layer_call_fn_146905
7__inference_batch_normalization_21_layer_call_fn_146918┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╩2╟
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_146952
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_146976в
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
Ф2С
4__inference_conv2d_transpose_12_layer_call_fn_146985
4__inference_conv2d_transpose_12_layer_call_fn_146994в
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
К2З
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147012
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147030
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147048
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147066┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_22_layer_call_fn_147079
7__inference_batch_normalization_22_layer_call_fn_147092
7__inference_batch_normalization_22_layer_call_fn_147105
7__inference_batch_normalization_22_layer_call_fn_147118┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╩2╟
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_147152
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_147176в
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
Ф2С
4__inference_conv2d_transpose_13_layer_call_fn_147185
4__inference_conv2d_transpose_13_layer_call_fn_147194в
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
К2З
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147212
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147230
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147248
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147266┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
7__inference_batch_normalization_23_layer_call_fn_147279
7__inference_batch_normalization_23_layer_call_fn_147292
7__inference_batch_normalization_23_layer_call_fn_147305
7__inference_batch_normalization_23_layer_call_fn_147318┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╩2╟
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_147352
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_147376в
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
Ф2С
4__inference_conv2d_transpose_14_layer_call_fn_147385
4__inference_conv2d_transpose_14_layer_call_fn_147394в
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
╦B╚
$__inference_signature_wrapper_145244input_3"Ф
Н▓Й
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
annotationsк *
 я
!__inference__wrapped_model_142028╔: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС8в5
.в+
)К&
input_3         ``
к "QкN
L
conv2d_transpose_145К2
conv2d_transpose_14         ``э
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_145980Ц !"MвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ э
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_145998Ц !"MвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ ╚
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_146016r !";в8
1в.
(К%
inputs         00 
p 
к "-в*
#К 
0         00 
Ъ ╚
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_146034r !";в8
1в.
(К%
inputs         00 
p
к "-в*
#К 
0         00 
Ъ ┼
7__inference_batch_normalization_16_layer_call_fn_146047Й !"MвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            ┼
7__inference_batch_normalization_16_layer_call_fn_146060Й !"MвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            а
7__inference_batch_normalization_16_layer_call_fn_146073e !";в8
1в.
(К%
inputs         00 
p 
к " К         00 а
7__inference_batch_normalization_16_layer_call_fn_146086e !";в8
1в.
(К%
inputs         00 
p
к " К         00 э
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146124Ц./01MвJ
Cв@
:К7
inputs+                           0
p 
к "?в<
5К2
0+                           0
Ъ э
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146142Ц./01MвJ
Cв@
:К7
inputs+                           0
p
к "?в<
5К2
0+                           0
Ъ ╚
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146160r./01;в8
1в.
(К%
inputs         0
p 
к "-в*
#К 
0         0
Ъ ╚
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_146178r./01;в8
1в.
(К%
inputs         0
p
к "-в*
#К 
0         0
Ъ ┼
7__inference_batch_normalization_17_layer_call_fn_146191Й./01MвJ
Cв@
:К7
inputs+                           0
p 
к "2К/+                           0┼
7__inference_batch_normalization_17_layer_call_fn_146204Й./01MвJ
Cв@
:К7
inputs+                           0
p
к "2К/+                           0а
7__inference_batch_normalization_17_layer_call_fn_146217e./01;в8
1в.
(К%
inputs         0
p 
к " К         0а
7__inference_batch_normalization_17_layer_call_fn_146230e./01;в8
1в.
(К%
inputs         0
p
к " К         0э
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146268Ц=>?@MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ э
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146286Ц=>?@MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╚
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146304r=>?@;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ╚
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_146322r=>?@;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ┼
7__inference_batch_normalization_18_layer_call_fn_146335Й=>?@MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @┼
7__inference_batch_normalization_18_layer_call_fn_146348Й=>?@MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @а
7__inference_batch_normalization_18_layer_call_fn_146361e=>?@;в8
1в.
(К%
inputs         @
p 
к " К         @а
7__inference_batch_normalization_18_layer_call_fn_146374e=>?@;в8
1в.
(К%
inputs         @
p
к " К         @э
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146412ЦLMNOMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ э
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146430ЦLMNOMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╚
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146448rLMNO;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ╚
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_146466rLMNO;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ┼
7__inference_batch_normalization_19_layer_call_fn_146479ЙLMNOMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @┼
7__inference_batch_normalization_19_layer_call_fn_146492ЙLMNOMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @а
7__inference_batch_normalization_19_layer_call_fn_146505eLMNO;в8
1в.
(К%
inputs         @
p 
к " К         @а
7__inference_batch_normalization_19_layer_call_fn_146518eLMNO;в8
1в.
(К%
inputs         @
p
к " К         @э
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146612Ц[\]^MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ э
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146630Ц[\]^MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╚
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146648r[\]^;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ╚
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_146666r[\]^;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ┼
7__inference_batch_normalization_20_layer_call_fn_146679Й[\]^MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @┼
7__inference_batch_normalization_20_layer_call_fn_146692Й[\]^MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @а
7__inference_batch_normalization_20_layer_call_fn_146705e[\]^;в8
1в.
(К%
inputs         @
p 
к " К         @а
7__inference_batch_normalization_20_layer_call_fn_146718e[\]^;в8
1в.
(К%
inputs         @
p
к " К         @э
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146812ЦjklmMвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ э
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146830ЦjklmMвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ ╚
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146848rjklm;в8
1в.
(К%
inputs          
p 
к "-в*
#К 
0          
Ъ ╚
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_146866rjklm;в8
1в.
(К%
inputs          
p
к "-в*
#К 
0          
Ъ ┼
7__inference_batch_normalization_21_layer_call_fn_146879ЙjklmMвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            ┼
7__inference_batch_normalization_21_layer_call_fn_146892ЙjklmMвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            а
7__inference_batch_normalization_21_layer_call_fn_146905ejklm;в8
1в.
(К%
inputs          
p 
к " К          а
7__inference_batch_normalization_21_layer_call_fn_146918ejklm;в8
1в.
(К%
inputs          
p
к " К          э
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147012Цyz{|MвJ
Cв@
:К7
inputs+                           0
p 
к "?в<
5К2
0+                           0
Ъ э
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147030Цyz{|MвJ
Cв@
:К7
inputs+                           0
p
к "?в<
5К2
0+                           0
Ъ ╚
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147048ryz{|;в8
1в.
(К%
inputs         000
p 
к "-в*
#К 
0         000
Ъ ╚
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_147066ryz{|;в8
1в.
(К%
inputs         000
p
к "-в*
#К 
0         000
Ъ ┼
7__inference_batch_normalization_22_layer_call_fn_147079Йyz{|MвJ
Cв@
:К7
inputs+                           0
p 
к "2К/+                           0┼
7__inference_batch_normalization_22_layer_call_fn_147092Йyz{|MвJ
Cв@
:К7
inputs+                           0
p
к "2К/+                           0а
7__inference_batch_normalization_22_layer_call_fn_147105eyz{|;в8
1в.
(К%
inputs         000
p 
к " К         000а
7__inference_batch_normalization_22_layer_call_fn_147118eyz{|;в8
1в.
(К%
inputs         000
p
к " К         000ё
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147212ЪИЙКЛMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ё
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147230ЪИЙКЛMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╠
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147248vИЙКЛ;в8
1в.
(К%
inputs         ``@
p 
к "-в*
#К 
0         ``@
Ъ ╠
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_147266vИЙКЛ;в8
1в.
(К%
inputs         ``@
p
к "-в*
#К 
0         ``@
Ъ ╔
7__inference_batch_normalization_23_layer_call_fn_147279НИЙКЛMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╔
7__inference_batch_normalization_23_layer_call_fn_147292НИЙКЛMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @д
7__inference_batch_normalization_23_layer_call_fn_147305iИЙКЛ;в8
1в.
(К%
inputs         ``@
p 
к " К         ``@д
7__inference_batch_normalization_23_layer_call_fn_147318iИЙКЛ;в8
1в.
(К%
inputs         ``@
p
к " К         ``@╡
E__inference_conv2d_10_layer_call_and_return_conditional_losses_146241l677в4
-в*
(К%
inputs         0
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_10_layer_call_fn_146250_677в4
-в*
(К%
inputs         0
к " К         @╡
E__inference_conv2d_11_layer_call_and_return_conditional_losses_146385lEF7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_11_layer_call_fn_146394_EF7в4
-в*
(К%
inputs         @
к " К         @┤
D__inference_conv2d_8_layer_call_and_return_conditional_losses_145953l7в4
-в*
(К%
inputs         ``
к "-в*
#К 
0         00 
Ъ М
)__inference_conv2d_8_layer_call_fn_145962_7в4
-в*
(К%
inputs         ``
к " К         00 ┤
D__inference_conv2d_9_layer_call_and_return_conditional_losses_146097l'(7в4
-в*
(К%
inputs         00 
к "-в*
#К 
0         0
Ъ М
)__inference_conv2d_9_layer_call_fn_146106_'(7в4
-в*
(К%
inputs         00 
к " К         0ф
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_146552РTUIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ ┐
O__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_146576lTU7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ ╝
4__inference_conv2d_transpose_10_layer_call_fn_146585ГTUIвF
?в<
:К7
inputs+                           @
к "2К/+                           @Ч
4__inference_conv2d_transpose_10_layer_call_fn_146594_TU7в4
-в*
(К%
inputs         @
к " К         @ф
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_146752РcdIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                            
Ъ ┐
O__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_146776lcd7в4
-в*
(К%
inputs         @
к "-в*
#К 
0          
Ъ ╝
4__inference_conv2d_transpose_11_layer_call_fn_146785ГcdIвF
?в<
:К7
inputs+                           @
к "2К/+                            Ч
4__inference_conv2d_transpose_11_layer_call_fn_146794_cd7в4
-в*
(К%
inputs         @
к " К          ф
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_146952РrsIвF
?в<
:К7
inputs+                            
к "?в<
5К2
0+                           0
Ъ ┐
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_146976lrs7в4
-в*
(К%
inputs          
к "-в*
#К 
0         000
Ъ ╝
4__inference_conv2d_transpose_12_layer_call_fn_146985ГrsIвF
?в<
:К7
inputs+                            
к "2К/+                           0Ч
4__inference_conv2d_transpose_12_layer_call_fn_146994_rs7в4
-в*
(К%
inputs          
к " К         000ц
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_147152ТБВIвF
?в<
:К7
inputs+                           0
к "?в<
5К2
0+                           @
Ъ ┴
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_147176nБВ7в4
-в*
(К%
inputs         000
к "-в*
#К 
0         ``@
Ъ ╛
4__inference_conv2d_transpose_13_layer_call_fn_147185ЕБВIвF
?в<
:К7
inputs+                           0
к "2К/+                           @Щ
4__inference_conv2d_transpose_13_layer_call_fn_147194aБВ7в4
-в*
(К%
inputs         000
к " К         ``@ц
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_147352ТРСIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           
Ъ ┴
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_147376nРС7в4
-в*
(К%
inputs         ``@
к "-в*
#К 
0         ``
Ъ ╛
4__inference_conv2d_transpose_14_layer_call_fn_147385ЕРСIвF
?в<
:К7
inputs+                           @
к "2К/+                           Щ
4__inference_conv2d_transpose_14_layer_call_fn_147394aРС7в4
-в*
(К%
inputs         ``@
к " К         ``·
H__inference_sequential_2_layer_call_and_return_conditional_losses_145010н: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС@в=
6в3
)К&
input_3         ``
p 

 
к "-в*
#К 
0         ``
Ъ ·
H__inference_sequential_2_layer_call_and_return_conditional_losses_145131н: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС@в=
6в3
)К&
input_3         ``
p

 
к "-в*
#К 
0         ``
Ъ ∙
H__inference_sequential_2_layer_call_and_return_conditional_losses_145488м: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС?в<
5в2
(К%
inputs         ``
p 

 
к "-в*
#К 
0         ``
Ъ ∙
H__inference_sequential_2_layer_call_and_return_conditional_losses_145732м: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС?в<
5в2
(К%
inputs         ``
p

 
к "-в*
#К 
0         ``
Ъ ╥
-__inference_sequential_2_layer_call_fn_144016а: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС@в=
6в3
)К&
input_3         ``
p 

 
к " К         ``╥
-__inference_sequential_2_layer_call_fn_144889а: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС@в=
6в3
)К&
input_3         ``
p

 
к " К         ``╤
-__inference_sequential_2_layer_call_fn_145837Я: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС?в<
5в2
(К%
inputs         ``
p 

 
к " К         ``╤
-__inference_sequential_2_layer_call_fn_145942Я: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРС?в<
5в2
(К%
inputs         ``
p

 
к " К         ``¤
$__inference_signature_wrapper_145244╘: !"'(./0167=>?@EFLMNOTU[\]^cdjklmrsyz{|БВИЙКЛРСCв@
в 
9к6
4
input_3)К&
input_3         ``"QкN
L
conv2d_transpose_145К2
conv2d_transpose_14         ``