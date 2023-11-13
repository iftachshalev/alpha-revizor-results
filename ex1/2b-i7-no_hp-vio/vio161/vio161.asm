.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR RAX, 121 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1274008072 
OR DL, AL 
CMOVO EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
TEST AX, SI 
XADD ESI, EAX 
AND RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 424822209 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], -1745894400 
MOV ECX, 107295134 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -30 # instrumentation
CMOVO RCX, RAX 
STC  
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
SETO BL 
AND DIL, -23 
CMOVS SI, DI 
SETS DL 
CMOVBE EDI, ECX 
MOVZX RAX, CX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], -11 
XADD DX, CX 
XOR DL, 114 
CMOVNS RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
XOR DX, 6 
OR DIL, -27 
NOT SIL 
OR CL, DL 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
