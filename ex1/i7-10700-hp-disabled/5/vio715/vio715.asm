.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RCX] 
BTS EDX, 13 
AND SIL, 68 # instrumentation
SETNBE CL 
SAHF  
SETO DL 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RBX 
AND SIL, 42 # instrumentation
SETNP AL 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], BL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR AX, -123 
SETBE DL 
STD  
AND EAX, 1827891113 
XOR DX, CX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -2 # instrumentation
XCHG AL, BL 
CMOVNL AX, CX 
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
OR BL, DIL 
CDQ  
LEA RDX, qword ptr [RDX + RDX + 39671] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RCX 
AND SIL, 112 # instrumentation
SETNLE CL 
TEST CX, DI 
OR ECX, 36 
CMOVS DI, AX 
XCHG RBX, RAX 
LEA ESI, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 7 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
AND SIL, 16 # instrumentation
XCHG DX, AX 
CMOVO RCX, RSI 
NOT SIL 
CMOVNS EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
