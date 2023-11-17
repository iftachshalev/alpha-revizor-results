.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 4 # instrumentation
CMOVO AX, CX 
BTS EAX, -27 
JBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], 0 
SETL BL 
AND EDI, ECX 
MOVZX RCX, DI 
SETLE DL 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -128 # instrumentation
MOVZX RBX, DIL 
SETL DL 
SETLE CL 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
MOV CL, 73 
BSWAP RDI 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, 34 # instrumentation
MOVSX EBX, AL 
CMOVZ DX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RSI] 
CMOVB RCX, RBX 
BTC DI, -113 
AND DIL, 22 # instrumentation
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR BX, CX 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RCX 
MOV DI, 21524 
NOT BL 
BTS RDX, RDI 
STD  
MOV BL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
CMOVL RCX, RDI 
TEST AL, 58 
CMOVNLE RSI, RBX 
AND RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
