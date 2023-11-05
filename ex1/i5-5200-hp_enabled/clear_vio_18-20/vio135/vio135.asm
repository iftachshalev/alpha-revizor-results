.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RDI 
AND AL, 121 
CMOVO DI, DI 
CMOVNBE DX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
XADD CX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
CWD  
SETNP CL 
OR EDI, -128 
NOT EBX 
NOT ECX 
BTC RDX, -1 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], CL 
MOVSX EDI, DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RCX 
MOVSX DI, SIL 
CMOVNLE ECX, EDX 
TEST RAX, RCX 
SETNS DL 
BSWAP RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
CMOVNB RCX, RDI 
AND BL, BL 
XOR AL, 42 
CMOVNBE AX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], AL 
AND DI, -46 
SETLE BL 
BT RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
