.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RCX] 
XADD DL, CL 
BSWAP ECX 
CMOVNL SI, DX 
AND DL, 59 
SETNP CL 
SETBE BL 
TEST AX, 16016 
CMOVNO SI, SI 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
AND AX, 4592 
CMOVNP RSI, RDI 
SETL SIL 
SETNBE CL 
CMOVNB RAX, RAX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
CMOVNS SI, AX 
BT ESI, EDI 
BTR BX, DI 
NOT DI 
AND AL, DIL 
CMPXCHG DIL, CL # instrumentation
LAHF  
BT ECX, 18 
OR AX, -3310 
AND RAX, 488496214 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], DX 
CMOVL CX, CX 
CMPXCHG DIL, CL 
NOP  
OR DIL, -98 
TEST AL, -94 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
