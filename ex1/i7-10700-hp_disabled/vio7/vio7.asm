.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RDI, 197509170838677343 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDX] 
AND ECX, 3 
CMOVNLE RCX, RCX 
SETNP DL 
CMOVNB RAX, RDX 
BTS DI, 6 
AND SIL, -6 # instrumentation
CMOVL RDI, RBX 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX ECX, CL 
XCHG ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
BTC EDX, EBX 
AND EDX, ESI 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX EDI, BL 
XOR RCX, 97 
MOVZX RAX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RSI] 
LEA RCX, qword ptr [RCX + RBX + 15145] 
MOV CL, 118 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
STD  
BT CX, SI 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTR word ptr [R14 + RAX], CX 
TEST AX, -25706 
XCHG CX, AX 
TEST EAX, -1561727717 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RAX 
AND CX, 108 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
