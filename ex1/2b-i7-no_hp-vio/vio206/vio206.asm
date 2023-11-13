.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 58 # instrumentation
SETNLE CL 
CMOVLE BX, AX 
BSWAP RCX 
AND SIL, -96 
TEST DI, -13521 
XOR DL, -1 
CMOVNO BX, DI 
SETNO BL 
XCHG RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
AND RAX, 1296119206 
XADD DI, SI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RAX, AX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 88 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], -92 
NOT RDI 
CMOVNO EDI, EAX 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
MOV AL, SIL 
AND DX, 55 
CMOVP DX, SI 
BT RDX, RCX 
BT EBX, ECX 
AND SIL, 83 # instrumentation
CMOVL DX, SI 
OR CX, 39 
CMOVLE BX, BX 
TEST DL, AL 
CMOVL ECX, EAX 
XOR AL, 31 
OR CX, -95 
CMPXCHG SIL, DL 
MOVZX SI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
