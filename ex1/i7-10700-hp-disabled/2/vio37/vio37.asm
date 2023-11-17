.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 103 # instrumentation
CMOVO SI, AX 
BSWAP ECX 
BT RDX, 83 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], SIL 
CMOVBE CX, CX 
BT RDI, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], 38 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND AL, 15 
BT ECX, -15 
BT RBX, 62 
OR DI, SI 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDI 
SETB DL 
BTC SI, DI 
XCHG RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDX 
CMOVNP EDX, ECX 
JMP .bb_main.2 
.bb_main.2:
XCHG EDX, ESI 
AND RDI, RCX 
CMOVNZ EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], 0 
BTC DX, 109 
AND SIL, 105 # instrumentation
CMOVBE CX, DI 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR RCX, -1 
TEST RAX, -1372848472 
MOVZX EAX, SI 
OR CL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RAX] 
SETNBE AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], -113 
CMOVNS AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
