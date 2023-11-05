.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
CDQ  
XCHG BL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], CX 
CWD  
CMOVS EDI, EAX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], ECX 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 77 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RCX, CX 
CMPXCHG BX, BX 
LEA EDI, qword ptr [RSI + RSI] 
XOR DL, 69 
XADD DL, AL 
MOV RAX, RDI 
XCHG AL, BL 
MOV EBX, EDX 
SETNBE AL 
BT AX, CX 
AND RAX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RAX] 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 56 # instrumentation
CMOVB AX, BX 
AND DL, SIL 
CMOVNB RAX, RDI 
BT RBX, 74 
AND SIL, -121 # instrumentation
SETS SIL 
OR EAX, -118213311 
BTC BX, SI 
CMOVBE AX, CX 
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 109 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
