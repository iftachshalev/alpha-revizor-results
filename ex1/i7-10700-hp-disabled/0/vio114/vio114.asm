.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RBX] 
CMOVZ EDX, ECX 
SETS DL 
CMOVNO RDX, RAX 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -99 # instrumentation
CMOVL RAX, RDX 
BSWAP EDI 
XOR SI, BX 
LEA EDX, qword ptr [RAX] 
OR AL, 85 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG AL, BL # instrumentation
AND SIL, 73 # instrumentation
SETO DIL 
SETNBE SIL 
CMOVNB DX, SI 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], 898245198 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RAX] 
MOV RDI, -4831318371198634284 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RAX] 
SETS CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
OR CX, 51 
MOVZX ESI, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RDI 
CMOVB BX, DI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], BX 
JMP .bb_main.4 
.bb_main.4:
MOV RSI, 4639540782886055170 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
BTR SI, BX 
SETBE BL 
BTC RAX, RBX 
MOVZX ECX, DL 
MOVSX EBX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
