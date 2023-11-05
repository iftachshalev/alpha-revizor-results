.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -25 # instrumentation
SETNL DIL 
OR EAX, 1566812768 
OR AL, 57 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], AL 
TEST BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RSI], DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RBX] 
MOVSX RSI, DI 
AND RAX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RAX], 6 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -127 # instrumentation
SETNO AL 
XOR CL, 28 
AND CX, BX 
CBW  
BTC EDI, EDI 
XCHG EDI, ESI 
AND RDI, 82 
AND EAX, 1690050198 
JMP .bb_main.2 
.bb_main.2:
BTS ESI, -55 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
CMOVS RBX, RCX 
CMOVL EDI, EAX 
MOVSX ESI, DL 
CWD  
AND RAX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RAX] 
CMOVO ECX, ECX 
CMOVLE RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RCX] 
XOR DL, BL 
CMOVBE EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
