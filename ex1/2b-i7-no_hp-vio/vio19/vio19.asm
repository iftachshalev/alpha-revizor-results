.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RAX, 294721102 
CMOVNS EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RAX] 
TEST EDI, -58053040 
SAHF  
XOR BL, AL 
BTC DX, -123 
XADD DX, SI 
CMOVL RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 49 
AND EAX, 1699840515 
XOR BL, -60 
CMOVNZ SI, BX 
OR CX, 40 
AND ESI, ECX 
CMPXCHG ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RAX], 7 
CMOVNBE RAX, RDI 
MOVZX RBX, DIL 
TEST CL, BL 
SETB CL 
BTC EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], CX 
AND AX, -10063 
AND CL, DIL 
CMOVS ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDI] 
CMPXCHG RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
