.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], -29 
TEST AX, -23768 
MOVZX SI, DL 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RDX], DX 
AND SIL, 87 # instrumentation
CMOVL EBX, ESI 
CMOVNP RSI, RSI 
CMOVNB EDI, EAX 
TEST RAX, -462279140 
CMPXCHG DIL, AL 
MOVSX ESI, AL 
CMOVBE RAX, RCX 
BTC RDI, -93 
AND SIL, -4 # instrumentation
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR ECX, EDI 
BTS RBX, 15 
AND DIL, 27 # instrumentation
CMOVLE RCX, RCX 
MOVSX EDX, CL 
AND RBX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RBX] 
AND DIL, -13 
CMOVZ DX, DI 
CMOVNS RCX, RBX 
AND RAX, 105420890 
TEST AL, -45 
CMOVNLE RDX, RDX 
CMOVNP RBX, RBX 
CMOVBE BX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], DL 
CMPXCHG AL, AL # instrumentation
LAHF  
CMOVNZ RCX, RSI 
CMOVNS RDI, RSI 
CMOVNL EDI, ESI 
CMOVNB AX, CX 
OR DIL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
