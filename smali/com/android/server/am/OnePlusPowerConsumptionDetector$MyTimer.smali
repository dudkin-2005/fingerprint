.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimer"
.end annotation


# static fields
.field public static final TYPE_DOZE_INACTIVE:I = 0x2

.field public static final TYPE_SCREEN_ON:I = 0x1


# instance fields
.field isTiming:Z

.field pauseTime:J

.field startTime:J

.field temp:J

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

.field type:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionDetector;
    .param p2, "type"    # I

    .line 719
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    .line 714
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    .line 715
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    .line 716
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    .line 717
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->temp:J

    .line 720
    iput p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    .line 721
    return-void
.end method


# virtual methods
.method public pauseTime()V
    .registers 6

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |pauseTime, isTiming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 745
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    if-nez v0, :cond_25

    .line 746
    return-void

    .line 749
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    .line 751
    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_de

    goto/16 :goto_dd

    .line 760
    :pswitch_37
    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_53

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_53

    .line 761
    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1200()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->temp:J

    .line 762
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    sub-long/2addr v0, v2

    # += operator for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1214(J)J

    .line 764
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |pauseTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |mTotalDozeInActiveTime start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->temp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |mTotalDozeInActiveTime end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1200()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 765
    goto :goto_dd

    .line 753
    :pswitch_8a
    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_a6

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a6

    .line 754
    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1100()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->temp:J

    .line 755
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    sub-long/2addr v0, v2

    # += operator for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1114(J)J

    .line 757
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |pauseTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |mTotalScreenOnTime start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->temp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |mTotalScreenOnTime end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1100()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 758
    nop

    .line 769
    :goto_dd
    return-void

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_37
    .end packed-switch
.end method

.method public resetTime()V
    .registers 5

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |resetTime, isTiming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 773
    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_46

    goto :goto_45

    .line 780
    :pswitch_29
    iput-boolean v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    .line 781
    # setter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1202(J)J

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    .line 783
    goto :goto_45

    .line 775
    :pswitch_37
    iput-boolean v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    .line 776
    # setter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1102(J)J

    .line 777
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    .line 778
    nop

    .line 787
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_37
        :pswitch_29
    .end packed-switch
.end method

.method public startTime()V
    .registers 4

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |startTime, isTiming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 725
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    if-eqz v0, :cond_25

    .line 726
    return-void

    .line 729
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->isTiming:Z

    .line 730
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    .line 731
    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    packed-switch v0, :pswitch_data_90

    goto :goto_8e

    .line 736
    :pswitch_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |mTotalDozeInActiveTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1200()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 737
    goto :goto_8e

    .line 733
    :pswitch_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |mTotalScreenOnTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1100()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 734
    nop

    .line 741
    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_61
        :pswitch_34
    .end packed-switch
.end method
