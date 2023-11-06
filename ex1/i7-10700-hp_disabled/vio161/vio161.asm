.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 6 
MOVZX DI, AL 
MOV BL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
OR BL, 47 
MOVSX ESI, DX 
OR DL, SIL 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND BL, DL 
AND RAX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RAX] 
MOV DX, -20169 
BTS AX, CX 
AND RBX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RBX] 
CMOVNO EDX, EDX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
SETNL AL 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTC dword ptr [R14 + RAX], EAX 
AND AX, 30771 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
AND SIL, 12 # instrumentation
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], BL 
MOVZX SI, SIL 
BTR RDI, -75 
AND SIL, -42 # instrumentation
MOVSX RDI, DL 
SETO CL 
NOT ECX 
OR RAX, -1982863991 
CBW  
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
AND SIL, -85 # instrumentation
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -9 # instrumentation
SETBE DL 
OR AX, -28501 
MOVSX DX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
