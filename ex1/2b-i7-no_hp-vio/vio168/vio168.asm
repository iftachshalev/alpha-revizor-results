.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND BX, 106 
XOR SI, -29 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -23 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], EDI 
CMOVB RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 2 
OR AL, 95 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], 1 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RCX] 
XCHG RAX, RDI 
TEST ESI, ESI 
SETNP CL 
SETLE BL 
AND SI, 107 
TEST RCX, 865095579 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], CL 
TEST DIL, DL 
SETNB AL 
BT EDI, 106 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RBX] 
AND EBX, 50 
CMOVNS ECX, EDX 
SETO AL 
MOVZX EDI, AX 
CMOVNZ AX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RDX 
BTS EBX, ECX 
SETB AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RSI 
BT EAX, -37 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
