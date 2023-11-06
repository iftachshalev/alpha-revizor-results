.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST BX, SI 
SETNP BL 
CMOVLE DI, AX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
STD  
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
AND EDI, -127 
XADD ESI, ESI 
CMOVBE ECX, EDX 
MOVZX SI, BL 
TEST ESI, EAX 
SETNS CL 
AND RSI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RSI], 0 
AND BX, -107 
TEST EAX, -1927878405 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RAX] 
MOV AL, DL 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 123 # instrumentation
CMOVBE RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], BL 
CMOVNB RDI, RAX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX RBX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], CX 
CMOVNLE BX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], BL 
BTS RBX, -121 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RCX] 
CMOVBE RDI, RBX 
SETS BL 
XADD AX, CX 
BT RCX, 20 
AND SIL, -62 # instrumentation
CMOVNL CX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
