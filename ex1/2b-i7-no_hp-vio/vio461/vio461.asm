.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], CX 
BT RSI, RSI 
CMOVNB SI, BX 
SETNZ AL 
MOV CL, 116 
TEST ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], BX 
CMOVNL RDX, RDI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDX] 
CMOVNO DX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
SETNB BL 
BTS RDI, RSI 
AND SIL, 127 # instrumentation
SETLE DL 
AND RAX, -95 
AND EAX, 206480821 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
BTC EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], EDI 
AND DIL, -82 # instrumentation
CLC  
MOV AL, AL 
LEA RBX, qword ptr [RDX + RAX] 
SETS CL 
AND RDI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RDI], SI 
SETZ AL 
CMOVB DX, AX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], SI 
TEST SIL, DL 
AND RAX, -1540463239 
XCHG EAX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
