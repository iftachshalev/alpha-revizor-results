.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RBX, BX 
CLD  
XOR EAX, -1539835566 
AND RSI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RSI], 1 
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX ECX, BL 
CMPXCHG SI, CX 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], DL 
CMOVNLE RSI, RAX 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
XADD DI, SI 
SETNZ SIL 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
SETNP SIL 
CMPXCHG DL, BL 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 50 # instrumentation
SETNB DIL 
SETLE SIL 
BTC EDX, EDX 
CMOVB RAX, RAX 
CMPXCHG BX, AX 
MOV AL, -74 
AND RCX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, -574597206 
CMOVS RDX, RCX 
BTS EBX, -4 
AND SIL, -57 # instrumentation
MOVSX DX, DIL 
SETNS SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDX] 
TEST RAX, 2018906450 
TEST RAX, 1335122614 
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
BT RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
