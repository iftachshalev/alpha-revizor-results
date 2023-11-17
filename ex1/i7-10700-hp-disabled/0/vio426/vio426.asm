.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EAX, EDX 
CMOVNB DI, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
CMOVNO RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], BL 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 25 # instrumentation
XCHG RAX, RDX 
SETB SIL 
TEST ECX, ECX 
CMOVNO ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDI], DX 
XADD BL, CL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
AND SIL, -89 # instrumentation
SETNO BL 
CMOVBE AX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
XOR BX, AX 
OR EBX, EDX 
CMOVNB DX, BX 
XOR AL, 73 
XOR RDX, RAX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 67 
BT SI, 25 
AND DIL, 99 # instrumentation
SETNLE BL 
AND RAX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RAX] 
BTC EDI, EDI 
MOV EDI, ECX 
BT ESI, EDX 
XOR RDI, -60 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EBX 
AND EAX, 1299894807 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
