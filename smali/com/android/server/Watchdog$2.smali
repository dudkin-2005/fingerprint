.class Lcom/android/server/Watchdog$2;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->cleanupProcesses(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;J)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/Watchdog;
    .param p2, "x0"    # Ljava/lang/String;

    .line 702
    iput-object p1, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    iput-wide p3, p0, Lcom/android/server/Watchdog$2;->val$timeout:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 704
    iget-wide v0, p0, Lcom/android/server/Watchdog$2;->val$timeout:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 705
    iget-object v0, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->cleanupProcesses(J)V

    goto :goto_1a

    .line 707
    :cond_10
    iget-object v0, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->cleanupProcesses(J)V

    .line 709
    :goto_1a
    return-void
.end method
