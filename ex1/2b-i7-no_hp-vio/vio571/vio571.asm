.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RSI] 
XCHG CX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
CMOVNO ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
MOV RSI, 4916934891561506680 
AND DX, CX 
CMPXCHG EDX, EAX 
SETNO BL 
XCHG RCX, RAX 
STD  
TEST EAX, 1335616851 
TEST EDI, -470209728 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RCX], 1 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RSI], 2 
OR RAX, 9 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
SETB DIL 
MOVZX RCX, CX 
SETP DL 
MOVZX ECX, AX 
BT AX, DI 
XOR DL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
XOR RDI, -85 
LEA RCX, qword ptr [RAX] 
CMOVLE EBX, EDI 
XOR BX, -106 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
