.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RCX] 
BTC AX, CX 
AND SIL, 13 # instrumentation
SETL CL 
TEST EDX, 46622682 
CMOVNB EBX, ECX 
AND RSI, RAX 
SETNL CL 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], EDI 
OR RAX, -341505047 
TEST RDX, -1247649200 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RCX 
CMC  
SETNZ AL 
XCHG EDX, EAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDI] 
BTR DX, DI 
MOV BL, BL 
OR SI, 62 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
TEST BL, -109 
XCHG RSI, RDI 
BTR DI, SI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RAX 
MOVZX DX, DL 
XADD RDX, RBX 
BTR RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDX] 
XOR DIL, 80 
CMOVB ESI, EAX 
OR RAX, -292852831 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
