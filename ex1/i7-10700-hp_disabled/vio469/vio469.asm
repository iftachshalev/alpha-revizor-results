.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR SI, 34 
NOT RDX 
SETB CL 
MOV DI, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RAX] 
XADD AX, DI 
TEST BL, 103 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 69 # instrumentation
CMOVO DX, SI 
CMOVNO BX, CX 
CMPXCHG AL, AL 
BTR RBX, RAX 
OR SIL, 59 
CMOVNB BX, DX 
SETNP BL 
BTS RBX, 35 
AND SIL, -49 # instrumentation
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR ECX, EAX 
MOV RDX, 3982065024562832750 
BT RSI, -114 
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
AND DIL, 40 # instrumentation
CMOVNO RBX, RSI 
CMOVNB DI, CX 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RBX] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -113 # instrumentation
SETL DIL 
AND DIL, 34 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RSI] 
STC  
CMOVBE CX, DX 
SETNBE BL 
MOVSX CX, DL 
MOVSX RCX, CL 
CMOVNL ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
