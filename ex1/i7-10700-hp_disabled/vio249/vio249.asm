.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
OR EAX, -1205867745 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RAX] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMPXCHG ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
SETB AL 
CMOVZ EBX, EDX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -13 # instrumentation
SETS DL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RBX] 
SETLE CL 
MOV CL, DIL 
CMOVZ EDX, EDI 
AND ECX, EBX 
CWD  
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RCX] 
TEST SIL, DL 
TEST BX, 1931 
JMP .bb_main.3 
.bb_main.3:
XOR CL, 78 
AND RSI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RSI] 
BT EDI, -54 
TEST RSI, 1391778722 
BTR RCX, -75 
XOR SIL, -23 
AND ECX, -74 
XOR AX, 61 
LEA EBX, qword ptr [RDI + RBX] 
MOV RDI, -5020871374530835865 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
