.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
CMOVNO DX, BX 
SETLE AL 
MOV BL, -54 
AND RDI, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RDI] 
SETNBE CL 
NOT DL 
AND AX, -6718 
BTS BX, -126 
AND SIL, 21 # instrumentation
CMOVP ESI, EAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -105 # instrumentation
XCHG RBX, RAX 
CMOVNS CX, CX 
CMC  
CMOVNL RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], 7 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], 54 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], RDI 
BTC EDI, -70 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDX] 
CMOVNL BX, DI 
CMOVNL DX, DI 
SETZ BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -121 
SETL SIL 
SETO DL 
XOR SI, SI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
MOVSX AX, AL 
STD  
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
