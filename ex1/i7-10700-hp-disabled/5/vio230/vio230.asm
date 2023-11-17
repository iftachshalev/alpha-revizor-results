.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RCX], EDI 
AND SIL, 42 # instrumentation
CMOVNP ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -18 # instrumentation
CMOVNP DI, CX 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RCX], 4 
AND DIL, 111 # instrumentation
SETNP DL 
NOT AL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CDQ  
TEST RAX, 515490645 
CMOVBE SI, SI 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], 41 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
AND DX, -87 
CMOVNLE BX, SI 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 6 
CMPXCHG CL, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
MOV EDI, 58945478 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
XOR AL, AL 
AND EAX, 1299214737 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -76 # instrumentation
CMOVZ ESI, EDI 
BTR ECX, -75 
AND RBX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RBX] 
SETO DL 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
XOR RAX, -23 
SETO AL 
BTS EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
