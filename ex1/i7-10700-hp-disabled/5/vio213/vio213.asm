.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDI 
MOVSX RSI, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 5 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RDI] 
CMOVNL EBX, ESI 
XCHG RDI, RCX 
OR SI, -15 
BTR RAX, RAX 
AND DIL, 94 # instrumentation
SETNLE AL 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], -54 
OR BL, -88 
CBW  
CMOVO AX, DI 
SETLE DIL 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], 81 
MOVSX EDI, AL 
SETNZ CL 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -112 # instrumentation
NOT AL 
CMOVB CX, BX 
SETB CL 
MOVZX EDI, DL 
BTR EDI, ECX 
CMC  
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], -2115833374 
BTS ECX, -70 
XOR RAX, 33349516 
XOR RCX, -63 
MOV DL, CL 
JMP .bb_main.3 
.bb_main.3:
XCHG AL, BL 
OR CX, -34 
AND BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
