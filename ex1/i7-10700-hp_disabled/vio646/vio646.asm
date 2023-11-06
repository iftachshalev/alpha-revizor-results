.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AX, -31337 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDX], RCX 
CMOVBE RDX, RDI 
CMOVB EDX, EBX 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RCX] 
CMOVNO BX, DX 
BT AX, -120 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], CL 
BT ECX, ESI 
MOVSX ESI, CX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RBX] 
SETNLE AL 
CMOVP RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RDI], DI 
SETNBE BL 
AND RAX, RDI 
AND EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RCX] 
MOV SIL, 48 
AND RDI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDI] 
MOV CL, -79 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 12 # instrumentation
BTS BX, CX 
CMOVZ ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], ECX 
TEST EBX, 802550435 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
CMOVNL RAX, RAX 
XCHG CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
