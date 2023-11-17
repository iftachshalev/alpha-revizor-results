.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AX, DX 
MOV RBX, RSI 
MOV ESI, -1853178699 
CLC  
TEST DX, SI 
MOV CL, CL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EDI 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
BTR DX, -25 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -117 
CMOVNLE EBX, ECX 
CLC  
CMOVZ EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
CMOVNS SI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDI] 
AND DIL, 87 # instrumentation
CMOVLE RSI, RSI 
BTS DX, CX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -40 # instrumentation
SETNL BL 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], DX 
MOVSX BX, BL 
BTC RAX, 43 
XCHG EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
OR AL, 84 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR DL, BL 
AND RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDX] 
TEST RAX, 1099766779 
TEST DL, AL 
MOVZX EBX, CL 
NOT RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
