.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV SIL, -110 
OR RAX, 1894284263 
CMOVL DX, CX 
AND RSI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RSI] 
MOVZX RDI, CL 
CMOVNL ECX, EBX 
AND EDX, -99 
XOR BL, BL 
MOVZX RAX, DL 
NOP  
TEST RAX, -1585496746 
BSWAP RAX 
TEST RDI, RSI 
SETNL DIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV AL, 36 
NOP  
BTC RAX, -11 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RBX] 
AND AX, 3849 
OR EAX, -1814327010 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], -17 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDX] 
OR AL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], 6 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RCX] 
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
XOR BX, 106 
MOVSX SI, AL 
MOVSX RDI, DX 
BTC ECX, EDX 
BTC RCX, RDI 
TEST AX, -27777 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
