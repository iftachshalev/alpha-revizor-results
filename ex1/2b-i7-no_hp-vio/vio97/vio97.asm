.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND BX, AX 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EDX 
AND DIL, 28 # instrumentation
MOV SI, BX 
SETNP DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], 3 
AND SIL, 57 # instrumentation
CMOVS EDI, ESI 
MOVZX RAX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], EBX 
SETP DL 
XADD DL, AL 
OR RDX, RDX 
CMOVB DX, CX 
OR RAX, -1584788224 
CMOVNLE RDX, RDX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RDI, RDX 
AND RDI, RCX 
XOR AL, -125 
BTS AX, AX 
AND DIL, 35 # instrumentation
CMOVO RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], -1624898473 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
XOR BX, SI 
CBW  
CMOVNZ ESI, ECX 
OR BL, CL 
TEST AL, -83 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], DX 
AND AX, -900 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
SETBE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
