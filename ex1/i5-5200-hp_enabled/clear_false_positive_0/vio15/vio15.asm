.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 2 
OR RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], SI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG AL, AL 
TEST AL, -115 
MOV ESI, EDI 
MOVSX EDX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDI] 
OR AX, -14947 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], 24 
CMPXCHG CX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST RDX, 1800073921 
CMOVNO RAX, RCX 
MOV CL, -26 
LEA ESI, qword ptr [RSI + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
SETBE BL 
MOVZX RDI, BL 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR AX, 16990 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
SETNO DL 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BTR RBX, -125 
OR CX, 118 
CMOVZ EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RCX 
CMOVZ EAX, EDI 
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
