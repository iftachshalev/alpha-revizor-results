.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
AND DIL, 85 # instrumentation
SETNS DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
OR RDI, RCX 
MOVSX AX, CL 
MOVSX DI, DL 
CMOVNBE RCX, RAX 
MOVSX EBX, BX 
SETO DL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RSI] 
AND CX, CX 
AND DX, SI 
CMOVP RBX, RCX 
BTC RDI, -98 
TEST CX, -4819 
CMOVL BX, DX 
CLD  
CMOVS RDX, RSI 
XOR CL, DIL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND AX, -17 
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], 8 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], BL 
OR CL, 53 
BTC EDX, 36 
MOVZX EAX, CL 
OR RBX, -6 
CMOVL EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
