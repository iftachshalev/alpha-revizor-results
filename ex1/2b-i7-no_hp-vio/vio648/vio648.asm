.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RCX] 
SETZ AL 
CMOVNP EDX, EDI 
TEST EDI, -1847333539 
XOR SIL, -113 
TEST DX, CX 
BTC EAX, ECX 
CWDE  
OR SIL, -112 
SETBE DL 
LEA RCX, qword ptr [RCX + RBX] 
OR AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
AND SIL, -75 # instrumentation
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
XOR EAX, 128053322 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], AX 
CMOVLE ECX, EDX 
MOVSX SI, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RSI 
AND DIL, -38 # instrumentation
CMOVNS RSI, RBX 
BT BX, SI 
CMOVBE CX, BX 
BTS RSI, RCX 
XCHG CL, AL 
MOVZX EBX, DIL 
XOR BL, -102 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RBX 
XCHG AX, DX 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
