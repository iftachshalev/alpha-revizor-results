.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG SIL, DL 
BTR SI, AX 
BTC RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -34 # instrumentation
NOP  
CMOVNB DX, DI 
MOVZX EDX, BX 
NOT AL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RCX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDI 
TEST RAX, 677266113 
CMOVNBE EDI, EDX 
XOR EAX, ECX 
JMP .bb_main.2 
.bb_main.2:
CWD  
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
CDQ  
CMOVO RDI, RAX 
TEST AX, 30420 
AND RAX, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RAX] 
BTC ECX, 5 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDX 
CMOVBE RDX, RBX 
MOVSX BX, DIL 
LEA RDI, qword ptr [RDX + RBX + 52602] 
MOV RBX, -8555700706176046421 
CMOVS ESI, EBX 
CMPXCHG DI, BX 
SETNZ SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDX] 
XADD BL, AL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
