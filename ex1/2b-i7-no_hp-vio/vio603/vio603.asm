.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AX, AX 
CMOVNB SI, DI 
XCHG EDX, EDI 
XADD DL, BL 
CMOVB BX, DI 
CMOVL EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 1 
AND SIL, 92 # instrumentation
SETNLE AL 
CLD  
SETNL SIL 
XOR CX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDI] 
MOV RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -17 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], 0 
AND SIL, 30 # instrumentation
CMOVNB RAX, RCX 
MOV DL, BL 
CMOVNP AX, DI 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 3 
AND RDI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDI], 6 
CMOVNB EDI, EDX 
CBW  
MOVSX ECX, SI 
OR CX, DX 
TEST RAX, -1963056624 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RBX 
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
MOVZX SI, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EDX 
OR CL, -107 
MOV RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
