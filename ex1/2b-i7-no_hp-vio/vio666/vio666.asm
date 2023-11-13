.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RBX] 
CMOVNP ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
MOVSX RAX, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RBX] 
MOV BX, 8559 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], BL 
CMOVZ RDI, RDI 
AND RAX, 1606864079 
CMOVNB DX, SI 
CMOVNZ ESI, EBX 
MOVSX ESI, BL 
AND RSI, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RSI] 
AND ESI, 105 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DL 
CMOVZ ECX, EBX 
BSWAP RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RAX] 
SETB CL 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDI], EBX 
AND RSI, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RSI] 
SETNLE BL 
CMOVNLE CX, CX 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], 16 
XOR AX, -10934 
BT EBX, 121 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], AX 
TEST EAX, 1949165794 
SETLE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
