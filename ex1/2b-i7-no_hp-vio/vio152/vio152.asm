.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], DI 
MOVSX ECX, DI 
SETP DL 
CMOVLE EDX, EBX 
SETNS DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], 63 
OR DIL, DIL 
CMOVB RBX, RDX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RBX 
AND DIL, 79 # instrumentation
SETNLE AL 
OR AL, 91 
MOV ESI, -1111038395 
NOT RCX 
XOR EAX, 46 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], 7 
MOVSX ECX, DL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR BX, -28 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
XOR RCX, RSI 
NOT EDX 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
CBW  
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 5 
SETB DL 
AND DI, -60 
CMOVB RCX, RBX 
SETNO SIL 
AND EAX, 810776973 
CMOVNZ RDX, RSI 
BTC RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
