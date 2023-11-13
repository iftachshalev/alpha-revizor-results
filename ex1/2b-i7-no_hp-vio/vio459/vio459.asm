.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 118 # instrumentation
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDX] 
CMOVNBE RAX, RSI 
SETNS DL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND DIL, -117 # instrumentation
XCHG RAX, RAX 
CMOVZ ECX, EAX 
CMOVL SI, SI 
AND EAX, -2047740397 
XOR AL, DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RDX, -48 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RAX] 
CMPXCHG RSI, RBX 
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
CMOVNZ EDI, EBX 
MOVSX EDI, SIL 
XOR DIL, -99 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RDI 
SETNZ CL 
XOR EDX, 57 
BTS EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], BX 
AND RAX, RCX 
XOR BX, DX 
AND RDX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
BTS RAX, RDX 
AND DIL, 110 # instrumentation
CMOVLE EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
