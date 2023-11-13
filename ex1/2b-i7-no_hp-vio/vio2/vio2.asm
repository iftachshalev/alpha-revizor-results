.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ESI, EDI 
XCHG DX, AX 
CLC  
MOV SI, BX 
CMOVBE EDI, ECX 
XCHG DX, AX 
CMOVNP RBX, RDI 
OR AL, 107 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 6 
AND DIL, 96 # instrumentation
SETP CL 
CMOVNB EAX, ECX 
MOV BL, -127 
XOR AL, 51 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], 106 
MOVSX DI, DL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RSI 
SETNLE DL 
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RDI 
CMOVNL EBX, EDX 
OR ESI, EBX 
SETL DL 
TEST AX, 21769 
SETNL CL 
AND EAX, 510260520 
CMOVNBE EDI, EAX 
CMOVL RDX, RDI 
MOVZX ESI, CX 
CMOVNO EBX, EBX 
XADD AL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
