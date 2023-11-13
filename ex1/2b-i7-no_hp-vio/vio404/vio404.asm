.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -31 # instrumentation
CMOVZ RSI, RBX 
MOVZX ESI, DI 
CMOVNO EDX, EDI 
NOT DL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDI 
CMOVNZ ESI, ECX 
TEST SIL, -42 
TEST RDI, RSI 
TEST EAX, -1556857716 
MOVZX ESI, BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RAX, RDI 
CMOVP EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND CL, DL 
CMOVNS SI, DI 
CMOVNO CX, DI 
CMOVNBE RDX, RDX 
CMOVZ DI, SI 
MOVZX RSI, BX 
CWD  
BTC ESI, 32 
AND DIL, -101 # instrumentation
CMOVNLE DI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RCX] 
SETNP BL 
STC  
CMOVNZ CX, AX 
CMOVNZ RSI, RDI 
MOVSX RAX, SIL 
XOR EAX, -17223349 
CMOVNO BX, DX 
BSWAP EDI 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
