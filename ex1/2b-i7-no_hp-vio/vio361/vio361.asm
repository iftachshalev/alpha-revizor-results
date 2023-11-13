.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RDX, RCX 
OR DX, 85 
SETBE AL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
MOVZX SI, BL 
SETNLE CL 
OR DX, -119 
CMOVNO DX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RDX] 
TEST RAX, 591753373 
CMOVNLE EDX, ESI 
AND RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], BL 
CMOVNS ESI, EDI 
CMOVNP ECX, EBX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
CMOVNP RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], -99 
AND RCX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
AND AL, 53 
OR RAX, 2131084621 
CMOVLE AX, BX 
SETNB BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RAX] 
BTR EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DIL 
LEA RAX, qword ptr [RBX] 
SETNB DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
