.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 89 # instrumentation
SETB CL 
AND RAX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RAX] 
CMOVNL RDX, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], EDX 
SETP CL 
BTC EBX, EDI 
AND DIL, 34 # instrumentation
CMOVS DI, DX 
MOVZX AX, BL 
SETO DIL 
AND AL, 95 
CMOVB RDX, RDX 
SETNB BL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DL 
CMOVBE DI, CX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -22 # instrumentation
CMOVNP RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RSI] 
SETNLE BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
BT EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], DI 
OR SIL, SIL 
MOV EDI, EBX 
XOR RDI, -122 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], SI 
OR AX, 26092 
CMOVNZ EBX, EDI 
BSWAP RCX 
XCHG EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
