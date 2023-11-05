.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], CL 
BTC CX, 61 
MOVSX ECX, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
STC  
CMOVL RCX, RAX 
STC  
AND RDX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDX] 
BT RAX, RDX 
STC  
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
CMOVS RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDX], 0 
CMOVNZ RSI, RCX 
BTC AX, 95 
AND RBX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RBX] 
CMOVO DI, BX 
TEST BL, -67 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 59 
XCHG CL, DIL 
MOV EDX, EDI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DX, -95 
CMOVP RSI, RDX 
BT RDX, RAX 
TEST RDI, 1860464360 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 38 
SETS DL 
AND ESI, 88 
CMOVO EAX, ESI 
BTR RBX, -96 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
