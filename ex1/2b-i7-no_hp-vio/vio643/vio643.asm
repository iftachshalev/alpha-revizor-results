.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DL, AL 
XOR AX, CX 
BTR CX, -116 
NOT SI 
MOVZX ECX, DIL 
TEST CL, BL 
CMOVZ RSI, RBX 
MOV AL, BL 
BSWAP RCX 
CMOVO DI, SI 
STC  
CMOVS EDX, EBX 
MOV ECX, ECX 
CMOVNS RCX, RDX 
BT EAX, -41 
MOV AX, DI 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], BX 
CLC  
BTC DI, 8 
AND DIL, -9 # instrumentation
CMOVO RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
SETL CL 
SETLE AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], -122 
MOV DI, -14432 
AND RDX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDX] 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
XOR RBX, -7 
AND CL, DIL 
MOVZX DX, DL 
SETP DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
