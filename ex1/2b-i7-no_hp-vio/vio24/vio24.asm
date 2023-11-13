.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST CX, CX 
SETNZ BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RAX] 
BSWAP RBX 
AND RCX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RCX] 
BTC EBX, 97 
MOV RCX, -5953728378775250793 
XOR CX, BX 
BTR ECX, 0 
LEA DI, qword ptr [RBX + RSI + 46330] 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
SETP BL 
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 70 # instrumentation
MOV RDX, -7751967436024206171 
SETNB CL 
BTR RCX, RDX 
BTS AX, -52 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RSI] 
MOVSX AX, DL 
SETNZ AL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RBX] 
NOT DL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
AND DIL, 95 # instrumentation
SETNLE CL 
CMOVNS SI, CX 
CBW  
SETS DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RCX] 
TEST DIL, 119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
