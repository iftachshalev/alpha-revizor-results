.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, 26684 
XCHG DL, AL 
MOV RCX, -6090299447054428870 
CMOVP RDX, RAX 
CMOVS EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], -121 
BTC RSI, 19 
OR RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
XOR AX, 19362 
LEA EDX, qword ptr [RBX] 
XOR ESI, -115 
CMOVZ EAX, ESI 
CMOVLE RCX, RDX 
BT SI, -56 
AND SIL, -108 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RDI 
AND SIL, 5 # instrumentation
CMOVNS RSI, RDI 
CMOVB AX, DX 
OR SIL, 82 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], -80 
SETP SIL 
XOR CL, BL 
SETNB DL 
OR BL, DL 
BTR RDI, RDX 
AND SIL, 39 # instrumentation
CMOVL CX, DX 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 0 
AND SIL, -45 # instrumentation
STD  
CMOVS RBX, RBX 
STC  
BTR RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
