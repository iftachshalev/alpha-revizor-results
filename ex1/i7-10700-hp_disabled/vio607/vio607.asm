.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, 13994 
TEST SIL, -55 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
MOVSX EAX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
SETP AL 
CMOVNO AX, DI 
TEST EAX, -1815561450 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EDI 
XOR SIL, 8 
CMOVS RSI, RSI 
SETNO CL 
CMPXCHG SI, CX 
BTC RDI, -50 
XADD BL, BL 
CMOVNS SI, DI 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG DL, DL # instrumentation
AND SIL, -123 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDI] 
MOV AL, SIL 
BSWAP RDI 
TEST EBX, ECX 
CMOVNL RCX, RSI 
BSWAP RDX 
SETL BL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -111 # instrumentation
SETNB CL 
MOV ESI, ECX 
NOT AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RSI] 
XADD CL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], DI 
AND RCX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
