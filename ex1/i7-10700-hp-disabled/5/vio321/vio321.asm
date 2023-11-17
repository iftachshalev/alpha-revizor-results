.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 126 # instrumentation
CMOVZ RAX, RBX 
CMOVNB AX, SI 
AND RSI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTS dword ptr [R14 + RSI], EDI 
MOVZX RDI, DIL 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RBX 
AND CL, AL 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], BL 
CBW  
CMPXCHG RBX, RBX 
CWDE  
XCHG SIL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
OR RSI, 3 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, -110 # instrumentation
SETNZ DL 
NOP  
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
OR DIL, 109 
XCHG ESI, EDI 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -75 # instrumentation
SETLE BL 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 4 
AND SIL, 116 # instrumentation
CMOVZ RCX, RBX 
CMOVNS ESI, EDI 
SETP CL 
CMOVNS RDI, RCX 
BTS DI, DI 
AND SIL, -123 # instrumentation
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 98 # instrumentation
CMOVNB DX, DX 
CMOVBE EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
SETZ SIL 
SETLE BL 
BTR DI, 81 
AND SIL, -14 # instrumentation
CMOVS SI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
