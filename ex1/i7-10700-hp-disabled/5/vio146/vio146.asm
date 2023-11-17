.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RCX, RCX 
CMOVNB EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RAX], 1 
CMOVZ EAX, ESI 
JMP .bb_main.1 
.bb_main.1:
AND CL, 4 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RBX] 
BT DI, 0 
AND DIL, -30 # instrumentation
SETBE BL 
SETNP AL 
CMOVB RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RCX 
AND RDX, 50 
BTS AX, 36 
BTR ECX, -56 
MOVSX EDI, DL 
NOT ESI 
MOVZX RDX, DI 
JMP .bb_main.2 
.bb_main.2:
AND DL, -97 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
BTC EBX, 117 
XCHG EDX, EAX 
MOVZX EDX, DI 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], CX 
XCHG RBX, RDX 
CMOVB EBX, EBX 
OR RAX, -579905533 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], DL 
CMOVNL RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
AND SIL, -41 # instrumentation
CMOVS EAX, ESI 
BTR RDI, -10 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
