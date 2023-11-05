.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDI, EAX 
CMPXCHG CL, CL 
AND RAX, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RAX] 
CMOVB AX, AX 
AND EAX, 1298825865 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RCX] 
LEA CX, qword ptr [RDI] 
NOP  
LEA EBX, qword ptr [RDI + RDI + 8109] 
BT EBX, 91 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], CX 
BTC ESI, ESI 
BT EBX, ECX 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -52 # instrumentation
CMOVNO ESI, EDX 
TEST EAX, -280108308 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
LEA EDI, qword ptr [RDX + RDI + 22640] 
MOVZX AX, AL 
CMOVL RDI, RAX 
CMOVB DX, CX 
STC  
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 26 # instrumentation
CMOVB RAX, RCX 
XCHG ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDX] 
CLC  
SETNZ BL 
BTS DX, -69 
CMOVNBE RSI, RSI 
MOVSX EDI, DL 
BTC EBX, EAX 
CDQ  
AND DIL, 112 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
