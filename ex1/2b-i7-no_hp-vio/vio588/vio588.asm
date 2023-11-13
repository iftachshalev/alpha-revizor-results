.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 15 # instrumentation
SETNP CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], 0 
AND SIL, 110 # instrumentation
SETS BL 
MOV DL, DL 
MOVZX RBX, BX 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RCX 
OR SI, -51 
CMOVNO ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
MOVSX EBX, CX 
MOVSX RCX, DI 
CMOVS AX, DX 
BTC RCX, RSI 
AND SIL, -87 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 26 # instrumentation
CMOVZ ECX, EBX 
MOVZX ESI, DX 
CMOVP RAX, RBX 
BTC CX, -33 
NOT BL 
TEST RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
CMOVL RDI, RBX 
SETNO CL 
CMOVLE RBX, RCX 
MOVSX RAX, AX 
MOVSX EBX, AL 
CMOVP RCX, RDI 
TEST EBX, EDI 
MOVZX RSI, AL 
LEA ESI, qword ptr [RAX + RDI + 43787] 
OR RAX, 1406425955 
CMOVB RAX, RDX 
CMOVNLE SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
