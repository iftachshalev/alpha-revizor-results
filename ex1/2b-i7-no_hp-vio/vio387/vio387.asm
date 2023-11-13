.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 38 # instrumentation
SETNS DL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
BT RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 2 
BTS ESI, EDX 
OR SIL, -40 
CWD  
AND RDX, RSI 
AND AX, 15446 
AND EAX, -1989196222 
SETNP CL 
CBW  
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RBX] 
MOV AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
OR BX, 4 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA RDI, qword ptr [RSI + RCX + 63918] 
MOVZX RSI, SIL 
XADD EDX, EDI 
CMOVS RSI, RCX 
SETNL DIL 
XADD AL, CL 
AND EAX, 793613878 
CMOVNO ESI, EAX 
AND RDX, 98 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EAX 
MOVSX ESI, SI 
SETO DL 
XOR DX, -10 
CMOVNBE DX, CX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
