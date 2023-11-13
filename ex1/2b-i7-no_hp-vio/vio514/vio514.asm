.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 62 
CMOVNB BX, BX 
SETBE DIL 
SETNS BL 
NOT AL 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 5 
CMOVNZ RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
BTR ECX, EDX 
BTR CX, DX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR CX, -11 
LEA DI, qword ptr [RCX] 
BTS RAX, -126 
TEST RDX, -315705956 
XADD DX, SI 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDI] 
MOV CL, BL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], -117 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDX] 
CMOVNS SI, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
SETNP SIL 
SETS CL 
AND BL, BL 
TEST EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDX] 
TEST CL, 46 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RSI] 
STC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
