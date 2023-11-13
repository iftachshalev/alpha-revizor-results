.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
BT RCX, RAX 
TEST RDX, 1061107625 
CMOVZ RSI, RDI 
AND EDX, -87 
AND EAX, -1427367805 
LEA RBX, qword ptr [RCX] 
BSWAP RDX 
MOVSX RCX, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], AL 
XOR EDX, EDI 
BT ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], EDX 
CMOVNBE ECX, ECX 
MOVSX DX, BL 
CMOVS RBX, RSI 
OR CL, CL 
OR DIL, CL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
BTS RDI, 1 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RSI] 
BT RCX, 14 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
AND SIL, -54 
CMOVNBE DI, DI 
CMOVP ESI, EDX 
CMOVNBE DX, DX 
OR RAX, -1197939486 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RAX 
CMOVNZ DI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
