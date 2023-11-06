.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, -24776 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
CMOVNO EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
OR RSI, 92 
AND DI, -23 
BTS SI, -10 
AND DIL, 45 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
SETNZ DIL 
BSWAP ECX 
NOT CL 
XADD DL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], 77 
OR RAX, 279165978 
JMP .bb_main.2 
.bb_main.2:
TEST SI, AX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -123 
OR EAX, -219828003 
CMOVNLE EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], DX 
XCHG EAX, EDI 
CMC  
MOVZX RCX, BX 
OR BX, 0b1000000000000000 # instrumentation
BSR AX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
XOR RAX, 360633729 
MOVZX SI, DL 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTC CX, 34 
AND DIL, 97 # instrumentation
CMOVS EDX, ECX 
SETNB BL 
OR EAX, -2054761830 
AND RCX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RCX] 
BTC EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
