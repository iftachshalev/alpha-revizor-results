.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 94 # instrumentation
SETNBE DIL 
OR RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
SETNS CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RCX] 
SETP CL 
CMOVBE EBX, ECX 
SETNS DIL 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RCX] 
CMOVB EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RCX], 2 
AND SIL, -38 # instrumentation
SETNP DL 
AND RCX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
AND BL, AL 
MOV RAX, -3590750895339808931 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RCX] 
BSWAP RCX 
TEST SIL, DL 
MOVSX RAX, SI 
CMOVB CX, BX 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 35 
CMOVNZ ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RBX] 
CMOVNLE RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RBX] 
SAHF  
XOR CL, 67 
BTC CX, -127 
AND DIL, 112 # instrumentation
CMOVNS ECX, EBX 
CMPXCHG DX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
