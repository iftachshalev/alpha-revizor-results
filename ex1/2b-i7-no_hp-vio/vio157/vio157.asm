.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT EBX, ECX 
XCHG BX, DI 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
AND DIL, 34 # instrumentation
CMOVB RCX, RBX 
BT EDI, -79 
OR EAX, -787490588 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RSI] 
BTS BX, CX 
LEA EAX, qword ptr [RBX + RSI] 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], CX 
SETNBE AL 
MOVSX RBX, DX 
AND EAX, ESI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
TEST AL, -10 
TEST AL, -121 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RAX 
TEST DL, BL 
CMPXCHG BL, AL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RCX 
CMPXCHG AX, DX 
BTS RAX, 72 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
BTC DX, BX 
AND DIL, -104 # instrumentation
CMOVNLE RAX, RDI 
AND EBX, -42 
SETNLE BL 
BT EBX, -74 
XOR DIL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
