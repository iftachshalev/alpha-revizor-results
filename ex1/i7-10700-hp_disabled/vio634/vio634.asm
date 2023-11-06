.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 104 # instrumentation
CMOVL DX, DX 
XOR ECX, ESI 
SETL BL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 32739 
LEA ESI, qword ptr [RBX + RCX + 13479] 
SETNO CL 
OR DX, 0b1000000000000000 # instrumentation
BSF CX, DX 
BT EDX, EDX 
MOVSX EDX, CX 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RAX] 
SETP AL 
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND SIL, BL 
XCHG DIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
CMOVBE CX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
CDQ  
LEA RAX, qword ptr [RDI + RDI + 31889] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDX] 
SETNL CL 
AND BL, 47 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RCX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 93 # instrumentation
CMOVNZ CX, DI 
XADD DL, DIL 
SETL BL 
CMOVO BX, DI 
OR BL, AL 
MOVSX RSI, AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDI] 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
