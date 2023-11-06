.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RDX, -109 
MOV EDX, ECX 
AND CL, SIL 
SETNS AL 
TEST RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], CL 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR RCX, -88 
MOVZX EDX, BX 
CMOVNZ EAX, EBX 
CMOVB EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], BL 
MOV ESI, EDI 
CMOVNS SI, SI 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOV DIL, -128 
AND EAX, 273403345 
BTR RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], -1373761766 
CMOVP CX, BX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDX] 
BTR RDX, -123 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RAX] 
CMOVNBE SI, SI 
BTR RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RCX], ECX 
AND SIL, 44 # instrumentation
SETS AL 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], 108 
OR RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RBX 
BTC CX, 11 
AND ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
