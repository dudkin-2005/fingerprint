.class Landroid/net/apf/ApfGenerator$Instruction;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Instruction"
.end annotation


# instance fields
.field private mCompareBytes:[B

.field private mHasImm:Z

.field private mImm:I

.field private mImmSigned:Z

.field private mImmSize:B

.field private mLabel:Ljava/lang/String;

.field private final mOpcode:B

.field private final mRegister:B

.field private mTargetLabel:Ljava/lang/String;

.field private mTargetLabelSize:B

.field offset:I

.field final synthetic this$0:Landroid/net/apf/ApfGenerator;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V
    .locals 1

    .line 120
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {p0, p1, p2, v0}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 121
    return-void
.end method

.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V
    .locals 0

    .line 114
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iget p1, p2, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    .line 116
    iget p1, p3, Landroid/net/apf/ApfGenerator$Register;->value:I

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    .line 117
    return-void
.end method

.method private calculateImmSize(IZ)B
    .locals 1

    .line 291
    if-nez p1, :cond_0

    .line 292
    const/4 p1, 0x0

    return p1

    .line 294
    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-le p1, v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-ltz p1, :cond_3

    const/16 v0, 0xff

    if-gt p1, v0, :cond_3

    .line 296
    :cond_2
    const/4 p1, 0x1

    return p1

    .line 298
    :cond_3
    if-eqz p2, :cond_4

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_4

    const/16 v0, 0x7fff

    if-le p1, v0, :cond_5

    :cond_4
    if-nez p2, :cond_6

    if-ltz p1, :cond_6

    const p2, 0xffff

    if-gt p1, p2, :cond_6

    .line 300
    :cond_5
    const/4 p1, 0x2

    return p1

    .line 302
    :cond_6
    const/4 p1, 0x4

    return p1
.end method

.method private calculateTargetLabelOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const-string v1, "__DROP__"

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$100(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const-string v1, "__PASS__"

    if-ne v0, v1, :cond_1

    .line 274
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$200(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    .line 278
    :goto_0
    if-eqz v0, :cond_3

    .line 282
    iget v0, v0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    iget v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 283
    if-ltz v0, :cond_2

    .line 287
    return v0

    .line 284
    :cond_2
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backward branches disallowed; label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_3
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateImmSizeField()B
    .locals 2

    .line 203
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v0

    .line 205
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    return v0
.end method

.method private generateInstructionByte()B
    .locals 2

    .line 212
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateImmSizeField()B

    move-result v0

    .line 213
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    shl-int/lit8 v1, v1, 0x3

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private generatedImmSize()B
    .locals 2

    .line 266
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    :goto_0
    return v0
.end method

.method private writeValue(I[BI)I
    .locals 3

    .line 226
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 227
    add-int/lit8 v1, p3, 0x1

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 226
    add-int/lit8 v0, v0, -0x1

    move p3, v1

    goto :goto_0

    .line 229
    :cond_0
    return p3
.end method


# virtual methods
.method generate([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 236
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 240
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateInstructionByte()B

    move-result v2

    aput-byte v2, p1, v0

    .line 241
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    move-result v0

    invoke-direct {p0, v0, p1, v1}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    move-result v1

    .line 244
    :cond_1
    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    if-eqz v0, :cond_2

    .line 245
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    invoke-direct {p0, v0, p1, v1}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    move-result v1

    .line 247
    :cond_2
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v3, v3

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 249
    iget-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length p1, p1

    add-int/2addr v1, p1

    .line 251
    :cond_3
    iget p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    sub-int p1, v1, p1

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 255
    return-void

    .line 252
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrote "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but should have written "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setCompareBytes([B)V
    .locals 2

    .line 155
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_0

    .line 158
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    .line 159
    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "adding compare bytes to non-JNEBS instruction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setImm(IZ)V
    .locals 1

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    .line 125
    iput p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    .line 126
    iput-boolean p2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSigned:Z

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    move-result p1

    iput-byte p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    .line 128
    return-void
.end method

.method setLabel(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_0

    .line 145
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mLabel:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "adding label to non-label instruction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_1
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSignedImm(I)V
    .locals 1

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    .line 136
    return-void
.end method

.method setTargetLabel(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    .line 151
    const/4 p1, 0x4

    iput-byte p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 152
    return-void
.end method

.method setUnsignedImm(I)V
    .locals 1

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    .line 132
    return-void
.end method

.method shrink()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v0

    .line 191
    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 192
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    move-result v3

    iput-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 193
    iget-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    if-gt v3, v2, :cond_2

    .line 196
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 194
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "instruction grew"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method size()I
    .locals 2

    .line 165
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_0

    .line 166
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    const/4 v0, 0x1

    .line 169
    iget-boolean v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    if-eqz v1, :cond_1

    .line 170
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_1
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 173
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_2
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 178
    :cond_3
    return v0
.end method
