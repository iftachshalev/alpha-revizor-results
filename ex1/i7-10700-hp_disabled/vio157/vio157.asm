.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, 81 
BT DX, 32 
OR AX, 27333 
JMP .bb_main.1 
.bb_main.1:
TEST DIL, 48 
AND RDX, RCX 
TEST DL, DL 
MOVSX RCX, BL 
CMOVNP EBX, EAX 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XOR RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], -57 
TEST RAX, -1311803071 
SETL DIL 
SETNBE DL 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
TEST DI, 4642 
JMP .bb_main.3 
.bb_main.3:
XCHG AL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 4 
MOVZX ECX, DIL 
TEST RDX, -925548704 
XOR DL, DIL 
CMOVLE ECX, EDX 
OR SIL, CL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RSI 
MOV EBX, EBX 
CMOVNLE EBX, ECX 
CMOVP DI, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], 3 
AND RBX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RBX], DX 
BTS RSI, RCX 
AND DL, AL 
TEST EAX, -1193212338 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
