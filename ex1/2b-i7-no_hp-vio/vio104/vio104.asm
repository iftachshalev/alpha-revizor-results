.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDX] 
SETNS BL 
CMOVP ESI, ECX 
BSWAP RDX 
OR AL, 59 
OR AL, -45 
SETNO CL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
BT CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 69 
MOV CL, BL 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 6 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -336320692 
TEST CX, 13277 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
XOR AL, -38 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, RDX 
XOR CL, CL 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
CDQ  
TEST CL, 10 
CMOVZ RBX, RAX 
BTC RCX, 85 
CMOVNB RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RSI], AX 
BT EBX, -89 
TEST EBX, EAX 
CMPXCHG DL, DIL 
BT RDI, RCX 
CMOVNZ ECX, ESI 
OR AL, 25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
