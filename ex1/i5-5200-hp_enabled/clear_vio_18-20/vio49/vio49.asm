.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV BL, CL 
LEA BX, qword ptr [RBX + RSI + 23066] 
XADD RBX, RSI 
NOT EDI 
XCHG AL, CL 
CMOVZ RBX, RCX 
AND BL, AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS RDX, -55 
CMPXCHG ESI, EDX 
NOT RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
NOT RBX 
MOV AL, DL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND DIL, -110 # instrumentation
CMC  
JMP .bb_main.2 
.bb_main.2:
AND SIL, -120 # instrumentation
SETP BL 
CMOVS AX, DX 
CMOVO EBX, EBX 
CMOVB RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], -89 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], ECX 
CMC  
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -1100624199 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDX 
JMP .bb_main.3 
.bb_main.3:
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], BL 
TEST EAX, -1902322840 
XOR EDI, EDX 
XADD DL, CL 
MOV EAX, EBX 
BT SI, CX 
MOVZX RDX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
