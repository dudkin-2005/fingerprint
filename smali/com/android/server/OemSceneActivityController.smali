.class public Lcom/android/server/OemSceneActivityController;
.super Ljava/lang/Object;
.source "OemSceneActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;,
        Lcom/android/server/OemSceneActivityController$ActivityMode;
    }
.end annotation


# static fields
.field private static final AMODE_ALLOWALL:I

.field private static final AMODE_ALLOWWHITE:I

.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OemSceneActivityController"

.field private static mAllowWhiteActivity:Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

.field private static sInstance:Lcom/android/server/OemSceneActivityController;


# instance fields
.field private activityMode:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field private whiteListInBreathMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneActivityController;->DEBUG:Z

    .line 61
    sget-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->ALLOW_ALL:Lcom/android/server/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneActivityController$ActivityMode;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneActivityController;->AMODE_ALLOWALL:I

    .line 62
    sget-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->ALLOW_WHITE:Lcom/android/server/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneActivityController$ActivityMode;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneActivityController;->AMODE_ALLOWWHITE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneActivityController;->mHandler:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneActivityController;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.android.dialer"

    const-string v3, "com.android.phone"

    const-string v4, "com.oneplus.camera"

    const-string v5, "com.oneplus.gallery"

    const-string v6, "com.android.emergency"

    const-string v7, "com.android.server.telecom"

    const-string v8, "com.google.android.packageinstaller"

    const-string v9, "com.oneplus.brickmode"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/OemSceneActivityController;->whiteListInBreathMode:Ljava/util/ArrayList;

    .line 84
    iput-object p1, p0, Lcom/android/server/OemSceneActivityController;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneActivityController;->mResolver:Landroid/content/ContentResolver;

    .line 87
    iget-object v1, p0, Lcom/android/server/OemSceneActivityController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_3e
    iput v0, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_42

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneActivityController;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OemSceneActivityController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneActivityController;->updateActivityMode(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneActivityController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneActivityController;

    .line 43
    iget-object v0, p0, Lcom/android/server/OemSceneActivityController;->whiteListInBreathMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static canActivityGo(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 142
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 143
    :cond_4
    sget-object v1, Lcom/android/server/OemSceneActivityController;->sInstance:Lcom/android/server/OemSceneActivityController;

    if-nez v1, :cond_10

    .line 144
    const-string v1, "OemSceneActivityController"

    const-string v2, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0

    .line 147
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OemSceneActivityController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneActivityController;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneActivityController;->canActivityGoInModes(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method private canActivityGoInBreathMode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/server/OemSceneActivityController;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 164
    sget-boolean v0, Lcom/android/server/OemSceneActivityController;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "OemSceneActivityController"

    const-string v1, "canActivityGo => true in BreathMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_15
    sget-boolean v0, Lcom/android/server/OemSceneActivityController;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "OemSceneActivityController"

    const-string v1, "forbid Activity in BreathMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private canActivityGoInModes(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 151
    iget v0, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    sget v1, Lcom/android/server/OemSceneActivityController;->AMODE_ALLOWALL:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 152
    return v1

    .line 153
    :cond_9
    iget v0, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    sget v2, Lcom/android/server/OemSceneActivityController;->AMODE_ALLOWWHITE:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    .line 155
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneActivityController;->canActivityGoInBreathMode(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 157
    :cond_17
    sget-boolean v0, Lcom/android/server/OemSceneActivityController;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "OemSceneActivityController"

    const-string v2, "canActivityGo => true for DEFAULT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_22
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneActivityController;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    sget-object v0, Lcom/android/server/OemSceneActivityController;->sInstance:Lcom/android/server/OemSceneActivityController;

    if-nez v0, :cond_b

    .line 79
    new-instance v0, Lcom/android/server/OemSceneActivityController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneActivityController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneActivityController;->sInstance:Lcom/android/server/OemSceneActivityController;

    .line 80
    :cond_b
    sget-object v0, Lcom/android/server/OemSceneActivityController;->sInstance:Lcom/android/server/OemSceneActivityController;

    return-object v0
.end method

.method private updateActivityMode(IZ)V
    .registers 6
    .param p1, "activityLockMode"    # I
    .param p2, "enable"    # Z

    .line 132
    iget-object v0, p0, Lcom/android/server/OemSceneActivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    const/4 v1, 0x1

    if-eqz p2, :cond_f

    .line 134
    :try_start_6
    iget v2, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    shl-int/2addr v1, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    goto :goto_16

    .line 138
    :catchall_d
    move-exception v1

    goto :goto_18

    .line 136
    :cond_f
    iget v2, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    .line 138
    :goto_16
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_d

    throw v1
.end method


# virtual methods
.method public getAllowWhiteActivity()Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;
    .registers 2

    .line 93
    sget-object v0, Lcom/android/server/OemSceneActivityController;->mAllowWhiteActivity:Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    if-nez v0, :cond_b

    .line 94
    new-instance v0, Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;-><init>(Lcom/android/server/OemSceneActivityController;)V

    sput-object v0, Lcom/android/server/OemSceneActivityController;->mAllowWhiteActivity:Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    .line 95
    :cond_b
    sget-object v0, Lcom/android/server/OemSceneActivityController;->mAllowWhiteActivity:Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    return-object v0
.end method
