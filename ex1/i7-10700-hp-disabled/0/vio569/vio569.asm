.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG SIL, DL 
CMOVBE RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RBX 
CMOVO ESI, ESI 
BTR EBX, EBX 
LEA SI, qword ptr [RDX] 
XADD AL, SIL 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTS RCX, 40 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], DL 
CMOVNS EDI, EDX 
CMOVNS EAX, EBX 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], 27 
CMOVNZ EDX, ECX 
CMOVNP CX, CX 
CMOVL EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], 0 
SETNP CL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 125 # instrumentation
MOV RBX, RDX 
CMOVB EDI, EDI 
XOR AX, 15505 
BTC SI, -118 
NOT BL 
XADD DL, AL 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], RCX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
BTC RCX, 23 
XOR DI, DI 
CMOVBE RDX, RSI 
CMOVNP BX, BX 
NOT BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
