.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -62 # instrumentation
MOV AX, DX 
CMOVP ESI, ECX 
BTC CX, DI 
OR RCX, -34 
BTC EAX, EBX 
AND SIL, 29 # instrumentation
CWD  
CMOVS BX, AX 
MOVSX SI, CL 
SETNLE AL 
NOT CL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
AND SIL, AL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG AL, SIL 
SETO BL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], SI 
BT BX, 5 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
XCHG DL, BL 
SETNLE AL 
BT RDI, RBX 
LEA RDX, qword ptr [RBX + RBX + 60761] 
AND AX, SI 
BTS BX, 97 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], 5 
BT RAX, -84 
MOVZX EDX, BX 
AND RDI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDI] 
CMPXCHG DI, DI 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
XADD AX, DI 
AND RBX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTS word ptr [R14 + RBX], DX 
XOR AX, -7655 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
