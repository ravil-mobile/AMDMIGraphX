
2
0Placeholder*
dtype0*
shape
:
2
1Placeholder*
dtype0*
shape
:
7
assert_less_equal/LessEqual	LessEqual01*
T0
L
assert_less_equal/ConstConst*
dtype0*
valueB"       
o
assert_less_equal/AllAllassert_less_equal/LessEqualassert_less_equal/Const*

Tidx0*
	keep_dims( 
r
assert_less_equal/Assert/ConstConst*
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
S
 assert_less_equal/Assert/Const_1Const*
dtype0*
valueB B
x (0:0) = 
S
 assert_less_equal/Assert/Const_2Const*
dtype0*
valueB B
y (1:0) = 
�
$assert_less_equal/Assert/AssertGuardIfassert_less_equal/Allassert_less_equal/All01*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(* 
_read_only_resource_inputs
 *@
else_branch1R/
-assert_less_equal_Assert_AssertGuard_false_30*
output_shapes
: *?
then_branch0R.
,assert_less_equal_Assert_AssertGuard_true_29
h
-assert_less_equal/Assert/AssertGuard/IdentityIdentity$assert_less_equal/Assert/AssertGuard*
T0

J
add1Add01.^assert_less_equal/Assert/AssertGuard/Identity*
T0�	
�
~
-assert_less_equal_Assert_AssertGuard_false_30 
assert_assert_less_equal_all

assert_0
assert_1
identity
�r
Assert/data_0Const*
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2
Assert/data_0Q
Assert/data_1Const*
dtype0*
valueB B
x (0:0) = 2
Assert/data_1Q
Assert/data_3Const*
dtype0*
valueB B
y (1:0) = 2
Assert/data_3�
AssertAssertassert_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0assert_0Assert/data_3:output:0assert_1*
T	
2*
	summarize2
AssertP
IdentityIdentityassert_assert_less_equal_all^Assert*
T0
2

Identity"
identityIdentity:output:0: 

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

:
�
�
,assert_less_equal_Assert_AssertGuard_true_29"
identity_assert_less_equal_all

placeholder
placeholder_1
identity

NoOpNoOp2
NoOpP
IdentityIdentityidentity_assert_less_equal_all^NoOp*
T0
2

Identity"
identityIdentity:output:0: 

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

:"�