.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -3 # instrumentation
CMOVNL SI, BX 
XADD EBX, ESI 
BSWAP RSI 
OR RAX, RCX 
BT EAX, -23 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 0 
AND DI, 32 
BTR RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RSI 
TEST DX, AX 
BTS DX, -79 
AND EAX, EDX 
AND SIL, -99 
STC  
AND RAX, -1406653611 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -43 # instrumentation
CMOVZ DX, SI 
XCHG BX, BX 
XOR CL, DL 
SETNZ AL 
XOR EBX, EDI 
AND EDI, 34 
CMOVNB ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RCX] 
SETNO DL 
SETO BL 
SETNO BL 
BTS EAX, 49 
OR AL, 73 
XOR SI, -71 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RCX] 
MOV RBX, -8387205255231479911 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
