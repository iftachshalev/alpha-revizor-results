.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EAX, -1491322501 
MOV ESI, EDI 
CMPXCHG BX, DX 
XOR SI, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDI] 
SETNL BL 
CMOVNBE RDX, RAX 
XOR AX, -14386 
BSWAP RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
CMOVNBE CX, SI 
TEST SIL, -45 
CMOVNBE DX, BX 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -65 # instrumentation
CMOVNP RDX, RDX 
MOVSX EDX, DIL 
AND EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], -25 
TEST RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -112 
BTR SI, -92 
AND BL, CL 
SETNO AL 
BTS CX, DI 
TEST ECX, EBX 
XCHG AL, BL 
TEST AX, -819 
CMPXCHG BL, CL # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RSI] 
SETNS BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
BTR RBX, -122 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
