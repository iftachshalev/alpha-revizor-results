.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
MOVZX DI, DIL 
NOP  
CMOVNP ESI, ECX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
XOR AL, 26 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], BL 
CMPXCHG CX, AX 
SETO AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, -73 
BTC EDX, 33 
AND SIL, -89 # instrumentation
SETP CL 
BT BX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RSI] 
CMOVNBE RDX, RDX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DX 
BSWAP EDI 
CMOVP SI, DI 
CMOVS DX, DX 
TEST AX, -11137 
CWD  
BT CX, -84 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 4 
AND SIL, -77 # instrumentation
CMOVNL DX, AX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -339101488 
BT EBX, -42 
XCHG DL, BL 
TEST AL, 27 
OR AL, -26 
SETO AL 
MOVZX EDX, SI 
BTR AX, -10 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
