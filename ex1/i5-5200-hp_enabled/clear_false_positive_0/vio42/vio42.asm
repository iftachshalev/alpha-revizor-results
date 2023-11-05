.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 77 # instrumentation
CMOVNBE RCX, RDI 
SETNZ CL 
AND RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], CX 
NOT RCX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
XOR ESI, 13 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RDX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RBX] 
AND EBX, 16 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RBX] 
AND SI, AX 
CMOVNBE RCX, RBX 
CMOVZ EAX, ECX 
MOV DL, CL 
CLC  
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
CMOVNS RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
TEST AX, -21671 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -16 # instrumentation
CMOVNP BX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 7 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RCX] 
OR RBX, -86 
CMPXCHG EDI, EDI 
AND DIL, 43 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDI] 
CMOVNL ECX, ECX 
BTS AX, AX 
XOR AX, -13337 
XCHG RDX, RAX 
XOR EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
