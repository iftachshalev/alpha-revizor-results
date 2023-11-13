.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR CX, -12 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
CMOVO SI, CX 
CMOVNBE RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], CL 
SETL AL 
OR DL, BL 
TEST AX, -17303 
SETO DL 
MOV CL, 125 
BTR CX, 62 
CMPXCHG CL, AL 
CMOVNL EDX, ECX 
BTC RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], EDX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RAX, 1323158749 
BT SI, -19 
NOT CX 
BTS EBX, -111 
TEST RBX, RDX 
MOV RAX, -6354092667966351624 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
SETNLE AL 
CMOVNLE RBX, RDX 
XCHG RBX, RAX 
BTR EAX, 82 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DL 
SETLE AL 
AND AL, BL 
CMOVNZ EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
