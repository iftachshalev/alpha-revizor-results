.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
CMOVNZ RCX, RSI 
CMOVNS EAX, ECX 
SETNO AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], -65 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], -3 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RAX] 
NOT RDI 
AND RAX, RBX 
BSWAP RDX 
BT RDI, -66 
AND SIL, -89 # instrumentation
CMOVO EDX, EBX 
JMP .bb_main.2 
.bb_main.2:
MOVZX RCX, CX 
NOP  
AND RDI, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RDI] 
MOV CL, -96 
CMOVNO ECX, EBX 
MOV DX, -20891 
XOR EAX, -2093329098 
CMOVNLE EDI, EDX 
CMOVNL EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
CMOVNB DI, DX 
XOR RDX, -17 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
MOVSX RDI, AX 
MOVSX BX, BL 
TEST DIL, 4 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
