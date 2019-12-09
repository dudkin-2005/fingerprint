.class final Lcom/android/server/AppStateTracker$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$MyReceiver;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 681
    const-string p1, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 682
    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 683
    if-lez p1, :cond_0

    .line 684
    iget-object p2, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/AppStateTracker$MyHandler;->doUserRemoved(I)V

    .line 686
    :cond_0
    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 687
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    const-string/jumbo v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    iput-boolean v2, v0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    .line 689
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    goto :goto_0

    .line 689
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 692
    :cond_3
    :goto_0
    return-void
.end method
