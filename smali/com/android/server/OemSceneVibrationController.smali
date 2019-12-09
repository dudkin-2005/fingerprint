.class public Lcom/android/server/OemSceneVibrationController;
.super Ljava/lang/Object;
.source "OemSceneVibrationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;,
        Lcom/android/server/OemSceneVibrationController$VibrationMode;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OemSceneVibrationController"

.field private static final VMODE_ALLOWALL:I

.field private static final VMODE_ALLOWWHITE:I

.field private static mAllowWhiteVibration:Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

.field private static sInstance:Lcom/android/server/OemSceneVibrationController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field private vibrationMode:I

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

    .line 50
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    .line 67
    sget-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_ALL:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneVibrationController;->VMODE_ALLOWALL:I

    .line 68
    sget-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_WHITE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneVibrationController;->VMODE_ALLOWWHITE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneVibrationController;->mHandler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneVibrationController;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.android.dialer"

    const-string v3, "com.android.phone"

    const-string v4, "com.oneplus.camera"

    const-string v5, "com.android.emergency"

    const-string v6, "com.android.server.telecom"

    const-string v7, "com.oneplus.brickmode"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/OemSceneVibrationController;->whiteListInBreathMode:Ljava/util/ArrayList;

    .line 87
    iput-object p1, p0, Lcom/android/server/OemSceneVibrationController;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneVibrationController;->mResolver:Landroid/content/ContentResolver;

    .line 90
    iget-object v1, p0, Lcom/android/server/OemSceneVibrationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_3a
    iput v0, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_3e

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneVibrationController;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OemSceneVibrationController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneVibrationController;->updateVibrationMode(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneVibrationController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneVibrationController;

    .line 47
    iget-object v0, p0, Lcom/android/server/OemSceneVibrationController;->whiteListInBreathMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/android/server/OemSceneVibrationController;->sInstance:Lcom/android/server/OemSceneVibrationController;

    if-nez v0, :cond_d

    .line 145
    const-string v0, "OemSceneVibrationController"

    const-string v1, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OemSceneVibrationController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneVibrationController;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/android/server/OemSceneVibrationController;->canVibrationGoInModes(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canVibrationGoInBreathMode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/server/OemSceneVibrationController;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 165
    sget-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "OemSceneVibrationController"

    const-string v1, "canVibrationGo => true in BreathMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 168
    :cond_15
    const-string v0, "OemSceneVibrationController"

    const-string v1, "forbid vibration in BreathMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method private canVibrationGoInModes(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 152
    iget v0, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    sget v1, Lcom/android/server/OemSceneVibrationController;->VMODE_ALLOWALL:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 153
    return v1

    .line 154
    :cond_9
    iget v0, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    sget v2, Lcom/android/server/OemSceneVibrationController;->VMODE_ALLOWWHITE:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 156
    invoke-direct {p0, p2}, Lcom/android/server/OemSceneVibrationController;->canVibrationGoInBreathMode(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 158
    :cond_15
    sget-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "OemSceneVibrationController"

    const-string v2, "canVibrationGo => true for DEFAULT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_20
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneVibrationController;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/android/server/OemSceneVibrationController;->sInstance:Lcom/android/server/OemSceneVibrationController;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Lcom/android/server/OemSceneVibrationController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneVibrationController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneVibrationController;->sInstance:Lcom/android/server/OemSceneVibrationController;

    .line 83
    :cond_b
    sget-object v0, Lcom/android/server/OemSceneVibrationController;->sInstance:Lcom/android/server/OemSceneVibrationController;

    return-object v0
.end method

.method private updateVibrationMode(IZ)V
    .registers 6
    .param p1, "vibrationLockMode"    # I
    .param p2, "enable"    # Z

    .line 134
    iget-object v0, p0, Lcom/android/server/OemSceneVibrationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    const/4 v1, 0x1

    if-eqz p2, :cond_f

    .line 136
    :try_start_6
    iget v2, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    shl-int/2addr v1, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    goto :goto_16

    .line 140
    :catchall_d
    move-exception v1

    goto :goto_18

    .line 138
    :cond_f
    iget v2, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    .line 140
    :goto_16
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_d

    throw v1
.end method


# virtual methods
.method public getAllowWhiteVibration()Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;
    .registers 2

    .line 96
    sget-object v0, Lcom/android/server/OemSceneVibrationController;->mAllowWhiteVibration:Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;-><init>(Lcom/android/server/OemSceneVibrationController;)V

    sput-object v0, Lcom/android/server/OemSceneVibrationController;->mAllowWhiteVibration:Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    .line 98
    :cond_b
    sget-object v0, Lcom/android/server/OemSceneVibrationController;->mAllowWhiteVibration:Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    return-object v0
.end method
