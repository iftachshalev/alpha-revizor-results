.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, EBX 
XOR AL, 127 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 121 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
SETNB DL 
XOR RAX, -145472271 
NOP  
CMOVZ SI, AX 
CMOVNLE SI, BX 
MOVSX ESI, BL 
SETNP AL 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RDI], DI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], DI 
SETLE CL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -128 # instrumentation
SETNP DIL 
MOVSX RDI, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
BT AX, AX 
OR CX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTR word ptr [R14 + RAX], SI 
AND RAX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RAX], 4 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
SETS AL 
XOR DI, SI 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -708768666 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
SETNS AL 
AND AL, 86 
BTR EDX, 74 
AND SIL, 53 # instrumentation
SETS BL 
SETBE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
