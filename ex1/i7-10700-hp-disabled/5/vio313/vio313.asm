.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 121 # instrumentation
CMOVNB RBX, RDX 
TEST AX, 24486 
TEST AX, -19865 
TEST RAX, -1473661405 
CMOVO EAX, EDI 
MOVSX EAX, AL 
AND RAX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RAX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
XOR RBX, RSI 
CMOVLE BX, DX 
AND RAX, 672156887 
CMOVBE RAX, RAX 
CMPXCHG RBX, RAX 
CMOVZ RAX, RBX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA RDX, qword ptr [RDI] 
AND EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDX 
CMOVZ ESI, ESI 
BT AX, 41 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 6 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
MOV SI, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
SETNO BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], -65 
SETNO AL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
XOR RDI, -32 
CMOVNBE RSI, RSI 
BTS RCX, -63 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
