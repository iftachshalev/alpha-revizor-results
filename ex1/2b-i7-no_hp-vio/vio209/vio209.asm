.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND CL, -81 
CMOVB CX, DX 
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
AND SIL, -91 # instrumentation
CMOVB EAX, EAX 
SETL DL 
OR AL, -3 
CMOVNLE SI, AX 
XOR RBX, -95 
BT EDI, 20 
AND DL, BL 
NOT RAX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], -21 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RSI] 
SETS DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], ECX 
CMOVZ EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], AL 
CMOVL DI, BX 
XOR AL, 124 
MOVSX EDX, BX 
MOV EDI, EBX 
OR AX, 124 
OR SI, -6 
MOVZX RSI, AX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RBX 
BTR DX, CX 
AND EAX, -158542899 
CMOVNB EDX, EDI 
BTS RCX, -101 
TEST DX, CX 
XOR EAX, EAX 
SETNLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
