.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV CL, CL 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDX] 
SETNBE AL 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], -28 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], 11 
BT DI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RDX], RAX 
AND SIL, 92 # instrumentation
SETO DL 
CMOVNBE CX, CX 
OR BL, CL 
CMOVL RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -24 
MOVZX RBX, CL 
MOV AX, -12398 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EDI, BL 
XOR DX, -99 
SETO DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
OR AL, AL 
CMOVNLE RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 21103 
MOV RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RSI] 
OR RAX, -801215565 
SETNB DIL 
OR AX, 32750 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDI] 
OR AX, -16170 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
