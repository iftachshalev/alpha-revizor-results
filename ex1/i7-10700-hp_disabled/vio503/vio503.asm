.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RDX, RDX 
AND DIL, -99 # instrumentation
CMOVNL ECX, ESI 
CMOVNL BX, SI 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 100 
BSWAP RDX 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, -35 # instrumentation
CMOVP EAX, EDI 
AND EDX, EDX 
AND ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
SETO BL 
CMOVNS RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], BX 
BT EDX, 48 
SETNBE SIL 
AND RDX, 49 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -88 # instrumentation
CMOVNO EBX, EDI 
BTC EAX, 93 
BTS RCX, RBX 
BT CX, DX 
CLC  
BT RBX, -99 
AND DIL, -116 # instrumentation
CMOVS RCX, RCX 
CMOVLE RDI, RAX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
STC  
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND SIL, -54 # instrumentation
SETLE CL 
AND RSI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
CMOVBE AX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
