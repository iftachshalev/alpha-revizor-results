.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND CX, -2 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
CMOVO CX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
STD  
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 51 
NOT RAX 
MOV EDX, EBX 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOV DIL, CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ESI 
TEST AL, AL 
CMOVNS RBX, RCX 
SETP SIL 
SETNL AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RCX 
SETNS CL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], SIL 
MOVSX CX, AL 
AND RDX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RDX], EBX 
BTS ECX, EBX 
AND SIL, DL 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 245929467 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], CL 
AND RCX, -117 
BTC DX, 107 
OR DI, 97 
JMP .bb_main.4 
.bb_main.4:
OR RBX, RBX 
CMOVNO RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
