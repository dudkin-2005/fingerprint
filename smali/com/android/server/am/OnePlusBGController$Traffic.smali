.class Lcom/android/server/am/OnePlusBGController$Traffic;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Traffic"
.end annotation


# instance fields
.field mRxBytes:J

.field mTimeStamp:J

.field mTxBytes:J

.field mUid:I

.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "uid"    # I

    .line 1701
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    iput p2, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mUid:I

    .line 1703
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    .line 1704
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;IJJJ)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "uid"    # I
    .param p3, "timeStamp"    # J
    .param p5, "tx"    # J
    .param p7, "rx"    # J

    .line 1695
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    iput p2, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mUid:I

    .line 1697
    iput-wide p3, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    .line 1698
    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    .line 1699
    iput-wide p7, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    .line 1700
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1707
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$Traffic;

    .line 1708
    .local v0, "o":Lcom/android/server/am/OnePlusBGController$Traffic;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Traffic ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
