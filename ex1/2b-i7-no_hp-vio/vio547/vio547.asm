.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT DI, 120 
AND DIL, -107 # instrumentation
SETL CL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], -45 
CMOVNBE RDI, RSI 
BTS RSI, 63 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
CMOVNZ RDI, RSI 
SAHF  
CLC  
MOVZX EAX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RSI] 
SETNP DL 
BT EDI, EAX 
AND DIL, -91 # instrumentation
SETNB BL 
CMOVNL EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RDX, RDI 
LEA AX, qword ptr [RBX + RBX + 34290] 
SETNZ CL 
CMOVNLE EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDI] 
AND RAX, RDX 
XADD BL, AL 
BSWAP EAX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], ESI 
BT RDX, RSI 
BTS ECX, -74 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], 32 
CMOVNP ECX, EBX 
TEST AX, -9306 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
