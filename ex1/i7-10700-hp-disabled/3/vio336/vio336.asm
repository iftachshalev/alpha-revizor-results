.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 28 # instrumentation
CMOVNLE DI, DI 
OR EAX, -1105929642 
CMPXCHG DIL, AL # instrumentation
LAHF  
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
AND DIL, -8 # instrumentation
CMOVNBE DX, AX 
SETNO BL 
SETNP CL 
SETNP BL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDI] 
OR CL, 45 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
BT RAX, 41 
XOR DX, BX 
CMOVO DX, AX 
CMOVNZ BX, CX 
CMOVZ EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EAX 
MOVZX RAX, CL 
CMOVB BX, DX 
CMOVNO DI, CX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
AND DIL, 70 # instrumentation
SETNL BL 
CMOVL CX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDX] 
XOR BL, DL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 84 # instrumentation
CMOVNB SI, AX 
XCHG RSI, RAX 
TEST ECX, EDX 
OR EAX, 1637247351 
MOV DL, CL 
CMOVNBE DX, AX 
SETP DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
