.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EDX, -93 
OR DL, AL 
NOT RSI 
CMOVNLE BX, BX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 64 # instrumentation
SETS AL 
AND SI, 93 
AND RDI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDI] 
XOR CX, SI 
XOR CL, CL 
XADD EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], 44 
OR AL, CL 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -98 
MOVSX ECX, BX 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
CMOVNB RSI, RSI 
MOVZX BX, AL 
CMOVO RCX, RCX 
SETZ AL 
CMOVZ ESI, EDX 
CMOVBE RBX, RCX 
MOV BL, 85 
CMOVZ CX, DI 
MOVSX DX, CL 
MOV RCX, RSI 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
TEST EDX, 1886343886 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EDI 
CMOVS RDI, RDX 
CMOVNLE DX, DX 
OR AL, 29 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
