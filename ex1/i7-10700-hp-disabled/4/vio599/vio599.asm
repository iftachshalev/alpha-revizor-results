.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DI, CX 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
TEST RAX, -1037220327 
STC  
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], SIL 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 6 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
TEST EAX, -957082290 
AND EBX, 28 
OR AL, -11 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EDI 
SETB SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RBX] 
MOV DX, SI 
OR DL, 44 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RBX] 
XCHG EBX, EAX 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
MOVZX EDX, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RCX] 
SETNP AL 
OR SI, -69 
CMOVNB EDX, EAX 
JMP .bb_main.3 
.bb_main.3:
BTC RCX, -46 
BSWAP EDX 
BT SI, -41 
AND SIL, 33 # instrumentation
NOT AL 
CMOVO ESI, EBX 
CMOVNP EDI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
