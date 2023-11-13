.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG SIL, CL # instrumentation
AND SIL, 8 # instrumentation
LAHF  
CMPXCHG EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDX] 
AND EDI, -35 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
MOVZX DI, DL 
BTR RCX, RDI 
AND SIL, -47 # instrumentation
CLC  
CMOVNP RSI, RDX 
CMOVBE RDX, RCX 
MOVZX AX, BL 
BTR ESI, EBX 
AND DIL, 100 # instrumentation
SETS DL 
CMOVP EDI, EBX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDX 
OR SIL, 97 
OR EDX, -96 
BT RDX, -1 
AND DIL, -34 # instrumentation
CMOVP EDI, EDX 
CMOVNLE RDI, RBX 
MOV ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], ECX 
MOVSX RCX, DI 
SETP DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RAX] 
MOVZX SI, DL 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RSI 
CLD  
XADD RBX, RCX 
BT RAX, RSI 
CMOVNB RDI, RDI 
TEST AL, 16 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
