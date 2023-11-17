.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 100 # instrumentation
SETNL AL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDI] 
MOV AL, 110 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
TEST EAX, -1968217623 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RCX 
MOV DL, 36 
CMOVNB ESI, EDX 
CMOVZ DI, AX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, 15 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
MOV CX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
XOR AX, -26935 
OR RAX, -904491667 
XOR RDX, RCX 
CMOVNLE EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
CMOVNZ SI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
SETBE CL 
MOVZX ECX, DL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 32101 
CMOVO SI, BX 
OR CL, -1 
MOVSX AX, AL 
MOV RCX, -1444872993942018304 
STD  
SETNO DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
XCHG AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
