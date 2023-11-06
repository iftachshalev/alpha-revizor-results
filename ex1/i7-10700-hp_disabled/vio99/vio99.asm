.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 64 # instrumentation
SETNO BL 
SETNBE BL 
BTC RAX, -4 
AND DIL, -77 # instrumentation
CMOVNP ECX, EBX 
OR CL, AL 
BTC RDX, -53 
AND SIL, -2 # instrumentation
SETL AL 
MOV SI, 23168 
SETNBE CL 
SETNB DL 
CMOVB EBX, ECX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT DL 
XOR DI, 61 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
BTR DI, CX 
BTS RCX, 78 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTR word ptr [R14 + RCX], DI 
OR AX, -19730 
CMPXCHG EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
CMOVB DI, DI 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -5 # instrumentation
SETLE BL 
OR RAX, RBX 
MOV RAX, 8875302089951590428 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
AND DIL, 107 # instrumentation
CMOVNLE DX, CX 
BTR ESI, EBX 
AND SIL, -93 # instrumentation
CMOVS AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
