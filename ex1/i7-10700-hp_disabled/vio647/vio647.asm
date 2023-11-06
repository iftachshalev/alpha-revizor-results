.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DL, CL # instrumentation
AND SIL, -56 # instrumentation
LAHF  
TEST DX, -30518 
SETNLE AL 
CWD  
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, 12 # instrumentation
MOVSX RSI, BX 
SETP DL 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], 82 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTS word ptr [R14 + RDI], SI 
AND DIL, -52 # instrumentation
CMOVP RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
CMOVNLE RDI, RAX 
AND AX, -20678 
CMOVL BX, DI 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 46 # instrumentation
CMOVO BX, SI 
CMC  
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RSI] 
CDQ  
XOR AL, -43 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RSI] 
SETL BL 
XCHG RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RBX], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
XOR RAX, -9902513 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG DIL, AL # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
LAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
