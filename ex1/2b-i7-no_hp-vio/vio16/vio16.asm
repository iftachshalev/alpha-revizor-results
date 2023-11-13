.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS SI, CX 
AND RCX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], ECX 
AND SIL, -50 # instrumentation
CMOVS DX, DI 
XOR AX, -13314 
TEST RAX, 739884662 
OR EAX, -951428288 
OR AL, 72 
SETZ BL 
BTC DX, CX 
TEST ESI, EDI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
SETL CL 
OR AL, 34 
CMOVNB CX, DI 
CWDE  
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
OR BX, -54 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RSI], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], AL 
AND RDI, RAX 
SETNP CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
BTR EAX, 16 
BTS EDX, EDX 
XCHG SIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDI] 
MOV RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
SETNZ BL 
CLD  
XOR RCX, RDX 
AND EDI, 64 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
