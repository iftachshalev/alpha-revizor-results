.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RDX] 
XOR DX, CX 
BTC RBX, -25 
AND DIL, 9 # instrumentation
SETNLE CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
XOR RDX, 54 
SETNP CL 
SETNS CL 
OR BL, 95 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], BL 
CMOVNO EAX, ECX 
TEST EAX, 2086109263 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 84 
XOR BX, 65 
OR BL, DL 
SETNBE DL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 20 # instrumentation
SETO AL 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 5 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDI], RSI 
XOR RCX, RCX 
SETS BL 
SETNS CL 
XADD AL, SIL 
MOV AL, 31 
XADD DL, BL 
TEST AX, -17336 
MOV AL, -5 
MOVZX CX, AL 
BTR DX, AX 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
