.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 21 # instrumentation
SETNB DL 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
CMPXCHG SIL, DL 
MOV SIL, -16 
BTR BX, AX 
BT ESI, 90 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
SETO DL 
SETZ AL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], EDX 
SETNB BL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
BTC BX, -92 
CMPXCHG AL, CL # instrumentation
AND DIL, 5 # instrumentation
SETNZ DIL 
SETNBE DL 
CMOVP RCX, RCX 
LAHF  
CMOVBE DI, AX 
OR CX, AX 
SETNZ CL 
OR RAX, 1616214730 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RAX] 
OR BL, CL 
TEST RAX, -1239744873 
CMOVNO BX, AX 
TEST DX, AX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR BX, DI 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTS qword ptr [R14 + RDX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 20 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
CMOVL DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
