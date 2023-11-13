.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX AX, CL 
XCHG EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
BTS RAX, -47 
CMOVNB RSI, RDI 
SETZ BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], BL 
SETZ DL 
CMOVP RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG SIL, DIL # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
LAHF  
MOVSX EDI, SI 
BTC RAX, -3 
AND SIL, -36 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 1 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
CMOVO DI, SI 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], -34 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
LEA EDI, qword ptr [RAX + RAX + 31297] 
XOR BL, -22 
MOVSX ECX, AL 
AND RDX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDI], 3 
BTC SI, -75 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
CMOVNS RDX, RDX 
LEA RBX, qword ptr [RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
