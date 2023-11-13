.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -1 # instrumentation
SETNLE DL 
OR DI, 0b1000000000000000 # instrumentation
BSF DX, DI 
AND RBX, RSI 
CMOVL RCX, RAX 
SAHF  
CMOVNL RDI, RBX 
SETNP CL 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 2 
CMOVBE EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EDI 
CMOVL AX, SI 
CMOVZ DX, CX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RCX] 
MOVSX RSI, DI 
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTS word ptr [R14 + RDI], DX 
AND RBX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RBX], 5 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], EDX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDX] 
CMOVP ESI, EDI 
BTS EBX, ECX 
AND DIL, -67 # instrumentation
CMOVB EBX, ESI 
LEA CX, qword ptr [RCX + RDX] 
BSWAP RBX 
CMOVNO SI, DX 
BSWAP ESI 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND SIL, 104 # instrumentation
CMOVNB ESI, EBX 
OR AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
