.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -10 # instrumentation
SETNO DL 
CMOVO AX, AX 
SETB DIL 
OR EAX, -39 
XCHG EAX, EDX 
SETNLE AL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RBX 
AND SIL, 5 # instrumentation
XCHG BL, CL 
CMOVL DX, DI 
MOV CL, BL 
AND RAX, -116 
CMOVLE EAX, EDX 
AND DL, DL 
CMPXCHG DL, BL 
SETNB BL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
CMPXCHG RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDI] 
MOVSX EAX, DL 
AND SI, BX 
SETB CL 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDI] 
SETLE DL 
BTS DX, 84 
AND SIL, 82 # instrumentation
SETNLE AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDI] 
SETNS AL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RAX] 
AND DIL, -110 # instrumentation
CMOVNO EAX, EAX 
CMOVNO DI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
