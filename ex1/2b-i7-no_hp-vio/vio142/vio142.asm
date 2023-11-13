.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], BX 
CMOVBE CX, BX 
AND RAX, -672611336 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
SETNO CL 
NOT RAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT DL 
XOR EDI, -120 
MOVSX EAX, CL 
XOR AX, 18958 
CMOVNLE ECX, EAX 
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RBX] 
MOV DL, -108 
SETNP AL 
TEST SIL, 23 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDI] 
MOV RCX, RBX 
XCHG RBX, RCX 
MOVSX EDI, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDX] 
MOV CL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
XOR SIL, 106 
OR DI, 0b1000000000000000 # instrumentation
BSF BX, DI 
OR EAX, -534943272 
AND RDI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDI], 7 
AND EAX, -1705916191 
MOV RBX, 3565516336574878237 
SETL BL 
AND RBX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RBX], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
