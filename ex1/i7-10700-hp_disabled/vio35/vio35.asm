.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RCX 
CMOVS RBX, RBX 
CMPXCHG BX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
OR AL, -93 
BTR DX, -111 
AND DIL, -33 # instrumentation
MOVSX EDI, CL 
CMOVNL EDX, EDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RBX 
AND DL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG SIL, DIL # instrumentation
CMOVNO DI, word ptr [R14 + RDI] 
CMOVB RDX, RAX 
CMC  
LAHF  
LAHF  
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -12622 
BTR AX, SI 
BT RBX, RSI 
TEST DIL, DL 
BTR RDX, RDI 
BTR DX, -115 
AND DIL, -78 # instrumentation
MOV DX, SI 
MOV RDI, -407791301586340348 
SETP AL 
CMOVS EBX, ECX 
NOT RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RSI] 
AND RAX, RSI 
CMOVNO RDI, RCX 
XADD CL, BL 
CMOVS EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
