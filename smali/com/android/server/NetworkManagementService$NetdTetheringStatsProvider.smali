.class Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .line 2012
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0

    .line 2012
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .locals 9

    .line 2017
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 2018
    new-instance p1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p1, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object p1

    .line 2023
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;

    move-result-object p1

    invoke-interface {p1}, Landroid/net/INetd;->tetherGetStats()Landroid/os/PersistableBundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2026
    nop

    .line 2028
    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2029
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->size()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2030
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 2032
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2033
    invoke-virtual {p1, v5}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    .line 2035
    :try_start_1
    iput-object v5, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 2036
    const/4 v7, -0x5

    iput v7, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2037
    iput v1, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 2038
    iput v1, v3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 2039
    aget-wide v7, v6, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2040
    aget-wide v7, v6, v0

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 2041
    const/4 v7, 0x2

    aget-wide v7, v6, v7

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 2042
    const/4 v7, 0x3

    aget-wide v6, v6, v7

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 2043
    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2046
    nop

    .line 2047
    goto :goto_0

    .line 2044
    :catch_0
    move-exception p1

    .line 2045
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tethering stats for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2049
    :cond_1
    return-object v2

    .line 2024
    :catch_1
    move-exception p1

    .line 2025
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "problem parsing tethering stats: "

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 0

    .line 2055
    return-void
.end method
