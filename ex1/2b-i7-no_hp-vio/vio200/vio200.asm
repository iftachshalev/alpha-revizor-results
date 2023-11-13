.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 4 # instrumentation
NOT BL 
CMOVNBE EDI, ESI 
OR RDX, 46 
CMOVNZ RCX, RAX 
BTR RCX, 79 
MOVSX EAX, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], DI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDI] 
BSWAP ECX 
SETP AL 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDI] 
XOR RDX, RAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
XOR SIL, 123 
CMOVNS ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
CMOVL SI, BX 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EDI 
BTC EAX, -32 
BT AX, -96 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
OR RSI, RDI 
CMOVBE DI, DX 
SETNS CL 
OR AL, -10 
BSWAP EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -76 
CMOVL DX, SI 
XOR RAX, -1083847208 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], 79 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
