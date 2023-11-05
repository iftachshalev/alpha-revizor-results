.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS SI, 22 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RBX] 
MOV ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
XCHG RSI, RAX 
AND AL, -117 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
BTR SI, -78 
XADD AL, DL 
CMC  
CMOVNO SI, AX 
BT RBX, -60 
AND SIL, -3 # instrumentation
SETP DL 
OR EDI, EDI 
XOR SIL, -12 
AND RDI, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RDI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], -11 
BTR RBX, RDI 
BTR SI, DI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDX] 
SETNS BL 
SETNBE BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RCX] 
SETZ AL 
XADD AX, CX 
BTC RDX, -33 
XCHG BL, CL 
BTC DX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDX 
CMOVNS RBX, RDX 
SETNO BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
