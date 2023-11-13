.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
OR SI, BX 
BTS SI, DI 
CDQ  
CMOVBE EDI, EDI 
BSWAP EAX 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
OR RCX, 64 
SETNBE DL 
CMOVP RDX, RCX 
BTS ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RBX] 
MOV RDI, RDI 
CMOVNZ ECX, EAX 
CMOVLE AX, BX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], SIL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
CMOVNP EDX, EBX 
SETNBE BL 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -3 
BTS EAX, 126 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EAX 
AND DIL, 103 # instrumentation
SETNB BL 
NOT BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
BSWAP RAX 
CMOVO EDX, EAX 
AND RCX, RSI 
SETNB CL 
CMOVLE ECX, ESI 
BTR EDI, -24 
AND DIL, -124 # instrumentation
SETNLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
