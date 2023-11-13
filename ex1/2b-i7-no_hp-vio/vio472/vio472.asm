.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 20927 
SETBE AL 
MOVSX BX, SIL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
CBW  
SETZ DIL 
CMPXCHG AL, BL 
SETNZ SIL 
AND RAX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RSI], 3 
XCHG SI, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -128 
SETBE CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND AL, 122 
CMOVNBE DI, BX 
SETNBE BL 
AND RAX, 71 
AND EDX, -124 
SETNB BL 
CMOVNLE RDI, RAX 
MOV RDI, -8687976661613317901 
CMPXCHG BL, SIL 
NOP  
CDQ  
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RSI] 
BTS DX, 39 
XCHG BL, DL 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 858 
SETZ AL 
SETNS AL 
CMOVNL CX, AX 
XOR RDI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
