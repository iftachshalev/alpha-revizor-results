.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RSI, 3515867849222193815 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
SAHF  
BTC BX, 97 
OR DI, CX 
BTS RDX, -87 
XADD SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], 104 
XCHG RAX, RAX 
CMC  
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
MOVZX EDX, DL 
BSWAP EAX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS RAX, 103 
TEST RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], CL 
CMOVBE RAX, RSI 
CMOVNS ECX, EAX 
SETS CL 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RAX 
AND SIL, -51 # instrumentation
CMOVBE RBX, RCX 
CMOVS SI, AX 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], RAX 
STC  
XOR BX, 12 
MOVSX AX, AL 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -124 
CMC  
BTS DX, DI 
AND SIL, BL 
XOR BX, SI 
AND ESI, -66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
