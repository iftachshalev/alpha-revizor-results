.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RSI, AL 
AND EAX, -1225674375 
CMOVS ESI, ESI 
TEST RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RSI], 5 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
SETNO AL 
AND RAX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RAX] 
CMOVNBE BX, SI 
XCHG ECX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 98 # instrumentation
LEA DX, qword ptr [RBX + RAX + 46459] 
CMOVS EAX, EDI 
BTC DX, SI 
BT RCX, RBX 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], CL 
XADD RBX, RAX 
CMOVBE ECX, EDX 
CMOVNBE EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], BL 
CMOVLE SI, DI 
LEA BX, qword ptr [RDX + RDX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
XOR DI, -38 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], CL 
AND RCX, -30 
CMOVNB DI, DI 
STC  
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
MOVZX ESI, CL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RCX] 
MOV EAX, EAX 
MOV DI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
