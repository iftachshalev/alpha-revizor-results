.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, 507618420 
CMPXCHG AL, BL 
MOV EDI, EDX 
OR DX, 9 
OR EAX, -46966438 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
BTR EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
CMOVO CX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 762127748 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RBX] 
SETNB DL 
CMPXCHG DX, DX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDX 
LEA EBX, qword ptr [RAX + RDX + 3542] 
MOV RBX, 3038137357348499005 
SETNZ CL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RCX 
CMOVNBE RBX, RCX 
MOV RSI, 4492022018634064694 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RAX], 4 
AND DIL, -64 # instrumentation
CMOVLE RCX, RDI 
CMOVNP CX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
XOR DIL, -48 
AND RBX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RBX], 2 
AND SIL, 123 # instrumentation
SETNLE CL 
AND AL, 12 
CMOVNP ESI, EAX 
MOV DI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
