.class Lcom/android/server/StorageManagerService$ObbActionHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/StorageManagerService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 3086
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 3087
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3083
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3084
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    .line 3088
    return-void
.end method

.method private connectToService()Z
    .locals 5

    .line 3225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/StorageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3226
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$4400(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3228
    iput-boolean v4, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3229
    return v4

    .line 3231
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private disconnectService()V
    .locals 2

    .line 3235
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$4002(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3237
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$4400(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3238
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 3092
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x14

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 3179
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3184
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$4100(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 3185
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3187
    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3188
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3189
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StorageManagerService$ObbState;

    .line 3196
    iget-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3197
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3199
    :cond_0
    goto :goto_0

    .line 3201
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3205
    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3, v1}, Lcom/android/server/StorageManagerService;->access$4300(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3208
    :try_start_1
    iget-object v3, v1, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v4, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v3, v4, v5, v2}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3213
    goto :goto_2

    .line 3210
    :catch_0
    move-exception v3

    .line 3211
    :try_start_2
    const-string v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    :goto_2
    goto :goto_1

    .line 3215
    :cond_2
    monitor-exit v0

    .line 3216
    goto/16 :goto_5

    .line 3215
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 3143
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 3144
    iget-boolean p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-eqz p1, :cond_3

    .line 3145
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->disconnectService()V

    .line 3147
    :cond_3
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->connectToService()Z

    move-result p1

    if-nez p1, :cond_d

    .line 3148
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3150
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const-string v2, "Failed to bind to media container service"

    invoke-direct {v1, v3, v2}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 3152
    goto :goto_3

    .line 3153
    :cond_4
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_5

    .line 3163
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 3164
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3166
    :cond_5
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 3167
    iget-boolean p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-eqz p1, :cond_d

    .line 3168
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->disconnectService()V

    goto/16 :goto_5

    .line 3174
    :cond_6
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendEmptyMessage(I)Z

    .line 3176
    goto/16 :goto_5

    .line 3118
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 3119
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$4002(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3121
    :cond_7
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$4000(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object p1

    if-nez p1, :cond_9

    .line 3123
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3125
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const-string v2, "Failed to bind to media container service"

    invoke-direct {v1, v3, v2}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 3127
    goto :goto_4

    .line 3128
    :cond_8
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 3129
    :cond_9
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 3130
    iget-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3131
    if-eqz p1, :cond_a

    .line 3132
    invoke-virtual {p1, p0}, Lcom/android/server/StorageManagerService$ObbAction;->execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V

    .line 3134
    :cond_a
    goto :goto_5

    .line 3136
    :cond_b
    const-string p1, "StorageManagerService"

    const-string v0, "Empty queue"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    goto :goto_5

    .line 3094
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3102
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-nez v0, :cond_c

    .line 3105
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->connectToService()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3106
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const-string v1, "Failed to bind to media container service"

    invoke-direct {v0, v3, v1}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 3108
    return-void

    .line 3112
    :cond_c
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3113
    nop

    .line 3219
    :cond_d
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
