.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
SETNS CL 
MOV RBX, 8619618993793039472 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], AX 
XOR BL, DL 
CMOVLE BX, BX 
AND EDX, 54 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -90 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ESI 
SETNL SIL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, -9419 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RCX 
SETS AL 
XCHG EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -53 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EBX 
SETNZ AL 
MOV RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RSI] 
CMOVP RSI, RSI 
SETNP DL 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
SETNBE CL 
AND BX, 51 
CDQ  
CMOVZ EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
