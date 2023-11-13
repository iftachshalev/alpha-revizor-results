.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, -420916452 
CMOVO RBX, RBX 
SETL DL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RDX] 
CMPXCHG DI, AX 
AND ECX, 0 
BTC RDX, 6 
XOR AX, 10941 
CMOVNO RSI, RAX 
TEST ESI, EDI 
OR AX, -9549 
SETNBE DL 
BT EDX, ECX 
LEA EDI, qword ptr [RDI] 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 1988795636 
AND DIL, -72 
AND RCX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTC word ptr [R14 + RCX], SI 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC RBX, 37 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 7 
CMOVNBE RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RBX 
AND DX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
OR DI, -53 
CMOVZ EDX, EAX 
CMOVB RAX, RDI 
SETS AL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
XCHG BX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
