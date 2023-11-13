.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -111 # instrumentation
CDQ  
CMOVNB RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
AND SIL, -111 # instrumentation
SETNO BL 
CMOVNB EDI, EBX 
TEST RCX, RAX 
MOVZX ESI, CL 
XOR DL, AL 
SETZ DL 
NOP  
CMOVB DX, AX 
CBW  
TEST AX, -12227 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS AX, SI 
AND DIL, 32 # instrumentation
CMOVNS AX, SI 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
XOR BX, SI 
MOVSX BX, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RSI] 
TEST RAX, 1300245076 
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 2 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
BTC EDI, -11 
AND DIL, 90 # instrumentation
MOVZX RDX, BL 
CMOVNS RAX, RDI 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
