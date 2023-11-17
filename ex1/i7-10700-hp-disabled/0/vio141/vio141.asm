.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR SI, -121 
CMOVP RCX, RCX 
CMOVB DX, BX 
MOVZX BX, AL 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 42 # instrumentation
SETNO SIL 
OR DIL, -74 
AND RDI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDI] 
SETNO BL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTC SI, CX 
CMOVNB RDX, RSI 
AND AL, 96 
BT EAX, EBX 
XADD RSI, RDX 
NOT SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RAX] 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
CMOVNS BX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RSI] 
SETBE BL 
CMPXCHG SI, DX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDI 
MOVZX AX, BL 
XOR AL, DL 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
SETNB DL 
CMOVNP DX, DI 
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RCX], EDI 
XOR EAX, ESI 
CMOVZ EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
