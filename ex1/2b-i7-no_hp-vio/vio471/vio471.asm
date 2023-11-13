.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 36 # instrumentation
CMOVP RSI, RDX 
SETNZ AL 
SETNS SIL 
MOVSX DX, BL 
CWDE  
CMOVO EAX, EAX 
XADD AL, BL 
CMOVNLE SI, AX 
MOVZX SI, DL 
MOV EBX, -603275441 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 7 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], CX 
SETZ CL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
BTC EDX, EDI 
XOR CX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
OR RSI, RBX 
MOV RBX, -3119611622849503410 
XCHG DL, AL 
CMOVO EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], CL 
OR DL, 93 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
CMOVNP EDI, EBX 
SETP AL 
BTS RAX, -42 
MOVSX SI, DL 
MOVZX ESI, CL 
XOR AX, 7385 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
