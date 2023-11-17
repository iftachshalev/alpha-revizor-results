.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG ECX, ECX 
CMPXCHG AL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
BTR DI, 41 
XOR AL, 115 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDX] 
BTS EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], 47 
BTS BX, -124 
MOVZX EDI, SI 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 12 # instrumentation
CMOVS CX, CX 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
LEA RCX, qword ptr [RBX] 
SETNO AL 
AND RCX, RDI 
BT DX, 22 
BTS RBX, 49 
SETBE AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
XOR CX, -115 
JMP .bb_main.2 
.bb_main.2:
XOR DX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], BX 
MOV AL, DIL 
BTR SI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RBX] 
CMOVNP RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RSI 
XOR RAX, 371314211 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], BX 
SETO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
