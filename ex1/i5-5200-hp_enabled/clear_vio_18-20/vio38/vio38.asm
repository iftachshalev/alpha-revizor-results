.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
XOR DIL, 33 
NOT DX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG DL, SIL # instrumentation
XCHG word ptr [R14 + RSI], DI 
LAHF  
CBW  
MOVZX EDX, CL 
AND RAX, -104 
SETO CL 
BTS DX, DI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
AND DIL, -85 # instrumentation
SETO BL 
MOVZX AX, DL 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], 38 
CMOVNP EDX, EDI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -26 # instrumentation
CMOVZ EDX, ESI 
TEST BX, -8980 
SETNP BL 
MOVSX EDI, CX 
LEA SI, qword ptr [RDX + RDI + 30975] 
CMOVNO RDX, RCX 
MOV RDX, RBX 
CMOVB RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RCX] 
SETP DIL 
CMPXCHG AL, CL 
AND RDX, RDX 
BSWAP RCX 
CMPXCHG CX, BX 
SETS DIL 
XCHG RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
