.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -23 # instrumentation
CMOVNLE RDI, RAX 
CMOVNP EDX, EDX 
AND DX, 89 
AND RSI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND AL, -48 
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 0 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
TEST DL, -34 
SETNB CL 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 1 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], ESI 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], EDX 
BTS EAX, ECX 
XOR BX, 118 
XADD AL, BL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 78968659 
CMOVLE EAX, EDX 
SETNS SIL 
XADD AL, BL 
SETNO BL 
BTS RBX, 85 
BTR DI, DI 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 10 # instrumentation
CMOVNP AX, BX 
BTC DI, DX 
OR SIL, 74 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RCX 
CMPXCHG DL, AL 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
