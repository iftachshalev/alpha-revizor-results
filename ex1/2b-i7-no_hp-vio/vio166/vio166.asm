.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
CMPXCHG AX, AX 
CMOVO RCX, RCX 
AND AL, -24 
MOVSX RCX, SIL 
TEST AL, 66 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -124 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
CMOVNO CX, DX 
BTC ECX, 116 
AND DIL, -62 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 68 # instrumentation
CMOVO CX, CX 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RAX 
CMOVB ECX, EDX 
XOR EAX, -901106809 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
CMOVNB RCX, RCX 
TEST AX, 27878 
CMOVLE EDI, EAX 
MOVZX EDX, AL 
NOT CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], -24 
BTC RBX, 81 
STC  
OR CL, DL 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RAX 
MOVSX RDX, BL 
XADD RAX, RAX 
CMOVNS DX, DX 
CMOVNB RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
