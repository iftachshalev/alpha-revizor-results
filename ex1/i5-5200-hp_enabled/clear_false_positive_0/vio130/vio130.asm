.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
OR CX, DI 
AND RBX, 120 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
CMOVNB RDI, RBX 
MOVSX ECX, DL 
MOVZX RBX, BL 
MOV RDI, RDI 
MOVSX ESI, SIL 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], AL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DL 
OR DIL, DL 
MOVSX RAX, AX 
CMPXCHG RDX, RCX 
CWD  
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
TEST AL, AL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -12 # instrumentation
SETNP DL 
NOT RAX 
SETO DIL 
TEST CL, BL 
CMOVLE EDX, ESI 
TEST EAX, -1876150175 
SETNO AL 
CMPXCHG CL, CL 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -16 
CMOVP BX, CX 
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
XCHG AX, DX 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], EDI 
BTR EBX, -77 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
