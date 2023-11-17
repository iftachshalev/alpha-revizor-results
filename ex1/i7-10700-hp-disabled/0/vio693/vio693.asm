.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DIL, -51 
AND AL, AL 
OR ESI, ECX 
CMOVNZ RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RCX] 
XOR AX, -19906 
SETS CL 
JMP .bb_main.1 
.bb_main.1:
MOV SIL, BL 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
CMOVNP RBX, RAX 
AND EAX, -1391416367 
CMOVP RDI, RDI 
AND AL, -39 
XOR DIL, SIL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
TEST AX, -31655 
TEST AX, -12737 
BTC EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RAX] 
SETNBE AL 
OR EAX, 1348661328 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
MOV BX, SI 
CMOVO BX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], -94 
JMP .bb_main.4 
.bb_main.4:
CWD  
CMPXCHG RDI, RAX 
SETNB AL 
BTS SI, SI 
AND DIL, 11 # instrumentation
MOV RDX, RAX 
SETNP DL 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
