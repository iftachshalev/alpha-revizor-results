.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], -103 
SETNZ DL 
CMOVNP EDX, EAX 
SETS BL 
SETNLE BL 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTC qword ptr [R14 + RBX], RDX 
BTS RDX, -73 
AND SIL, 122 # instrumentation
SETO DIL 
XCHG RSI, RCX 
XOR EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RAX] 
OR CL, DL 
SETNBE DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], BX 
OR RAX, -141312549 
BSWAP EDX 
CMOVNS EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
NOT RDX 
CDQ  
CMOVNLE RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
SETZ SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RCX] 
NOT DX 
TEST EAX, 651957927 
CMOVL ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], DI 
CMOVBE RAX, RBX 
OR ESI, 118 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
