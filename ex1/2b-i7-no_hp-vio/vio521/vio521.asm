.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DL, 98 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RAX] 
AND DIL, 91 # instrumentation
CMOVNLE DI, BX 
MOVZX ECX, DL 
XCHG RBX, RAX 
NOT RCX 
BTR BX, -34 
MOVZX DX, AL 
AND EAX, 819744643 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], DIL 
TEST AL, -35 
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1140386784 
CMOVNZ EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
AND CX, 16 
CMPXCHG DIL, AL # instrumentation
CMOVNO RDI, RCX 
LAHF  
CMOVBE DI, CX 
CMOVNB RAX, RBX 
AND BL, AL 
AND RAX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], BL 
SETLE CL 
MOV EDI, 859497184 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
