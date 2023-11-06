.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RDI 
SETNS DIL 
CMOVP AX, CX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], 7 
AND RCX, 6 
MOV RSI, -7065379308812903952 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 120 
CMOVP ECX, EBX 
CMOVO BX, AX 
SETB BL 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 42 
CMOVNP DI, DX 
XCHG ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RAX] 
SETNBE BL 
SETLE DIL 
MOVZX EBX, AL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 64 # instrumentation
MOVZX EBX, DL 
CMOVNL RSI, RSI 
BTR RAX, RCX 
BTS RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDI] 
TEST EBX, -2096475669 
SETP SIL 
MOV AL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RAX] 
BSWAP EBX 
BT EBX, 91 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], ECX 
XOR DIL, 116 
MOV CL, 47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
