.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SIL, SIL 
AND RAX, -62846301 
MOVZX DI, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
AND BL, DIL 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EBX 
BTC EDI, EAX 
AND DIL, -62 # instrumentation
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BT AX, SI 
AND EBX, ESI 
OR AL, -84 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
AND RAX, -932367490 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RCX] 
CMOVL SI, DI 
SETLE CL 
XOR BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RAX 
CLD  
XOR EDX, -115 
SETNL DL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 99 # instrumentation
CMC  
LEA RAX, qword ptr [RDX] 
CMOVNS RCX, RBX 
CBW  
AND BL, SIL 
SETP BL 
CMOVB AX, CX 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -99 # instrumentation
SETNS DL 
SETNS DL 
BTS RDI, -100 
AND RSI, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RSI] 
BTS AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
