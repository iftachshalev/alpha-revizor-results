.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
SETP AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RCX], 7 
BT ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
MOV SI, 30984 
NOT CL 
SETBE DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
CMOVNL RDI, RAX 
CWDE  
MOV DL, BL 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
SETNB CL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RBX] 
TEST RDX, RDI 
SETNL BL 
BTC EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RSI], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDX] 
OR AX, -10286 
LEA ESI, qword ptr [RDI + RDI] 
BT EBX, ECX 
AND RAX, 342530724 
CWD  
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RSI], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
BTC EDI, 109 
BTC BX, 95 
AND SIL, -85 # instrumentation
CMOVNL AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
