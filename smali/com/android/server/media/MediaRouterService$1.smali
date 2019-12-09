.class Lcom/android/server/media/MediaRouterService$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final WAIT_MS:J = 0x1f4L


# instance fields
.field final mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance p1, Lcom/android/server/media/MediaRouterService$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaRouterService$1$1;-><init>(Lcom/android/server/media/MediaRouterService$1;)V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 5

    .line 132
    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 133
    move p2, v0

    goto :goto_0

    .line 132
    :cond_0
    const/4 p2, 0x0

    .line 133
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v1

    .line 134
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    .line 136
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 138
    if-ltz v1, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 140
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 143
    :cond_1
    const/4 v1, -0x1

    .line 144
    if-eqz p2, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 146
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    .line 147
    nop

    .line 153
    move p1, v2

    goto :goto_1

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 149
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 150
    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 149
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result p1

    goto :goto_1

    .line 153
    :cond_3
    move p1, v1

    :goto_1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    if-ltz p1, :cond_4

    .line 155
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    .line 156
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->access$300()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioPlayerActiveStateChanged: uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", restoreUid="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->access$300()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 163
    const-string p1, "MediaRouterService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioPlayerActiveStateChanged: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", delaying"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_5
    :goto_2
    return-void
.end method
