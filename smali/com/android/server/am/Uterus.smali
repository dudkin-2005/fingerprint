.class Lcom/android/server/am/Uterus;
.super Ljava/lang/Object;
.source "Uterus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Uterus$BirthRunnable;,
        Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;,
        Lcom/android/server/am/Uterus$InitiateRunnable;,
        Lcom/android/server/am/Uterus$EmbryoMemory;
    }
.end annotation


# static fields
.field private static final CRASH_COUNT_THRESHOLD:I = 0x3

.field private static final DEBUG:Z = true

.field private static final DEBUG_ONEPLUS:Z

.field private static final LOCAL_BLACKLIST_PATH:Ljava/lang/String; = "/data/system/embryo_black"

.field private static MAX:I = 0x0

.field private static final MDM_TAG:Ljava/lang/String; = "embryo_crash"

.field private static final PATH:Ljava/lang/String; = "/data/system/embryo"

.field private static final SCALE:J

.field private static final TAG:Ljava/lang/String; = "Embryo_Uterus"

.field private static final mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLocalBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/am/Uterus;


# instance fields
.field private final mAllSupervisorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private final mClaimedRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigUpdateRunnable:Ljava/lang/Runnable;

.field private final mCrashRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

.field private final mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/android/server/am/EmbryoHelper;

.field private mHomePackageName:Ljava/lang/String;

.field private mLRUHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private final mStub:Lcom/oneplus/embryo/IEmbryoController$Stub;

.field private final mSupervisors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Landroid/os/HandlerThread;

.field private final mTrimRunnable:Ljava/lang/Runnable;

.field private final mWaitingForAttach:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/Embryo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForPreload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/Embryo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    .line 52
    const-string/jumbo v0, "persist.sys.embryo.limit"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Uterus;->MAX:I

    .line 53
    const-string/jumbo v0, "persist.sys.embryo.scale"

    const-wide/32 v1, 0x36ee80

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/Uterus;->SCALE:J

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/android/server/am/Uterus;->MAX:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mClaimedRecord:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mCrashRecord:Ljava/util/Map;

    .line 92
    invoke-static {}, Lcom/android/server/am/EmbryoHelper;->getInstance()Lcom/android/server/am/EmbryoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    .line 587
    new-instance v0, Lcom/android/server/am/Uterus$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$3;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    .line 721
    new-instance v0, Lcom/android/server/am/Uterus$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$4;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    .line 796
    new-instance v0, Lcom/android/server/am/Uterus$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$5;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mStub:Lcom/oneplus/embryo/IEmbryoController$Stub;

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmbryoManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    .line 103
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method static synthetic access$1000()Ljava/util/ArrayList;
    .registers 1

    .line 48
    sget-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 48
    sget-boolean v0, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/Uterus;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Uterus;

    .line 48
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/Uterus;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Uterus;

    .line 48
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/Uterus;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/Uterus;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/Uterus;->flushToStorage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/Uterus;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/Uterus;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/Uterus;->updateLocalBlacklistToStorage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/Uterus;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Uterus;

    .line 48
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Uterus;

    .line 48
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .line 48
    sget v0, Lcom/android/server/am/Uterus;->MAX:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 48
    sput p0, Lcom/android/server/am/Uterus;->MAX:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/am/Uterus;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Uterus;

    .line 48
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Uterus;

    .line 48
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    return-object v0
.end method

.method private doCleanUp(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "dieList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1

    .line 131
    :try_start_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/EmbryoSupervisor;

    .line 133
    .local v4, "es":Lcom/android/server/am/EmbryoSupervisor;
    if-eqz v4, :cond_25

    .line 134
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_25
    iget-object v5, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3e7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/EmbryoSupervisor;

    move-object v4, v5

    .line 136
    if-eqz v4, :cond_44

    .line 137
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "es":Lcom/android/server/am/EmbryoSupervisor;
    :cond_44
    goto :goto_c

    .line 139
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_6c

    .line 140
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 141
    return-void

    .line 144
    :cond_4d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    .line 145
    .local v2, "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 146
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->setAbortion()V

    goto :goto_6a

    .line 148
    :cond_67
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V

    .line 150
    .end local v2    # "es":Lcom/android/server/am/EmbryoSupervisor;
    :goto_6a
    goto :goto_51

    .line 151
    :cond_6b
    return-void

    .line 139
    :catchall_6c
    move-exception v2

    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v2
.end method

.method private declared-synchronized flushToStorage()V
    .registers 14

    monitor-enter p0

    .line 320
    :try_start_1
    const-string v0, "Embryo_Uterus"

    const-string v1, "Flush to storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_9a

    .line 323
    :try_start_10
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1b

    .line 324
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_97

    monitor-exit p0

    return-void

    .line 325
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_97

    .line 327
    :try_start_25
    new-instance v1, Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;

    invoke-direct {v1}, Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_9a

    .line 330
    :try_start_2d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 331
    .local v1, "json":Lorg/json/JSONObject;
    const/4 v2, 0x1

    .line 332
    .local v2, "first":Z
    sget-wide v3, Lcom/android/server/am/Uterus;->SCALE:J

    .line 333
    .local v3, "normalized":J
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 334
    .local v5, "factor":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_83

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/EmbryoSupervisor;

    .line 335
    .local v8, "p":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/Uterus;->mHomePackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 338
    goto :goto_3b

    .line 341
    :cond_54
    if-eqz v2, :cond_67

    .line 342
    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-lez v9, :cond_66

    .line 343
    long-to-double v9, v3

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v11

    long-to-double v11, v11

    div-double v5, v9, v11

    .line 344
    :cond_66
    const/4 v2, 0x0

    .line 347
    :cond_67
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v9, "item":Lorg/json/JSONObject;
    const-string v10, "fg"

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v11, v5

    double-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 349
    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->dump()V

    .line 353
    .end local v8    # "p":Lcom/android/server/am/EmbryoSupervisor;
    .end local v9    # "item":Lorg/json/JSONObject;
    goto :goto_3b

    .line 354
    :cond_83
    const-string v7, "/data/system/embryo"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_8c} :catch_8d
    .catchall {:try_start_2d .. :try_end_8c} :catchall_9a

    .line 357
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "first":Z
    .end local v3    # "normalized":J
    .end local v5    # "factor":D
    goto :goto_95

    .line 355
    :catch_8d
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8e
    const-string v2, "Embryo_Uterus"

    const-string v3, "Embryo flush failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_9a

    .line 358
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_95
    monitor-exit p0

    return-void

    .line 326
    :catchall_97
    move-exception v2

    :try_start_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    .line 319
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    :catchall_9a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/Uterus;
    throw v0
.end method

.method public static getInstance()Lcom/android/server/am/Uterus;
    .registers 1

    .line 96
    sget-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Lcom/android/server/am/Uterus;

    invoke-direct {v0}, Lcom/android/server/am/Uterus;-><init>()V

    sput-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    .line 98
    :cond_b
    sget-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    return-object v0
.end method

.method private notifyMDM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Uterus$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/Uterus$2;-><init>(Lcom/android/server/am/Uterus;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method private declared-synchronized updateLocalBlacklistToStorage()V
    .registers 5

    monitor-enter p0

    .line 361
    :try_start_1
    const-string v0, "Embryo_Uterus"

    const-string v1, "Flush black list to storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_60

    if-nez v0, :cond_12

    .line 364
    monitor-exit p0

    return-void

    .line 368
    :cond_12
    :try_start_12
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 369
    .local v0, "json":Lorg/json/JSONArray;
    sget-object v1, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 370
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 371
    .end local v2    # "pkgName":Ljava/lang/String;
    goto :goto_1d

    .line 372
    :cond_2d
    sget-boolean v1, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4c

    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_4c
    const-string v1, "/data/system/embryo_black"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_55} :catch_56
    .catchall {:try_start_12 .. :try_end_55} :catchall_60

    .line 376
    .end local v0    # "json":Lorg/json/JSONArray;
    goto :goto_5e

    .line 374
    :catch_56
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    :try_start_57
    const-string v1, "Embryo_Uterus"

    const-string v2, "black list flush failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_60

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5e
    monitor-exit p0

    return-void

    .line 360
    :catchall_60
    move-exception v0

    monitor-exit p0

    .line 360
    .end local p0    # "this":Lcom/android/server/am/Uterus;
    throw v0
.end method


# virtual methods
.method public addClaimRecord(Ljava/lang/String;II)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I

    .line 459
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mClaimedRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .registers 11
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "newbie":Lcom/android/server/am/Embryo;
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v1

    .line 210
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Embryo;

    move-object v0, v2

    .line 211
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_93

    .line 212
    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 213
    return v1

    .line 215
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getUid()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    .line 216
    .local v2, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v2, :cond_25

    .line 217
    return v1

    .line 220
    :cond_25
    monitor-enter v2

    .line 221
    :try_start_26
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->needAbortion()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 223
    invoke-static {p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 225
    const-string v3, "Embryo_Uterus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Embryo abortion, pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 228
    :cond_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_90

    .line 233
    :try_start_49
    invoke-static {p2, v1}, Landroid/os/Process;->setProcessGroup(II)V

    .line 234
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 235
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v4, v3}, Lcom/android/server/am/EmbryoHelper;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    .line 236
    .local v4, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/am/Embryo;->setThread(Landroid/app/IApplicationThread;)V

    .line 237
    iget-object v5, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    monitor-enter v5
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_83

    .line 238
    :try_start_5c
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_80

    .line 241
    :try_start_66
    iget-object v5, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v5, v1}, Lcom/android/server/am/EmbryoHelper;->getCommonServicesLocked(Z)Landroid/util/ArrayMap;

    move-result-object v5

    .line 242
    .local v5, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz v5, :cond_75

    .line 243
    const-string v6, "embryo"

    iget-object v7, p0, Lcom/android/server/am/Uterus;->mStub:Lcom/oneplus/embryo/IEmbryoController$Stub;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_75
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v6}, Lcom/android/server/am/EmbryoHelper;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-interface {p1, v3, v4, v6, v5}, Landroid/app/IApplicationThread;->schedulePreload(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Ljava/util/Map;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7e} :catch_83

    .line 245
    const/4 v1, 0x1

    return v1

    .line 239
    .end local v5    # "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    :catchall_80
    move-exception v6

    :try_start_81
    monitor-exit v5
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    :try_start_82
    throw v6
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_83} :catch_83

    .line 246
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "ci":Landroid/content/res/CompatibilityInfo;
    :catch_83
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    .line 248
    monitor-enter v2

    .line 249
    :try_start_88
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 250
    monitor-exit v2

    .line 251
    return v1

    .line 250
    :catchall_8d
    move-exception v1

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_8d

    throw v1

    .line 228
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v1

    .line 211
    .end local v2    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :catchall_93
    move-exception v2

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v2
.end method

.method public cleanup()V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 398
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v0

    .line 399
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    .line 400
    .local v2, "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V

    .line 401
    .end local v2    # "es":Lcom/android/server/am/EmbryoSupervisor;
    goto :goto_e

    .line 402
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 403
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_4c

    .line 404
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1

    .line 405
    :try_start_27
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 406
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_49

    .line 407
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v0

    .line 408
    :try_start_30
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 409
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_46

    .line 410
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    monitor-enter v1

    .line 411
    :try_start_39
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 412
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_43

    .line 413
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    .line 414
    return-void

    .line 412
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    .line 409
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1

    .line 406
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0

    .line 403
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public disableEmbryoTemporary()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    .line 156
    .local v2, "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 157
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->setAbortion()V

    goto :goto_22

    .line 159
    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V

    .line 161
    .end local v2    # "es":Lcom/android/server/am/EmbryoSupervisor;
    :goto_22
    goto :goto_9

    .line 162
    :cond_23
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 163
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_36

    .line 165
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1

    .line 166
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw v0

    .line 163
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public dumpsys(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/Uterus;->MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v0

    .line 552
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waiting_for_attach:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_7f

    .line 554
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 555
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/Embryo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Embryo;

    .line 556
    .local v3, "embryo":Lcom/android/server/am/Embryo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waiting pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/Embryo;>;"
    .end local v3    # "embryo":Lcom/android/server/am/Embryo;
    goto :goto_47

    .line 559
    :cond_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_1a .. :try_end_80} :catchall_181

    .line 561
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    monitor-enter v1

    .line 562
    :try_start_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waiting_for_preload:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e8

    .line 564
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 565
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/Embryo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Embryo;

    .line 566
    .restart local v3    # "embryo":Lcom/android/server/am/Embryo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waiting pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/Embryo;>;"
    .end local v3    # "embryo":Lcom/android/server/am/Embryo;
    goto :goto_b0

    .line 569
    :cond_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_83 .. :try_end_e9} :catchall_17e

    .line 571
    new-instance v0, Lcom/android/server/am/Uterus$EmbryoMemory;

    invoke-direct {v0}, Lcom/android/server/am/Uterus$EmbryoMemory;-><init>()V

    .line 572
    .local v0, "total":Lcom/android/server/am/Uterus$EmbryoMemory;
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v2

    .line 573
    :try_start_f1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supervisors:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_112
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_122

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/EmbryoSupervisor;

    .line 575
    .local v3, "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v3, p1, v0}, Lcom/android/server/am/EmbryoSupervisor;->dump(Ljava/io/PrintWriter;Lcom/android/server/am/Uterus$EmbryoMemory;)V

    .line 576
    .end local v3    # "es":Lcom/android/server/am/EmbryoSupervisor;
    goto :goto_112

    .line 577
    :cond_122
    monitor-exit v2
    :try_end_123
    .catchall {:try_start_f1 .. :try_end_123} :catchall_17b

    .line 579
    iget v1, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    if-nez v1, :cond_128

    .line 580
    return-void

    .line 582
    :cond_128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Memory Usage: PSS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB, USS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avg. Memory Usage: PSS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    iget v4, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB, USS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    iget v4, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    return-void

    .line 577
    :catchall_17b
    move-exception v1

    :try_start_17c
    monitor-exit v2
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    throw v1

    .line 569
    .end local v0    # "total":Lcom/android/server/am/Uterus$EmbryoMemory;
    :catchall_17e
    move-exception v0

    :try_start_17f
    monitor-exit v1
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v0

    .line 559
    :catchall_181
    move-exception v1

    :try_start_182
    monitor-exit v0
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_181

    throw v1
.end method

.method public findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 171
    move-object v0, p1

    .line 172
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1

    .line 173
    :try_start_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_1c

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 176
    :cond_1c
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    monitor-exit v1

    return-object v2

    .line 177
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public finish(Lcom/android/server/am/EmbryoSupervisor;)V
    .registers 4
    .param p1, "supervisor"    # Lcom/android/server/am/EmbryoSupervisor;

    .line 285
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 181
    sget-object v0, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 182
    :try_start_3
    sget-object v1, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5b

    const-string v1, "com.android.cts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_5b

    .line 184
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_5d

    .line 187
    sget-object v1, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 188
    :try_start_19
    sget-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 189
    monitor-exit v1

    return-object v2

    .line 190
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_58

    .line 192
    move-object v0, p1

    .line 193
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v2

    .line 194
    const/16 v1, 0x3e7

    if-ne p2, v1, :cond_3f

    .line 195
    :try_start_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_3f

    .line 204
    :catchall_3d
    move-exception v1

    goto :goto_56

    .line 197
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/EmbryoSupervisor;

    .line 198
    .local v1, "p":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v1, :cond_54

    .line 199
    new-instance v3, Lcom/android/server/am/EmbryoSupervisor;

    invoke-direct {v3, p1, p2}, Lcom/android/server/am/EmbryoSupervisor;-><init>(Ljava/lang/String;I)V

    move-object v1, v3

    .line 201
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_54
    monitor-exit v2

    return-object v1

    .line 204
    .end local v1    # "p":Lcom/android/server/am/EmbryoSupervisor;
    :goto_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_2c .. :try_end_57} :catchall_3d

    throw v1

    .line 190
    .end local v0    # "pkgName":Ljava/lang/String;
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0

    .line 183
    :cond_5b
    :goto_5b
    :try_start_5b
    monitor-exit v0

    return-object v2

    .line 184
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public goingToSleep()V
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-eqz v0, :cond_14

    .line 451
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v0

    .line 452
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->stop()V

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    .line 454
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1

    .line 456
    :cond_14
    :goto_14
    return-void
.end method

.method public initLocalBlackList()V
    .registers 5

    .line 301
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/embryo_black"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 303
    return-void

    .line 306
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/Uterus$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method public initiate()V
    .registers 6

    .line 310
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/embryo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 312
    return-void

    .line 316
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/Uterus$InitiateRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/Uterus$InitiateRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/Uterus$1;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "versionName"    # Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mClaimedRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 465
    .local v0, "recordedPid":Ljava/lang/Integer;
    if-eqz v0, :cond_e8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p2, v1, :cond_e8

    .line 467
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCrashRecord:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 468
    .local v1, "count":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-eqz v1, :cond_ae

    .line 469
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_73

    .line 471
    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "over crash limit, add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to black list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/am/Uterus;->updateLocalBlackList(Ljava/lang/String;)V

    .line 473
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 474
    invoke-direct {p0, p1, p4}, Lcom/android/server/am/Uterus;->notifyMDM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    .line 477
    :cond_73
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mCrashRecord:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-boolean v2, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_e8

    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update crash record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 481
    :cond_ae
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mCrashRecord:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-boolean v2, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_e8

    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add crash record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " count 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v1    # "count":Ljava/lang/Integer;
    :cond_e8
    :goto_e8
    return-void
.end method

.method public prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V
    .registers 9
    .param p1, "supervisor"    # Lcom/android/server/am/EmbryoSupervisor;
    .param p2, "sec"    # I
    .param p3, "checkProcess"    # Z

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    monitor-enter p1

    .line 261
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 262
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 263
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 264
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_3f

    .line 267
    :cond_1b
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 268
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v0, v1

    .line 269
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_41

    .line 272
    new-instance v1, Lcom/android/server/am/Uterus$BirthRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/am/Uterus$BirthRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/Uterus$1;)V

    .line 273
    .local v1, "br":Lcom/android/server/am/Uterus$BirthRunnable;
    invoke-virtual {v1, p3}, Lcom/android/server/am/Uterus$BirthRunnable;->setCheckProcess(Z)V

    .line 274
    if-lez p2, :cond_39

    .line 275
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3e

    .line 277
    :cond_39
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 278
    :goto_3e
    return-void

    .line 265
    .end local v1    # "br":Lcom/android/server/am/Uterus$BirthRunnable;
    :cond_3f
    :goto_3f
    :try_start_3f
    monitor-exit p1

    return-void

    .line 269
    :catchall_41
    move-exception v1

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_41

    throw v1
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 509
    if-eqz p1, :cond_8f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_8

    goto/16 :goto_8f

    .line 512
    :cond_8
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 513
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_17

    .line 514
    return-void

    .line 518
    :cond_17
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v1, :cond_44

    .line 519
    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create Embryo failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pid=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    monitor-enter v0

    .line 521
    const/4 v1, 0x0

    :try_start_3c
    invoke-virtual {v0, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 522
    monitor-exit v0

    return-void

    .line 523
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_41

    throw v1

    .line 526
    :cond_44
    new-instance v1, Lcom/android/server/am/Embryo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/Embryo;-><init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 527
    .local v1, "newbie":Lcom/android/server/am/Embryo;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/Embryo;->setPid(I)V

    .line 529
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v2

    .line 530
    :try_start_57
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_8c

    .line 533
    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Embryo created."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 531
    :catchall_8c
    move-exception v3

    :try_start_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v3

    .line 510
    .end local v0    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    .end local v1    # "newbie":Lcom/android/server/am/Embryo;
    :cond_8f
    :goto_8f
    return-void
.end method

.method public resume(Ljava/lang/String;ZI)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHome"    # Z
    .param p3, "uid"    # I

    .line 417
    if-eqz p2, :cond_4

    .line 418
    iput-object p1, p0, Lcom/android/server/am/Uterus;->mHomePackageName:Ljava/lang/String;

    .line 420
    :cond_4
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 421
    .local v0, "next":Lcom/android/server/am/EmbryoSupervisor;
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-ne v0, v1, :cond_11

    .line 422
    return-void

    .line 425
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-eqz v1, :cond_22

    .line 426
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v1

    .line 427
    :try_start_18
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->stop()V

    .line 428
    monitor-exit v1

    goto :goto_22

    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v2

    .line 431
    :cond_22
    :goto_22
    if-nez v0, :cond_28

    .line 433
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    .line 434
    return-void

    .line 437
    :cond_28
    monitor-enter v0

    .line 438
    :try_start_29
    iput-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    .line 439
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->start()V

    .line 440
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_47

    .line 443
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    monitor-enter v1

    .line 444
    :try_start_34
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_44

    throw v2

    .line 440
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public scheduleBackup()V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Uterus$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/Uterus$1;-><init>(Lcom/android/server/am/Uterus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .registers 6
    .param p1, "list"    # Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 113
    .local v0, "tmp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 114
    :try_start_8
    sget-object v2, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, "pkg":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 116
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_e

    .line 117
    :cond_1e
    sget-object v2, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 118
    sget-object v2, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_34

    .line 121
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 122
    return-void

    .line 124
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/am/Uterus;->doCleanUp(Ljava/util/Set;)V

    .line 125
    return-void

    .line 119
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method public setMDMTracker(Lnet/oneplus/odm/insight/tracker/OSTracker;)V
    .registers 2
    .param p1, "tracker"    # Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 281
    iput-object p1, p0, Lcom/android/server/am/Uterus;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 282
    return-void
.end method

.method public shutdown()V
    .registers 1

    .line 392
    invoke-direct {p0}, Lcom/android/server/am/Uterus;->flushToStorage()V

    .line 393
    invoke-direct {p0}, Lcom/android/server/am/Uterus;->updateLocalBlacklistToStorage()V

    .line 394
    return-void
.end method

.method public trim()V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    return-void
.end method

.method public updateConfig()V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public updateLocalBlackList(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 502
    sget-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 503
    :try_start_3
    sget-object v1, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 505
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/Uterus;->doCleanUp(Ljava/util/Set;)V

    .line 506
    return-void

    .line 504
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
