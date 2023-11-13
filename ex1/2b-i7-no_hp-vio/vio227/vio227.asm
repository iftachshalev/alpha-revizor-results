.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RCX] 
XCHG RSI, RDX 
CMOVNBE DI, AX 
SETB SIL 
CMOVB DI, DI 
CMOVO SI, DI 
AND AX, -23637 
BSWAP EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1324878699 
BTR ECX, EBX 
BTC EBX, -101 
AND SIL, -67 # instrumentation
CMOVNLE CX, CX 
MOV SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RCX], RAX 
CMOVO ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RCX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EAX, DX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
BT BX, AX 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], DX 
BTS SI, DI 
XADD RSI, RAX 
SETNBE DIL 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], CL 
TEST DIL, -46 
SETNS DL 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
CMPXCHG DL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMOVBE DX, CX 
CWDE  
SETB CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
