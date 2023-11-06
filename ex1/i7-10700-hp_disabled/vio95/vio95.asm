.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RSI, RBX 
OR DL, DIL 
NOT DL 
CMOVNO RSI, RAX 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], BL 
CMOVNB SI, SI 
CMOVLE DI, AX 
MOVSX EDX, DX 
BTC EDX, EBX 
BTS EDI, EDX 
AND DIL, -124 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, -997031890 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
TEST BL, DL 
BSWAP RBX 
AND RCX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RCX] 
AND RDX, 106 
SETS BL 
OR DIL, 86 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -127 # instrumentation
SETNO AL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EBX 
XOR BL, AL 
BTC RDX, -7 
AND SIL, -108 # instrumentation
CMOVP RAX, RCX 
XOR BL, 66 
MOV ESI, ESI 
BTR RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RAX] 
XADD CL, AL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
AND CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
