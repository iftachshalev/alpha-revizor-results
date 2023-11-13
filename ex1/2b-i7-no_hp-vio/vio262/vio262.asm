.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDX] 
CMOVZ RSI, RDI 
CMOVNLE EAX, EBX 
XOR RAX, -1577885774 
BTR RCX, RDX 
XOR RAX, 44 
MOV RAX, RCX 
SETNB BL 
SETLE DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDX] 
AND DI, DX 
OR RDI, 122 
SETNBE AL 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -8 
SETNP CL 
CMOVNL ECX, EAX 
SETLE DL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, -3773 
AND SIL, -124 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RAX] 
BSWAP EAX 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
TEST AL, 50 
CLD  
BTR EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
