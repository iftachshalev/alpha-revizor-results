.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS SI, 58 
BSWAP ECX 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], -47 
CMOVL AX, AX 
CMOVNLE RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], RSI 
XCHG RAX, RCX 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -115 # instrumentation
SETBE AL 
TEST EAX, -613736979 
AND EBX, EDI 
BT RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
AND DIL, -33 # instrumentation
SETO BL 
MOVSX EAX, CX 
SETZ BL 
SETNLE AL 
JMP .bb_main.2 
.bb_main.2:
OR CX, 30 
CMOVNO DI, CX 
XCHG CL, DL 
CMOVO DI, AX 
CMOVNO CX, DX 
OR RAX, -125 
SETNBE BL 
STC  
SETS AL 
OR CL, DL 
CMOVNO EDX, EDI 
BSWAP EDI 
CMOVO ECX, EDI 
XCHG RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
