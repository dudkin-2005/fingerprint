.class Lcom/android/server/am/EmbryoManager;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;,
        Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;,
        Lcom/android/server/am/EmbryoManager$UselessManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_ONEPLUS:Z

.field public static EMBRYO_CONFIG_NAME:Ljava/lang/String; = null

.field private static final ENABLE:Z

.field private static ENVIRONMENT:Z = false

.field private static final FLUSH_INTERVAL:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "EmbryoManager"

.field private static sHelper:Lcom/android/server/am/EmbryoHelper;

.field private static sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

.field private mEmbryoConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mHandler:Landroid/os/Handler;

.field private mLastFlush:J

.field private mPm:Landroid/os/PowerManager;

.field private mShuttingDown:Z

.field private final mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private final mUterus:Lcom/android/server/am/Uterus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-string/jumbo v0, "persist.sys.embryo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENABLE:Z

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    .line 55
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->DEBUG_ONEPLUS:Z

    .line 56
    const-string v0, "EmbryoConfig"

    sput-object v0, Lcom/android/server/am/EmbryoManager;->EMBRYO_CONFIG_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/android/server/am/EmbryoManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoManager$1;-><init>(Lcom/android/server/am/EmbryoManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Lcom/android/server/am/EmbryoManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoManager$2;-><init>(Lcom/android/server/am/EmbryoManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    invoke-static {}, Lcom/android/server/am/Uterus;->getInstance()Lcom/android/server/am/Uterus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    .line 121
    const-string v0, "EmbryoManager"

    const-string v1, "create Embryo Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/EmbryoManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/EmbryoManager$1;

    .line 50
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/EmbryoManager;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/EmbryoManager;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/EmbryoManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/EmbryoManager;

    .line 50
    iget-wide v0, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/am/EmbryoManager;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/EmbryoManager;
    .param p1, "x1"    # J

    .line 50
    iput-wide p1, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/am/EmbryoManager;)Lcom/android/server/am/Uterus;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/EmbryoManager;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/EmbryoManager;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/EmbryoManager;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/EmbryoManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/EmbryoManager;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->ENABLE:Z

    return v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/am/IEmbryoManager;
    .registers 1

    .line 73
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IEmbryoManager;
    .registers 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 62
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    if-eqz v0, :cond_7

    .line 63
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0

    .line 65
    :cond_7
    new-instance v0, Lcom/android/server/am/EmbryoHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoHelper;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    .line 66
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoHelper;->initEnvironment()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    .line 68
    new-instance v0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;-><init>(Lcom/android/server/am/EmbryoManager$1;)V

    sput-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    .line 69
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0
.end method

.method private static final isSupportType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "hostingType"    # Ljava/lang/String;

    .line 171
    const-string v0, "activity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "broadcast"

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 171
    :goto_14
    return v0
.end method

.method public static resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V
    .registers 12
    .param p0, "manager"    # Lcom/android/server/am/IEmbryoManager;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 418
    if-nez p1, :cond_a

    .line 419
    const-string v0, "EmbryoManager"

    const-string v1, "[OnlineConfig] embryo jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 423
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 423
    .local v1, "index":I
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c4

    .line 424
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 425
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "name":Ljava/lang/String;
    const-string v4, "embryo_blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 427
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 428
    .local v4, "blackAppListJsonArray":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    .local v5, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v6, v0

    .line 429
    .local v6, "i":I
    :goto_36
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_46

    .line 430
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 432
    .end local v6    # "i":I
    :cond_46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4f

    .line 433
    invoke-interface {p0, v5}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 434
    .end local v4    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v5    # "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4f
    goto/16 :goto_1c0

    .line 435
    :cond_51
    const-string v4, "embryo_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a0

    .line 436
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 437
    .local v4, "jasonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 438
    .local v6, "enable":Z
    const-string/jumbo v7, "persist.sys.embryo"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 439
    .local v5, "currStat":Z
    if-eq v6, v5, :cond_9e

    .line 440
    const-string/jumbo v7, "persist.sys.embryo"

    if-eqz v6, :cond_7e

    const-string v8, "1"

    goto :goto_80

    :cond_7e
    const-string v8, "0"

    :goto_80
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo enable "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-object v7, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->hotSwitch(ZZ)V

    .line 445
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    .end local v5    # "currStat":Z
    .end local v6    # "enable":Z
    :cond_9e
    goto/16 :goto_1c0

    .line 446
    :cond_a0
    const-string v4, "embryo_inflate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 447
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 448
    .restart local v4    # "jasonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 449
    .restart local v6    # "enable":Z
    const-string/jumbo v7, "persist.sys.embryo.inflate"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 450
    .restart local v5    # "currStat":Z
    if-eq v6, v5, :cond_e7

    .line 451
    const-string/jumbo v7, "persist.sys.embryo.inflate"

    if-eqz v6, :cond_cc

    const-string v8, "1"

    goto :goto_ce

    :cond_cc
    const-string v8, "0"

    :goto_ce
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo inflate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    .end local v5    # "currStat":Z
    .end local v6    # "enable":Z
    :cond_e7
    goto/16 :goto_1c0

    .line 455
    :cond_e9
    const-string v4, "embryo_support_optheme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_132

    .line 456
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 457
    .restart local v4    # "jasonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 458
    .restart local v6    # "enable":Z
    const-string/jumbo v7, "persist.sys.embryo.optheme"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 459
    .restart local v5    # "currStat":Z
    if-eq v6, v5, :cond_130

    .line 460
    const-string/jumbo v7, "persist.sys.embryo.optheme"

    if-eqz v6, :cond_115

    const-string v8, "1"

    goto :goto_117

    :cond_115
    const-string v8, "0"

    :goto_117
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo optheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    .end local v5    # "currStat":Z
    .end local v6    # "enable":Z
    :cond_130
    goto/16 :goto_1c0

    .line 464
    :cond_132
    const-string v4, "embryo_rename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 465
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 466
    .restart local v4    # "jasonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 467
    .restart local v6    # "enable":Z
    const-string/jumbo v7, "persist.sys.embryo.rename"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 468
    .restart local v5    # "currStat":Z
    if-eq v6, v5, :cond_179

    .line 469
    const-string/jumbo v7, "persist.sys.embryo.rename"

    if-eqz v6, :cond_15e

    const-string v8, "1"

    goto :goto_160

    :cond_15e
    const-string v8, "0"

    :goto_160
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    .end local v5    # "currStat":Z
    .end local v6    # "enable":Z
    :cond_179
    goto :goto_1c0

    .line 473
    :cond_17a
    const-string v4, "embryo_limit_count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 474
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 475
    .restart local v4    # "jasonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 476
    .local v5, "limitCount":I
    const-string/jumbo v6, "persist.sys.embryo.limit"

    const/16 v7, 0x20

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 477
    .local v6, "currVal":I
    if-eq v5, v6, :cond_1c0

    .line 478
    const-string/jumbo v7, "persist.sys.embryo.limit"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo limit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    .end local v5    # "limitCount":I
    .end local v6    # "currVal":I
    :cond_1c0
    :goto_1c0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 483
    .end local v1    # "index":I
    :cond_1c4
    const-string v0, "EmbryoManager"

    const-string v1, "[OnlineConfig] Embryo updated complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1cb} :catch_1cc

    .line 486
    goto :goto_1e7

    .line 484
    :catch_1cc
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e7
    return-void
.end method

.method private setupReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    iput-object p1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mPm:Landroid/os/PowerManager;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 132
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 271
    if-eqz p2, :cond_24

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_7

    goto :goto_24

    .line 275
    :cond_7
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 276
    return-void

    .line 280
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/Uterus;->resume(Ljava/lang/String;ZI)V

    .line 283
    return-void

    .line 272
    :cond_24
    :goto_24
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .registers 6
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .line 245
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Uterus;->attach(Landroid/app/IApplicationThread;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 246
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_a
    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Embryo attached, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->trim()V

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    .line 382
    .local p1, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    .line 383
    .local v0, "bgProcCount":I
    const/4 v1, 0x0

    .line 384
    .local v1, "positiveAdjProc":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_2f

    .line 385
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 386
    .local v4, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_21

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_21

    .line 388
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0xa

    if-lt v0, v5, :cond_21

    .line 389
    return v3

    .line 392
    :cond_21
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_2c

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_2c

    .line 394
    add-int/lit8 v1, v1, 0x1

    .line 384
    .end local v4    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 399
    .end local v2    # "i":I
    :cond_2f
    if-nez v1, :cond_3d

    .line 400
    const-string v2, "EmbryoManager"

    const-string v3, "clean embryo process"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v2}, Lcom/android/server/am/Uterus;->disableEmbryoTemporary()V

    .line 404
    :cond_3d
    const/4 v2, 0x0

    return v2
.end method

.method public cleanup()V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->cleanup()V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 415
    return-void
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 371
    const-string v0, "Enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Uterus;->dumpsys(Ljava/io/PrintWriter;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_23

    .line 377
    goto :goto_2b

    .line 375
    :catch_23
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmbryoManager"

    const-string v2, "error while dumpsys "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .registers 4

    .line 161
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/EmbryoManager;->EMBRYO_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    .local v0, "embryoGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/EmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    .line 163
    return-void
.end method

.method public goingToSleep()V
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->goingToSleep()V

    .line 263
    return-void
.end method

.method initOnlineConfig()V
    .registers 6

    .line 155
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;-><init>(Lcom/android/server/am/EmbryoManager;)V

    sget-object v4, Lcom/android/server/am/EmbryoManager;->EMBRYO_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mEmbryoConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 156
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mEmbryoConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 157
    return-void
.end method

.method public initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 147
    iput-object p2, p0, Lcom/android/server/am/EmbryoManager;->mHandler:Landroid/os/Handler;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/am/EmbryoManager;->setupReceiver(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/am/EmbryoManager;->initOnlineConfig()V

    .line 150
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    new-instance v1, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/Uterus;->setMDMTracker(Lnet/oneplus/odm/insight/tracker/OSTracker;)V

    .line 151
    const-string v0, "EmbryoManager"

    const-string/jumbo v1, "initiate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "versionName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/Uterus;->notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V

    .line 168
    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .registers 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    if-eqz p1, :cond_12d

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_9

    goto/16 :goto_12d

    .line 185
    :cond_9
    invoke-static {p2}, Lcom/android/server/am/EmbryoManager;->isSupportType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 186
    return-object v0

    .line 188
    :cond_10
    sget-object v1, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 189
    sget-boolean v1, Lcom/android/server/am/EmbryoManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_45

    const-string v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip obtain for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_45
    return-object v0

    .line 193
    :cond_46
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 196
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "sys.embryo.block"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 197
    const-string v2, "EmbryoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable embryo by property:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-object v0

    .line 201
    :cond_72
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 203
    return-object v0

    .line 208
    :cond_7d
    const-string v2, "activity"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 209
    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    goto :goto_9e

    .line 210
    :cond_94
    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    .line 212
    .local v2, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :goto_9e
    if-nez v2, :cond_a1

    .line 213
    return-object v0

    .line 215
    :cond_a1
    const/4 v3, 0x0

    .line 216
    .local v3, "thread":Landroid/app/IApplicationThread;
    monitor-enter v2

    .line 217
    :try_start_a3
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 218
    monitor-exit v2

    return-object v0

    .line 220
    :cond_ab
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->detach()Lcom/android/server/am/Embryo;

    move-result-object v4

    .line 224
    .local v4, "embryo":Lcom/android/server/am/Embryo;
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->match(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_e2

    .line 225
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->updateInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 227
    const-string v5, "EmbryoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not matched. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->destroy()V

    .line 229
    monitor-exit v2

    return-object v0

    .line 233
    :cond_e2
    const-string v0, "EmbryoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Embryo claimed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 235
    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v3, v0

    .line 237
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v6

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/am/Uterus;->addClaimRecord(Ljava/lang/String;II)V

    .line 238
    .end local v4    # "embryo":Lcom/android/server/am/Embryo;
    monitor-exit v2
    :try_end_124
    .catchall {:try_start_a3 .. :try_end_124} :catchall_12a

    .line 240
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, v2}, Lcom/android/server/am/Uterus;->finish(Lcom/android/server/am/EmbryoSupervisor;)V

    .line 241
    return-object v3

    .line 238
    :catchall_12a
    move-exception v0

    :try_start_12b
    monitor-exit v2
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    throw v0

    .line 183
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    :cond_12d
    :goto_12d
    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 340
    if-nez p1, :cond_3

    .line 341
    return-void

    .line 344
    :cond_3
    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 346
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_2b

    .line 347
    return-void

    .line 353
    :cond_2b
    monitor-enter v0

    .line 354
    :try_start_2c
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 355
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->setAbortion()V

    goto :goto_39

    .line 357
    :cond_36
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V

    .line 359
    :goto_39
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->setSelfUpdate()V

    .line 360
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_43

    .line 361
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Uterus;->finish(Lcom/android/server/am/EmbryoSupervisor;)V

    .line 362
    return-void

    .line 360
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p2, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    if-nez p1, :cond_3

    .line 313
    return-void

    .line 315
    :cond_3
    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageInstalled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 318
    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_55

    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip gen for pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_55
    return-void

    .line 322
    :cond_56
    invoke-virtual {p0, p2}, Lcom/android/server/am/EmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 323
    return-void

    .line 326
    :cond_5d
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/EmbryoHelper;->checkIfNewPackageIsLaunchable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 327
    return-void

    .line 329
    :cond_66
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 330
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 329
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 331
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_77

    .line 332
    return-void

    .line 335
    :cond_77
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V

    .line 336
    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p2, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz p1, :cond_91

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_91

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_91

    iget-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    if-eqz v0, :cond_10

    goto/16 :goto_91

    .line 290
    :cond_10
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 291
    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_45

    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip prepare for pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_45
    return-void

    .line 295
    :cond_46
    invoke-virtual {p0, p2}, Lcom/android/server/am/EmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 296
    return-void

    .line 299
    :cond_4d
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 300
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_5e

    .line 301
    return-void

    .line 304
    :cond_5e
    const-string v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V

    .line 308
    return-void

    .line 288
    .end local v0    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :cond_91
    :goto_91
    return-void
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 366
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Uterus;->processStarted(Lcom/android/server/am/ProcessRecord;)V

    .line 367
    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .registers 2
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 408
    invoke-static {p0, p1}, Lcom/android/server/am/EmbryoManager;->resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V

    .line 409
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .registers 4
    .param p1, "list"    # Ljava/util/List;

    .line 136
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Uterus;->setBlackList(Ljava/util/List;)V

    .line 137
    const-string v0, "EmbryoManager"

    const-string/jumbo v1, "update list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    .line 257
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->shutdown()V

    .line 258
    return-void
.end method

.method public updateConfig()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->updateConfig()V

    .line 142
    const-string v0, "EmbryoManager"

    const-string/jumbo v1, "update config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public wakingUp()V
    .registers 1

    .line 267
    return-void
.end method
