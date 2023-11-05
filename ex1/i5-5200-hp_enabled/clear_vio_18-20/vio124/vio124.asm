.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RSI] 
XCHG BL, CL 
AND DI, 46 
TEST DL, DL 
OR AX, -32084 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -38 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RCX] 
CMOVB EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
MOV DIL, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], AL 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, 94 # instrumentation
CMOVZ SI, BX 
CMOVNZ AX, BX 
XCHG RAX, RAX 
CMC  
CMOVL BX, CX 
JMP .bb_main.3 
.bb_main.3:
AND DL, DIL 
CMOVNZ RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ESI 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], BX 
SETLE DL 
AND RDX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDX] 
SETP BL 
CMOVNS ECX, EAX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
NOT AL 
AND AL, 4 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
