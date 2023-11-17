.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EBX, 69 
AND SIL, 63 # instrumentation
SETS SIL 
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
TEST EBX, 1399636799 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], -5 
CWD  
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOV CX, 27993 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RBX] 
TEST BL, DL 
CMOVS ESI, EDX 
BTC AX, BX 
CMPXCHG DL, SIL # instrumentation
AND SIL, -86 # instrumentation
LAHF  
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 3 
BTC RAX, RSI 
BT RCX, 58 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], AL 
AND AL, DL 
CMOVNLE EBX, ESI 
CWD  
AND RAX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RAX] 
TEST DI, AX 
CMPXCHG RDI, RSI 
BSWAP EAX 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
BTS CX, AX 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 5 
BTS EBX, EBX 
AND SIL, -74 # instrumentation
CMOVNP DI, CX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
OR DL, BL 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
NOT EDI 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
