.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR RSI, RAX 
TEST RAX, 1424034238 
CMOVP EAX, ESI 
MOVZX BX, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
TEST RAX, 332374484 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RSI 
OR DL, 36 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], BL 
SETB DL 
BT RSI, -115 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDX], 4 
CMOVNZ AX, SI 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], RSI 
AND DIL, -127 # instrumentation
CMOVNS ESI, ESI 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
CMPXCHG BL, AL 
CMOVLE EDX, EBX 
OR RAX, -1126836746 
NOT RDI 
AND BL, -68 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 3 
CMOVBE RDX, RAX 
AND CL, CL 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], ESI 
SETL DL 
XOR AX, 12725 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
CMOVNL EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
