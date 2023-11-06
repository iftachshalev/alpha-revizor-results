.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -98 # instrumentation
CMOVZ RBX, RDI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND DIL, 110 # instrumentation
SETS AL 
NOT EDI 
AND RAX, 70 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDX] 
XADD AL, DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RBX] 
BTS RBX, RDX 
MOVSX RBX, AX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 2 
CMPXCHG BL, BL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
XCHG RBX, RDX 
SETNBE DL 
SETZ AL 
BTC RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDI], DX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RBX], 7 
AND DIL, 121 # instrumentation
CMOVS RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDX], 6 
BTC ESI, -12 
CMOVZ EDX, ESI 
XCHG AX, DI 
XOR BL, 25 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
AND SIL, 19 # instrumentation
CMOVNP AX, DX 
CMOVS EDI, EDX 
CMOVP BX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
