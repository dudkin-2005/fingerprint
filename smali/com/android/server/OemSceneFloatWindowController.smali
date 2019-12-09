.class public Lcom/android/server/OemSceneFloatWindowController;
.super Ljava/lang/Object;
.source "OemSceneFloatWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OemSceneFloatWindowController"

.field private static processesWithFloatingWindow:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/OemSceneFloatWindowController;

.field private static whiteListInBreathMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BLOCK:Z

.field private mContext:Landroid/content/Context;

.field private mFloatWindowController:Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 41
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneFloatWindowController;->DEBUG:Z

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/OemSceneFloatWindowController;->processesWithFloatingWindow:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.dialer"

    const-string v2, "com.android.phone"

    const-string v3, "com.oneplus.camera"

    const-string v4, "com.oneplus.gallery"

    const-string v5, "com.android.emergency"

    const-string v6, "com.android.server.telecom"

    const-string v7, "com.oneplus.brickmode"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/OemSceneFloatWindowController;->whiteListInBreathMode:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mLock:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneFloatWindowController;->BLOCK:Z

    .line 69
    iput-object p1, p0, Lcom/android/server/OemSceneFloatWindowController;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneFloatWindowController;
    .param p1, "x1"    # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneFloatWindowController;->updateFloatWindowMode(Z)V

    return-void
.end method

.method public static canEnterPictureInPicture(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 108
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 109
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_12

    goto :goto_19

    .line 110
    :cond_12
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/OemSceneFloatWindowController;->canEnterPictureInPictureInModes(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 109
    :cond_19
    :goto_19
    return v1

    .line 112
    :cond_1a
    return v1
.end method

.method private canEnterPictureInPictureInModes(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 116
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/OemSceneFloatWindowController;->BLOCK:Z

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    .line 118
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static canInitAppOpVisibilityLw(Ljava/lang/String;II)Z
    .registers 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 122
    invoke-static {p0, p1}, Lcom/android/server/OemSceneFloatWindowController;->canSetAppOpVisibilityLw(Ljava/lang/String;I)Z

    move-result v0

    .line 123
    .local v0, "ret":Z
    if-nez v0, :cond_f

    .line 124
    sget-object v1, Lcom/android/server/OemSceneFloatWindowController;->processesWithFloatingWindow:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_f
    return v0
.end method

.method public static canSetAppOpVisibilityLw(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 130
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 131
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_12

    goto :goto_19

    .line 132
    :cond_12
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/OemSceneFloatWindowController;->canSetAppOpVisibilityLwInModes(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 131
    :cond_19
    :goto_19
    return v1

    .line 134
    :cond_1a
    return v1
.end method

.method private canSetAppOpVisibilityLwInModes(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/OemSceneFloatWindowController;->BLOCK:Z

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    .line 140
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneFloatWindowController;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/android/server/OemSceneFloatWindowController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneFloatWindowController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    .line 65
    :cond_b
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    return-object v0
.end method

.method private killProcess(I)I
    .registers 6
    .param p1, "pid"    # I

    .line 167
    :try_start_0
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 171
    goto :goto_22

    .line 168
    :catch_4
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemSceneFloatWindowController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception# forceStopPkg: error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private updateFloatWindowMode(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .line 144
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/OemSceneFloatWindowController;->BLOCK:Z

    .line 146
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_bc

    .line 147
    if-eqz p1, :cond_80

    .line 148
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->getTouchWindow()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 149
    .local v0, "visiblePids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;>;"
    if-nez v0, :cond_19

    return-void

    .line 150
    :cond_19
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    .line 151
    .local v2, "value":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;
    const-string v3, "OemSceneFloatWindowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " w*h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v3, Lcom/android/server/OemSceneFloatWindowController;->whiteListInBreathMode:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 153
    goto :goto_21

    .line 154
    :cond_79
    iget v3, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneFloatWindowController;->killProcess(I)I

    .line 155
    .end local v2    # "value":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;
    goto :goto_21

    .line 156
    .end local v0    # "visiblePids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;>;"
    :cond_7f
    goto :goto_bb

    .line 157
    :cond_80
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->processesWithFloatingWindow:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 158
    .local v1, "pid":I
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneFloatWindowController;->killProcess(I)I

    .line 159
    const-string v2, "OemSceneFloatWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "kill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by brick mode!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v1    # "pid":I
    goto :goto_86

    .line 161
    :cond_b6
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->processesWithFloatingWindow:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 163
    :goto_bb
    return-void

    .line 146
    :catchall_bc
    move-exception v1

    :try_start_bd
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v1
.end method


# virtual methods
.method public getFloatWindowController()Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mFloatWindowController:Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;-><init>(Lcom/android/server/OemSceneFloatWindowController;)V

    iput-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mFloatWindowController:Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    .line 75
    :cond_b
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mFloatWindowController:Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    return-object v0
.end method
