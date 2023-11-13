.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], CL 
OR RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RDX 
SETZ DL 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
CMOVNO RCX, RCX 
CMOVNS EDX, ECX 
XCHG RSI, RDX 
CMOVBE ESI, ESI 
XOR AX, -22375 
MOV AL, 23 
BT RAX, 93 
OR AX, 0b1000000000000000 # instrumentation
BSR CX, AX 
CMOVZ RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 99 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
SETNLE AL 
CMOVNP BX, CX 
CMOVLE DX, BX 
BTS RSI, -51 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], DL 
XCHG RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 2 
XADD EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 7 
MOV DL, DL 
XADD AL, BL 
XCHG ESI, EAX 
MOV BL, -33 
SETNBE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
