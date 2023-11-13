.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -100 # instrumentation
CMOVB RDI, RSI 
NOT RSI 
BTS RDX, -97 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
BTC BX, 71 
AND SIL, -34 # instrumentation
CMOVLE EAX, EDI 
CMOVNS BX, DI 
CMOVNZ SI, SI 
CMOVB RDX, RAX 
CBW  
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RDI 
SETNBE DIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 122 # instrumentation
MOV SI, SI 
BSWAP RSI 
CMOVNS RDI, RDX 
NOT EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
TEST RSI, RDX 
CMPXCHG DL, SIL # instrumentation
LAHF  
NOT RCX 
XADD DX, DI 
XADD RAX, RDX 
LEA AX, qword ptr [RBX] 
OR EBX, EDX 
SETNS CL 
BSWAP EDI 
XCHG DI, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RDX 
SETNL SIL 
AND RDI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDI] 
BTR EDI, ECX 
AND DIL, 73 # instrumentation
CMOVNP RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
