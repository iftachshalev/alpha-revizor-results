.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -7 
XOR EAX, 1869749591 
XCHG DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RBX] 
SETLE SIL 
OR EAX, 1313905239 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
NOT BX 
XCHG EBX, EAX 
CWDE  
XOR CX, -81 
XOR RSI, 49 
MOVZX EDX, CX 
BTC RBX, RSI 
SAHF  
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RAX] 
XOR EAX, 72 
AND SI, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 120 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 5 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], CL 
OR EAX, 779241322 
CMOVNB DX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], DI 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
CMOVP RBX, RDX 
MOVSX SI, CL 
XOR ESI, ESI 
CMPXCHG RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], BX 
CMOVNP RDI, RBX 
CMOVNBE ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
