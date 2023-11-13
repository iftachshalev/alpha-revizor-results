.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -13 # instrumentation
SETL DL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
SETNZ AL 
CMPXCHG SI, AX 
SETNLE DL 
XADD EBX, EDX 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RSI] 
CMOVO SI, DX 
CMPXCHG AL, CL 
CMC  
MOV AX, CX 
MOVZX ESI, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EBX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
BTC RDI, -116 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], 11 
SETNBE AL 
MOVZX CX, CL 
OR CL, 17 
AND BL, BL 
CMOVNP RSI, RDX 
CMOVNBE EDI, EBX 
XOR BL, DL 
CMOVZ ESI, EBX 
CMOVNL EDX, EDI 
TEST DL, BL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -57 
TEST AL, -45 
AND BX, CX 
TEST RAX, -1930845181 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
