.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDX, -80 
TEST AL, 101 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 4 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
CMOVS RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RSI] 
BTC RDX, -59 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -16 
BT RSI, -112 
OR RCX, -74 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDI 
MOV SI, -1080 
OR EAX, EBX 
OR EAX, -1489770777 
NOT RCX 
MOVSX AX, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], 86 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 2 
XOR DIL, 46 
CMOVBE RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
TEST AX, 3606 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDI] 
CMOVL RDX, RBX 
BT SI, -113 
AND DIL, 66 # instrumentation
CMOVNLE AX, DX 
CMOVB DI, SI 
CMOVBE EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
