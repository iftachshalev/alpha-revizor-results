.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DX, DI 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], SIL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], -82 
AND AL, AL 
XOR AX, -4610 
CMOVLE EDI, EBX 
CMPXCHG RDX, RSI 
AND AL, -84 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], 3 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
OR RDX, 89 
SETB DL 
TEST DIL, 98 
SETBE BL 
MOV ESI, EBX 
CMOVLE RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND AL, 99 
TEST RDI, RAX 
BTC EDX, 126 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], -103 
CLD  
MOVZX EAX, AL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDI] 
AND DIL, -92 # instrumentation
CMOVO ECX, ESI 
SETP AL 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RCX] 
BT EDI, ESI 
XOR AX, 19794 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
