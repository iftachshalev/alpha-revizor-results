.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 78 # instrumentation
CMOVNBE CX, DX 
CWD  
CMOVNP RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
CLC  
XCHG RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], AX 
SETNS CL 
MOVSX CX, DL 
CMOVO RBX, RSI 
SETNO BL 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTS word ptr [R14 + RCX], AX 
AND RCX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD CL, AL 
AND AX, 44 
BTR EDX, 94 
AND DIL, -72 # instrumentation
SETLE CL 
SETNZ DL 
CMOVBE AX, CX 
CMOVNP EAX, EAX 
CMOVNB EBX, ECX 
AND SIL, 127 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RDI] 
CMOVZ BX, AX 
XOR RCX, RDI 
MOVZX EAX, DL 
BSWAP RSI 
BT RDI, RAX 
XADD DX, SI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
