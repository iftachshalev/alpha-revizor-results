.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC EAX, ECX 
OR RAX, -2046530486 
AND RAX, 1906589937 
XADD BX, SI 
NOT BL 
CMOVS ESI, EDI 
BT BX, -34 
SETNBE BL 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -17 # instrumentation
SETZ AL 
MOVZX ECX, BL 
CMOVNZ RDI, RBX 
CMOVNO EDX, ECX 
SETLE BL 
TEST EDX, 127071319 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RCX] 
NOP  
SETB CL 
MOVSX RDX, AL 
TEST DI, 22417 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1444091543 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV RDI, 3398967564711306367 
STD  
XOR AX, 10345 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
TEST BX, BX 
SETNBE AL 
JMP .bb_main.4 
.bb_main.4:
CDQ  
MOVSX ESI, SI 
BTR RDI, RDI 
XOR SIL, DL 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
