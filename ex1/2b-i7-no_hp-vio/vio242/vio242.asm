.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EBX 
SETL CL 
AND AL, 17 
AND RCX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RCX] 
OR SI, 0b1000000000000000 # instrumentation
BSF AX, SI 
TEST RCX, -1658528843 
AND RSI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RSI] 
XOR CL, BL 
OR AX, -12368 
LEA RAX, qword ptr [RBX + RDX + 15505] 
SETO AL 
CMOVNB RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
MOVZX RBX, DX 
LEA RAX, qword ptr [RBX + RSI + 61492] 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RAX] 
OR SIL, 79 
MOVZX SI, DL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -44 # instrumentation
CMOVZ RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EBX 
TEST ECX, -1368020285 
MOV DL, 99 
SETS CL 
CMOVZ RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RSI] 
XOR DI, BX 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
CMOVBE RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
TEST RBX, 1434352260 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
