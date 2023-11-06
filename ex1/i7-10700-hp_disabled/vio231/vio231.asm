.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
NOT RAX 
CMOVNBE RDI, RBX 
XADD BL, AL 
MOV EDX, -8558310 
NOT EDX 
MOV EDI, -769400073 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], 3 
BT EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 6 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD ECX, EDI 
SETNZ BL 
XOR CL, BL 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDX] 
AND RAX, 1815524959 
TEST SIL, -117 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDX] 
CMOVNO EDX, EDI 
AND SIL, 61 
MOVSX RDI, DX 
TEST EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
SETS DIL 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTC RDI, -74 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR AL, BL 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], -106 
SETNBE BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RSI] 
SETL CL 
XOR DL, 39 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
