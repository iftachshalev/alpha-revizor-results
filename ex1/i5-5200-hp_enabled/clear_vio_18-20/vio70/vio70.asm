.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], -70 
BTC DI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], EDI 
SETZ DIL 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 86 # instrumentation
CMOVBE SI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
XOR EAX, 260874882 
SETNBE CL 
CMOVBE RAX, RSI 
CMOVLE SI, CX 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTC RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -16 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], ECX 
SAHF  
SETNS DL 
TEST ESI, EBX 
AND EBX, 75 
NOT ESI 
LEA EDX, qword ptr [RDX + RAX + 19012] 
SETZ DL 
OR CL, AL 
CBW  
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
SETBE DL 
JMP .bb_main.3 
.bb_main.3:
MOV SI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
SETNBE AL 
BTC EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDX] 
BTC RDX, 118 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
