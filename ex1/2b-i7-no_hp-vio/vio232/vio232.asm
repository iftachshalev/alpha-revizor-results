.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, 58 
MOVSX EAX, BX 
XCHG AL, SIL 
MOVSX ECX, SIL 
SETZ CL 
CMOVB DX, AX 
BTR DI, DI 
BT DX, -9 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RCX] 
CMOVNL AX, BX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RDI] 
CMOVL AX, CX 
SETLE DL 
XOR DI, 75 
BTS EAX, ESI 
MOVZX DX, AL 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 3 
AND SIL, -100 # instrumentation
MOVZX EBX, SI 
CMOVNO RAX, RDI 
SETZ AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RAX], 0 
AND RCX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RCX] 
MOVSX EDI, DX 
OR DL, 62 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -1568204087 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
