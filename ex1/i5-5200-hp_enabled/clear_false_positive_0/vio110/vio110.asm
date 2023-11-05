.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DI, 0b1000000000000000 # instrumentation
BSR DI, DI 
CMOVZ RSI, RCX 
OR EAX, -1220140932 
XOR RAX, 1296164283 
BTR DX, 83 
BTC BX, BX 
JMP .bb_main.1 
.bb_main.1:
OR BL, AL 
TEST DL, DIL 
CMOVNBE RSI, RSI 
MOVZX AX, SIL 
XOR RDI, RAX 
CMOVNZ EAX, EDI 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -31 # instrumentation
CMOVBE EDX, EDX 
AND AL, 96 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RSI] 
CMOVL AX, BX 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EAX 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, -113 # instrumentation
SETNLE BL 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ESI 
TEST CL, -95 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDX] 
CMOVNB AX, BX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], -44 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
CMOVLE BX, DX 
JMP .bb_main.4 
.bb_main.4:
XOR EDI, EAX 
TEST EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], -17 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
