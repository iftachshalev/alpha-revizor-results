.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RSI] 
OR RAX, -149224188 
MOVZX BX, BL 
CMOVNP SI, BX 
SETNS AL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
CMOVNO RDI, RAX 
STC  
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
BTR RSI, -18 
CMOVBE RBX, RAX 
SETNZ SIL 
BSWAP RBX 
AND EBX, EAX 
OR EAX, -237634638 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], SI 
CMOVO DI, BX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR AL, -120 
BTR BX, -16 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RBX] 
CMOVNB ECX, EBX 
SETZ BL 
SETO CL 
BTS RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
MOV EBX, EAX 
OR CL, 48 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], AX 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
CLC  
AND RSI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
