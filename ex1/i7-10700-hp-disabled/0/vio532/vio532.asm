.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], DI 
TEST CX, SI 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RSI] 
OR DX, -43 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -101 # instrumentation
SETS CL 
MOVZX EDI, DL 
BTR DX, SI 
SETB DL 
LEA DI, qword ptr [RSI + RDI + 55699] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], DX 
SETS DL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
AND SIL, -90 # instrumentation
CMOVZ RDX, RBX 
SETO CL 
CMOVS ECX, EBX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -105 # instrumentation
SETS AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
TEST RBX, RSI 
SETB AL 
XCHG BX, DX 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], AL 
SETNO DIL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -82 # instrumentation
CWD  
SETNP AL 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], SI 
MOVZX RCX, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RCX 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
MOVSX RAX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
