.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 45 # instrumentation
SETLE DL 
BTC EDX, 106 
AND SIL, -59 # instrumentation
SETNL AL 
CMPXCHG RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
CMOVS EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR RDI, -19 
CMOVO ECX, EDX 
XOR ESI, -124 
CMOVL AX, SI 
SETL AL 
SETB DL 
JMP .bb_main.2 
.bb_main.2:
STD  
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
CMOVZ RCX, RDX 
CMOVNO BX, SI 
CLC  
BTS EAX, 40 
AND DIL, -68 # instrumentation
SETL AL 
XOR AL, DIL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX AX, AL 
BTR CX, -27 
BTC CX, -60 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMOVL RDI, RCX 
NOT DL 
SETZ AL 
OR RAX, -1128549798 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
SETL CL 
NOT EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
