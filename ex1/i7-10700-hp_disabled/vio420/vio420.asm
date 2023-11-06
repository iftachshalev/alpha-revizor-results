.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS AX, SI 
TEST DIL, 31 
AND EAX, -490581039 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RDI 
XOR AL, -36 
MOVZX BX, SIL 
NOT BL 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RAX 
MOVZX EBX, DL 
CMOVZ AX, DX 
OR RCX, RBX 
JMP .bb_main.2 
.bb_main.2:
BTC RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], 79 
XADD DI, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -4 
AND RDI, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], EDI 
BTS AX, SI 
AND DIL, -124 # instrumentation
CMOVNS DX, DX 
AND RAX, -645212893 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -124 # instrumentation
CMOVS RSI, RDI 
BT BX, 65 
XOR DIL, -62 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDX] 
XCHG BX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], 7 
AND SIL, -72 # instrumentation
CMOVLE RAX, RDI 
JMP .bb_main.4 
.bb_main.4:
AND EDX, -105 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
