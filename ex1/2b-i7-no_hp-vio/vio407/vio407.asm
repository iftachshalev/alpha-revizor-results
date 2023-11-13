.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 91 # instrumentation
CMOVB EDX, ECX 
BTR RAX, RAX 
AND SIL, 90 # instrumentation
SETS BL 
CMOVNS RBX, RBX 
CMOVNL RDI, RBX 
CMOVNO ECX, EAX 
SETNBE CL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
MOV CL, 17 
CMOVNLE RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RSI] 
AND DIL, -109 
AND DI, BX 
TEST AX, -10642 
XADD EDX, EDX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG SIL, SIL # instrumentation
AND SIL, -86 # instrumentation
MOV CL, -97 
MOV DL, -33 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
XCHG EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDI], 7 
AND DIL, -99 # instrumentation
CMOVNS EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], 9 
CMOVO SI, DX 
AND RCX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RCX] 
XCHG EDX, EAX 
MOV SIL, 23 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RSI] 
CMOVZ RCX, RCX 
OR DX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
