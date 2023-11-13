.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -4 # instrumentation
CMOVNO EDX, ECX 
BT EDI, EBX 
OR BL, 52 
OR EAX, EDX 
MOV CX, BX 
SETNL SIL 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
CMOVS DI, BX 
AND CL, AL 
AND RCX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RCX], 2 
AND RAX, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RAX] 
MOV DL, 42 
SETNBE BL 
CMOVNBE RBX, RDI 
CMPXCHG ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
SETNL CL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, -29088 
AND RSI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDI] 
SETLE SIL 
XOR RAX, -360164204 
SETZ SIL 
MOV DX, -15924 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], EBX 
LEA AX, qword ptr [RAX] 
SETNL SIL 
MOV BL, 56 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], 87 
BT EAX, -112 
CMOVNBE ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
