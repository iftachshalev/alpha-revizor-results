.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 95 # instrumentation
CMOVBE RCX, RDI 
CMOVNZ ESI, EDI 
OR EDX, ECX 
OR ECX, EDX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -39 # instrumentation
SETNZ BL 
CMOVP RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RSI 
SETNZ DIL 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 3 
AND SIL, 116 # instrumentation
CMOVNP EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -114 
BTS ECX, 55 
BTS RDX, RDX 
CMOVNB AX, SI 
BT CX, DX 
AND SIL, -94 # instrumentation
CMOVNZ EDX, EDI 
CMOVLE AX, CX 
OR EAX, -367960784 
MOV RDX, RDX 
AND RCX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RCX], 6 
CMOVB ESI, EBX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
CMOVO RDI, RCX 
XCHG EBX, EAX 
XCHG SI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RCX] 
SETNBE AL 
SETB AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
CDQ  
CMOVNLE ESI, EDI 
TEST AX, -18285 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
