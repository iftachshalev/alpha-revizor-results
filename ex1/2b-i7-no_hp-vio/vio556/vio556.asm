.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], AX 
XCHG DI, AX 
SETB CL 
AND EAX, 1099567520 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
AND EAX, -91 
BTC EDI, EAX 
MOVZX RDX, BL 
OR DIL, -8 
BTR EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RAX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC EDX, -98 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], DX 
BTR ESI, 54 
AND DIL, 68 # instrumentation
CMOVNB SI, DI 
CMOVB AX, AX 
SETNO DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
CMOVBE BX, DX 
AND AL, 72 
SETO CL 
TEST RAX, -2024557736 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
SETB BL 
NOT RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
