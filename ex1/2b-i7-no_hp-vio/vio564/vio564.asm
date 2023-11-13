.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DL, DL 
XOR BL, BL 
CMOVLE EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
CMOVNP RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDX] 
CMOVLE EBX, ESI 
SETP AL 
SETNLE DIL 
LEA BX, qword ptr [RSI + RSI + 15048] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], -72 
CMOVNZ EAX, EAX 
XOR DIL, -41 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], CL 
LEA EDI, qword ptr [RDX + RDI] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
OR SIL, 54 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
TEST RDX, RCX 
BTS ECX, -42 
AND DIL, -34 # instrumentation
NOP  
SETNBE BL 
BSWAP RCX 
CMOVL RCX, RDX 
SETZ SIL 
TEST EDX, ESI 
AND EDX, EDI 
MOVZX RCX, CX 
XOR RSI, 101 
OR RBX, -115 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
