.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -62 # instrumentation
CMOVL ESI, EAX 
OR AX, DI 
BTS DI, BX 
AND SIL, 92 # instrumentation
CMOVL RDI, RCX 
AND EDX, EAX 
TEST AX, DI 
CMOVNB DX, CX 
XOR DL, DL 
CLC  
XOR DX, CX 
BSWAP EBX 
MOVSX EBX, DL 
TEST EAX, 482843887 
XOR DL, -117 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 85 # instrumentation
CMOVNO DI, BX 
CMOVNP RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
TEST SIL, -11 
BT SI, AX 
MOV CL, BL 
XOR DX, -53 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDI] 
CMOVNL CX, DI 
CMPXCHG EDI, ESI 
SETO CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTS qword ptr [R14 + RCX], RCX 
SETNB AL 
AND BX, BX 
OR CL, DL 
XOR AX, 27516 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
