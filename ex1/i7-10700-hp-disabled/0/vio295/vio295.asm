.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 38 # instrumentation
CMOVZ EDX, EDI 
BT EDX, 36 
CMOVBE RDI, RDX 
XCHG CX, AX 
CMPXCHG DI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RBX 
AND RCX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RCX], 5 
XADD AL, BL 
JO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, -6 # instrumentation
NOT AL 
SETNP BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
BTC ECX, ESI 
CMC  
BT EDI, EDI 
TEST CX, CX 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR CL, SIL 
OR ESI, 22 
MOVZX RAX, DX 
MOV AL, DL 
CMOVNZ RAX, RBX 
AND EAX, -703891864 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], 5 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 113 # instrumentation
SETNO BL 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG ECX, EAX 
XOR DIL, -58 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], 42 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
XOR AL, -61 
XOR RAX, -1540685673 
BTS SI, DX 
XCHG EAX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
