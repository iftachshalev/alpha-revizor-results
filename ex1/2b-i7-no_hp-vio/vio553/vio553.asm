.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AX, CX 
MOVSX RDX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
LEA RDX, qword ptr [RBX + RSI + 22406] 
AND EAX, -470736135 
BT AX, -7 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], CX 
BTC AX, CX 
BTS ECX, -84 
MOV AL, DIL 
XADD EBX, ECX 
OR RAX, -2110973607 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EAX 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 7 
SETNBE SIL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 100 # instrumentation
MOVSX ESI, DL 
SETBE BL 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
SETNBE DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDI] 
SETZ BL 
TEST AX, DI 
MOV RCX, -5431923094139017793 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 0 
CMOVZ RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RAX] 
MOVZX EAX, DL 
CMOVNB ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
