.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND AL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
BT ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RCX 
AND DIL, -52 # instrumentation
CMOVNBE EBX, ESI 
OR DIL, 83 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], DX 
MOVZX DX, CL 
BT RAX, RDX 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST SIL, 22 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
BTS RDX, RDX 
CWDE  
XOR RAX, -54 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR ECX, EAX 
BTC EBX, -11 
CMOVNB EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RSI] 
MOV RDX, RBX 
CMOVNBE RCX, RCX 
TEST RCX, -1636244303 
CMOVO BX, CX 
AND SI, DI 
JMP .bb_main.4 
.bb_main.4:
MOVSX EAX, SIL 
AND CL, -6 
XOR AX, 22051 
TEST RAX, -271567130 
CMOVNP RCX, RBX 
XCHG ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
