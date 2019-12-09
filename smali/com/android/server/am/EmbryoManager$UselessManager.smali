.class final Lcom/android/server/am/EmbryoManager$UselessManager;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UselessManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/EmbryoManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/EmbryoManager$1;

    .line 489
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$UselessManager;-><init>()V

    return-void
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 515
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .registers 4
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    .line 553
    .local p1, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 535
    const-string v0, "Disabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .registers 1

    .line 558
    return-void
.end method

.method public goingToSleep()V
    .registers 1

    .line 519
    return-void
.end method

.method public initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 511
    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "versionName"    # Ljava/lang/String;

    .line 562
    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 531
    return-void
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .registers 3
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

    .line 527
    .local p2, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .registers 3
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

    .line 493
    .local p2, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    return-void
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 566
    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .registers 2
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 548
    invoke-static {p0, p1}, Lcom/android/server/am/EmbryoManager;->resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V

    .line 549
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .registers 2
    .param p1, "list"    # Ljava/util/List;

    .line 540
    return-void
.end method

.method public shutdown()V
    .registers 1

    .line 507
    return-void
.end method

.method public updateConfig()V
    .registers 1

    .line 544
    return-void
.end method

.method public wakingUp()V
    .registers 1

    .line 523
    return-void
.end method
