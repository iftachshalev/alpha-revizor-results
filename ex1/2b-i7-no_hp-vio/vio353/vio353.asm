.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -90 # instrumentation
CMOVBE ESI, EDI 
CMOVNZ BX, DX 
CDQ  
CMOVNO RBX, RBX 
SETNO AL 
BTC EAX, ECX 
BTS BX, DI 
AND DIL, -14 # instrumentation
CMOVNP DI, BX 
CMOVP CX, AX 
CMOVNO RBX, RSI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
OR BL, DL 
AND EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], BL 
CMOVNLE CX, CX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
AND SIL, -56 # instrumentation
CMOVNZ ESI, ECX 
SETLE DIL 
SETP BL 
SETNL BL 
BT DX, -53 
AND SIL, -48 # instrumentation
NOP  
SETNS SIL 
BTR AX, -109 
XOR DX, -4 
BT DI, DX 
AND SIL, -12 # instrumentation
SETNLE BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RSI] 
OR EAX, -91 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RSI] 
CMOVLE RCX, RSI 
CMOVLE RSI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
