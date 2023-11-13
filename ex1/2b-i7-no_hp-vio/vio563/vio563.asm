.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -82 # instrumentation
MOVZX EDX, AL 
CMOVZ RSI, RAX 
CMOVP EBX, EDI 
CMOVNL EDX, EDX 
BT SI, -3 
TEST RCX, 1273051598 
XOR SI, DI 
CMC  
OR EBX, EBX 
AND EAX, 1935717796 
CMOVNL EAX, ESI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RBX 
AND AL, BL 
AND SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], 88 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 47 
BTC ESI, ECX 
AND AX, 26226 
BSWAP EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EAX 
AND BX, 52 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RAX 
SETBE DIL 
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
MOVSX SI, AL 
TEST RAX, -1849599356 
CMOVZ RDI, RAX 
BTC SI, 115 
OR AL, -58 
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
