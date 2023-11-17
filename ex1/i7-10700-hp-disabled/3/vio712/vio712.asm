.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DL, BL 
CMOVNL ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RSI] 
CMOVO EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RDI] 
LEA RCX, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
TEST EAX, -1557279450 
CMOVLE AX, AX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
BT DX, DX 
BSWAP RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDX] 
SETZ DL 
BTS RDI, 22 
BT EDI, 63 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], AL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDI], 4 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
XCHG DI, SI 
CMOVNB CX, SI 
SETNP CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], BL 
CMOVNZ EAX, ESI 
XCHG DI, DX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RSI] 
AND SIL, -12 # instrumentation
SETNP CL 
AND SI, -61 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], BL 
OR RDX, RAX 
CMPXCHG ECX, EDI 
XCHG AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
