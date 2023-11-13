.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 16 # instrumentation
CMOVNO EDI, ECX 
AND RCX, 4 
TEST DX, -11804 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
OR RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
SETS CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
CMOVLE RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1820556191 
MOV ECX, 1724617589 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DL 
CMOVB SI, BX 
XADD RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RCX] 
XCHG EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
OR RAX, 112 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RBX] 
BT RCX, -46 
AND AL, SIL 
CMOVNZ EAX, EDI 
SETBE CL 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 204926621 
TEST RDI, -964285353 
SETS DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
