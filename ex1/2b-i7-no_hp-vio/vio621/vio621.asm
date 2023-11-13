.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 60 # instrumentation
CMOVS CX, DX 
AND RAX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RAX], 3 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
AND BL, BL 
TEST ECX, -959323562 
SAHF  
BTC RBX, RDX 
AND SIL, -27 # instrumentation
SETL DL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RCX] 
AND AL, -59 
NOT RBX 
AND RCX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RCX] 
AND ECX, -22 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], CL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDI] 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
BT ECX, -25 
AND SIL, -54 # instrumentation
CMOVNL RSI, RCX 
CMOVNO DX, DX 
AND RAX, 1430734915 
CMOVNO RAX, RDI 
CMOVBE BX, BX 
OR EDX, 62 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], BX 
MOVSX RSI, DX 
AND ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], 6 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
SETNZ DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RSI], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
