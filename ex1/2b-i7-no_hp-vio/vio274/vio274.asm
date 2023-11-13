.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DL, -122 
SETB BL 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RCX 
NOT EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RSI] 
BTS DX, 105 
BTS RSI, RCX 
NOT RDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
BT RDI, 112 
SETNBE AL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
BTC RSI, -123 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC EBX, 22 
XOR EDX, -22 
OR DL, SIL 
CWDE  
CMOVZ EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], AX 
SETNL SIL 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RCX], 6 
TEST AL, 107 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 107 
CWDE  
SETNBE DIL 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 0 
SETB AL 
CWDE  
SETNB DL 
SETNB CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
