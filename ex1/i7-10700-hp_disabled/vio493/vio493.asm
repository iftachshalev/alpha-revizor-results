.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -3 # instrumentation
CMOVNS ECX, ESI 
AND AL, 31 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RCX 
CMOVNB RDI, RDI 
CMOVNZ DI, SI 
XOR ESI, -72 
BTC AX, BX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -95 
XCHG DI, BX 
XOR EAX, -1043778403 
MOV RAX, -5944087178645950726 
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
CMOVP RSI, RSI 
CMOVNS CX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EAX 
SETS BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RCX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 115 # instrumentation
CMOVO SI, BX 
CMOVNP RDX, RBX 
SAHF  
TEST DL, AL 
XOR EDI, EBX 
NOT DX 
CMOVB EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
NOT ESI 
SETS DL 
MOV CL, -123 
MOV SI, DX 
CMPXCHG BX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
