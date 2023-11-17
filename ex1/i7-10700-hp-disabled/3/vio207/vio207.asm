.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 63 # instrumentation
SETNP AL 
AND AX, -15115 
AND CL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
XCHG CX, AX 
AND AL, 121 
AND RCX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RCX] 
CMOVNO EDX, EAX 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RAX], AX 
MOV ESI, ECX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
CMOVL RDI, RAX 
MOVSX DI, BL 
SETNS CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], -8 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, 125 # instrumentation
CMOVZ EDI, ECX 
BTR ECX, 122 
AND SIL, 111 # instrumentation
CMOVL EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
TEST DIL, 76 
MOV CL, 101 
CMOVL EBX, EDI 
TEST ESI, ESI 
CMOVB CX, DX 
CMOVBE EBX, ESI 
CMOVNB RDX, RCX 
SETO AL 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
CMPXCHG DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
