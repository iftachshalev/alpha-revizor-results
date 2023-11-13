.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -62 # instrumentation
SETNLE DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDX], 3 
LEA EDX, qword ptr [RCX + RDX + 51994] 
BT DI, CX 
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RDI], DX 
BTR SI, -63 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RAX] 
TEST RAX, 782164245 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
BTR RCX, -90 
AND DIL, 18 # instrumentation
CMOVNLE EDI, ECX 
CMOVS RAX, RSI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RAX, 371862798 
CMOVZ CX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RCX] 
AND ESI, EDX 
XOR AL, 3 
XOR CX, SI 
AND RBX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], SIL 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RCX 
BTS RSI, -40 
BTS DX, 125 
XCHG CX, DX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], BX 
OR AX, -18072 
MOVSX ESI, DX 
SETO DL 
CMOVBE RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
BSWAP RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
