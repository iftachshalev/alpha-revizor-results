.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RBX, -34 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
TEST SIL, -84 
XCHG BX, AX 
CMOVNZ EDI, ECX 
MOVSX RDX, AL 
AND DL, AL 
SETNB CL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RSI 
XCHG DX, AX 
AND BL, AL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA ESI, qword ptr [RSI + RCX + 64477] 
OR SI, -53 
BTS CX, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 5125 
MOV SIL, 58 
SETB CL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 4 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDX] 
AND DIL, -106 
CMOVNBE EDX, EDI 
XCHG RDI, RBX 
TEST DIL, 88 
SETBE BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RCX] 
BTS RCX, -49 
CMPXCHG EDX, ECX 
MOVZX EDX, DL 
CMOVNP SI, BX 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 44 
MOV RSI, 157751391391862108 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
