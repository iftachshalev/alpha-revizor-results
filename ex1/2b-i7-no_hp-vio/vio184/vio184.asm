.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWDE  
BT SI, BX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDX] 
BT EBX, -75 
OR AL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
NOT DL 
CMOVNP AX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], -27 
MOV CX, DI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG DIL, AL # instrumentation
CMOVNL EBX, dword ptr [R14 + RDX] 
CMOVNZ CX, DX 
LAHF  
SETNB CL 
BSWAP RSI 
CMOVNS EBX, ECX 
OR DL, BL 
BT RSI, RCX 
MOVSX EDI, SIL 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], BX 
SETBE BL 
CMOVNL RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDI 
CMOVLE ECX, EAX 
MOV EAX, EDX 
SETNP DL 
XOR RDI, RDX 
AND AX, -4010 
XOR EBX, -42 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RSI] 
CMOVO RSI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
