.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, 16282 
CMOVNL EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RCX] 
TEST AL, 82 
SETNB AL 
MOVSX RAX, AL 
SETNL BL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
AND SIL, -22 # instrumentation
CMOVNP RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
MOVZX AX, CL 
SETL AL 
CMOVL EDX, EDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -100 # instrumentation
CMC  
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 1 
TEST SIL, -1 
OR SIL, 67 
TEST RAX, -55281218 
NOT SI 
MOVZX EDX, AL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 48 
BT DI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
OR DIL, -48 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
SETNS DL 
AND RBX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTR word ptr [R14 + RBX], AX 
AND DIL, -56 # instrumentation
SETNP BL 
CMOVO RDX, RDX 
SETNP DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
