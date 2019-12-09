.class final Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotplugDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 730
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;I)V

    .line 731
    return-void
.end method


# virtual methods
.method public onHotplug(JIZ)V
    .locals 0

    .line 735
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 736
    if-eqz p4, :cond_0

    .line 737
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p2, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$300(Lcom/android/server/display/LocalDisplayAdapter;I)V

    goto :goto_0

    .line 741
    :catchall_0
    move-exception p2

    goto :goto_1

    .line 739
    :cond_0
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p2, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$400(Lcom/android/server/display/LocalDisplayAdapter;I)V

    .line 741
    :goto_0
    monitor-exit p1

    .line 742
    return-void

    .line 741
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
