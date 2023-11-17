.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, -24869 
CMOVB RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
AND DIL, -4 # instrumentation
CMOVP BX, AX 
CMOVNB BX, BX 
BTS BX, 32 
BTC EDI, ECX 
JZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, 33 # instrumentation
MOVZX AX, CL 
NOT BL 
SETP DIL 
CMOVNL ECX, EDI 
JMP .bb_main.2 
.bb_main.2:
AND RAX, -411877087 
CMOVNS SI, BX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 40 
BTC ECX, -52 
AND DIL, -83 # instrumentation
CMOVLE CX, DI 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
CMOVLE CX, SI 
CMOVLE RDX, RDI 
XCHG DL, DL 
SETNZ BL 
SETNZ DL 
JMP .bb_main.4 
.bb_main.4:
TEST AL, SIL 
MOV BX, -28965 
SETLE BL 
SETO DL 
CMOVNS AX, SI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
