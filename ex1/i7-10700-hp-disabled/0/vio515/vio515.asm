.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -11 # instrumentation
SETLE DL 
MOV AL, 123 
CMOVNP EDI, EDI 
OR EDX, ESI 
CMOVB CX, DI 
BT RDI, -62 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, -42 # instrumentation
XCHG RSI, RSI 
BTS EAX, 99 
CMOVNZ AX, CX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], AL 
SETL BL 
CMOVNZ RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EDX 
AND DIL, 85 # instrumentation
SETO AL 
AND CL, -88 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], -128 
CMOVNB AX, DI 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RAX] 
CMOVNP RBX, RAX 
BTS AX, 57 
CBW  
TEST AX, -25112 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RAX 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 19 
STC  
AND RCX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RCX], 6 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
BTR EDI, EDI 
CMOVNB DX, BX 
CMPXCHG CX, DI 
XCHG DL, BL 
BTS RBX, -7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
