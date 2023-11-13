.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -18 # instrumentation
SETO DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EAX 
BTR RDX, 24 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RDX], DX 
AND SIL, -46 # instrumentation
CMOVNO RCX, RCX 
CMOVNB RAX, RAX 
CMPXCHG AL, DL 
XADD RDX, RCX 
NOT AX 
STD  
CMOVS RDX, RSI 
OR DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
CMOVNS EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RAX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -119 # instrumentation
CMOVB SI, SI 
SETNP SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], 63 
SETNS AL 
MOVZX EBX, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RCX], 2 
AND SIL, 114 # instrumentation
SETBE DL 
CMOVNL CX, BX 
TEST AL, -38 
XOR ECX, EDX 
CMOVNBE AX, AX 
BTS EDI, EDI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
AND DIL, -47 # instrumentation
CMOVBE RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDI] 
SETNBE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
