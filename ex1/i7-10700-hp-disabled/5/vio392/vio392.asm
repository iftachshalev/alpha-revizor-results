.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -86 # instrumentation
CMOVNL EDX, ESI 
AND SIL, 11 
TEST AX, -878 
MOVZX RCX, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EAX 
XCHG AL, AL 
SETS AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RSI] 
LEA AX, qword ptr [RAX + RSI + 5227] 
XCHG RDI, RAX 
TEST EAX, 243345756 
CMOVB CX, SI 
NOT ECX 
MOVSX ESI, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
CMOVB ESI, ESI 
NOT DI 
SETS BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDX], RDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC DX, -94 
MOVZX EAX, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], AX 
TEST SI, CX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RCX] 
CMOVNZ CX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDX] 
XOR EAX, -773700267 
XOR SIL, 81 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RCX] 
SAHF  
BTC RSI, RCX 
OR RAX, -1807489978 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
