.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -126 # instrumentation
XCHG CL, DL 
BTR CX, CX 
SETBE DL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RCX] 
BTR ESI, -48 
AND SIL, -11 # instrumentation
CMOVNO SI, DX 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RCX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], DL 
AND RAX, -350064499 
CMPXCHG EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], DL 
XCHG EDI, EAX 
MOV CL, AL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -102 # instrumentation
CMOVNB EAX, EAX 
CMOVNS RDX, RSI 
MOV SI, DI 
AND RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 7 
AND SIL, 2 # instrumentation
CMOVP EBX, EDX 
BTC RBX, 89 
OR DI, -4 
JMP .bb_main.3 
.bb_main.3:
CBW  
AND RDX, 110 
XOR AX, 8753 
MOV CL, BL 
MOV SI, DI 
TEST AL, -64 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 123 # instrumentation
SETZ AL 
MOV CX, 24225 
CMOVNB AX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
