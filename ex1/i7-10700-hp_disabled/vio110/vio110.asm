.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 42 # instrumentation
MOVZX RCX, CX 
CMOVNL RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], DL 
BTR RBX, -45 
MOVZX EDX, DL 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 1 
MOVZX EDX, BL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 59 # instrumentation
CMOVNP RSI, RDI 
MOV AL, CL 
AND SI, 98 
MOVSX RBX, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 115 
XOR ESI, EAX 
TEST AL, 30 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -85 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDI] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMPXCHG DI, DX 
XOR DI, -20 
XCHG EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
CMOVNL DI, BX 
BT EDI, EAX 
OR ESI, EDI 
BTR AX, DI 
AND SIL, 66 # instrumentation
CMOVS SI, BX 
SETS BL 
XADD AX, SI 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
