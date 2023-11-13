.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 33 # instrumentation
XCHG DI, AX 
SETLE AL 
SETB DIL 
SETLE CL 
CMPXCHG DL, DL 
SETLE AL 
XCHG AL, BL 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RBX], EDI 
AND SIL, -118 # instrumentation
CMOVO DX, DI 
XADD EBX, EDX 
BTR ESI, ECX 
OR DI, -4 
SETS AL 
NOT DIL 
XOR AL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DL 
SETZ BL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR RDX, -30 
AND SIL, -63 # instrumentation
CMOVNS RDI, RAX 
AND AL, -128 
CMOVNS ESI, ECX 
XCHG AL, AL 
BTR EBX, -54 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -125 
BTR RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RAX] 
XCHG RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RBX] 
OR DIL, -12 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RCX 
SETNZ CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
