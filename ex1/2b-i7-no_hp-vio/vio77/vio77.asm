.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 61 # instrumentation
CMOVNLE RAX, RDI 
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RCX], EDX 
CMOVB EDI, EDX 
SETLE DIL 
CMOVNS EBX, EBX 
CMPXCHG AL, BL 
SETNZ AL 
BTS RCX, RCX 
AND ESI, -48 
CMOVNO RCX, RDX 
TEST RDI, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 98 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 91 # instrumentation
CMOVNBE DX, DI 
SETNBE BL 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], EBX 
CMPXCHG DIL, DL # instrumentation
CBW  
LEA RBX, qword ptr [RAX] 
LAHF  
CMOVB RAX, RCX 
XADD CX, DX 
CMOVNZ BX, BX 
BTC EDX, 92 
SETNBE DL 
AND EAX, 79 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
SETL AL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], AL 
OR CL, BL 
AND EBX, EBX 
BTC RBX, 69 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
