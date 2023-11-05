.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, RBX 
CMOVNP EDX, EBX 
TEST SI, AX 
SETNLE DL 
TEST AL, -19 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
SETLE DIL 
CMOVS ESI, EDX 
CBW  
CMOVB RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 103 
XCHG EBX, EAX 
SETL SIL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 77 # instrumentation
SETLE BL 
SETNO CL 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EBX 
MOVZX EBX, CL 
CMOVBE EDI, EDX 
BTC BX, -15 
XOR AX, 17137 
SETNO DL 
MOV CX, 11422 
CMOVNBE RDI, RAX 
TEST DI, 5375 
BTC RAX, -102 
XOR CL, DIL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
XADD EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
TEST AL, 99 
SETNS CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
