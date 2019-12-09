.class public Lcom/android/server/pocket/PocketBridgeService;
.super Lcom/android/server/SystemService;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;,
        Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;
    }
.end annotation


# static fields
.field private static final MSG_POCKET_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;

.field private mIsDeviceInPocket:Z

.field private mObserver:Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;

.field private final mPocketCallback:Landroid/pocket/IPocketCallback;

.field private mPocketManager:Landroid/pocket/PocketManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/android/server/pocket/PocketBridgeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pocket/PocketBridgeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lcom/android/server/pocket/PocketBridgeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pocket/PocketBridgeService$1;-><init>(Lcom/android/server/pocket/PocketBridgeService;)V

    iput-object v0, p0, Lcom/android/server/pocket/PocketBridgeService;->mPocketCallback:Landroid/pocket/IPocketCallback;

    .line 78
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/pocket/PocketBridgeService;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v1, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;-><init>(Lcom/android/server/pocket/PocketBridgeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pocket/PocketBridgeService;->mHandler:Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;

    .line 82
    const-string/jumbo v0, "pocket"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/pocket/PocketManager;

    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService;->mPocketManager:Landroid/pocket/PocketManager;

    .line 84
    new-instance p1, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;

    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService;->mHandler:Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;-><init>(Lcom/android/server/pocket/PocketBridgeService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService;->mObserver:Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;

    .line 85
    iget-object p1, p0, Lcom/android/server/pocket/PocketBridgeService;->mObserver:Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->onChange(Z)V

    .line 86
    iget-object p1, p0, Lcom/android/server/pocket/PocketBridgeService;->mObserver:Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;

    invoke-virtual {p1}, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->register()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pocket/PocketBridgeService;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/server/pocket/PocketBridgeService;->mIsDeviceInPocket:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/pocket/PocketBridgeService;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/server/pocket/PocketBridgeService;->mIsDeviceInPocket:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/pocket/PocketBridgeService;)Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/pocket/PocketBridgeService;->mHandler:Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/pocket/PocketBridgeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/server/pocket/PocketBridgeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pocket/PocketBridgeService;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketBridgeService;->setEnabled(Z)V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService;->mEnabled:Z

    if-eq p1, v0, :cond_0

    .line 95
    iput-boolean p1, p0, Lcom/android/server/pocket/PocketBridgeService;->mEnabled:Z

    .line 96
    invoke-direct {p0}, Lcom/android/server/pocket/PocketBridgeService;->update()V

    .line 98
    :cond_0
    return-void
.end method

.method private update()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService;->mPocketManager:Landroid/pocket/PocketManager;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService;->mPocketManager:Landroid/pocket/PocketManager;

    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService;->mPocketCallback:Landroid/pocket/IPocketCallback;

    invoke-virtual {v0, v1}, Landroid/pocket/PocketManager;->addCallback(Landroid/pocket/IPocketCallback;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService;->mPocketManager:Landroid/pocket/PocketManager;

    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService;->mPocketCallback:Landroid/pocket/IPocketCallback;

    invoke-virtual {v0, v1}, Landroid/pocket/PocketManager;->removeCallback(Landroid/pocket/IPocketCallback;)V

    .line 108
    :goto_0
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .line 91
    return-void
.end method
