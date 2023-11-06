.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -15 # instrumentation
CMOVLE EDX, ECX 
BSWAP EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RSI] 
MOVZX RSI, CX 
CMOVS ESI, ESI 
CMOVB RSI, RAX 
SETNBE DL 
TEST EAX, 181386457 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -99 # instrumentation
MOV AL, CL 
MOVZX RSI, CL 
CMOVS SI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RCX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMPXCHG DIL, CL # instrumentation
AND SIL, -122 # instrumentation
CMOVO EDI, EBX 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 3 
SETB AL 
BTS AX, -101 
AND DIL, -95 # instrumentation
SETL AL 
STC  
CMOVNBE DX, CX 
XADD RAX, RBX 
CMOVNO EDI, EBX 
CMOVLE SI, SI 
XADD ESI, ESI 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], -99 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 1678835099 
TEST CX, -28685 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMOVLE RAX, RDX 
SAHF  
AND BX, -86 
STC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
