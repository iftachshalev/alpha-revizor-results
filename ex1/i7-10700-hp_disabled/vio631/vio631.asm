.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX SI, BL 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
AND DIL, 19 # instrumentation
CMOVLE CX, AX 
SETNP BL 
XCHG EDI, EAX 
CMOVNO EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DI 
TEST AL, BL 
NOP  
CMOVNZ RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RBX], 7 
SETB CL 
BTS AX, BX 
AND DIL, -49 # instrumentation
SETNP BL 
BTS ESI, -68 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
CMOVBE DI, AX 
SETLE DL 
MOVZX EAX, SIL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 72 # instrumentation
SETNZ BL 
XOR CX, -44 
BTS EBX, EBX 
OR EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], CL 
TEST DL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
BTR EDI, 109 
OR RDI, -124 
CMOVNZ BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
