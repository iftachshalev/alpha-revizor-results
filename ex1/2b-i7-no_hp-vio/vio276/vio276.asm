.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX AX, DL 
BTS SI, DI 
AND SIL, 88 # instrumentation
SETB AL 
SETLE CL 
OR DI, DX 
BTC EBX, 53 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
XOR EAX, -1407342410 
BT RDX, -42 
OR AX, 18686 
SETL AL 
CMOVS EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
AND SIL, 119 # instrumentation
NOP  
BSWAP EDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDI 
BT CX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], SI 
MOVZX BX, BL 
AND DIL, -112 
BTS SI, -7 
AND DIL, -19 # instrumentation
SETNL SIL 
SETNO BL 
CMOVNL RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -46 
MOV EBX, EDX 
SETNL CL 
CMOVNP EDI, EDI 
OR AX, CX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
