.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 10 
CMOVNS DI, DI 
TEST DL, AL 
CLC  
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], ECX 
XOR DI, 106 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -62 # instrumentation
CMOVNL RAX, RSI 
CWDE  
CMOVNS CX, BX 
AND EAX, 924059551 
BTS RDX, RDI 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
SETZ DL 
XOR DIL, DL 
CMOVNL DI, DI 
CMOVNZ EBX, EAX 
SETL DIL 
MOVSX EDX, BL 
MOV DIL, -43 
MOVSX EBX, CL 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX DI, DL 
TEST DL, DL 
BTR RDI, -83 
MOVZX DI, CL 
BTC AX, DX 
AND RSI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RSI] 
CMOVP EBX, ESI 
CMPXCHG SIL, AL 
MOV CL, SIL 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 5 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
