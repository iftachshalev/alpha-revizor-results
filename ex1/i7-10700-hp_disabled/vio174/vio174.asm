.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
CMOVBE RSI, RBX 
CMPXCHG CX, DX 
MOVZX CX, AL 
SETLE DL 
MOVSX EAX, DI 
SETNB DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
SETBE CL 
TEST AL, -2 
CMOVL EDI, EDI 
BSWAP RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
CMOVBE EBX, ESI 
CLD  
SAHF  
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RSI] 
MOV AX, 26535 
CMOVNB ECX, EDX 
CMOVNZ EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 63 
OR CL, -69 
BTR DX, 77 
XOR CL, -94 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
NOT AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
