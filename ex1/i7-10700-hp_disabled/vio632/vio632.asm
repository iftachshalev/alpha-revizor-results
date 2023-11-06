.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -47 # instrumentation
CMC  
SETLE AL 
MOVZX EDI, DI 
AND RAX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RAX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 118 # instrumentation
SETLE DL 
SETNZ AL 
CMOVNLE EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDX] 
BTS CX, -14 
BSWAP RDI 
BTC EBX, -63 
SETNBE DL 
CMOVZ BX, AX 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTC qword ptr [R14 + RDI], RDX 
AND SIL, 7 # instrumentation
MOVZX RSI, CL 
SETP CL 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST RCX, RSI 
MOV BL, DIL 
SETNP DL 
XOR EAX, 1989769533 
CMPXCHG SI, BX 
MOV DI, CX 
AND BL, -73 
SETNO CL 
BT EDX, ECX 
AND SIL, -46 # instrumentation
SETO DIL 
JMP .bb_main.3 
.bb_main.3:
BTR RAX, -48 
AND SIL, -69 # instrumentation
SETLE CL 
AND RDX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DI 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DI 
AND RDI, RSI 
CMOVNP BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
