.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 19 # instrumentation
SETL SIL 
NOT DIL 
BSWAP RSI 
CBW  
SETNBE DL 
CMOVB EAX, EDI 
CMOVNBE RAX, RSI 
TEST AX, 12596 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
XCHG DI, AX 
SETZ DL 
CMOVP DX, AX 
MOVZX EAX, DI 
BTS RBX, 28 
AND SIL, -31 # instrumentation
CMOVLE RSI, RDX 
CMOVNS RSI, RCX 
XADD AX, BX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -24 # instrumentation
SETNO DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
CMOVS RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], ECX 
XCHG RCX, RAX 
BTR EBX, 69 
AND SIL, -124 # instrumentation
CMOVS RDX, RCX 
CMOVB EBX, ECX 
CMOVP ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
BTC SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
