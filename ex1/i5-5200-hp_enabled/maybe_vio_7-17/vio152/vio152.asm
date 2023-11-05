.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLC  
CLC  
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 0 
XADD DL, BL 
AND AL, -121 
CMOVZ EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDX], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RBX] 
CMOVB RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -36 # instrumentation
CMOVNB RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RCX 
MOV RAX, RSI 
BTC DX, DX 
CMOVNZ EDX, ESI 
OR SI, 0b1000000000000000 # instrumentation
BSR CX, SI 
AND SIL, 87 # instrumentation
CMOVNO EDX, EAX 
SETNL DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
AND SIL, -53 # instrumentation
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
BTS BX, 22 
AND DIL, -24 # instrumentation
SETNP AL 
CMOVNZ ESI, EAX 
CMOVNLE EAX, EBX 
TEST DX, 1434 
MOVSX RCX, SI 
AND EAX, -326462174 
BT SI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
