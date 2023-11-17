.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BL, CL 
AND ECX, EAX 
BSWAP RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RCX] 
TEST SIL, -31 
OR RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RSI] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, EAX 
CMPXCHG CX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], 59 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RCX] 
SETNZ CL 
XOR CL, 91 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RCX 
XOR DL, BL 
AND ECX, 68 
AND CX, 67 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
CMOVZ RDX, RAX 
XOR EAX, 831543719 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 125 
TEST SIL, -112 
MOVSX AX, AL 
BT AX, 113 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
BTS RDI, 70 
TEST RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
SETBE AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
