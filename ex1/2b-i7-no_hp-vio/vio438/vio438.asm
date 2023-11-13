.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RSI] 
AND DX, -4 
SETO CL 
SETBE DL 
CMOVNB ECX, EAX 
SETZ DL 
STC  
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
OR BL, -17 
AND DI, 14 
MOV ESI, ESI 
AND ECX, -107 
CMOVNB EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX CX, DL 
TEST DI, AX 
XOR EBX, ESI 
XCHG EDX, EAX 
CMOVNB RDX, RBX 
SETB DL 
AND RCX, -29 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], DX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
SETNL DL 
TEST EDI, ESI 
CMOVO CX, SI 
CMOVNBE ESI, EAX 
XOR BX, -23 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
