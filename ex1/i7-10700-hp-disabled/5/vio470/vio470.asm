.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], SIL 
AND RCX, 104 
BTS AX, CX 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
BTR EBX, ESI 
CMPXCHG AL, AL 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RSI], EDI 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR AL, 105 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
TEST AX, -8705 
NOT BL 
SETNP DL 
OR EDI, ECX 
SETO AL 
XADD DL, AL 
SETO AL 
MOVZX RDI, SIL 
JMP .bb_main.3 
.bb_main.3:
MOVZX EDI, AL 
MOVSX ECX, BL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG DL, DIL # instrumentation
CMOVNZ DX, word ptr [R14 + RDI] 
LAHF  
SETB BL 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 5 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
AND AL, -46 
SETNLE BL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RAX] 
AND RAX, -259182521 
XOR AX, 15825 
CMOVB RDI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
