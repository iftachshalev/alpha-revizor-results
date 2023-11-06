.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT DX, 30 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], 62 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
XOR AX, -122 
AND EDX, ECX 
BT EAX, 115 
SETZ DIL 
OR AL, 40 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST RSI, -549179136 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 0 
AND DIL, 65 # instrumentation
SETNLE SIL 
CMOVNBE ECX, EDX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
XOR RDX, RAX 
XOR RAX, -586131935 
AND RDI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDI] 
CMOVNLE SI, CX 
SETB AL 
SETNO CL 
AND AX, 10901 
CMPXCHG DL, AL 
SETNLE BL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 93 # instrumentation
CMOVBE EBX, EBX 
BTR EAX, -14 
AND DIL, -15 # instrumentation
CMOVNO ECX, EDX 
XCHG AX, AX 
XCHG DI, CX 
AND DL, 116 
AND AX, 25358 
CMOVNO RAX, RSI 
CMC  
XCHG SIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
