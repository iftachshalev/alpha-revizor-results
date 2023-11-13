.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT AL 
OR RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
CMOVNLE SI, SI 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], -119 
LEA DI, qword ptr [RDI + RAX] 
BSWAP EAX 
MOVZX RCX, CX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
MOVZX DX, AL 
BTC CX, CX 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 6 
AND RAX, 1924885505 
TEST CX, 19222 
BTR ECX, 39 
OR AL, -77 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], BX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BL, -114 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RCX] 
BT CX, -33 
AND EDI, EBX 
NOT DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RSI] 
SETNZ DL 
AND DX, -112 
AND RCX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTR word ptr [R14 + RCX], SI 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTS qword ptr [R14 + RAX], RAX 
AND DIL, 12 # instrumentation
SETNO CL 
TEST DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
