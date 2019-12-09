.class public Lcom/android/server/smartpixels/SmartPixelsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartPixelsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartPixelsReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mOnPowerSave:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private mRegisteredReceiver:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mServiceRunning:Z

.field private mSettingsObserver:Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;

.field private mSmartPixelsService:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mServiceRunning:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mRegisteredReceiver:Z

    .line 49
    iput-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mContext:Landroid/content/Context;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mResolver:Landroid/content/ContentResolver;

    .line 52
    iget-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mPowerManager:Landroid/os/PowerManager;

    .line 53
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/smartpixels/SmartPixelsService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mSmartPixelsService:Landroid/content/Intent;

    .line 56
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 57
    iget-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->initiateSettingsObserver()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/ContentResolver;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mEnabled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mOnPowerSave:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mOnPowerSave:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mPowerSave:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mPowerSave:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/os/PowerManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mRegisteredReceiver:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/smartpixels/SmartPixelsReceiver;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->registerReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/smartpixels/SmartPixelsReceiver;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->unregisterReceiver()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mServiceRunning:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mServiceRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mSmartPixelsService:Landroid/content/Intent;

    return-object p0
.end method

.method private initiateSettingsObserver()V
    .locals 2

    .line 74
    new-instance v0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;-><init>(Lcom/android/server/smartpixels/SmartPixelsReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mSettingsObserver:Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;

    .line 75
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mSettingsObserver:Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->observe()V

    .line 76
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mSettingsObserver:Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->update()V

    .line 77
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mRegisteredReceiver:Z

    .line 66
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mRegisteredReceiver:Z

    .line 71
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver;->mSettingsObserver:Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->update()V

    .line 154
    return-void
.end method
