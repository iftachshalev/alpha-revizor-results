.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 83 # instrumentation
SETNS DL 
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
XCHG ESI, EAX 
CMOVLE EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
CMOVB AX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RBX] 
CMOVNP RDI, RAX 
MOVZX ESI, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
MOVSX SI, AL 
XOR EAX, -682789829 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], SI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 115 # instrumentation
CMOVNO SI, CX 
XADD BL, AL 
CMOVLE EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], 47411896 
MOVSX DX, CL 
SETNBE CL 
CMOVP DI, AX 
CMOVL RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 1 
CMOVBE RBX, RCX 
NOT DX 
BT EDX, 68 
XCHG BL, BL 
JMP .bb_main.2 
.bb_main.2:
OR BL, AL 
AND EAX, -1605016564 
CMOVO RDI, RDI 
SETP CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
