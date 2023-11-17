.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, -116 
OR RBX, -33 
CMPXCHG EDX, EDI 
CMOVP RBX, RDI 
SETB AL 
CMOVZ DI, SI 
CMOVL BX, AX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDI 
AND DIL, -21 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
BTC AX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
CMOVNBE CX, DX 
CMOVO RCX, RCX 
SETNLE BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], ECX 
TEST AL, BL 
CMOVS RDI, RDI 
CMOVNP AX, DI 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 16 # instrumentation
CMOVNP RAX, RCX 
CMOVS EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
BT RAX, -81 
AND EAX, 1250131366 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
MOVSX EDX, BL 
BTC SI, SI 
BT RDI, 92 
AND SIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RDI] 
AND EBX, EDX 
XADD SIL, DIL 
OR AL, -63 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
