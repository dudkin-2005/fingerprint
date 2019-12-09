.class final Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChainedInputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field private final mInputFilter:Landroid/view/IInputFilter;

.field private mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V
    .locals 0

    .line 2157
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    .line 2158
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    .line 2159
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 2160
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    .line 2161
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0

    .line 2152
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .locals 0

    .line 2152
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .locals 0

    .line 2152
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Landroid/view/IInputFilter;
    .locals 0

    .line 2152
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    return-object p0
.end method


# virtual methods
.method public connectLocked()V
    .locals 1

    .line 2165
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v0, p0}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    goto :goto_0

    .line 2166
    :catch_0
    move-exception v0

    .line 2169
    :goto_0
    return-void
.end method

.method public disconnectLocked()V
    .locals 1

    .line 2173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    goto :goto_0

    .line 2174
    :catch_0
    move-exception v0

    .line 2178
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    .line 2179
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 11

    .line 2183
    if-eqz p1, :cond_2

    .line 2187
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2188
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    if-nez v1, :cond_1

    .line 2189
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    if-nez v1, :cond_0

    .line 2190
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v1, 0x4000000

    or-int v10, p2, v1

    move-object v4, p1

    invoke-static/range {v2 .. v10}, Lcom/android/server/input/InputManagerService;->access$1200(JLandroid/view/InputEvent;IIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2199
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    iget-object v1, v1, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-virtual {p1}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2202
    goto :goto_0

    .line 2200
    :catch_0
    move-exception p1

    .line 2205
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 2206
    return-void

    .line 2205
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 2184
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
