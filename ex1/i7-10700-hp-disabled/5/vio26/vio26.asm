.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC ESI, ECX 
AND SIL, -108 # instrumentation
CMOVNO BX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], DL 
BT RDX, -3 
MOV DL, -95 
CMOVNB DX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 3 
XADD AL, BL 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, 99 # instrumentation
SETS AL 
CMOVNP DX, AX 
AND RDX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTR dword ptr [R14 + RDX], EDX 
BTS RCX, RDX 
MOV RBX, 6182228296320166710 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], 45 
XADD DI, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], 94 
XCHG CL, AL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -42 # instrumentation
CMOVNO RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
CMOVNBE RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -1277807039 
CMOVB RBX, RDI 
CMOVB BX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
OR EAX, 81483182 
SETP CL 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
CMOVZ EDI, ESI 
BTS ECX, ECX 
CMPXCHG EBX, ECX 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
