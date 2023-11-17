.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT AL 
MOV DL, 101 
BSWAP RCX 
OR SIL, SIL 
OR DIL, 17 
AND AX, 12423 
NOP  
BTS EBX, 97 
OR EAX, 468121916 
CMOVNZ AX, SI 
XOR EAX, -119 
BT RSI, -59 
AND DIL, -95 # instrumentation
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EBX 
CMOVNS RBX, RCX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -16 # instrumentation
CMOVB SI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RSI] 
XCHG SI, AX 
NOT EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDX] 
BTR RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RSI] 
XOR EAX, 32 
AND RDI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDI], 1 
TEST DIL, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
XOR CX, -126 
XADD CL, AL 
AND RDI, RDI 
SETO AL 
BTC RBX, RCX 
LEA BX, qword ptr [RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
