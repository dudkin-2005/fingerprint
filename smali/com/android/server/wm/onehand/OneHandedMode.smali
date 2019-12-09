.class Lcom/android/server/wm/onehand/OneHandedMode;
.super Ljava/lang/Object;
.source "OneHandedMode.java"


# instance fields
.field private mGravity:I

.field private mScale:F

.field xAdj:I

.field yAdj:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/onehand/OneHandedMode;->reset()V

    .line 46
    return-void
.end method

.method constructor <init>(IIFI)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    .line 57
    iput p2, p0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    .line 58
    invoke-virtual {p0, p3}, Lcom/android/server/wm/onehand/OneHandedMode;->setScale(F)V

    .line 59
    invoke-virtual {p0, p4}, Lcom/android/server/wm/onehand/OneHandedMode;->setGravity(I)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/wm/onehand/OneHandedMode;->set(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 64
    return-void
.end method

.method private static ensureGravityValid(I)V
    .locals 3

    .line 8
    and-int/lit8 v0, p0, -0x78

    if-nez v0, :cond_0

    .line 11
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid gravity for OneHandedMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ensureScaleValid(F)V
    .locals 3

    .line 14
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_0

    .line 16
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scale for OneHandedMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static gravityToString(I)Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 22
    const-string v1, "LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_0
    and-int/lit8 v1, p0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 25
    const-string v1, "RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_1
    and-int/lit8 v1, p0, 0x30

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 28
    const-string v1, "-TOP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_2
    const/16 v1, 0x50

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_3

    .line 31
    const-string p0, "-BOTTOM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method describeContents()I
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 115
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/server/wm/onehand/OneHandedMode;

    if-eqz v1, :cond_1

    .line 116
    check-cast p1, Lcom/android/server/wm/onehand/OneHandedMode;

    .line 117
    iget v1, p1, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    iget v2, p0, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    iget v2, p0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/server/wm/onehand/OneHandedMode;->mScale:F

    iget v2, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget p1, p1, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 122
    :cond_1
    return v0
.end method

.method getGravity()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    return v0
.end method

.method getScale()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mScale:F

    return v0
.end method

.method hasGravity(I)Z
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isOffMode()Z
    .locals 2

    .line 89
    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    .line 104
    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/server/wm/onehand/OneHandedMode;->setScale(F)V

    .line 106
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/android/server/wm/onehand/OneHandedMode;->setGravity(I)V

    .line 107
    return-void
.end method

.method set(Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 1

    .line 93
    iget v0, p1, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    .line 94
    iget v0, p1, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    .line 95
    iget v0, p1, Lcom/android/server/wm/onehand/OneHandedMode;->mScale:F

    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mScale:F

    .line 96
    iget p1, p1, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    iput p1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    .line 97
    return-void
.end method

.method setGravity(I)V
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->ensureGravityValid(I)V

    .line 72
    iput p1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    .line 73
    return-void
.end method

.method setScale(F)V
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->ensureScaleValid(F)V

    .line 85
    iput p1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mScale:F

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v1, "OneHandedMode: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedMode;->mGravity:I

    invoke-static {v1}, Lcom/android/server/wm/onehand/OneHandedMode;->gravityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
