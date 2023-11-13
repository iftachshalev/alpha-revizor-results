.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 33 # instrumentation
SETNZ DL 
XADD RAX, RCX 
CWD  
CMOVNBE SI, DX 
CMOVS ESI, ESI 
XOR EAX, -195637070 
XADD BX, BX 
MOVZX RSI, CX 
OR AX, 0b1000000000000000 # instrumentation
BSF SI, AX 
OR AX, 37 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RDX 
SETL CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 39 # instrumentation
CMOVS DX, SI 
BT RCX, 123 
MOVSX RBX, SI 
XCHG EAX, EAX 
MOVZX EDI, DL 
AND RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DX 
SETNLE SIL 
OR SI, 0b1000000000000000 # instrumentation
BSR CX, SI 
AND RAX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RAX], 1 
BT DX, -128 
NOT EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EBX 
AND AL, -115 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 3 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
CMOVZ DX, SI 
SETNL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
