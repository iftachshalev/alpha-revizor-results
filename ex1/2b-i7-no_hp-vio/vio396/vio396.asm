.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 96 # instrumentation
SETNBE CL 
CMOVLE RDX, RSI 
SETNBE SIL 
AND RBX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
BTS RAX, 79 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], CX 
AND AL, -121 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
CMPXCHG EAX, ECX 
BTS EDI, EAX 
BSWAP RAX 
LEA RCX, qword ptr [RCX + RDI + 57593] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
MOVZX EDI, SI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC RCX, RAX 
BSWAP RDX 
TEST RBX, -1022544581 
SETS AL 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RDX], EDI 
AND SIL, 2 # instrumentation
CMOVNO CX, SI 
AND RBX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RBX] 
OR EDX, ECX 
XOR AX, -2 
CMOVS EAX, ECX 
CMOVB RDI, RSI 
SETZ AL 
SETB DIL 
CMOVNZ RCX, RBX 
SETS CL 
NOT SIL 
BT RBX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
