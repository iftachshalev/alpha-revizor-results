.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 30 # instrumentation
CMOVL CX, DI 
BSWAP EAX 
BTR RDX, -62 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
SETNZ DL 
AND AX, 24447 
XADD DI, AX 
CMOVB EDX, EDI 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -53 # instrumentation
CMOVBE EBX, EBX 
SETNLE CL 
TEST SIL, 44 
SETNP AL 
MOV RAX, RBX 
AND DIL, -77 
CMOVL ESI, EDI 
SETZ BL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR CX, 0b1000000000000000 # instrumentation
BSR CX, CX 
AND DIL, -68 # instrumentation
CMOVL AX, SI 
AND RDX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDX], 2 
BTR RDX, RSI 
AND SIL, 104 # instrumentation
SETNLE DIL 
BT AX, DX 
TEST SI, 1314 
OR RDX, -101 
OR SI, CX 
SETBE BL 
BT RDX, -115 
MOVSX EAX, DIL 
MOVZX EBX, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
XOR DL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
