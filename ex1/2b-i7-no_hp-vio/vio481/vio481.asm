.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
AND RAX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RAX] 
SETB BL 
MOV SIL, 82 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTR dword ptr [R14 + RBX], EBX 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], -1867925207 
SETNL AL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RCX] 
MOV BX, DX 
OR AL, BL 
AND DL, CL 
TEST ECX, ECX 
SETBE SIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], 0 
AND DIL, -69 # instrumentation
CMOVNS RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
XCHG BL, BL 
BSWAP EAX 
MOV ECX, -359906358 
BTR DX, AX 
AND DIL, -21 # instrumentation
CMOVLE BX, BX 
OR ECX, -69 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 31 
OR AL, -107 
MOV CX, SI 
XOR DI, BX 
SETNO CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
