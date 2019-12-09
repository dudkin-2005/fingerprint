.class Lcom/android/server/OnePlusPowerController$1;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 420
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 5

    .line 423
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_7
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/OnePlusPowerController;->mNextAlarmFromOPSM:J
    invoke-static {v1, v2, v3}, Lcom/android/server/OnePlusPowerController;->access$102(Lcom/android/server/OnePlusPowerController;J)J

    .line 425
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$200(Lcom/android/server/OnePlusPowerController;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 426
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController;->restrictNetwork()V

    .line 428
    :cond_1c
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method
