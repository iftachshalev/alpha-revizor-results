.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -89 # instrumentation
CMOVNO AX, DX 
LEA RDX, qword ptr [RCX] 
MOVSX RAX, CX 
SETBE CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], 99 
CMOVO CX, AX 
CMOVNS RDI, RAX 
CMOVNS SI, DX 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTC BX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RAX] 
AND EAX, -1934015214 
BTC EBX, 21 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
MOVSX CX, AL 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -86 # instrumentation
CMOVNP EDX, EDI 
CMOVP RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], EAX 
CMOVNBE EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], ESI 
AND RDI, 68 
XCHG EAX, ECX 
XOR AL, DIL 
JMP .bb_main.3 
.bb_main.3:
AND SI, 72 
CBW  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], 60 
XADD RCX, RBX 
CMOVNP RAX, RAX 
BTC DI, -11 
AND SIL, -86 # instrumentation
CMOVO ESI, EDI 
OR AL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
