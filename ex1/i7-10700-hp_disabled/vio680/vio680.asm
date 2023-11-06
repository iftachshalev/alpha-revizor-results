.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -31 # instrumentation
CMOVZ CX, DI 
MOVZX EAX, DI 
SETNP SIL 
CMOVNS AX, BX 
OR DL, DIL 
CMOVNZ BX, DI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD AL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], 1509099397 
SETP CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RSI 
TEST AX, 31134 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG RAX, RAX 
TEST BL, BL 
AND RAX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RAX] 
TEST RDI, -87381674 
OR RDX, RDX 
NOT EDI 
NOP  
TEST AL, 13 
XOR CL, 66 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -1 # instrumentation
CMOVBE CX, BX 
SETNS AL 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTR qword ptr [R14 + RCX], RDX 
TEST DL, AL 
CMOVNS SI, BX 
MOVZX EDX, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], -38 
CLC  
SETNBE AL 
SETNL CL 
BTR CX, 15 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
