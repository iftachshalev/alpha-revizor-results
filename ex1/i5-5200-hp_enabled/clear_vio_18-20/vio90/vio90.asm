.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 103 # instrumentation
SETB AL 
BT RSI, RCX 
BTS ECX, 78 
AND DIL, 126 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], RDX 
MOVSX EDI, SI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RSI] 
AND DIL, 57 # instrumentation
CMOVNZ RAX, RBX 
MOV SIL, -34 
SETZ AL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
AND DIL, -92 # instrumentation
SETLE CL 
MOVZX CX, CL 
CMOVNP RCX, RBX 
AND DL, 60 
BTR BX, DI 
TEST SIL, -9 
JMP .bb_main.3 
.bb_main.3:
OR DIL, -106 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
CMOVZ ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RBX 
CMOVNP AX, SI 
CMC  
BTC SI, SI 
MOVSX EAX, CL 
AND RBX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RBX], AX 
AND RAX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RAX] 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -82 # instrumentation
CWDE  
CMOVNB ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], AX 
SETBE DL 
CMOVNB RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
