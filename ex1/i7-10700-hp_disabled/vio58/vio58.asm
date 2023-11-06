.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -45 # instrumentation
CMOVL EDX, EDX 
CMOVNL AX, BX 
MOV RAX, -3008221827761528569 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RAX], RSI 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 35 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
AND SIL, 10 # instrumentation
XCHG SIL, CL 
SETNLE AL 
XADD SI, BX 
SETNBE AL 
BTR EDI, EDX 
XOR DL, -61 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
MOV RCX, RCX 
TEST ESI, -744271184 
CMOVZ EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND EAX, 85 
MOVZX RDI, AL 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
OR BL, AL 
SETP CL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], EBX 
AND EDI, EAX 
XADD BL, CL 
XOR EAX, -1767774931 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
