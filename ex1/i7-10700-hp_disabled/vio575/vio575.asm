.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -61 # instrumentation
CMC  
SETP SIL 
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
TEST AL, DL 
BTR RBX, -123 
AND DIL, -101 # instrumentation
CMOVO EAX, EDI 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RSI] 
CMOVNL BX, DI 
XCHG SIL, DL 
XOR EAX, -569284616 
CMOVB EBX, ECX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -7 # instrumentation
CMOVL RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
XOR ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EDX 
TEST EAX, 1273882883 
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
AND AX, 16645 
CMPXCHG DL, BL 
TEST AL, -70 
SETL AL 
SETNB BL 
CMPXCHG EDI, ESI 
MOVZX EBX, DI 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 84 # instrumentation
MOV BL, DIL 
CMOVNS EDI, ESI 
CMOVS DX, DX 
CMOVNO EDX, ESI 
MOVZX BX, CL 
TEST RAX, 499097556 
SETNP AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
