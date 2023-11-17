.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EAX, ESI 
XCHG CL, AL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
OR AL, SIL 
MOVZX EBX, AX 
XCHG EBX, EAX 
NOT CL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 75 
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BT CX, -42 
CMOVNB EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], EBX 
XOR BL, BL 
AND RAX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RAX], 4 
AND RSI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RSI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDI] 
XADD EDI, EAX 
BTC ECX, 3 
AND DIL, 39 # instrumentation
CMOVO RAX, RAX 
SETNBE CL 
AND AL, DL 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDX] 
SETNL DIL 
AND DIL, BL 
JMP .bb_main.4 
.bb_main.4:
XCHG RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], ECX 
AND RCX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RCX] 
CBW  
XCHG CL, BL 
BTC SI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
