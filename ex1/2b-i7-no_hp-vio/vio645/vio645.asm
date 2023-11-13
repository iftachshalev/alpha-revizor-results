.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 127 # instrumentation
CMOVO EDI, ECX 
AND AL, -78 
AND DX, -29 
AND DL, -125 
SETNP DL 
AND RDX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], DIL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
CMPXCHG DIL, BL # instrumentation
AND DIL, -126 # instrumentation
XCHG EBX, EAX 
MOVZX RDI, DX 
CMOVP SI, SI 
CMOVNL ECX, EAX 
NOT SIL 
LAHF  
TEST DI, -13027 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
CWDE  
CMOVNL EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], AL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG DL, DL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -51 
OR EDI, 34 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RDI] 
SETNS CL 
CMOVBE SI, CX 
NOT SI 
TEST CL, CL 
SETNO BL 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTC word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
