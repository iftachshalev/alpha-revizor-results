.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT RAX 
OR RDI, RSI 
CMOVNBE SI, DI 
LEA RSI, qword ptr [RBX + RBX] 
AND RDI, -29 
STD  
AND AX, -577 
SETL AL 
MOV EDX, 1026239488 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -79 # instrumentation
CMOVNLE RDI, RSI 
SAHF  
TEST CL, BL 
CMOVZ EDX, EDI 
SETLE CL 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ESI 
SETNB AL 
CMOVB RAX, RCX 
CMOVNLE RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDI] 
OR AL, CL 
MOVZX EBX, AL 
SETB CL 
AND RDI, -9 
BT EBX, EAX 
AND SIL, -116 # instrumentation
XCHG CX, AX 
CMOVL RCX, RCX 
CMOVNL ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
XOR AL, 116 
AND RDI, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RDI] 
AND DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
