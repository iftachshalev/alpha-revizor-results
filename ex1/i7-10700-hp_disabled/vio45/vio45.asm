.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 4 
AND AX, -21717 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
XOR BL, AL 
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
BTC DX, AX 
AND SIL, 24 # instrumentation
CMOVNLE EDI, EDI 
XCHG ECX, EDX 
TEST RAX, -1493793627 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RDX 
CMOVO EDI, ECX 
MOVSX EAX, SI 
BTS BX, 107 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDX] 
OR AL, AL 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RBX] 
OR CL, DL 
CMOVL CX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
OR DL, DIL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST RAX, 609901620 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DIL 
SETO CL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -87 # instrumentation
CMOVNP BX, CX 
CMOVNZ AX, SI 
AND AX, -31539 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], CX 
AND RCX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RCX], BX 
OR CL, CL 
TEST EAX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
