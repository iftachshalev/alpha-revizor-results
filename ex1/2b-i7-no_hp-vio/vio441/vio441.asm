.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EBX, EDX 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
SAHF  
TEST DIL, 34 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
SETNP BL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RSI] 
CMOVBE EDI, EDX 
XOR EAX, -1099257710 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RSI] 
TEST AX, 14477 
AND RAX, -493257126 
AND RAX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], 18077 
CMOVNP EBX, ECX 
SETNL SIL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RCX] 
MOV BL, DL 
NOT CL 
OR DL, -43 
MOVSX RCX, SIL 
XOR SI, BX 
TEST SIL, -116 
TEST DL, -5 
SETNB AL 
CMOVNZ AX, AX 
MOV DIL, 66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
