.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
BTS RCX, -39 
AND DIL, 106 # instrumentation
CMOVLE AX, CX 
CMOVNO RAX, RCX 
SETNB AL 
CMOVB RAX, RBX 
SETZ DIL 
SETZ BL 
CMOVZ RDI, RSI 
XADD BL, CL 
TEST RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BT word ptr [R14 + RSI], CX 
AND RSI, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RSI] 
MOV EDX, 821109976 
CMOVNZ EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], 59 
AND AL, SIL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -113 # instrumentation
CMOVNO ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
CMOVNZ CX, DX 
SETP DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RSI] 
CMOVNZ AX, CX 
TEST EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 12 
TEST RAX, 968469880 
CMOVNLE ESI, EAX 
BSWAP EBX 
AND AX, DX 
BTS BX, 127 
BTC RCX, -86 
AND SIL, -41 # instrumentation
CMOVNP EDI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
