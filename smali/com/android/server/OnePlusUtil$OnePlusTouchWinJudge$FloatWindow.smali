.class public Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;
.super Ljava/lang/Object;
.source "OnePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatWindow"
.end annotation


# instance fields
.field public mH:I

.field public mPid:I

.field public mPkgName:Ljava/lang/String;

.field public mType:I

.field public mUid:I

.field public mW:I


# direct methods
.method constructor <init>(IILjava/lang/String;III)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "type"    # I

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mUid:I

    .line 220
    iput p2, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    .line 221
    iput-object p3, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    .line 222
    iput p4, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    .line 223
    iput p5, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    .line 224
    iput p6, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mType:I

    .line 225
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatWindow{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " uid:"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " w*h:"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
