.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
CMC  
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RCX] 
SETNL BL 
SETNO CL 
BTR ESI, 53 
XOR AX, DX 
OR RBX, RCX 
SETNO AL 
XOR EAX, -1416492260 
OR EAX, 302175056 
CMOVO AX, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RSI, -45 
AND RCX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RCX] 
XADD CL, DL 
SETL BL 
SETNBE SIL 
BTS ESI, EDI 
SETNBE SIL 
BT EDX, -31 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RAX] 
AND SIL, -25 # instrumentation
CMOVNS EBX, EAX 
STC  
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RAX], DI 
STC  
OR AX, 2615 
TEST RDX, 464162710 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
CMOVO AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
