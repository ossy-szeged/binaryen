	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20020227-1.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.section	.text.f1,"ax",@progbits
	.hidden	f1
	.globl	f1
	.type	f1,@function
f1:                                     # @f1
# BB#0:                                 # %f2.exit
	return
	.endfunc
.Lfunc_end1:
	.size	f1, .Lfunc_end1-f1

	.section	.text.f2,"ax",@progbits
	.hidden	f2
	.globl	f2
	.type	f2,@function
f2:                                     # @f2
	.param  	i32
# BB#0:                                 # %entry
	block
	f32.load	$push1=, 1($0):p2align=0
	f32.const	$push4=, 0x1p0
	f32.ne  	$push5=, $pop1, $pop4
	br_if   	0, $pop5        # 0: down to label0
# BB#1:                                 # %entry
	i32.const	$push2=, 5
	i32.add 	$push3=, $0, $pop2
	f32.load	$push0=, 0($pop3):p2align=0
	f32.const	$push6=, 0x0p0
	f32.ne  	$push7=, $pop0, $pop6
	br_if   	0, $pop7        # 0: down to label0
# BB#2:                                 # %lor.lhs.false
	i32.load8_u	$push8=, 0($0)
	i32.const	$push9=, 42
	i32.ne  	$push10=, $pop8, $pop9
	br_if   	0, $pop10       # 0: down to label0
# BB#3:                                 # %if.end
	return
.LBB2_4:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end2:
	.size	f2, .Lfunc_end2-f2


	.ident	"clang version 3.9.0 "
