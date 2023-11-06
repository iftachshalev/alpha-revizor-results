.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -63 # instrumentation
MOV DI, BX 
XCHG ESI, EAX 
CMOVO RBX, RDI 
OR EBX, ESI 
SETNP DL 
NOT RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -80 # instrumentation
CMOVLE RSI, RBX 
CMOVL RSI, RAX 
AND ESI, EDX 
BTC RBX, RDX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST RDI, RDI 
MOV CX, BX 
CMOVNP AX, SI 
CMOVZ DI, DX 
XOR RCX, 38 
LEA RBX, qword ptr [RAX + RDI] 
AND AX, 14213 
BTC EBX, EDX 
CMOVNBE EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], 18 
CMOVO RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], SI 
AND RDI, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RCX] 
CMOVNP CX, DI 
CMOVNO EDX, EBX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BTC BX, -63 
AND SIL, 23 # instrumentation
CMOVNLE RDX, RSI 
SETNZ AL 
TEST BL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
