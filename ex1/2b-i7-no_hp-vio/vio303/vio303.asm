.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -38 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], DL 
NOT DL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], BX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
BTS AX, 107 
AND DIL, -16 # instrumentation
SETS CL 
XOR AX, 19215 
XOR AX, -9757 
XCHG RDI, RCX 
OR EAX, -1421560780 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
BTS SI, -44 
AND DIL, 125 # instrumentation
SETO SIL 
CMOVNLE DX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
OR CX, 0b1000000000000000 # instrumentation
BSF SI, CX 
TEST AL, DL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RAX, -173407872 
BTR DX, CX 
BTR ECX, ECX 
CMPXCHG CL, BL 
BTR EAX, 102 
AND DIL, -8 # instrumentation
SETNLE CL 
AND EAX, 1564110514 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RBX 
SETNO CL 
BTC ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTC dword ptr [R14 + RAX], EAX 
CLD  
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
MOV RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
