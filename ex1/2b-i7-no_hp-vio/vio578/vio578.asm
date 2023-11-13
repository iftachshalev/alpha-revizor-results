.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EDI, -58 
AND DIL, -128 # instrumentation
STC  
CMOVLE EDI, EDX 
SETNZ DL 
XADD SI, DX 
CBW  
LEA ECX, qword ptr [RCX + RAX] 
XOR DX, 36 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTR qword ptr [R14 + RDI], RCX 
XOR SIL, -55 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 56 
SETZ DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
TEST DL, BL 
BT RAX, RDX 
AND SIL, -13 # instrumentation
NOT SIL 
SETNP SIL 
BT RAX, RSI 
AND SIL, 36 # instrumentation
CMOVNO DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EBX 
MOVSX EDI, AL 
SETL BL 
XOR BL, 64 
BTS EBX, EAX 
MOVZX SI, DL 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1480358839 
CMOVS EBX, ESI 
SETBE DL 
CMOVNBE SI, SI 
CMOVBE RCX, RDX 
SETNBE DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
