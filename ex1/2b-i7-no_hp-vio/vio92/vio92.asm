.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 101 # instrumentation
MOVSX SI, DIL 
SETNLE CL 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
CMOVZ BX, AX 
OR EAX, -1772328143 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], 1 
AND DIL, -93 # instrumentation
CMOVLE ECX, ECX 
NOT RCX 
CMOVNZ EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RBX] 
OR RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], EDI 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], BL 
MOVSX RBX, DIL 
MOV RSI, RDI 
MOV SIL, 115 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
CMC  
CMOVNP EDX, EDX 
MOVZX EBX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], SIL 
CMOVP RAX, RCX 
BT EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
CMOVNBE ESI, EAX 
MOVSX DX, AL 
CMPXCHG EDX, ESI 
CMOVNB RDI, RDI 
MOVSX EDI, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -2086476961 
LEA DI, qword ptr [RSI + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
