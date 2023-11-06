.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RAX] 
XOR RAX, 1050865069 
OR BL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RBX] 
CMOVNBE RAX, RSI 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RSI 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RDI 
OR EAX, -511819124 
MOV AL, DL 
XCHG RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], -1810949879 
MOVSX EBX, AL 
BTC AX, DX 
OR RAX, 1743722675 
CMOVNL AX, DX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND DIL, -25 # instrumentation
CMOVNB RDI, RAX 
CBW  
NOT EBX 
MOVSX EDX, CL 
AND RCX, -126 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
STD  
LEA RDI, qword ptr [RCX + RSI + 4081] 
MOVZX SI, SIL 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDX] 
MOV RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
