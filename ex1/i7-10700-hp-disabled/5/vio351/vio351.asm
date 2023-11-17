.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RBX, 13 
AND SIL, 2 # instrumentation
CMOVO EDX, EDX 
AND RBX, RSI 
CMOVL RDX, RSI 
BTS EDX, 60 
TEST DL, AL 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], 0 
AND SIL, 52 # instrumentation
XCHG BL, BL 
SETNLE CL 
NOP  
NOT BL 
BTC EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RAX] 
SETZ BL 
CMOVP RCX, RCX 
TEST ESI, 904099514 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 32 # instrumentation
CMOVZ RSI, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RBX] 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
AND SIL, -46 # instrumentation
CMOVNS AX, SI 
CMOVL CX, AX 
AND DL, 94 
SETNL CL 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
CMOVS RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDI] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 48 # instrumentation
SETBE SIL 
CMOVP CX, BX 
MOV AL, -107 
NOT AX 
BTS DI, -5 
AND DIL, 65 # instrumentation
CMOVLE EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
