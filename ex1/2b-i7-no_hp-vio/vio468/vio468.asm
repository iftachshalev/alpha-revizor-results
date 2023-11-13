.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 1220572307 
MOV DL, 10 
CMOVP RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
TEST DIL, 22 
AND AX, -15281 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTR qword ptr [R14 + RDI], RBX 
AND SIL, 40 # instrumentation
CMOVNBE ECX, EAX 
CMOVNO RDX, RBX 
SETP AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], -16 
CMOVNLE ESI, ESI 
CMOVNP AX, DI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], SIL 
AND RAX, 2102085597 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], 746546557 
AND RSI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RSI] 
AND EAX, 1937600312 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
XCHG RSI, RDI 
TEST BL, CL 
CMOVNZ EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1883169527 
XOR RBX, 67 
BSWAP EAX 
CMOVP RCX, RSI 
CMOVBE RDI, RBX 
MOVZX EDX, CL 
AND RAX, 1830180401 
CMPXCHG AL, DIL # instrumentation
LAHF  
CMOVNBE RDX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
