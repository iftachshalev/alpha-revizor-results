.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EAX 
SAHF  
CWD  
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 26085 
CMPXCHG DL, DIL 
CMOVNB EDX, EBX 
BTR EBX, 58 
MOV DL, -49 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -43 # instrumentation
CMOVL RBX, RDX 
BT RBX, -120 
AND SIL, 96 # instrumentation
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND EAX, 992895231 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RCX] 
CMOVZ BX, CX 
XOR RAX, -530045126 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
MOVZX BX, AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
BTS EAX, -107 
AND SIL, 1 # instrumentation
CMOVNL EDI, EAX 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
JMP .bb_main.4 
.bb_main.4:
AND SIL, 16 # instrumentation
BSWAP RSI 
SETZ CL 
TEST RAX, 457442785 
CMOVNO AX, AX 
SETNB AL 
TEST ECX, 538903126 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
BT SI, 26 
CMPXCHG DIL, BL # instrumentation
AND DIL, 108 # instrumentation
LAHF  
XCHG ECX, EBX 
CMOVLE EAX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
