.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -41 # instrumentation
NOT SI 
CMOVNP BX, DI 
MOVSX RCX, AX 
OR DI, 10 
BTC AX, AX 
TEST RSI, RCX 
SETZ BL 
AND BL, BL 
MOVZX EBX, BX 
CMOVNB ESI, EAX 
CMOVNBE ECX, EDX 
SETO CL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RDX 
SETNBE DL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RDX 
CMOVBE RDX, RCX 
MOVSX CX, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RAX] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
CMOVLE SI, DI 
SETLE CL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], DL 
TEST AX, -1539 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RSI] 
CMPXCHG EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], 2 
XOR SI, BX 
MOVSX CX, CL 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
