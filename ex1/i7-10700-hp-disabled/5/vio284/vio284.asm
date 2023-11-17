.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR ECX, 96 
AND SIL, 46 # instrumentation
CMOVL RDI, RDI 
NOT SI 
MOV EDI, EDI 
CMOVO EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RCX], DX 
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 3 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RSI] 
AND AL, 97 
XOR RAX, -820223299 
SETZ DIL 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 15 # instrumentation
CMOVB RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], 21 
CMOVNZ SI, CX 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RCX], EDX 
CMOVNBE EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -79 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DIL 
XOR EAX, 468529058 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
SETNP AL 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SI, AX 
XOR AX, -7932 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], RCX 
CMOVNB RCX, RAX 
MOVSX RDX, DL 
MOV CL, -45 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
