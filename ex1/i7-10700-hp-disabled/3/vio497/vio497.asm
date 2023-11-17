.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RSI 
MOVSX RBX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 1 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, 74 # instrumentation
CMOVL RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
XOR AX, -8402 
CMOVP EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], ESI 
SETNBE DL 
AND RDX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RBX], 3 
SETBE DL 
MOVZX DX, SIL 
MOVSX ECX, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
LOOPE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVZX EBX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RCX] 
CMOVNS EBX, EDI 
OR CL, DIL 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EDX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
TEST EAX, -404128769 
NOT EDX 
TEST DL, AL 
XCHG AL, SIL 
AND RSI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RSI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
