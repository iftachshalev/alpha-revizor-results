.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 78 
CMOVNS EDX, EDI 
CMOVNS RBX, RDX 
SETB AL 
MOVZX EBX, DL 
CMOVNB RDX, RDI 
SETNL DL 
CMOVZ EAX, EAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RSI] 
CMOVNB EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
BTR EBX, 59 
BTC RCX, 55 
XCHG RDX, RSI 
BTS RDX, 6 
AND SIL, -78 # instrumentation
CMOVP RBX, RAX 
SETS AL 
SETNZ DIL 
AND RBX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RBX] 
NOT EAX 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 118 # instrumentation
CMOVNP SI, CX 
MOVSX RCX, AL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 95 
BT RBX, -84 
TEST DI, DI 
BTC RCX, RCX 
BTS AX, CX 
SETNB CL 
BT EBX, 84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
