.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RAX, 4952015028359722049 
OR RAX, -1905285446 
BTC RSI, RCX 
AND RBX, RDI 
MOVZX DX, DL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDX] 
SETNBE AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
XOR EAX, -226057379 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RCX 
XOR AL, 22 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1177655184 
MOVZX ESI, DIL 
TEST RDX, 153628248 
CMOVNZ RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EBX 
NOT ECX 
BTR EBX, -26 
BTR ESI, -85 
NOT EAX 
MOVZX ECX, SIL 
TEST RBX, 414280269 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDX] 
AND BX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 3 
AND SIL, 110 # instrumentation
CMOVS EDI, EDX 
TEST CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DIL 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
