.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EBX, EDI 
CMOVBE ESI, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RAX] 
TEST RAX, 135918688 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], SI 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], EDX 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 24 
BSWAP RDX 
BTC BX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
CMOVLE RCX, RDX 
AND EBX, 83 
CMOVZ EBX, ECX 
BTR RDX, RAX 
AND DIL, 106 # instrumentation
CMOVNP EDX, EBX 
BTS CX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], SI 
SETS AL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
BT EAX, -40 
AND SIL, -81 # instrumentation
SETNL SIL 
BTR EDX, EBX 
AND DIL, 97 # instrumentation
SETO DIL 
SETNBE DL 
BTR AX, -68 
AND SIL, -49 # instrumentation
CMOVL DX, DI 
AND RDI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDI], 7 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RAX] 
CMOVO ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
