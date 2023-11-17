.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 127 # instrumentation
CMOVBE AX, BX 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], EAX 
LEA RSI, qword ptr [RAX + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDI] 
AND SIL, -102 # instrumentation
CMOVNP RBX, RCX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR SIL, SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], DL 
CMOVNBE RDI, RCX 
XOR AX, -15728 
XCHG RBX, RSI 
SETL DL 
BT EAX, 9 
AND SIL, 81 # instrumentation
CMOVNZ CX, AX 
SETO CL 
MOVSX DX, DL 
SETP CL 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
XADD DL, DIL 
XCHG AL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
BTC EBX, EDI 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, 24 # instrumentation
MOVSX RSI, DIL 
SETNZ DL 
BSWAP RDX 
SETNO CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST DL, SIL 
TEST AX, -29345 
TEST DL, BL 
CMOVNZ RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
