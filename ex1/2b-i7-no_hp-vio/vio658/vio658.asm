.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -128 # instrumentation
CMOVLE RCX, RAX 
CMOVO RBX, RSI 
TEST AL, -116 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RBX], RDX 
LEA AX, qword ptr [RDI + RDX] 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
AND DIL, 57 # instrumentation
CMOVNLE BX, DI 
MOVSX BX, DL 
XOR DIL, SIL 
BTC ESI, 15 
AND DIL, 57 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR BL, DIL 
CMOVNBE RDX, RDI 
XADD AX, BX 
CMOVLE RAX, RCX 
CMPXCHG BL, AL 
CLD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDI] 
MOVSX EDI, AL 
MOVZX RDI, AL 
CMOVB DX, AX 
BTR EAX, EAX 
TEST RAX, 1845955508 
MOVSX RAX, BL 
CMOVBE RDX, RDI 
CMOVP RAX, RSI 
MOV AL, 97 
AND AX, 24029 
XADD ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RDI 
CMOVNP RSI, RSI 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
