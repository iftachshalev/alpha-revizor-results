.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RBX, -66 
XCHG RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 108 
AND RDX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDX] 
MOV RAX, RAX 
SETNB SIL 
OR RBX, RDI 
CMOVL EDI, ESI 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST CL, BL 
OR RAX, -457545315 
CMOVO RDX, RAX 
BTR RAX, -18 
XOR RAX, 654100719 
MOVZX ESI, AL 
BTR RAX, -78 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RCX] 
BTC RCX, RBX 
LEA ECX, qword ptr [RCX] 
BT EDI, -40 
XOR CL, SIL 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, -124 # instrumentation
CMOVO DI, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
OR SI, CX 
BTC EDI, 70 
BT ESI, ESI 
AND SIL, -113 # instrumentation
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 115 # instrumentation
MOVSX DX, AL 
CMOVNP RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDX] 
MOV BL, CL 
AND RSI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], EDX 
AND DIL, 103 # instrumentation
CMOVLE EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
