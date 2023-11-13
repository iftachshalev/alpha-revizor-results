.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 26 # instrumentation
CMOVZ CX, SI 
CMC  
AND RDI, RCX 
CMOVBE EDI, ECX 
AND EAX, 2035807193 
OR AL, 34 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], 85 
LEA DX, qword ptr [RAX] 
AND AL, -111 
MOV SI, BX 
CMOVNLE DI, AX 
MOV ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RDI], DI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RAX 
OR AX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], AL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDI] 
CMOVL RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 99 
CMOVLE CX, CX 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
SETL AL 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], 78 
AND RAX, RAX 
SETNP DL 
SETNL AL 
CLD  
XCHG RCX, RDI 
OR RAX, -1989660203 
CMOVLE RCX, RBX 
CMOVS RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
