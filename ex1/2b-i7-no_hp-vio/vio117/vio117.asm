.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 71 # instrumentation
SETO AL 
SETP BL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1976237344 
CMOVNL RDI, RAX 
OR EAX, -1838143822 
STD  
SETZ CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDI] 
SETLE BL 
TEST SIL, 34 
CMOVNS EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
BTS RDI, 97 
AND RDX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BX, BX 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
MOVZX EBX, CX 
STD  
CMOVNB DI, AX 
SETL DL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
OR ESI, 51 
XCHG BX, CX 
OR RSI, 77 
SETLE DL 
LEA RSI, qword ptr [RDX] 
NOT AL 
SETP AL 
CMOVNO ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
