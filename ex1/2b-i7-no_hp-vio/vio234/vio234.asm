.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], DI 
SETLE CL 
BTR DI, AX 
OR EAX, -154179753 
BTC EBX, -68 
BTC EAX, -6 
BTR BX, -113 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], EDX 
CMOVP BX, AX 
XOR DL, AL 
XOR BX, 104 
CMOVP RCX, RDX 
OR DIL, -18 
XADD BL, DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
CMOVNO RCX, RAX 
CMOVNO EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
BTC ESI, EAX 
AND SIL, 3 # instrumentation
CMOVNO EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDX] 
BT RAX, RBX 
AND EAX, 1115350229 
SETLE BL 
XADD ESI, ESI 
BTC EDI, EBX 
AND SIL, -120 # instrumentation
SETLE DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], ESI 
MOVSX ECX, AX 
MOVSX RAX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
