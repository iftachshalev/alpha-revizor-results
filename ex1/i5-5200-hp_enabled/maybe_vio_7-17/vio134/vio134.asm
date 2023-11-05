.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 127 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
MOVZX DI, CL 
XADD CL, DL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -55 
AND CX, SI 
CMOVLE DI, DX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR ECX, -107 
BTC DX, DX 
AND SIL, -15 # instrumentation
SETNLE DL 
SETO DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
SETNB DIL 
BSWAP EDI 
XOR AX, 29529 
XOR DL, SIL 
OR ESI, 124 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
MOVSX EBX, DL 
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 2085936386 
SETNO SIL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -114 # instrumentation
SETL AL 
SETZ AL 
XOR DIL, 60 
CMOVNS EBX, ECX 
MOVZX DI, DIL 
MOV DL, -91 
AND AX, -28744 
XOR DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
