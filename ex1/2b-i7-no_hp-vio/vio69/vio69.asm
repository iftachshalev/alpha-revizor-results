.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -42 # instrumentation
CMOVNS EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
SETNZ CL 
MOV BL, -99 
SETBE DL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
AND SIL, 69 # instrumentation
CMOVNBE RBX, RSI 
SETNBE DL 
TEST DI, 28170 
NOP  
AND RCX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RCX] 
CBW  
XOR RAX, -610343904 
AND EDI, ECX 
TEST RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], BX 
MOVZX RBX, BL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DI, CX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RBX] 
OR SI, DX 
CMOVNBE ECX, EBX 
TEST ESI, 1772718545 
CMOVNBE RDI, RDI 
SETLE DIL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], ECX 
TEST DL, AL 
CMOVNB EDX, ECX 
CMOVNBE DI, BX 
BTC AX, -60 
SETB CL 
LEA RDI, qword ptr [RDX] 
OR BX, 0b1000000000000000 # instrumentation
BSR AX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
