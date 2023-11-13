.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR RBX, 1 
OR RAX, 2116998246 
SETNP CL 
AND EAX, 1946723533 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDI] 
CMOVP RSI, RSI 
CLC  
OR AX, 0b1000000000000000 # instrumentation
BSR CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EBX 
CMOVNLE RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
NOT CL 
BSWAP ECX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RAX] 
AND DIL, -64 # instrumentation
SETNS SIL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 117 # instrumentation
CMOVB DI, CX 
BT AX, DX 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RBX] 
SETS CL 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], -36 
CMOVZ AX, BX 
XCHG EAX, EAX 
CMOVZ CX, CX 
AND EAX, -160076974 
CMOVNS BX, DI 
MOV ESI, EDI 
BTC RBX, RDX 
OR DL, BL 
CMPXCHG RSI, RCX 
OR DIL, 49 
BTC EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
