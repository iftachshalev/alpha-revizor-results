.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG AX, AX 
TEST RAX, -166896468 
CMPXCHG DIL, CL 
CMPXCHG RDI, RDX 
AND EBX, 94 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], AL 
OR AX, 28060 
BSWAP RAX 
SETNLE DIL 
AND RBX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RBX], 4 
BTS AX, DI 
AND DIL, -97 # instrumentation
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XCHG CX, AX 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RAX 
CMOVBE BX, SI 
CMOVBE EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BT qword ptr [R14 + RBX], RSI 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
MOV AX, 11897 
BTC RDI, RDX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 59 # instrumentation
STC  
MOV RBX, RSI 
MOVZX ESI, DX 
CMOVS RDI, RSI 
BT RAX, -86 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 123 # instrumentation
SETNL BL 
AND RAX, 1207292684 
SETNS BL 
AND RCX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RCX], 3 
AND DI, -64 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
