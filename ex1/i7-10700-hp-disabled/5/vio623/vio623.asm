.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, -121 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RAX], 1 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
CMOVNLE DX, DI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 3584 
TEST ESI, 2125744137 
CMOVZ RSI, RAX 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -43 # instrumentation
CMOVNS DX, AX 
AND EAX, 982641553 
XCHG AL, DL 
XOR AX, -12183 
MOV DL, AL 
MOVSX AX, AL 
CMOVZ ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
SETZ SIL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD CX, DI 
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
CMOVL CX, BX 
TEST SI, -18341 
BSWAP RBX 
MOVSX EAX, BL 
BTC CX, -68 
JMP .bb_main.3 
.bb_main.3:
AND AL, -16 
AND EAX, -1795226689 
TEST SIL, 45 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], 52 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
CMPXCHG DX, SI 
AND RSI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RSI] 
CMOVO ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
