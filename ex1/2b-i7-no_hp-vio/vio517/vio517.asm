.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -33 # instrumentation
SETP DL 
CMOVNP EBX, EAX 
XADD CL, DL 
CMOVBE EDI, EDX 
MOVZX RAX, DIL 
MOVZX RDI, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 2012718199 
NOT EDI 
CMOVNBE EAX, EBX 
OR EBX, -25 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
SETNO SIL 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RCX] 
BTS ESI, 81 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR EDX, EBX 
XCHG RAX, RAX 
TEST CL, AL 
CMOVBE RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
CMOVNB EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], -99 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
XCHG BL, AL 
CMOVNS DI, CX 
MOVZX ECX, SI 
SETNLE CL 
TEST CL, AL 
MOV EDX, -577198663 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
