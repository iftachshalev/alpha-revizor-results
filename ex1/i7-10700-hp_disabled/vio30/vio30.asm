.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
BTS DX, DX 
AND SIL, 39 # instrumentation
SETL DL 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDI 
XOR RSI, RSI 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RAX] 
TEST BL, SIL 
MOVSX EBX, AL 
AND RBX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RBX], 3 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], -70 
BTS DI, BX 
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
CMOVP CX, SI 
STC  
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDX] 
TEST DL, AL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR DL, -46 
XOR AL, 44 
SETBE BL 
AND RDI, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDI] 
CWD  
SETNL BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RSI] 
OR AX, 13627 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -37 # instrumentation
NOT RDI 
SETL SIL 
CWD  
MOV CX, -5277 
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
