.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT CL 
AND EAX, -1001898005 
CMOVNL RBX, RAX 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
MOV BX, BX 
MOVZX DX, AL 
XOR AL, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], BX 
CMOVO RCX, RSI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
BT EAX, EBX 
SAHF  
AND DI, 89 
BTS EDI, 114 
TEST AX, -2560 
AND AL, 125 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RSI] 
OR DL, DL 
AND RBX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RBX], 6 
AND SIL, -103 # instrumentation
CDQ  
CMOVNL EAX, EAX 
BTS RDX, RCX 
AND SIL, -91 # instrumentation
SETNO DL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
MOV DX, 7748 
MOVSX EBX, SIL 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 3 
OR EBX, -63 
CMOVNS DX, AX 
BT RCX, RBX 
XOR AL, -51 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
