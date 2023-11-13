.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], AX 
BTS RCX, RDI 
BT ECX, EDX 
AND SIL, -104 # instrumentation
MOV BX, 17806 
NOT RSI 
SETP AL 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
MOVSX RCX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EBX 
MOV SIL, -82 
AND RBX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
TEST ESI, EAX 
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RCX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RBX] 
SETS BL 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
CMOVNLE EDI, EBX 
BTR DX, 127 
TEST ECX, -1963682809 
CMPXCHG CL, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], CX 
OR DL, BL 
AND RDI, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RDI] 
SETNZ DIL 
OR SI, SI 
SETLE BL 
CMOVNBE RAX, RSI 
SETLE DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
