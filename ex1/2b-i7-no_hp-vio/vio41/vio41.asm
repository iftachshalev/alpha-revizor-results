.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DL, BL 
SETNS AL 
CMOVNO RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RBX] 
CLD  
CMOVS RCX, RSI 
CMOVNO EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
CMOVS EBX, EBX 
SETLE DL 
NOT RDI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RSI 
CMOVB AX, AX 
SETNB DL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
AND EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
MOVSX RAX, AL 
CMOVB RDX, RBX 
OR BL, DL 
CBW  
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 7 
AND SIL, 35 # instrumentation
CMOVB ESI, ESI 
CMOVNLE BX, AX 
CMOVBE EBX, EDX 
XADD EDI, ESI 
MOVZX RAX, CX 
XOR AL, DL 
TEST CX, -31766 
XOR ECX, 123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
