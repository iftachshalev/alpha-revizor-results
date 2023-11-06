.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 56 
CMOVNO RDX, RBX 
CMOVNP DX, BX 
XOR RAX, 1966709346 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 0 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], 79 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
SETLE AL 
CMOVNP DX, BX 
JMP .bb_main.2 
.bb_main.2:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
AND SIL, 123 # instrumentation
SETNS CL 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EDX 
BT RSI, -71 
CLC  
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 26 # instrumentation
CMOVNLE ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
OR BX, AX 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
XADD SI, BX 
CMOVNBE RCX, RDI 
CMOVZ BX, DI 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 4 
AND DIL, 123 # instrumentation
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST AL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RCX] 
XCHG BL, DL 
MOVZX RCX, CL 
XOR RDX, -95 
STD  
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
