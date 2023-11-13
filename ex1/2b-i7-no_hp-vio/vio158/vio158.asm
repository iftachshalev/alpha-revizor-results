.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DX, BX 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RBX 
OR ESI, -99 
XADD RCX, RDX 
MOVSX EDX, DIL 
TEST AX, 20385 
XCHG SI, AX 
MOVZX DX, DL 
OR EBX, 64 
AND AX, 9913 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
AND EAX, -1180430486 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 22 # instrumentation
SETZ AL 
CMOVS EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTR dword ptr [R14 + RDX], ECX 
XCHG RBX, RAX 
SETNBE DL 
BTC EAX, 113 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDX] 
CMOVL RAX, RDI 
CMOVS EDX, ESI 
XOR AX, 2906 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 3 
TEST RDI, 360419564 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RSI] 
MOVZX ECX, CL 
BTC EBX, -122 
SETB DL 
TEST DL, AL 
OR RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
