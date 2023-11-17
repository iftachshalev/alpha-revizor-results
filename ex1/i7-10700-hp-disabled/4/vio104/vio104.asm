.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND CL, DL 
SETLE AL 
AND RAX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RAX] 
CMOVNLE AX, BX 
OR BX, DX 
XCHG EDI, EDX 
SETBE DL 
CMOVB ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RSI] 
MOV SIL, BL 
BT EAX, ECX 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST AL, -89 
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RDI 
CMOVLE ECX, EDI 
SETNO AL 
CMOVNLE RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], 6 
TEST DI, -22659 
BSWAP RBX 
CMPXCHG DIL, SIL 
OR DL, DL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NOT BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RAX] 
OR DL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], ECX 
AND RDX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDX], 7 
MOV DL, -45 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -2027277367 
AND RCX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RCX] 
CMOVBE DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
