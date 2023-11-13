.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST ECX, 1542002196 
SETNBE DL 
CMOVNBE RAX, RCX 
CMOVNP ESI, ECX 
LEA ESI, qword ptr [RBX] 
MOVZX RSI, BL 
MOVSX EDI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], SI 
XOR ESI, EDI 
TEST EAX, 2035317047 
MOVZX ECX, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RBX], 4 
AND DIL, -46 # instrumentation
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], SI 
LEA ECX, qword ptr [RDX + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTC dword ptr [R14 + RSI], ESI 
AND DIL, AL 
AND RBX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EDX 
CLC  
CMOVZ RDI, RSI 
CMOVZ ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDI] 
XADD AL, AL 
CMOVBE RDX, RDI 
MOVZX EDX, DL 
CMPXCHG EDX, ESI 
AND BX, -16 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
OR SIL, -86 
CMOVP SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
