.class Lcom/android/server/power/Notifier$7;
.super Landroid/content/BroadcastReceiver;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 710
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 711
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v2}, Lcom/android/server/power/Notifier;->access$300(Lcom/android/server/power/Notifier;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    .line 710
    const/16 p2, 0xaa6

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 712
    iget-object p1, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$400(Lcom/android/server/power/Notifier;)V

    .line 713
    return-void
.end method