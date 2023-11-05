.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], AX 
CMOVP RSI, RDX 
CMPXCHG CL, CL 
SETBE AL 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RAX] 
AND DI, CX 
MOVSX RBX, AL 
MOVSX DX, BL 
CMOVBE RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 69 # instrumentation
CMOVNO DI, DI 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RSI] 
CMOVNO DI, SI 
SETB CL 
STD  
SETZ AL 
MOVZX AX, DL 
AND RCX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDX] 
MOVSX ECX, DL 
MOV RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD RAX, RAX 
SETLE AL 
OR ECX, EAX 
CMPXCHG SIL, BL 
CMOVLE RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RDX] 
MOVSX EAX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
