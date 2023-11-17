.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 8 # instrumentation
NOT ECX 
CMOVB EBX, EDX 
CMOVL RDI, RBX 
OR EAX, -189361692 
CMOVNS RCX, RSI 
AND DIL, 50 
BT DX, DX 
BTS DI, CX 
XCHG AX, DX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RDX 
CMOVNS EBX, EBX 
BTS RCX, 20 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOV RSI, RAX 
BTC BX, BX 
AND DIL, 90 # instrumentation
CMOVNP DI, DI 
SETO AL 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], AL 
MOV RDX, -129263419993686093 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
BTC RDI, 115 
AND DIL, 38 # instrumentation
CMOVP EDX, EDI 
AND AL, 62 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
SETNZ DL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 115 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 4 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
MOV CL, CL 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EDI 
OR CL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
