.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
MOVSX ECX, BL 
MOVSX RSI, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
TEST ECX, ECX 
XOR AL, 55 
MOVZX ESI, SIL 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
SETNLE DL 
XCHG DX, SI 
XCHG SIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RBX] 
SETO BL 
OR AX, 7549 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EDI, EAX 
MOV SI, -7167 
BTC DX, -11 
AND DIL, 37 # instrumentation
SETNO BL 
MOVZX CX, CL 
TEST EAX, -1895274278 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RCX] 
SETLE DL 
TEST CL, -59 
BTS CX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], AL 
BTS SI, AX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
XADD RSI, RBX 
OR ESI, 42 
SETL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
