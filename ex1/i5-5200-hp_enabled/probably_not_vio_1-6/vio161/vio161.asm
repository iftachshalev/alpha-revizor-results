.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
SAHF  
CMOVNS ESI, ESI 
TEST AX, -11204 
CMOVP DI, AX 
MOVSX EDX, BL 
SETL DIL 
CMOVNO DI, DX 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], ESI 
CMOVNLE RSI, RCX 
SETO CL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -57 # instrumentation
CMOVNP CX, AX 
CMOVNZ DX, SI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
CMOVNZ CX, DI 
AND RCX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RCX], DI 
CMOVNZ CX, DI 
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
BTS RDX, -64 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], DL 
CMOVBE RDX, RBX 
AND ESI, ESI 
CMOVLE RSI, RDI 
MOVZX RSI, AL 
XADD SI, CX 
CMOVNBE EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RBX 
JMP .bb_main.3 
.bb_main.3:
CMPXCHG SIL, DIL 
CMOVNLE EDI, ECX 
BT ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
