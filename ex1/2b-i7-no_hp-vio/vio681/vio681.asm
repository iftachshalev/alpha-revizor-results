.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RDI] 
SETBE CL 
CMOVL DX, AX 
BTC RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RAX] 
BT RBX, -40 
BTR RAX, RAX 
AND DI, 21 
AND RSI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
CMOVNS BX, CX 
CMOVP RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], -119 
LEA ESI, qword ptr [RSI] 
CMOVNS EDX, EAX 
OR RAX, 801479556 
AND RDI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDI] 
BTR EAX, -118 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -98 # instrumentation
CMOVNBE DX, DX 
CMOVNL ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RAX] 
CMOVNLE RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTS qword ptr [R14 + RDI], RSI 
AND DIL, 50 # instrumentation
CMOVO EBX, EDX 
CMOVLE ESI, EBX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RBX 
AND DIL, -113 # instrumentation
CMOVO DI, SI 
CMOVO RCX, RDX 
CMOVNP EBX, ECX 
SETZ SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
