.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RAX] 
BT EDI, -43 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], CX 
BTS EBX, 29 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], ESI 
CMOVNO EDX, EDX 
BT BX, -60 
CMOVNZ EDI, ECX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 43 # instrumentation
SETS AL 
XOR RBX, -71 
CMOVBE SI, DI 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], DI 
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], 89 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
AND EDX, ESI 
XCHG EAX, EAX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RCX] 
CMOVO CX, DX 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], -112 
OR EAX, -924166223 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV CL, DL 
XOR AL, -55 
CMPXCHG RDX, RBX 
SETNBE DL 
BTS RAX, -28 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
MOVSX RSI, SI 
OR SIL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
