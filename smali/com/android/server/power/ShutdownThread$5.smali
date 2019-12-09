.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 606
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/util/TimingsTraceLog;

    move-result-object v0

    .line 609
    const-string/jumbo v1, "phone"

    .line 610
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 613
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    move v4, v2

    goto :goto_1

    .line 619
    :catch_0
    move-exception v4

    goto :goto_2

    .line 613
    :cond_1
    :goto_0
    nop

    .line 614
    move v4, v3

    :goto_1
    if-nez v4, :cond_2

    .line 615
    const-string v5, "ShutdownThread"

    const-string v6, "Turning off cellular radios..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->access$400(Ljava/lang/String;)V

    .line 617
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 619
    :goto_2
    nop

    .line 620
    const-string v5, "ShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    nop

    .line 624
    move v4, v3

    goto :goto_4

    .line 622
    :cond_2
    :goto_3
    nop

    .line 624
    :goto_4
    const-string v5, "ShutdownThread"

    const-string v6, "Waiting for Radio..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-wide v5, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 627
    :goto_5
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_6

    .line 628
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 629
    iget v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v7, v7

    sub-long/2addr v7, v5

    long-to-double v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    double-to-int v5, v5

    .line 631
    add-int/lit8 v5, v5, 0x6

    .line 632
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 635
    :cond_3
    if-nez v4, :cond_4

    .line 637
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 641
    xor-int/2addr v4, v3

    goto :goto_6

    .line 638
    :catch_1
    move-exception v4

    .line 639
    const-string v5, "ShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    nop

    .line 642
    move v4, v3

    :goto_6
    if-eqz v4, :cond_4

    .line 643
    const-string v5, "ShutdownThread"

    const-string v6, "Radio turned off."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->access$800(Ljava/lang/String;)V

    .line 645
    const-string v5, "ShutdownRadio"

    .line 646
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$900()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 650
    :cond_4
    if-eqz v4, :cond_5

    .line 651
    const-string v0, "ShutdownThread"

    const-string v1, "Radio shutdown complete."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v3, v0, v2

    .line 653
    goto :goto_7

    .line 655
    :cond_5
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 656
    iget-wide v5, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    goto :goto_5

    .line 658
    :cond_6
    :goto_7
    return-void
.end method
