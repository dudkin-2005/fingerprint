.class Lcom/android/server/audio/MediaFocusControl$2;
.super Ljava/lang/Thread;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;

.field final synthetic val$enteringRingOrCall:Z


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Z)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iput-boolean p2, p0, Lcom/android/server/audio/MediaFocusControl$2;->val$enteringRingOrCall:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 876
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$2;->val$enteringRingOrCall:Z

    if-eqz v0, :cond_0

    .line 878
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 883
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 886
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$500(Lcom/android/server/audio/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$700(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$600()[I

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    goto :goto_1

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$700(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 891
    :goto_1
    monitor-exit v0

    .line 892
    return-void

    .line 891
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
