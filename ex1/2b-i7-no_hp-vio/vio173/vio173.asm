.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -44 # instrumentation
CMOVNL EAX, ESI 
BTC RSI, -65 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], CL 
TEST BL, DL 
CMOVLE EAX, ECX 
BT RDX, 55 
AND SIL, 81 # instrumentation
CMOVL AX, SI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
TEST RAX, -1718069736 
SETNB SIL 
CMOVNLE ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RSI] 
CMC  
TEST BL, -123 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 1 
CMOVBE SI, BX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RAX 
MOV RBX, RSI 
BSWAP EDI 
OR DX, AX 
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
MOVSX DX, BL 
MOV CX, DX 
MOV DX, -24313 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
SETNLE CL 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], 50 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTR qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
CMOVNLE EDI, EAX 
SETNB AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
