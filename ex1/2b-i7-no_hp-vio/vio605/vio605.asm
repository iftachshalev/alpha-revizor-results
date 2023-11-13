.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RDX] 
STC  
CMOVZ AX, DI 
BTC DI, -113 
AND SIL, -123 # instrumentation
CMOVBE EBX, ECX 
MOVSX CX, DIL 
STD  
NOT RDI 
CMOVP DX, CX 
XOR DX, AX 
TEST RBX, RDI 
BSWAP EBX 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], BL 
CMOVB RBX, RDI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -126 # instrumentation
CMOVNLE SI, DI 
AND RSI, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -100 
BT EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDI], 7 
TEST DX, -26069 
TEST ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RAX] 
TEST DIL, -125 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], 7 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EBX 
MOVZX AX, AL 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
