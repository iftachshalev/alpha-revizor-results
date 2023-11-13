.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -74 # instrumentation
CMC  
CMOVNLE RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDI], 1 
AND SIL, -3 # instrumentation
SETNL DL 
XOR AL, DIL 
TEST BL, AL 
SETO SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RSI], 7 
CMOVBE RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], -78 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RAX] 
AND BL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RBX 
OR RSI, 47 
MOVSX SI, DL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 1768509763 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], CX 
STC  
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RBX] 
STC  
CMOVNP EDX, EDX 
BT DI, DI 
MOV EAX, -204587283 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
BSWAP ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
