.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -23 # instrumentation
CMOVNL DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
SETNP BL 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], EBX 
CLD  
BTC ECX, -70 
AND SIL, 95 # instrumentation
CMOVNLE RDX, RDX 
XCHG AL, CL 
MOV CL, BL 
CMOVNO RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], DI 
CMOVB ECX, EDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AX, 24991 
NOT CL 
NOT ESI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDI] 
CMOVL DI, AX 
CMOVS ECX, EAX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
CWD  
MOV AL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDI] 
TEST DL, -95 
MOV CL, 81 
AND RDX, 87 
NOT DIL 
CMOVNBE ESI, EBX 
SETNP BL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
AND SIL, 29 # instrumentation
CMOVNS RDI, RDI 
AND DX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
