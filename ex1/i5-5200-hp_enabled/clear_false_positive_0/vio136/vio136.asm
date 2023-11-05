.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], AX 
SETNLE AL 
SETNB BL 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
CMOVLE AX, DI 
CMPXCHG RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RDX] 
OR SIL, -93 
TEST CL, 92 
AND RDI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RCX] 
XOR DL, 9 
CMOVNBE DI, SI 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1556950647 
JMP .bb_main.2 
.bb_main.2:
XOR AX, CX 
MOV AX, 3703 
AND ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
XCHG ECX, EAX 
XOR SI, 36 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -50 # instrumentation
CMOVO RCX, RCX 
CMOVNS AX, SI 
CMOVL DI, DX 
CMOVZ RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RCX] 
CMOVNB RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
