.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -124 # instrumentation
SETB BL 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], 4190 
CMOVNS EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
CMOVNO EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
MOVSX ESI, SIL 
SETB AL 
CMOVNBE AX, DX 
CMPXCHG AL, CL 
SETNO BL 
CMOVB EBX, ECX 
SETNBE BL 
MOVZX DI, AL 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], -49 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RAX] 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
BT CX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RBX] 
CMOVNO ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], CX 
CLC  
BTC EBX, 10 
XCHG BX, CX 
CMOVZ ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], -68 
JMP .bb_main.2 
.bb_main.2:
OR CL, 82 
AND AX, 7286 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DL 
AND RCX, RCX 
SETNL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
