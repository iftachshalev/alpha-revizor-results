.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -84 # instrumentation
CMOVP EAX, EDI 
OR RDI, RDI 
NOT EBX 
MOV ESI, ESI 
OR DL, 67 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
MOV AL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 1 
BTR ESI, 119 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], -84 
SETNBE SIL 
SETLE SIL 
MOV DL, DIL 
CMOVB ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
TEST CX, -32124 
XOR AL, 48 
BSWAP EDI 
CLD  
MOV RAX, RCX 
BTC EDI, EDI 
AND SIL, -51 # instrumentation
CMOVL EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RAX] 
TEST AX, 3243 
MOV SI, -2636 
MOV BL, BL 
XOR DL, CL 
SETL DL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDX] 
OR ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
