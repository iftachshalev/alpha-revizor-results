.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -21 # instrumentation
CMOVNS RDX, RSI 
CMOVL RCX, RSI 
BTS RBX, 101 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDI], DI 
TEST RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RAX] 
SETLE BL 
TEST EAX, 1946617027 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 68 # instrumentation
CMOVNP SI, BX 
OR BL, DL 
SETNL DIL 
XADD RDI, RAX 
CMOVS DI, AX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 98 # instrumentation
CMOVNS SI, DX 
TEST RDI, 193335726 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RAX], DI 
CMPXCHG AL, AL 
XOR RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], -18 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], EBX 
AND DIL, -38 # instrumentation
CMOVNL SI, CX 
AND AL, 19 
MOVSX RCX, DL 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 10 # instrumentation
CMOVNP RBX, RBX 
TEST AX, -10049 
CBW  
BTR AX, -35 
OR CL, -90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
