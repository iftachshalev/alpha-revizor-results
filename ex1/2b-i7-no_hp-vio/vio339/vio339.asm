.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, -42 
XCHG AL, AL 
CMOVLE DI, AX 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], -53 
SETS BL 
SETNP SIL 
CMOVS AX, CX 
MOV CL, AL 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], EDX 
CMPXCHG AL, SIL 
CMOVLE EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], DI 
AND RAX, 493512963 
CMOVNBE DX, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
MOVSX SI, DIL 
SETNL AL 
STD  
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], -28 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
CMOVLE RBX, RSI 
XOR RAX, -1112734311 
XOR SIL, -122 
AND CL, -83 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], ESI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
