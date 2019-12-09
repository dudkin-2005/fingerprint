.class public Lcom/android/server/am/OnePlusIdleWhiltelistManager;
.super Ljava/lang/Object;
.source "OnePlusIdleWhiltelistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;,
        Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;
    }
.end annotation


# static fields
.field private static final IDLE_WHILTELIST_CONFIG_NAME:Ljava/lang/String; = "UidIdle"

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OnePlusIdleWhiltelistService"

.field private static mIdleWhitePkgLock:Ljava/lang/Object;


# instance fields
.field private mBackgroundWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsOOS:Z

.field private mOnePlusIdleWhiltelistConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

.field private mOnePlusIdleWhiltelistProject:I

.field private mServiceWhiteList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialIdleWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIdleWhitePkgLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mServiceWhiteList:Ljava/util/Map;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIsOOS:Z

    .line 60
    new-instance v0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;-><init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    .line 61
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusIdleWhiltelistManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusIdleWhiltelistManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    .line 44
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initServiceWhiteList()V
    .registers 5

    .line 180
    sget-object v0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIdleWhitePkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mServiceWhiteList:Ljava/util/Map;

    const-string v2, "com.tencent.mm/.booter.CoreService"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->printServiceWhiteList()V

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private initSpecialIdleWhiteList()V
    .registers 5

    .line 169
    sget-object v0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIdleWhitePkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    const-string v2, "com.tencent.mm"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    const-string v2, "com.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v1, "OnePlusIdleWhiltelistService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSpecialIdleWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private printServiceWhiteList()V
    .registers 8

    .line 190
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_73

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mServiceWhiteList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mServiceWhiteList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 194
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 196
    .local v4, "value":Ljava/lang/Boolean;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Boolean;
    goto :goto_1b

    .line 198
    :cond_5d
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "OnePlusIdleWhiltelistService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", $"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_73
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 11
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 100
    if-nez p1, :cond_a

    .line 101
    const-string v0, "OnePlusIdleWhiltelistService"

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 107
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 107
    .local v1, "index":I
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 108
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 109
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableProject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 110
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 111
    .local v3, "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    .line 107
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 116
    .end local v1    # "index":I
    :cond_35
    move v1, v0

    .line 116
    .restart local v1    # "index":I
    :goto_36
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_102

    .line 117
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 118
    .restart local v2    # "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mSpecialIdleWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 119
    iget-object v3, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    monitor-enter v3
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_53} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_53} :catch_14f
    .catchall {:try_start_c .. :try_end_53} :catchall_14c

    .line 120
    :try_start_53
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 121
    .local v4, "jArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 122
    move v5, v0

    .line 122
    .local v5, "i":I
    :goto_60
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7a

    .line 123
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_77

    .line 125
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v6    # "value":Ljava/lang/String;
    :cond_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 128
    .end local v4    # "jArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_7a
    monitor-exit v3

    goto/16 :goto_fe

    :catchall_7d
    move-exception v0

    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_53 .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v0

    .line 129
    :cond_80
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mBackgroundWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 130
    iget-object v3, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    monitor-enter v3
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_93} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_93} :catch_14f
    .catchall {:try_start_7f .. :try_end_93} :catchall_14c

    .line 131
    :try_start_93
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 132
    .restart local v4    # "jArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 133
    move v5, v0

    .line 133
    .restart local v5    # "i":I
    :goto_a0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_ba

    .line 134
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 135
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b7

    .line 136
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v6    # "value":Ljava/lang/String;
    :cond_b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 139
    .end local v4    # "jArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_ba
    monitor-exit v3

    goto :goto_fe

    :catchall_bc
    move-exception v0

    monitor-exit v3
    :try_end_be
    .catchall {:try_start_93 .. :try_end_be} :catchall_bc

    :try_start_be
    throw v0

    .line 141
    :cond_bf
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mServiceWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 142
    iget-object v3, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mServiceWhiteList:Ljava/util/Map;

    monitor-enter v3
    :try_end_d2
    .catch Lorg/json/JSONException; {:try_start_be .. :try_end_d2} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d2} :catch_14f
    .catchall {:try_start_be .. :try_end_d2} :catchall_14c

    .line 143
    :try_start_d2
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 144
    .restart local v4    # "jArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mServiceWhiteList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 145
    move v5, v0

    .line 145
    .restart local v5    # "i":I
    :goto_df
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_f6

    .line 146
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mServiceWhiteList:Ljava/util/Map;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_df

    .line 149
    .end local v5    # "i":I
    :cond_f6
    invoke-direct {p0}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->printServiceWhiteList()V

    .line 150
    .end local v4    # "jArray":Lorg/json/JSONArray;
    monitor-exit v3

    goto :goto_fe

    :catchall_fb
    move-exception v0

    monitor-exit v3
    :try_end_fd
    .catchall {:try_start_d2 .. :try_end_fd} :catchall_fb

    :try_start_fd
    throw v0
    :try_end_fe
    .catch Lorg/json/JSONException; {:try_start_fd .. :try_end_fe} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_fe} :catch_14f
    .catchall {:try_start_fd .. :try_end_fe} :catchall_14c

    .line 116
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_fe
    :goto_fe
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_36

    .line 161
    .end local v1    # "index":I
    :cond_102
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mOnePlusIdleWhiltelistProject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialIdleWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_139
    const-string v2, "[OnlineConfig] resolveConfigFromJSON mBackgroundWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    goto/16 :goto_1fc

    .line 161
    :catchall_14c
    move-exception v0

    goto/16 :goto_1fd

    .line 157
    :catch_14f
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    :try_start_150
    const-string v1, "OnePlusIdleWhiltelistService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16d
    .catchall {:try_start_150 .. :try_end_16d} :catchall_14c

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mOnePlusIdleWhiltelistProject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialIdleWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_139

    .line 154
    :catch_1a5
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1a6
    const-string v1, "OnePlusIdleWhiltelistService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1c3
    .catchall {:try_start_1a6 .. :try_end_1c3} :catchall_14c

    .line 161
    .end local v0    # "e":Lorg/json/JSONException;
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mOnePlusIdleWhiltelistProject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialIdleWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_139

    .line 166
    :goto_1fc
    return-void

    .line 161
    :goto_1fd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mOnePlusIdleWhiltelistProject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusIdleWhiltelistService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialIdleWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusIdleWhiltelistService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mBackgroundWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusIdleWhiltelistService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method


# virtual methods
.method public init()V
    .registers 1

    .line 204
    invoke-direct {p0}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->initSpecialIdleWhiteList()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->initServiceWhiteList()V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->initOnlineConfig()V

    .line 207
    return-void
.end method

.method public initOnlineConfig()V
    .registers 6

    .line 65
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;-><init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lcom/android/server/am/OnePlusIdleWhiltelistManager$1;)V

    const-string v4, "UidIdle"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 67
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 68
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 70
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIsOOS:Z

    .line 71
    return-void
.end method

.method public isBackgroundWhitelist(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 221
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_29

    .line 222
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBackgroundWhiteList.contains("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_29
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 224
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 225
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceNeeded(Lcom/android/server/am/ServiceRecord;)Z
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "result":Z
    if-eqz p1, :cond_18

    .line 240
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    .line 241
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mServiceWhiteList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 242
    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mServiceWhiteList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_18

    .line 243
    const/4 v0, 0x1

    .line 252
    .end local v1    # "name":Ljava/lang/String;
    :cond_18
    return v0
.end method

.method public shoudSkipIdle(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "skip":Z
    iget v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIsOOS:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    :cond_f
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIsOOS:Z

    if-nez v1, :cond_21

    iget v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    .line 213
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 214
    const/4 v0, 0x1

    .line 217
    :cond_21
    return v0
.end method
