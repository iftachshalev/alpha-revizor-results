.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR RCX, 36 
AND DIL, 34 # instrumentation
CMOVNO RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
XCHG RSI, RAX 
SETNBE BL 
OR DX, 0b1000000000000000 # instrumentation
BSR DI, DX 
AND DIL, -77 # instrumentation
XCHG CX, AX 
MOVZX EBX, DL 
CMOVNB AX, AX 
SETZ AL 
CMOVB RDI, RAX 
SETNZ BL 
CMOVLE EDX, EBX 
JMP .bb_main.1 
.bb_main.1:
XADD RDI, RAX 
CMOVLE RAX, RBX 
XOR DIL, DL 
AND AX, 28335 
CMOVNP EBX, EDI 
LEA EDX, qword ptr [RCX + RCX + 25067] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], DI 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
NOT RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
XOR RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
BT RDX, -69 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDX] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST AL, 3 
LEA AX, qword ptr [RAX + RSI + 7156] 
AND AL, AL 
BT AX, 41 
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
