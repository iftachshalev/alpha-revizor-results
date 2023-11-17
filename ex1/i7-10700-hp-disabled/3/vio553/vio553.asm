.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 25 # instrumentation
CMOVBE EBX, ESI 
CMOVNB EBX, ESI 
NOT AL 
MOVSX EBX, CL 
BTC SI, -35 
AND RAX, -1332946508 
BTS SI, 5 
CMPXCHG CL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV BL, 75 
OR AX, -6279 
SETZ CL 
CMOVLE AX, AX 
BSWAP EAX 
AND RCX, RBX 
XADD EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RBX] 
AND DX, 44 
XOR AX, 23990 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
AND BL, SIL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RAX] 
SETNO DL 
XADD CL, CL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], BX 
LEA DI, qword ptr [RDX + RBX] 
SETL BL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
MOVZX EDX, BL 
OR DL, -18 
NOT DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
