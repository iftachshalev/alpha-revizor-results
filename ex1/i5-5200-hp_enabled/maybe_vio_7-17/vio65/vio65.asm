.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RCX] 
OR CL, 72 
XCHG RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
AND AX, 13063 
NOT ESI 
AND EDX, 2 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EDI, EAX 
TEST RAX, 2079216838 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
TEST RDI, -4017208 
CMOVNP BX, SI 
CMOVL ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND AL, CL 
CMOVNB RCX, RSI 
NOT RSI 
CMOVNO RDX, RDX 
AND AX, -28904 
JMP .bb_main.2 
.bb_main.2:
XOR DI, SI 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
AND DIL, -63 # instrumentation
CMOVP DI, BX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], DI 
CMOVNZ EAX, ECX 
MOV RDI, RDI 
CMOVS RBX, RSI 
CMOVNP RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RSI] 
BTC EDX, -7 
MOV EDX, 217630060 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
