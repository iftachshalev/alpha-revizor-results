.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 120 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EAX, 445581707 
XCHG RSI, RDI 
CMOVL RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 63 
AND RAX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RAX] 
CMOVZ RAX, RAX 
SETNO DL 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, -87 # instrumentation
MOV AL, BL 
CMOVLE RAX, RSI 
CMOVB RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -6518 
CMOVNS RDI, RBX 
OR EBX, -26 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
MOV SI, -7900 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 74 
CMOVNBE ESI, EAX 
XOR SIL, DIL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RSI] 
MOVSX ECX, BL 
TEST AL, -62 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
SETP BL 
MOVZX AX, AL 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], 104 
CMOVZ RAX, RAX 
CMOVNS AX, DX 
TEST ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], -119 
MOVSX CX, DIL 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
