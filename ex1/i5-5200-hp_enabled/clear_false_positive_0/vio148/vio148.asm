.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, 115 
OR DL, -94 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], 112 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SAHF  
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTR qword ptr [R14 + RDX], RDI 
TEST DL, 48 
CMOVB RDI, RDI 
BSWAP ESI 
BTC EDI, ESI 
MOVZX CX, AL 
BTS RDX, RBX 
BTR CX, -23 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
OR RAX, RDX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -5 # instrumentation
CMOVNZ RAX, RBX 
OR RCX, 66 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTC qword ptr [R14 + RCX], RBX 
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RCX 
AND DL, CL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], BL 
JMP .bb_main.4 
.bb_main.4:
AND SIL, -84 # instrumentation
CMOVLE AX, BX 
CMOVNP DX, BX 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 2 
NOP  
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
AND SIL, 16 # instrumentation
SETL AL 
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
BTR RDI, 21 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
