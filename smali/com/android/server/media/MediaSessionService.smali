.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;,
        Lcom/android/server/media/MediaSessionService$ControllerCallback;,
        Lcom/android/server/media/MediaSessionService$MessageHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$SettingsObserver;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$FullUserRecord;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEBUG_KEY_EVENT:Z = true

.field private static final MEDIA_KEY_LISTENER_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionService"

.field static final USE_MEDIA2_APIS:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field private mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field private mAudioService:Landroid/media/IAudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field private final mFullUserIds:Landroid/util/SparseIntArray;

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field private mHasFeatureLeanback:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private final mLongPressTimeout:I

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mNotificationManager:Landroid/app/INotificationManager;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private mRvc:Landroid/media/IRemoteVolumeController;

.field private final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field private final mSessionRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/SessionToken2;",
            "Landroid/media/MediaController2;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionTokensListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-string v0, "MediaSessionService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionTokensListeners:Ljava/util/List;

    .line 151
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 152
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 153
    const-string v0, "handleMediaEvent"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 154
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I

    .line 155
    const-string p1, "notification"

    .line 156
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 155
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 157
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 158
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->buildMediaSessionService2List()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionService;)Z
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionService;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I

    return p0
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceSystemUiPermission(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionService;Landroid/media/SessionToken2;Landroid/media/MediaController2;)Z
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->addSessionRecordLocked(Landroid/media/SessionToken2;Landroid/media/MediaController2;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->postSessionTokensUpdated(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSessionTokensListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/media/MediaSessionService;II)Z
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/server/media/MediaSessionService;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    return p0
.end method

.method static synthetic access$6200(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionTokensChanged(I)V

    return-void
.end method

.method private addSessionRecordLocked(Landroid/media/SessionToken2;)Z
    .locals 1

    .line 2271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionService;->addSessionRecordLocked(Landroid/media/SessionToken2;Landroid/media/MediaController2;)Z

    move-result p1

    return p1
.end method

.method private addSessionRecordLocked(Landroid/media/SessionToken2;Landroid/media/MediaController2;)Z
    .locals 1

    .line 2275
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2277
    const/4 p1, 0x0

    return p1

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    const/4 p1, 0x1

    return p1
.end method

.method private buildMediaSessionService2List()V
    .locals 0

    .line 513
    return-void
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 670
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 13

    move-object v0, p0

    move/from16 v10, p3

    .line 682
    invoke-direct {v0, v10}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v11

    .line 683
    if-eqz v11, :cond_1

    .line 688
    new-instance v12, Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 689
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v1, v12

    move v2, p1

    move v3, p2

    move v4, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V

    .line 691
    :try_start_0
    invoke-interface/range {p5 .. p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v12, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    nop

    .line 696
    invoke-static {v11}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 697
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 699
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    return-object v12

    .line 692
    :catch_0
    move-exception v0

    .line 693
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Media Session owner died prematurely."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 684
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request from invalid user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session request from invalid user."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3

    .line 423
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v1, p1, :cond_1

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 429
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 430
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_0

    .line 433
    :cond_1
    if-eqz v0, :cond_2

    .line 434
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 439
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getCallback()Landroid/media/session/ISessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_1

    .line 440
    :catch_0
    move-exception v0

    .line 443
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->onDestroy()V

    .line 444
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 445
    return-void
.end method

.method private dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 785
    return-void

    .line 788
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to volume key long-press listener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_0
    return-void
.end method

.method private enforceMediaPermissions(Landroid/content/ComponentName;III)V
    .locals 2

    .line 615
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 617
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 619
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/media/MediaSessionService;->isEnabledNotificationListener(Landroid/content/ComponentName;II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 621
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Missing permission to control media."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 623
    :cond_2
    :goto_0
    return-void
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .locals 3

    .line 590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 594
    array-length v0, p2

    .line 595
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 596
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    return-void

    .line 595
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "packageName is not owned by the calling process"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 591
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "packageName may not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enforceSystemUiPermission(Ljava/lang/String;II)V
    .locals 1

    .line 631
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 634
    return-void

    .line 632
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only system ui may "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 707
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 708
    return v0

    .line 706
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 711
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getActiveSessionsLocked(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 249
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 250
    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    .line 251
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    :cond_0
    goto :goto_1

    .line 254
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    .line 255
    if-nez v3, :cond_2

    .line 256
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessions failed. Unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v0

    .line 259
    :cond_2
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    :goto_1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 265
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 266
    :cond_3
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 268
    :cond_4
    return-object v0
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 1

    .line 197
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    return-object v0
.end method

.method private getCallingPackageName(I)Ljava/lang/String;
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 777
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 778
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    .line 780
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 796
    if-gez p1, :cond_0

    .line 797
    const/4 p1, 0x0

    return-object p1

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object p1
.end method

.method private isCurrentVolumeController(II)Z
    .locals 2

    .line 626
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isEnabledNotificationListener(Landroid/content/ComponentName;II)Z
    .locals 3

    .line 648
    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    .line 650
    return v0

    .line 652
    :cond_0
    sget-boolean p3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz p3, :cond_1

    .line 653
    const-string p3, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking if enabled notification listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_1
    if-eqz p1, :cond_2

    .line 657
    :try_start_0
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {p3, p1, p2}, Landroid/app/INotificationManager;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 659
    :catch_0
    move-exception p1

    .line 660
    const-string p2, "MediaSessionService"

    const-string p3, "Dead NotificationManager in isEnabledNotificationListener"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    :cond_2
    return v0
.end method

.method private isGlobalPriorityActiveLocked()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onStart$0(Lcom/android/server/media/MediaSessionService;Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 1

    .line 170
    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 175
    nop

    .line 176
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p1

    .line 177
    if-eqz p1, :cond_1

    .line 178
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 180
    :cond_1
    monitor-exit p2

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 172
    :cond_2
    :goto_0
    return-void
.end method

.method private postSessionTokensUpdated(I)V
    .locals 2

    .line 2241
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2242
    return-void
.end method

.method private pushRemoteVolumeUpdateLocked(I)V
    .locals 3

    .line 744
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-eqz v0, :cond_2

    .line 746
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 747
    if-nez v0, :cond_0

    .line 748
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushRemoteVolumeUpdateLocked failed. No user with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void

    .line 751
    :cond_0
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p1

    .line 752
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Landroid/media/IRemoteVolumeController;->updateRemoteController(Landroid/media/session/ISessionController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    goto :goto_1

    .line 753
    :catch_0
    move-exception p1

    .line 754
    const-string v0, "MediaSessionService"

    const-string v1, "Error sending default remote volume to sys ui."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    :cond_2
    :goto_1
    return-void
.end method

.method private pushSessionTokensChanged(I)V
    .locals 7

    .line 2245
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2246
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2247
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SessionToken2;

    .line 2251
    invoke-virtual {v3}, Landroid/media/SessionToken2;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p1, :cond_0

    if-ne v4, p1, :cond_1

    .line 2253
    :cond_0
    invoke-virtual {v3}, Landroid/media/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    :cond_1
    goto :goto_0

    .line 2257
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionTokensListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;

    .line 2259
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->access$6400(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)I

    move-result v5

    if-eq v5, p1, :cond_3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->access$6400(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v4, :cond_4

    .line 2261
    :cond_3
    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->access$4600(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)Landroid/media/ISessionTokensListener;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/media/ISessionTokensListener;->onSessionTokensChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2264
    goto :goto_2

    .line 2262
    :catch_0
    move-exception v3

    .line 2263
    :try_start_2
    const-string v5, "MediaSessionService"

    const-string v6, "Failed to notify session tokens changed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2266
    :cond_4
    :goto_2
    goto :goto_1

    .line 2267
    :cond_5
    monitor-exit v0

    .line 2268
    return-void

    .line 2267
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private pushSessionsChanged(I)V
    .locals 7

    .line 715
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 717
    if-nez v1, :cond_0

    .line 718
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pushSessionsChanged failed. No user with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    monitor-exit v0

    return-void

    .line 721
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v1

    .line 722
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 723
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 724
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 725
    new-instance v5, Landroid/media/session/MediaSession$Token;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 727
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 728
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 729
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 730
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$800(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$800(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_3

    .line 732
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    goto :goto_2

    .line 733
    :catch_0
    move-exception v2

    .line 734
    :try_start_2
    const-string v4, "MediaSessionService"

    const-string v5, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 728
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 740
    :cond_4
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private registerPackageBroadcastReceivers()V
    .locals 6

    .line 452
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 453
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 454
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/MediaSessionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$1;-><init>(Lcom/android/server/media/MediaSessionService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 508
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 463
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 509
    return-void
.end method

.method private removeSessionRecordLocked(Landroid/media/SessionToken2;)Z
    .locals 1

    .line 2285
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2287
    const/4 p1, 0x0

    return p1

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    const/4 p1, 0x1

    return p1
.end method

.method private updateActiveSessionListeners()V
    .locals 7

    .line 392
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v4

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$700(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v5

    .line 397
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$800(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v6

    .line 396
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    goto :goto_1

    .line 398
    :catch_0
    move-exception v3

    .line 399
    :try_start_2
    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActiveSessionsListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is no longer authorized. Disconnecting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    :try_start_3
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-interface {v2, v3}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    goto :goto_1

    .line 405
    :catch_1
    move-exception v2

    .line 393
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 410
    :cond_0
    :try_start_4
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private updateUser()V
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 365
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 366
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_2

    .line 368
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 369
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    iget v2, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 372
    :cond_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 373
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 374
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    new-instance v5, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, p0, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    :cond_1
    :goto_1
    goto :goto_0

    .line 380
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 382
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    if-nez v2, :cond_3

    .line 383
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find FullUserInfo for the current user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {v2, p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 385
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    :cond_3
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method destroySession2Internal(Landroid/media/SessionToken2;)V
    .locals 3

    .line 803
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    const/4 v1, 0x0

    .line 805
    :try_start_0
    invoke-virtual {p1}, Landroid/media/SessionToken2;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 806
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->removeSessionRecordLocked(Landroid/media/SessionToken2;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 808
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->addSessionRecordLocked(Landroid/media/SessionToken2;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 810
    :goto_0
    if-eqz v1, :cond_1

    .line 811
    invoke-virtual {p1}, Landroid/media/SessionToken2;->getUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->postSessionTokensUpdated(I)V

    .line 813
    :cond_1
    monitor-exit v0

    .line 814
    return-void

    .line 813
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected enforcePhoneStatePermission(II)V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    .line 348
    return-void

    .line 346
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public monitor()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 279
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Landroid/media/IRemoteVolumeController;->remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception p1

    .line 281
    const-string p2, "MediaSessionService"

    const-string v0, "Error sending volume change to system UI."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :goto_0
    return-void

    .line 276
    :cond_1
    :goto_1
    return-void
.end method

.method public onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 767
    nop

    .line 768
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 769
    if-ne p1, v2, :cond_0

    .line 770
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 772
    :cond_0
    monitor-exit v0

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 300
    :cond_1
    :goto_0
    const-string p1, "MediaSessionService"

    const-string v1, "Unknown session changed playback type. Ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v0

    return-void

    .line 304
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSessionPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/media/MediaSessionStack;->onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 289
    :cond_1
    :goto_0
    const-string p1, "MediaSessionService"

    const-string p2, "Unknown session changed playback state. Ignoring."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    monitor-exit v0

    return-void

    .line 293
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStart()V
    .locals 3

    .line 162
    const-string v0, "media_session"

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 163
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 164
    nop

    .line 165
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 166
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    .line 167
    invoke-static {}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance()Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 168
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;

    invoke-direct {v1, p0}, Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;-><init>(Lcom/android/server/media/MediaSessionService;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    invoke-virtual {v0, v1}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerSelfIntoAudioServiceIfNeeded(Landroid/media/IAudioService;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    .line 184
    new-instance v0, Lcom/android/server/media/MediaSessionService$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$1;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    .line 185
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->access$100(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    .line 189
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 191
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->registerPackageBroadcastReceivers()V

    .line 193
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->buildMediaSessionService2List()V

    .line 194
    return-void
.end method

.method public onStartUser(I)V
    .locals 3

    .line 309
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 311
    return-void
.end method

.method public onStopUser(I)V
    .locals 3

    .line 321
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_2

    .line 325
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 326
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 327
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 332
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSwitchUser(I)V
    .locals 3

    .line 315
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 317
    return-void
.end method

.method sessionDied(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v2, p1, :cond_0

    .line 232
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 235
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 243
    :cond_0
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 208
    if-nez v1, :cond_0

    .line 209
    const-string p1, "MediaSessionService"

    const-string v1, "Unknown session updated. Ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 214
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is updated, active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 219
    const-string p1, "MediaSessionService"

    const-string v1, "Unknown session updated. Ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0

    return-void

    .line 222
    :cond_2
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
