.class Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V
    .registers 4
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .line 3196
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3194
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 3197
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 3198
    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    .line 3199
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3191
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .line 3202
    const/4 v0, 0x0

    .line 3203
    .local v0, "oldModeOwnerPid":I
    const/4 v1, 0x0

    .line 3204
    .local v1, "newModeOwnerPid":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3205
    :try_start_9
    const-string v3, "AudioService"

    const-string/jumbo v4, "setMode() client died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2f

    .line 3207
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move v0, v3

    .line 3209
    :cond_2f
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3210
    .local v3, "index":I
    if-gez v3, :cond_44

    .line 3211
    const-string v4, "AudioService"

    const-string/jumbo v5, "unregistered setMode() client died"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3213
    :cond_44
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v7, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    const-string v8, "AudioService"

    # invokes: Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v4

    move v1, v4

    .line 3215
    .end local v3    # "index":I
    :goto_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_6a

    .line 3218
    if-eq v1, v0, :cond_69

    if-eqz v1, :cond_69

    .line 3219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3220
    .local v2, "ident":J
    const-string v4, "AudioService"

    const-string v5, "In binderDied(), calling disconnectBluetoothSco()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V
    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;I)V

    .line 3222
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3224
    .end local v2    # "ident":J
    :cond_69
    return-void

    .line 3215
    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v3
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 3239
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 3235
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .line 3227
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 3231
    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 3232
    return-void
.end method
