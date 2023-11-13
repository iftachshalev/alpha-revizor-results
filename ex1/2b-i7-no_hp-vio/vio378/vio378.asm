.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT ECX, 102 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], 76 
OR EAX, -828158513 
OR EAX, EDX 
SETBE AL 
SETB SIL 
AND AL, 119 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 3 
AND SIL, 42 # instrumentation
CMOVNL CX, CX 
TEST AX, 3820 
XOR BX, 106 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
CMOVBE EDI, ECX 
XOR ESI, 119 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], SIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -83 # instrumentation
SETP AL 
SETZ BL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTC word ptr [R14 + RBX], AX 
SAHF  
XADD RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
MOVSX RDI, CX 
CMPXCHG DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RBX] 
MOVSX RBX, SIL 
SETNZ BL 
OR AX, CX 
MOV ECX, EAX 
CMOVO RCX, RSI 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
