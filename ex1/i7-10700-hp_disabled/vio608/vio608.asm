.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 63 # instrumentation
CMOVO RDI, RDX 
SETNS AL 
BTC RBX, RCX 
XOR DX, 41 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -32 # instrumentation
MOV DI, DX 
CMOVZ DX, AX 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
BT EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], DIL 
XOR EAX, -865835542 
TEST DL, CL 
BTS RCX, 74 
MOV DI, AX 
OR EAX, -17604883 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], AX 
SETNZ DIL 
CDQ  
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -106 # instrumentation
CMOVNS RDX, RBX 
CMOVNB EDI, EDX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RSI] 
XOR AL, DIL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND DIL, 41 # instrumentation
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -127 # instrumentation
SETNZ AL 
XOR AL, -59 
BT AX, CX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RSI 
CWDE  
XCHG ESI, EAX 
MOV DL, 101 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
