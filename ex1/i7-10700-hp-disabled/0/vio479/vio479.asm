.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR ESI, ESI 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], BL 
CLC  
AND RSI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RSI] 
AND RAX, -745911642 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
BTR RDX, -67 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
MOV EDI, -1671719327 
SETNO BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
SETNB AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
BTR EAX, 11 
AND DIL, 16 # instrumentation
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 2 
NOT BL 
BTS EAX, -49 
OR AX, -7572 
TEST AL, -53 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
AND RCX, RAX 
BT RAX, RSI 
OR SI, -111 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 58 # instrumentation
CMOVP DX, SI 
CMPXCHG EBX, EDI 
SETNB AL 
CMPXCHG DL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RAX, -14 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
