.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
SETZ BL 
CMOVNL EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
XOR SI, AX 
XCHG CL, AL 
MOVZX SI, CL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
XADD RSI, RBX 
AND AL, BL 
AND RCX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RCX], 7 
AND SIL, 66 
TEST AX, 2567 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 2 
AND DIL, 25 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
AND CL, -67 
OR EBX, -91 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
OR DL, -53 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RDI] 
BTR EDI, EDX 
BT CX, 100 
AND DIL, 97 # instrumentation
MOV EAX, -168552445 
CMOVNO EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
CLC  
AND RSI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RSI] 
SETNB BL 
CMOVZ RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
