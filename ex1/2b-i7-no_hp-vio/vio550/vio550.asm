.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 89 # instrumentation
XCHG BL, AL 
CWDE  
CMOVNLE EDX, ECX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
MOV DX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDX] 
CMOVLE RSI, RCX 
SETL AL 
CMOVS EAX, ECX 
XOR CL, AL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
CMOVS EDX, ECX 
XCHG CX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
CMOVO EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 1131697377 
XCHG AL, BL 
CMOVNLE EBX, ESI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS RSI, RAX 
AND RAX, 63 
CMOVNS DI, CX 
CWDE  
OR SI, 66 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], DL 
XOR DI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RAX] 
MOVZX SI, DIL 
XOR ESI, 45 
CMOVNBE BX, SI 
XOR SI, -123 
AND RAX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RAX] 
CMOVL RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
