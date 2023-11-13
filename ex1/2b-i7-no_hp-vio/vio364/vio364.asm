.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
OR AX, 24673 
MOV EAX, -1147318340 
SETNLE DIL 
XOR AL, SIL 
BTC RCX, -68 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
XCHG DL, DIL 
BTR RSI, RBX 
SETNZ CL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 89 # instrumentation
MOVZX ECX, DL 
CMOVNBE ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
TEST BL, BL 
OR EAX, 1102485253 
BTR ECX, EBX 
AND DIL, 84 # instrumentation
SETNLE DL 
MOV SI, -30390 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RSI] 
CMOVB RSI, RCX 
SETB DL 
MOVZX EDI, DL 
TEST SIL, 0 
MOVZX DX, BL 
XADD RSI, RCX 
XADD RAX, RCX 
CMPXCHG DL, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], 105 
SETLE DL 
BTR RDI, 105 
CMPXCHG EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
