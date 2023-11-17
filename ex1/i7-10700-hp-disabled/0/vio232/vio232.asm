.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -34 # instrumentation
CMOVNO RAX, RCX 
CMOVL AX, SI 
CMOVNO CX, DX 
SETB CL 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], 6 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMPXCHG RBX, RDI 
BTS ECX, 100 
BTS RDX, -111 
SETNZ AL 
OR AX, -17263 
XADD DL, DL 
SETO DL 
AND RCX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RCX], 7 
CMPXCHG BL, AL 
AND DI, DX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -127 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RAX], EBX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTC qword ptr [R14 + RDI], RDI 
AND SIL, 2 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -58 # instrumentation
CMOVL DX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDI], 1 
AND SIL, -124 # instrumentation
SETNO CL 
CMOVNS RAX, RSI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
AND SIL, 81 # instrumentation
SETNL BL 
CMOVNBE RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RBX] 
AND BL, 25 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 6 
NOT CL 
CMPXCHG EDX, ECX 
XOR ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
