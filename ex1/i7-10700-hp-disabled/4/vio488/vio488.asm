.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RBX] 
TEST SI, -29506 
OR BL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RBX] 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR CL, -25 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
AND SIL, -72 # instrumentation
MOVSX EBX, DX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
CMPXCHG RAX, RDX 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
TEST AL, 26 
OR ESI, -127 
OR DIL, DIL 
TEST DIL, 39 
CBW  
CBW  
LEA EDX, qword ptr [RDX] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG DL, BL 
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
CMPXCHG BX, CX 
CMOVZ DX, DX 
BTC EDI, ECX 
AND BL, BL 
CMOVNP DX, SI 
AND BX, BX 
TEST BX, SI 
SETNZ AL 
CMOVZ CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RSI] 
CMOVLE SI, BX 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
