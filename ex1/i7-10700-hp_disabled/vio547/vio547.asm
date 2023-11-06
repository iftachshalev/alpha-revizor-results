.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
SETO BL 
XOR AX, 1526 
BTC ECX, ECX 
AND SIL, 12 # instrumentation
SETNO BL 
CMOVNP RBX, RSI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
TEST BL, -23 
SETL BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 19 
CMOVS SI, CX 
LEA EAX, qword ptr [RAX + RDX + 56856] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -61 # instrumentation
CMOVNBE ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], -89 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDX] 
XCHG RDX, RBX 
BTS EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTR word ptr [R14 + RSI], SI 
AND SIL, 52 # instrumentation
CMOVNS EBX, EAX 
CMOVP RDI, RCX 
NOP  
SETNP BL 
TEST AX, -30672 
CMOVBE RCX, RAX 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR BX, 0b1000000000000000 # instrumentation
BSR SI, BX 
AND AL, -11 
BTC SI, 78 
OR DX, -116 
BT EDX, EAX 
AND SIL, 32 # instrumentation
CMOVO EDI, EBX 
OR CX, AX 
XADD DL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
