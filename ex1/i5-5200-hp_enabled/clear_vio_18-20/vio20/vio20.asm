.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, BX 
OR EAX, 300183548 
MOVZX EAX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
MOV EDI, EDX 
SETS CL 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
SETNO DIL 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], -112 
OR BL, -108 
BT RDX, -52 
AND SIL, -46 # instrumentation
CMOVNP RBX, RSI 
XCHG DI, AX 
TEST AX, 14308 
CMOVL BX, DX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR DX, DI 
CMOVP RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RAX 
CMOVNB RDX, RCX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 89 # instrumentation
CMOVNB RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
XOR AX, -19710 
CMOVLE SI, BX 
CMOVO EDI, EDX 
SETS DL 
JMP .bb_main.4 
.bb_main.4:
TEST AX, -6558 
CMOVNO RCX, RCX 
SAHF  
TEST DX, 4653 
BTS EBX, -120 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
