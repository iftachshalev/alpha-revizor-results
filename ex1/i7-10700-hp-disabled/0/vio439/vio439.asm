.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR BL, -123 
CMOVBE DX, CX 
AND CL, 34 
SETNL AL 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -95 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 75 # instrumentation
CMC  
OR CX, -90 
XOR RAX, 1216319738 
SETLE AL 
AND RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], -74 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], -128 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
XCHG RDI, RSI 
SETB DL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -65 # instrumentation
SETNZ AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -102 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], -85 
CMOVNS EAX, EDI 
OR BX, -12 
XCHG BL, BL 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTR word ptr [R14 + RAX], DI 
OR EBX, -69 
CMOVB RAX, RDI 
SETNB DIL 
TEST EAX, -1773015193 
CMOVNZ EDI, EBX 
SETNS SIL 
SETNO CL 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
BTR RCX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
