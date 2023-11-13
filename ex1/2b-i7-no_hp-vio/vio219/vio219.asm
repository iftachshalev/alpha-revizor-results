.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 50 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RBX] 
BT EAX, -94 
AND SIL, 109 # instrumentation
CMOVL SI, SI 
CMPXCHG SI, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RBX] 
MOV DX, AX 
TEST EAX, -1149858298 
CMOVNS RSI, RBX 
CMOVBE AX, SI 
XOR RAX, RSI 
CMPXCHG DL, BL 
NOT AX 
CMOVB RCX, RDI 
CMOVNLE DX, CX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 125 # instrumentation
CMOVNB EBX, ESI 
MOVSX RBX, DX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 10157 
BTR BX, -38 
TEST SI, CX 
SETB DL 
AND AX, 21772 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RBX] 
AND SIL, -6 # instrumentation
CMOVNB RAX, RCX 
OR SI, 107 
BT RDI, RDI 
SETNZ DL 
SETNB SIL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
CMOVNZ RDI, RSI 
MOVSX EDI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
