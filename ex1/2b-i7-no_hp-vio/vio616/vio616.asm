.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, -93 
CWDE  
SETNZ AL 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], -49 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], 0 
MOVZX EBX, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RSI], 5 
AND SIL, -32 # instrumentation
SETNL AL 
SETNZ DL 
CMOVO SI, AX 
STC  
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -16 
SETS AL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -1 # instrumentation
SETO AL 
SETL BL 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
XCHG AX, AX 
XADD BL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], ESI 
CDQ  
AND RDX, RDX 
MOVSX RDI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RAX] 
STC  
CMOVL DI, SI 
CMOVP SI, DX 
AND EDX, ECX 
TEST RAX, -1082267537 
XOR SI, DX 
SETB DL 
BTC RBX, -35 
CMOVNBE EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
