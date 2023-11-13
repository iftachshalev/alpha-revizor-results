.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTC dword ptr [R14 + RSI], EDI 
BSWAP EDX 
CMOVZ EDX, ESI 
OR CL, AL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EDX 
TEST EAX, -1247981294 
SETS BL 
XOR RDX, 63 
BT AX, DI 
XOR BL, CL 
XCHG ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
CMOVP RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], EDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -90 # instrumentation
SETLE DL 
MOVZX EAX, AL 
CMOVNLE EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RCX] 
BT RDX, -59 
XOR AX, -17608 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -85 
AND CX, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RSI], 0 
AND DIL, 120 # instrumentation
CMOVNO RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RBX] 
BT SI, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDI], 7 
XOR SIL, 102 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RBX 
STD  
AND RAX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RAX] 
XCHG AX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
