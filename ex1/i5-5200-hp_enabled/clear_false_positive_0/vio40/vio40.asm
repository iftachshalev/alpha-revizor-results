.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 1820539536 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
XCHG AX, AX 
TEST SI, 6987 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
XCHG CL, AL 
XOR CL, -84 
SETS BL 
AND RDX, -90 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], CX 
MOV DL, -18 
XADD ESI, EBX 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RCX 
OR EAX, -997188635 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 11 # instrumentation
CBW  
MOV ECX, EAX 
CMOVNBE RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 15 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
BTC EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
CMOVZ EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RAX] 
CMOVNB DI, BX 
CMOVNZ CX, AX 
BSWAP ESI 
CMOVNZ EAX, ECX 
TEST DIL, SIL 
MOVSX RSI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
