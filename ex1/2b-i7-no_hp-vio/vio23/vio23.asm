.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -123 
CMPXCHG AL, CL 
MOV CL, 100 
LEA CX, qword ptr [RCX + RAX] 
SETBE CL 
CMOVZ RDI, RDI 
NOT BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
CMOVNZ RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
SETNB DL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG RAX, RBX 
LEA EAX, qword ptr [RDI] 
OR AX, 19861 
SETP DL 
XOR AL, 49 
MOV RBX, RDI 
OR SIL, 106 
LEA DI, qword ptr [RAX + RBX + 62486] 
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RDX], SI 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDI] 
OR RAX, -1298248576 
CMOVB RDI, RSI 
CMOVL EDI, EDI 
BTS DI, 43 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
