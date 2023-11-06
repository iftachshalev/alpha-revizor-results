.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 114 # instrumentation
SETNLE AL 
CMOVS ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RBX], BX 
CMPXCHG EBX, ECX 
OR DX, 30 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
XOR DX, 121 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
CMOVNBE RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
SETP AL 
BSWAP RSI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RBX] 
SETNO AL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 26109 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
MOVSX RDX, DL 
BTS RDI, RBX 
CMPXCHG DL, DL 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], ESI 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], 32 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
SETO DL 
XOR RAX, 385574632 
OR DI, 0b1000000000000000 # instrumentation
BSF CX, DI 
OR RAX, -8 
CMOVNB RSI, RSI 
XOR DIL, 49 
OR EAX, 30550422 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
