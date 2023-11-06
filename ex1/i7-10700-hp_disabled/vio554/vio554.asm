.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 10 # instrumentation
SETNLE CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RSI] 
SETO AL 
XOR CL, BL 
BSWAP RBX 
AND SI, 127 
JMP .bb_main.1 
.bb_main.1:
TEST AX, -145 
CMOVBE DX, BX 
MOVZX CX, DIL 
XCHG SI, CX 
CMOVBE DI, BX 
AND RDX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDX], 1 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -102 # instrumentation
LEA DX, qword ptr [RBX] 
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], AL 
XOR DX, CX 
AND RBX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RBX], DI 
AND DIL, -39 # instrumentation
SETLE DIL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], CX 
MOVZX EDX, CX 
XOR AX, -16227 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], SIL 
MOVSX RSI, CX 
BTR SI, -42 
BSWAP RDX 
OR DL, 103 
OR AL, AL 
CMOVNL RDX, RDI 
TEST BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
