.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RDI, -50 
SETB CL 
MOV RDX, -8818603599122114151 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -74 
MOVSX EAX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], EDI 
AND AX, DI 
CWD  
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EBX 
TEST EDX, -989562311 
AND RDI, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDI] 
XOR RSI, 17 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RAX] 
XADD BL, AL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], DIL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RBX] 
CMPXCHG AL, AL 
CMOVNO EBX, EDI 
XOR AX, -31204 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], -99 
CMOVP EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDI] 
MOVZX EBX, BL 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
OR AX, 7528 
LEA AX, qword ptr [RAX + RAX] 
XOR AL, -49 
CMOVNLE ECX, ESI 
CMOVNB RAX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
