.class final Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuckingManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    }
.end annotation


# instance fields
.field private final mDuckers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor$1;)V
    .locals 0

    .line 648
    invoke-direct {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized checkDuck(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 2

    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    if-nez v0, :cond_0

    .line 677
    monitor-exit p0

    return-void

    .line 679
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    monitor-exit p0

    return-void

    .line 674
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized duckUid(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    invoke-direct {v2, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 657
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 658
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    goto :goto_0

    .line 660
    :cond_1
    monitor-exit p0

    return-void

    .line 652
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 2

    monitor-enter p0

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 684
    invoke-virtual {v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    goto :goto_0

    .line 686
    :cond_0
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 2

    monitor-enter p0

    .line 689
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    if-nez v0, :cond_0

    .line 694
    monitor-exit p0

    return-void

    .line 696
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    monitor-exit p0

    return-void

    .line 688
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unduckUid(ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    if-nez p1, :cond_0

    .line 666
    monitor-exit p0

    return-void

    .line 668
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeUnduckAll(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    .line 663
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
