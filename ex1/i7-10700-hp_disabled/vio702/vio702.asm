.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -109 # instrumentation
SETNLE AL 
MOV ECX, 324212109 
LEA EAX, qword ptr [RAX + RDI + 34692] 
SETNB BL 
AND RAX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RAX] 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
TEST EDI, 653520907 
SETBE CL 
BSWAP RSI 
XOR BX, -83 
XOR CX, 30 
CMOVNB RCX, RAX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDI 
AND DIL, -104 # instrumentation
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTR RBX, -97 
AND DIL, -71 # instrumentation
CMOVBE BX, AX 
MOV BX, SI 
STD  
CMOVL ECX, EDX 
TEST CL, -3 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RAX], RAX 
BTC ESI, EBX 
JMP .bb_main.3 
.bb_main.3:
OR RAX, 1302663059 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 7 
AND DIL, -62 # instrumentation
SETZ CL 
CMOVLE DX, SI 
MOVSX EDX, BL 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 28748 
AND RDX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDX], 3 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
SETP AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
