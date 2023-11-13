.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT DI, CX 
AND RAX, 498013054 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDX], 3 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
BT RAX, -45 
AND SIL, -125 # instrumentation
SETNB AL 
SETLE AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RSI] 
CMOVO ESI, EDX 
CMOVNB ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDX] 
LEA RDI, qword ptr [RAX + RAX + 13992] 
MOV AX, 24254 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
CMPXCHG RCX, RBX 
BSWAP RAX 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], RCX 
BTR RAX, RCX 
MOVSX EBX, BL 
CMPXCHG RDX, RDI 
CMOVO RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], EDX 
AND ESI, EDI 
CMOVNB DI, DX 
CMOVS EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RAX 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTC word ptr [R14 + RDX], SI 
AND DIL, 77 # instrumentation
CMOVNP DI, AX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RAX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
