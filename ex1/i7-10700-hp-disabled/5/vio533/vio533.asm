.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SI, DX 
TEST SIL, AL 
SETNB DL 
XOR EDX, -80 
XOR AL, -13 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], SI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CWDE  
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], 1976063380 
MOVSX AX, AL 
SETLE AL 
CMOVP EDI, EDI 
CMC  
XCHG DI, AX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], EBX 
BTC EAX, EBX 
NOT SI 
AND EAX, -334695348 
CMOVNS CX, SI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
STC  
BTR EAX, EAX 
CMPXCHG AL, BL 
CMPXCHG DL, AL 
SETB DIL 
CMPXCHG SI, DI 
JMP .bb_main.3 
.bb_main.3:
OR ESI, ESI 
CMOVO DI, AX 
OR BL, DL 
CMPXCHG BL, CL 
XADD BL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RAX] 
BTS AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
