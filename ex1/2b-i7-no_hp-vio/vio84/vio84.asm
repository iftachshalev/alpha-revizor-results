.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, DI 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
XOR RAX, RSI 
CMOVZ RAX, RDI 
CMOVNBE DX, DX 
SETNP BL 
CMOVBE ESI, ESI 
XADD BL, AL 
SETL AL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RDI 
BT RAX, 127 
AND AL, BL 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], SI 
TEST AL, -93 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 6 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 86 # instrumentation
CMOVNL BX, AX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RAX] 
AND DIL, -120 # instrumentation
CMOVNBE DI, DI 
OR RAX, -924175690 
XCHG AL, AL 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RDI], DI 
AND AL, -18 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDX], 7 
XOR EAX, ECX 
SETP BL 
AND AX, -32614 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RCX 
CMOVNBE CX, CX 
CMOVLE SI, DX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDI] 
TEST ECX, EAX 
SETO DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
