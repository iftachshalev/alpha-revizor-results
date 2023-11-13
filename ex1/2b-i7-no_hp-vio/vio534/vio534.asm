.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -39 # instrumentation
CMOVO AX, AX 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RBX] 
BTC EDI, ECX 
AND DIL, -67 # instrumentation
XCHG AL, SIL 
SETS AL 
OR AX, BX 
XOR CL, AL 
CMOVL RBX, RCX 
LEA RDI, qword ptr [RDX + RSI] 
BTR ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
CMOVNZ EDX, ECX 
XCHG SI, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
MOV EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
BTS SI, AX 
XCHG DIL, DL 
OR EBX, EAX 
CMOVNZ DX, AX 
MOVZX RAX, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
CMOVP DI, DX 
CMOVLE RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
XOR BL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RSI] 
SETP CL 
TEST DL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
