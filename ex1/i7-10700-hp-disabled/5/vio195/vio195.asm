.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AL, DL 
CMOVNB RSI, RDI 
BT EAX, 27 
BTS RAX, RDX 
AND AL, SIL 
BTR BX, -57 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
XCHG DX, AX 
SETLE DIL 
CMOVNO RDI, RCX 
CMOVNS RBX, RSI 
XCHG DI, DX 
XOR DI, 52 
CMOVNP AX, DI 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 5 
AND SIL, -115 # instrumentation
CMOVNO ESI, EDI 
BTR RCX, RCX 
AND AL, 32 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -108 # instrumentation
CMOVNZ SI, CX 
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
NOT SIL 
OR SIL, -110 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDI] 
MOV RCX, RBX 
XOR EDI, -26 
STC  
BTR AX, 19 
AND DIL, 106 # instrumentation
CMOVNP RDI, RCX 
BTC RBX, 100 
AND ECX, ECX 
TEST AL, -13 
AND CL, -116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
