.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 86 # instrumentation
CMOVNL EAX, ECX 
MOV DL, AL 
CMOVNO EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
CMOVNS RSI, RDX 
CMOVNLE SI, CX 
CMOVB DI, DX 
CMOVNO RCX, RBX 
TEST SIL, -83 
CLC  
XCHG SI, AX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
MOVZX DX, AL 
BTC RCX, RAX 
BTC EAX, EAX 
SETBE CL 
TEST RDI, -1074870594 
SETNLE DIL 
MOV BL, DL 
SETP DIL 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EDI 
AND EDI, -3 
CMOVNBE RCX, RDI 
CMOVB ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 60 
XOR DIL, DL 
CMOVNLE RDX, RBX 
SETBE BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
TEST CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
