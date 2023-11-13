.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RSI, RAX 
CMOVNP CX, DX 
CDQ  
XADD EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RBX] 
CMOVNP AX, SI 
CMOVNLE EDI, ECX 
SETNO CL 
XADD DX, AX 
CWD  
CMOVS EDX, EBX 
CMOVB EBX, EAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
CMOVNL EAX, EDI 
BT RAX, -15 
AND SIL, 111 # instrumentation
SETP DIL 
NOP  
MOV AL, DIL 
SETL AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
CMOVNS ESI, EBX 
CMPXCHG AL, CL 
BTS EDX, EDI 
AND DIL, -18 # instrumentation
CMOVNL EDI, EAX 
SETNO DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
CMOVNL BX, CX 
AND BX, SI 
BTC EDI, 102 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 21 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
