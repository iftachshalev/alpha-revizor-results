.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 43 # instrumentation
CMOVNB ESI, EDI 
TEST RCX, RSI 
BSWAP EDX 
SETNL CL 
MOVZX RCX, CL 
MOVSX EAX, CL 
LEA DI, qword ptr [RBX + RCX + 21507] 
BSWAP RBX 
SETNP BL 
CMOVNO RCX, RBX 
XOR AX, 11171 
MOV AL, 102 
MOVZX DX, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
CMOVS DX, BX 
OR EAX, 2130898390 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
AND DIL, 40 # instrumentation
SETNLE DL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
BT RDI, RSI 
CLC  
XCHG RBX, RAX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
MOV AL, DL 
OR AL, 46 
SETNO BL 
CMOVZ AX, SI 
MOVSX ESI, CL 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], AX 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
BSWAP EDX 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
