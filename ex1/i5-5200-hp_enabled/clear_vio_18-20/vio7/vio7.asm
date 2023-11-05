.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 21 # instrumentation
SETB AL 
SETBE BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
CMOVZ RAX, RDX 
CMOVNS AX, AX 
TEST DI, BX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDX] 
CMOVP EDX, EDX 
XOR EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RDX 
SETNL DL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -95 # instrumentation
SETNP BL 
MOVZX BX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], 44 
BTS AX, -101 
AND DIL, 25 # instrumentation
SETNL BL 
SETNBE DL 
SETL CL 
CMOVBE DI, SI 
XCHG BX, DI 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -59 # instrumentation
CMOVNZ AX, CX 
XOR EBX, 11 
MOV AL, 23 
TEST EAX, EDI 
CMOVNL RCX, RDX 
AND SIL, 127 
TEST SIL, BL 
MOV RCX, RAX 
TEST AX, DI 
BTC ECX, 104 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
