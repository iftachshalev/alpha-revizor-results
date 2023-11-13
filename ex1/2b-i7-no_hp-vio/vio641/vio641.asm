.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 32 # instrumentation
CMOVBE BX, BX 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RSI 
XOR CL, AL 
CMOVNZ ESI, EBX 
BSWAP RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RCX] 
XOR RAX, 8 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], DIL 
SETS DL 
MOV DL, -108 
BTR EDI, 10 
SETNB BL 
BSWAP RBX 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
SETB AL 
CMOVO ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], 73 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
TEST AL, 84 
XADD AX, AX 
TEST SIL, -124 
LEA RAX, qword ptr [RDX + RCX + 31299] 
SETO DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
XOR DI, CX 
CMOVO RSI, RCX 
TEST DI, BX 
MOV CL, AL 
SETBE CL 
MOV EDI, ESI 
BT DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
