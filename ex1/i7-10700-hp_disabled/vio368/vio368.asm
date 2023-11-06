.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 16 # instrumentation
XCHG EAX, EBX 
CMOVNLE RCX, RDX 
MOVSX RDI, DIL 
AND AL, 29 
SETNLE AL 
CWD  
CMOVL RDX, RDX 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTR RDX, RBX 
TEST RAX, 1733240435 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RCX] 
TEST RAX, -662908024 
XOR EBX, EDI 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST RSI, 1339611964 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
CMOVZ DX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
OR DL, 103 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], 68 
OR SI, DX 
OR EAX, 338917277 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDI] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX CX, DIL 
OR BX, AX 
BTS EDI, EAX 
SETNBE BL 
NOT RBX 
MOV EAX, ECX 
CMOVNZ RBX, RSI 
SETNZ DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], 0 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
