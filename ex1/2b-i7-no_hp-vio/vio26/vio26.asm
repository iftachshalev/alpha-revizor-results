.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA DI, qword ptr [RDI + RDI + 26928] 
XCHG SI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], 22 
CMOVNL DX, BX 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
AND RDX, 33 
BTR RSI, -84 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX EBX, AL 
CMPXCHG CL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EDX 
AND EAX, 41 
CMOVP ESI, EDX 
OR EDX, EDI 
XOR EAX, ESI 
BT DX, -127 
BTR EDI, EDI 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
CMPXCHG DX, AX 
MOVZX ESI, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDI] 
XOR DI, AX 
SETNP AL 
AND EAX, 1359713509 
BT EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RSI] 
SETP AL 
NOT ESI 
MOV EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
