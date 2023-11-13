.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWDE  
AND RAX, -2142156854 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], BL 
CMOVB EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EAX 
CMOVP EAX, ESI 
OR CX, -3 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RAX] 
MOV RBX, 4107103899757852224 
SETNL BL 
BTC DX, AX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
CMOVP EBX, EAX 
MOVSX EDI, AL 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
OR CL, -9 
TEST AX, SI 
SETP SIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDX 
BT DI, -17 
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
MOVZX ECX, DL 
NOP  
BTS EDX, -40 
AND SIL, -89 # instrumentation
MOVSX DX, AL 
CMOVNL RSI, RSI 
SETNO SIL 
CMOVZ EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], -124 
BT CX, DI 
OR EAX, -1736485458 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
