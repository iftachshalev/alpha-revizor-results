.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EAX, -730817489 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
XADD DI, SI 
CBW  
XCHG EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -100 
SETO BL 
MOVSX DI, AL 
BTS RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], -25 
OR BL, BL 
BTR RDI, -68 
XOR EAX, 1195243124 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, -909081425 
OR SIL, -70 
CMOVNB EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
NOT BL 
CMOVNP EBX, ESI 
CMOVZ RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
BT DX, CX 
AND DIL, -28 # instrumentation
CMOVNZ RDI, RAX 
MOVSX ECX, SI 
NOT RBX 
CMOVNLE RAX, RCX 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RDI] 
CMOVP RBX, RAX 
XOR EDI, 110 
BTC EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
