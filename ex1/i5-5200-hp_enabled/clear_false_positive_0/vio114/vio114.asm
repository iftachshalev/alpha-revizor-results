.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -64 # instrumentation
CMOVNS ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], -113 
BTR EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 7 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RAX 
AND DIL, -107 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SAHF  
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RCX] 
MOVSX SI, CL 
XCHG AL, CL 
CMOVNP EDX, EBX 
MOV CL, -29 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
BTR EAX, ECX 
CDQ  
NOT ECX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 127 
XOR RAX, 91801674 
CMPXCHG DIL, DIL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 29 # instrumentation
CMOVNP EAX, ECX 
TEST DI, AX 
CMPXCHG DIL, AL # instrumentation
LAHF  
CMOVBE EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
CMOVNBE RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
SETS CL 
XOR BL, CL 
CMOVNBE RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
