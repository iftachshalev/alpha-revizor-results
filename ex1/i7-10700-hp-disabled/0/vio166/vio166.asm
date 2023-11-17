.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], DL 
AND RBX, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTS word ptr [R14 + RDX], BX 
AND RBX, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RBX] 
XCHG BL, CL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 110 # instrumentation
SETNS DL 
BTC EDX, 38 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], AL 
BSWAP RBX 
CMOVBE RSI, RAX 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -41 # instrumentation
CMOVB DI, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 30635 
LEA ECX, qword ptr [RCX + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RCX] 
XCHG DL, DIL 
CMPXCHG ECX, EAX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -45 # instrumentation
CMOVNS EAX, EAX 
XOR BX, 67 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], -88 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], -128 
CLC  
XCHG BL, CL 
AND RDI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDI] 
SETNL AL 
JMP .bb_main.4 
.bb_main.4:
CDQ  
MOV EDI, 2122775041 
AND RBX, RAX 
MOV AL, 72 
CMOVLE DX, DI 
SETNB SIL 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RDI 
AND DIL, 89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
