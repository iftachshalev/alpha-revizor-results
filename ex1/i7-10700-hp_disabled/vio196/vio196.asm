.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SIL, -96 
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -75 
AND RBX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RAX] 
BTC RDI, 68 
AND EDX, ESI 
AND AL, 42 
SETNBE CL 
CMOVNL CX, AX 
XOR EDX, EDX 
SETNBE BL 
CMOVBE EDI, ECX 
SETO AL 
JMP .bb_main.2 
.bb_main.2:
TEST AX, -3854 
OR RAX, -39472661 
XOR SIL, DL 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DI 
CMOVNP RSI, RAX 
TEST RBX, RSI 
SETNB CL 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
CMOVNL RAX, RSI 
AND RSI, 79 
LEA SI, qword ptr [RAX + RAX] 
XCHG SI, AX 
NOT CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
