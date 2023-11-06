.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -81 # instrumentation
MOVSX DX, BL 
SETNLE CL 
SETO CL 
TEST ESI, EDI 
BTR SI, BX 
AND DIL, -54 # instrumentation
MOVZX RDI, SIL 
SETBE AL 
MOVSX ECX, BX 
SETL DL 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, DL 
TEST RAX, 1421321813 
AND DL, AL 
OR DIL, 44 
BTS DI, DX 
MOVSX DX, DL 
AND RCX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RCX] 
XOR CL, BL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 41 
SETS CL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
XOR DIL, 3 
MOV DL, -67 
OR SIL, DL 
CMOVP DX, SI 
LEA RDI, qword ptr [RCX + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -20 # instrumentation
SETNB DIL 
TEST DIL, AL 
MOV RBX, -6310765316627637065 
CMOVNZ RCX, RDX 
OR RCX, 109 
BT EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
