.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX DI, BL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RBX] 
SETBE BL 
BTS RAX, 44 
SAHF  
SETNP DL 
BTS EBX, 127 
TEST DIL, BL 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], 26 
NOT EBX 
MOVZX RDX, BL 
CMOVS RAX, RDX 
TEST AL, DL 
CMOVS DI, SI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX EDX, SIL 
XOR RDX, RSI 
CMOVLE ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RBX] 
CMOVNL RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RAX], AX 
CMPXCHG DIL, AL # instrumentation
AND SIL, 4 # instrumentation
SETNBE BL 
SETNO BL 
LAHF  
AND RAX, -4 
CMPXCHG ECX, EBX 
XADD RAX, RBX 
CDQ  
AND BL, DL 
TEST EAX, EDX 
OR RAX, -751159539 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
