.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -42 # instrumentation
BSWAP RSI 
CMOVNS RCX, RBX 
BTR EDI, -104 
OR AL, 2 
CMPXCHG AL, DIL 
SETBE DL 
NOT CL 
MOVSX DX, AL 
CLC  
CMOVO ECX, EDI 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
TEST CL, -11 
TEST EBX, EDX 
SETNS DL 
XCHG EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTR word ptr [R14 + RDI], DX 
AND SIL, -85 # instrumentation
SETNS AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], 96 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -58 # instrumentation
MOV CL, AL 
CMOVBE RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 21 
NOP  
MOV DIL, 92 
CMOVZ RBX, RAX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
OR RAX, 408417345 
TEST AL, 109 
XOR BL, -65 
NOP  
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
