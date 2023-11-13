.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, 103 
XOR EAX, -1354078846 
SETNO SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RAX] 
XOR DL, DIL 
AND RDI, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 2 
MOVSX BX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RCX] 
XCHG AX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DX 
AND RCX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RCX], SI 
AND SIL, -126 # instrumentation
SETNS CL 
NOP  
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
BT EDX, ESI 
XOR AX, 15871 
MOVSX DX, CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDI] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 26 # instrumentation
SETNLE CL 
AND DIL, DIL 
TEST EAX, 771575644 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
TEST ESI, 678766523 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RAX] 
SETNZ CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RBX] 
CMPXCHG DL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], SIL 
TEST SIL, 19 
XCHG DIL, CL 
SETP DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
