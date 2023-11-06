.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -50 # instrumentation
SETNS DIL 
XOR CL, SIL 
MOV DL, -83 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
OR AL, 99 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
OR RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 1 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RAX] 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -62 # instrumentation
CMOVNS EDX, ESI 
AND DIL, DIL 
CMOVNL DX, DX 
SETNLE AL 
MOVSX RDI, BL 
CMOVNO EDX, ECX 
SETLE AL 
JMP .bb_main.3 
.bb_main.3:
AND AL, -108 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], 119 
CMOVLE RDI, RBX 
BT RDI, RCX 
TEST BL, 15 
BTS CX, CX 
AND DIL, 108 # instrumentation
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EDI 
SETL CL 
XCHG AL, CL 
CMOVP EBX, EAX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
TEST EBX, 843449746 
CMOVNZ EDI, EAX 
CMOVNLE BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
