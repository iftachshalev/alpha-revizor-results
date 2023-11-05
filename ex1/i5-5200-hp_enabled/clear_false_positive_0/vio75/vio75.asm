.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 55 # instrumentation
SETNZ AL 
SETNB DL 
BTR EBX, EAX 
SETB SIL 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTC qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDX], 4 
CMOVNB SI, SI 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 4 
AND SIL, -110 # instrumentation
CMOVNO CX, SI 
CMPXCHG BX, DX 
MOVZX EDX, BL 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 5 # instrumentation
SETNL CL 
MOV RSI, RDI 
SETLE BL 
TEST SI, DI 
AND RDI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDI], 2 
AND SIL, 12 # instrumentation
MOVZX SI, BL 
MOVZX RSI, CL 
CMOVNO DI, BX 
CMOVLE EDI, EDI 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
XOR RAX, RAX 
MOVSX EBX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EAX 
LEA BX, qword ptr [RCX + RDX] 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -86 # instrumentation
XCHG RDI, RAX 
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], EBX 
OR EDI, -56 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
