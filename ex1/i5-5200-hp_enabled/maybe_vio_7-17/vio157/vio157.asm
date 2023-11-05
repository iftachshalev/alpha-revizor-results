.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -90 # instrumentation
SETNS DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RAX], 1 
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 3 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 3 
BTR ECX, 46 
AND SIL, 91 # instrumentation
CMOVO EDX, EAX 
CMPXCHG AL, AL 
BTC RDX, -61 
SETNB DIL 
CMOVZ EAX, EDX 
BTS EDI, 96 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], EBX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 102 # instrumentation
XCHG AL, CL 
SETZ AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], AX 
MOV EBX, EBX 
CMC  
SETNP BL 
AND RCX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RCX] 
CBW  
BTS EBX, -88 
SETZ DIL 
CMOVNBE RCX, RSI 
MOV SI, 16621 
XCHG EBX, EAX 
BTR EDI, EDX 
AND DIL, 116 # instrumentation
CMOVS EAX, EBX 
MOVSX DX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
