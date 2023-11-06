.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 47 # instrumentation
CMOVZ RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RSI] 
LEA EAX, qword ptr [RBX] 
SETB DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], BL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RSI] 
CMOVNBE EDX, ESI 
TEST DIL, -7 
CMOVBE DX, DI 
CMOVNLE BX, BX 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 4 
TEST AX, -25265 
MOV DL, AL 
AND RAX, 691319955 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
TEST AL, 11 
SETNZ DL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
XOR AX, -30037 
CMOVNB RSI, RSI 
NOT CX 
XCHG CL, DL 
XADD RBX, RAX 
JMP .bb_main.4 
.bb_main.4:
AND DIL, -78 # instrumentation
CMOVLE BX, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 6 
AND SIL, -79 # instrumentation
CMOVL DX, DX 
CMOVS EBX, ECX 
CMPXCHG DL, CL 
MOV DI, CX 
CMOVNP ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
