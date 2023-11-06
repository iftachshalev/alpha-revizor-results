.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 76 # instrumentation
CMOVS ECX, ECX 
TEST DL, -78 
MOVZX DI, BL 
SETL AL 
STC  
CLC  
XOR DL, -50 
XCHG DX, CX 
SETL CL 
BT SI, SI 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], ESI 
BTC ESI, EDX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND CL, -61 
AND RAX, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RAX] 
CMC  
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
CMOVNP RSI, RAX 
XOR RAX, 83707990 
BSWAP EDI 
BTR AX, -91 
AND SIL, -98 # instrumentation
SETL DIL 
XCHG ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
CWD  
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -2 # instrumentation
SETNL DL 
BTC DI, DI 
CMOVNB SI, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
CMOVNS DI, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], SIL 
AND AX, 17563 
CMOVNS ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
