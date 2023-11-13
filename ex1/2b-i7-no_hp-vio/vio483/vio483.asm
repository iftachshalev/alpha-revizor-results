.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
CMOVNB SI, BX 
AND SIL, BL 
CMPXCHG SIL, SIL # instrumentation
CMOVNO EDI, ECX 
LAHF  
SETB AL 
OR AX, -27404 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RCX], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 46 
AND RAX, 99 
CMOVNO RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
MOVSX EDX, CL 
TEST DL, -42 
AND BL, BL 
AND RSI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RSI] 
BT ESI, -29 
BSWAP EDI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -4 # instrumentation
XCHG EDX, EAX 
CMOVNP ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], DX 
AND AL, 0 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDI 
CMPXCHG AX, CX 
AND AX, -17749 
AND SI, CX 
CMOVNZ BX, AX 
OR DIL, -70 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
