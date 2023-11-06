.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DIL, -14 
CMOVLE RCX, RBX 
OR AX, 29453 
CMOVBE RSI, RDI 
TEST CL, BL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
SETO CL 
SETBE AL 
AND RCX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], BL 
AND AL, CL 
SETNB AL 
JMP .bb_main.2 
.bb_main.2:
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
AND DIL, -113 # instrumentation
CMOVB BX, CX 
OR AX, -12123 
XOR BX, -49 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTC DI, CX 
AND DIL, 77 # instrumentation
CMOVLE RCX, RDI 
XADD AL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -24843 
XOR DI, BX 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], DL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RAX 
AND DIL, -56 # instrumentation
LEA RDX, qword ptr [RCX + RSI + 31782] 
CMOVNB CX, CX 
AND EAX, 471206629 
BTC RAX, RDX 
XOR EBX, EBX 
NOP  
MOVSX RDI, DI 
MOVZX DI, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
