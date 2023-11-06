.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -10 # instrumentation
SETLE BL 
CMOVNLE DX, CX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -128 # instrumentation
SETS DL 
CMOVO CX, SI 
BT RSI, RDI 
NOT EBX 
MOV RDX, -5496500101733497996 
XADD RBX, RDX 
MOVSX EDX, DL 
CMOVO SI, CX 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 0 
AND SIL, -114 # instrumentation
XCHG RSI, RAX 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR EAX, -736285190 
SETNB AL 
CMPXCHG AL, DL 
BSWAP RDX 
CMOVNBE EDX, EAX 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 122 # instrumentation
CMOVNL EAX, ESI 
CMOVNP RSI, RSI 
CMPXCHG RBX, RDX 
CMOVB DI, DI 
AND AL, DL 
CMOVNB RDX, RCX 
SETL BL 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
BTS EDI, EAX 
BTR RDX, RDI 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND BL, AL 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
TEST ECX, -181445734 
CMOVO EAX, EAX 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
