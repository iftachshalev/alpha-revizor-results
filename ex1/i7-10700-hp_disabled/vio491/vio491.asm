.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 9 # instrumentation
SETB BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 5 
AND DIL, 50 # instrumentation
CMOVNS EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
SETNL CL 
MOVZX SI, SIL 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RDX], RCX 
BTC RCX, RAX 
MOV DL, AL 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOV SIL, -100 
AND EDX, 85 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], 113 
TEST AL, 47 
BTR EDX, ESI 
AND DIL, 24 # instrumentation
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR SI, AX 
MOV EBX, 416509093 
AND RAX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], RCX 
SETNBE AL 
CMOVZ DI, CX 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RSI 
MOV AL, 108 
AND SI, DI 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RDX 
MOVZX DX, BL 
OR ESI, ECX 
LEA RDI, qword ptr [RDX] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX RBX, CX 
BTS RDX, RDI 
AND DIL, 127 # instrumentation
CMOVNO ECX, EAX 
TEST EAX, -320426309 
CMOVP AX, DI 
CMOVBE EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
