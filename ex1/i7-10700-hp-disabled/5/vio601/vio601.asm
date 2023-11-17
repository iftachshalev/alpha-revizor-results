.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AX, 673 
SETS DL 
TEST RAX, -53277965 
CMOVNLE SI, SI 
CMOVL RCX, RDX 
CMPXCHG CL, AL 
AND SIL, -113 
XCHG EBX, EAX 
SETB DIL 
TEST DL, 92 
XOR RBX, RDX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RBX 
CMOVNLE EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDX] 
SETZ CL 
OR RBX, RDI 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RBX 
MOVZX ECX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
OR AX, 0b1000000000000000 # instrumentation
BSR AX, AX 
CDQ  
OR ESI, EBX 
CMOVNO RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 5 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
SETNS SIL 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST DIL, BL 
OR AL, -98 
CMOVL EDX, ECX 
CWDE  
OR DI, -41 
SETNLE SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
