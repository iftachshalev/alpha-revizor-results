.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RDI] 
MOVSX EAX, BL 
AND CX, 25 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
NOT DIL 
CMOVNL CX, DX 
CMOVNZ BX, DX 
CLD  
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVSX EAX, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RAX] 
CMOVP BX, AX 
CMPXCHG EBX, ESI 
LEA RSI, qword ptr [RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RAX] 
CMOVBE EAX, EAX 
CMOVZ DX, DI 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -89 # instrumentation
MOVSX RSI, SIL 
MOVZX RAX, SIL 
SETNBE CL 
MOV DX, DI 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RCX 
CMOVNP RSI, RBX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
SETL AL 
AND EAX, -2074752811 
JMP .bb_main.4 
.bb_main.4:
CMPXCHG ESI, ESI 
TEST AL, -28 
CMOVNS RBX, RBX 
TEST BX, AX 
BTR RSI, RAX 
TEST AL, -29 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
