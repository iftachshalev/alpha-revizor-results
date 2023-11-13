.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EAX, EAX 
AND RAX, -594310505 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
XCHG EDI, EAX 
SETNLE CL 
MOVSX BX, AL 
TEST AL, -37 
CMOVNS CX, DI 
XOR AX, -4424 
XOR DX, SI 
MOVZX EDI, BL 
AND RDI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDI] 
BTC ESI, EBX 
BTC EDX, 118 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EBX 
CMOVNB RSI, RDX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AL, 8 
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
MOVZX EBX, SI 
BT EBX, 120 
NOP  
AND DI, DI 
CMOVNO RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
XOR SI, 18 
AND RDX, 67 
BSWAP ECX 
CMOVNL SI, DX 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], -32626 
CMOVNS RDX, RDX 
BT DX, -47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
