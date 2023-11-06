.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT DX 
OR RAX, -713951626 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
CMOVNS EAX, ESI 
CMOVNLE EBX, EDX 
XOR RDI, 2 
BT RAX, RDX 
AND DIL, -99 # instrumentation
SETS AL 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], 4 
NOP  
CMC  
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
TEST CL, AL 
OR AX, -122 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
CMOVL RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -73 
TEST SIL, 96 
CMOVL RBX, RDI 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -73 # instrumentation
XCHG SI, AX 
CMOVB DX, SI 
OR DL, AL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], -51 
SETO BL 
BT ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RCX], 2 
CMOVBE EBX, EDX 
AND CL, AL 
CMOVNO RDX, RSI 
XOR EBX, ESI 
XCHG CX, CX 
CMOVNL RBX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
