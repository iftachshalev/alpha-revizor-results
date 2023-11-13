.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
AND ESI, -29 
BT EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
MOV CL, -84 
CMOVNBE EBX, EBX 
SETNO CL 
CMOVNO RCX, RBX 
MOVZX CX, DL 
TEST RAX, -1102329501 
AND EDI, EBX 
CMOVNLE EDI, EBX 
MOVZX EBX, AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 110 # instrumentation
MOVSX DI, CL 
CMOVNB EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], AX 
CMOVNLE CX, DI 
TEST EAX, -945547722 
XOR RSI, RDX 
MOVSX RDI, DI 
CMOVNO DX, SI 
BTS RDX, RAX 
OR RAX, -1978603055 
CMOVNB ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDI] 
OR AX, 15200 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EBX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], CL 
BT EAX, -85 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
