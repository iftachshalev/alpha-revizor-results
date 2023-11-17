.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT RDI 
CMPXCHG AL, DL 
XOR BL, BL 
BTC EAX, 17 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RCX 
CMOVNB SI, DI 
BTR BX, -115 
AND SIL, -54 # instrumentation
CMOVNO EAX, ESI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1309082973 
AND RDX, 87 
BT RBX, -45 
XOR EAX, -84 
AND SIL, 31 
JMP .bb_main.2 
.bb_main.2:
BTS DI, DI 
BT CX, -26 
AND DIL, -66 # instrumentation
SETP DL 
LEA ECX, qword ptr [RAX + RAX + 52746] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
XOR AL, -31 
MOV ECX, -2085501820 
XCHG RSI, RAX 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND BL, -92 
BTR BX, -23 
AND DIL, 127 # instrumentation
CMOVB EBX, ESI 
XCHG RDI, RDI 
CMOVNO DI, SI 
SETNS DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
CMOVNS RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
