.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 65 # instrumentation
CMOVNLE EBX, EDI 
CMOVL AX, CX 
AND RDX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDX] 
CMOVL SI, DI 
CMPXCHG AX, CX 
CMOVL CX, BX 
SETNL DL 
OR SI, 0b1000000000000000 # instrumentation
BSR CX, SI 
BTR ESI, -96 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTC qword ptr [R14 + RDI], RSI 
OR EAX, -40 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
CMOVLE EDI, EDX 
OR BL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], 4 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CDQ  
OR AX, -19640 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], BL 
NOT DL 
LEA RDI, qword ptr [RDI + RDI + 48528] 
XOR EAX, 1427894620 
CMOVNLE RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RCX 
CMC  
XCHG DL, AL 
BTC EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RCX] 
OR AX, 24713 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RCX] 
OR RBX, RSI 
TEST EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
