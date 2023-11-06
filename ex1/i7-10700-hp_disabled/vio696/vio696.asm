.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EDI, EDI 
NOT DI 
CMOVNB RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTC qword ptr [R14 + RDX], RCX 
AND DIL, 89 # instrumentation
MOVZX DI, DIL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], -125 
NOT AL 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
AND AL, -2 
SETLE AL 
JMP .bb_main.2 
.bb_main.2:
OR AL, 70 
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -128 
SETNP CL 
SETL DL 
CMOVNL BX, DX 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], EDI 
SETNZ BL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
XOR CL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], ECX 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RDI] 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 87 # instrumentation
LEA RDX, qword ptr [RBX] 
SETZ CL 
SETL CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
BT EBX, 50 
SETBE DL 
OR RDX, 31 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
