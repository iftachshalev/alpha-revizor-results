.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -98 # instrumentation
CMOVNZ CX, BX 
XOR CL, DL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RSI 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RAX], 1 
MOVSX CX, DIL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -89 # instrumentation
CMOVNP ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RCX] 
XCHG RSI, RAX 
AND DI, SI 
XADD RAX, RCX 
TEST RCX, RDI 
BTC RBX, RSI 
LEA EDI, qword ptr [RDX + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 59 # instrumentation
CMOVNZ RBX, RCX 
MOVZX EAX, DL 
AND RAX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RAX] 
STC  
CMOVNB RAX, RCX 
CMOVNB EDI, EAX 
BTR EDX, 108 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 53 # instrumentation
CMOVP RBX, RSI 
CMOVO RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 14 
NOT ESI 
NOT DX 
CMOVP EDI, EAX 
CLD  
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
