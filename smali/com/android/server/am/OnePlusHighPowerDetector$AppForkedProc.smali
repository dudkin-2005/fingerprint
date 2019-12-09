.class public Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppForkedProc"
.end annotation


# instance fields
.field public IsAbn:Z

.field public curCpuTimeBgMonitor:J

.field public flags:I

.field private highCpuUsedCount:I

.field public lastCpuTimeBgMonitor:[J

.field public name:Ljava/lang/String;

.field public final pid:I

.field public pkgName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;I)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "increaseTime"    # I

    .line 4486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4475
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I

    .line 4478
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->IsAbn:Z

    .line 4481
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 4482
    const/4 v1, 0x4

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    .line 4484
    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    .line 4487
    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 4488
    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 4489
    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    .line 4490
    iget-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    int-to-long v3, p4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 4491
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1400()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4492
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_85

    aget-object v2, v1, v0

    if-eqz v2, :cond_85

    .line 4493
    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    .line 4495
    :try_start_35
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1400()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4496
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_84

    .line 4497
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_49} :catch_4a

    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_84

    .line 4498
    :catch_4a
    move-exception v0

    .line 4499
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 4500
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]err when get info of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4502
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_84
    :goto_84
    goto :goto_b6

    .line 4504
    :cond_85
    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] AppForkedProc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " can\'t find pkgName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    :goto_b6
    return-void
.end method


# virtual methods
.method public addHighCpuUsedCount()V
    .registers 2

    .line 4510
    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    .line 4511
    return-void
.end method

.method public addTime(J)V
    .registers 5
    .param p1, "time"    # J

    .line 4526
    iget-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 4527
    return-void
.end method

.method public getHighCpuUsedCount()I
    .registers 2

    .line 4518
    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    return v0
.end method

.method public isAbn()Z
    .registers 2

    .line 4536
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->IsAbn:Z

    return v0
.end method

.method public reduceHighCpuUsedCount()V
    .registers 2

    .line 4514
    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    .line 4515
    return-void
.end method

.method public resetAbn()V
    .registers 2

    .line 4533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->IsAbn:Z

    .line 4534
    return-void
.end method

.method public resetHighCpuUsedCount()V
    .registers 2

    .line 4522
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->highCpuUsedCount:I

    .line 4523
    return-void
.end method

.method public setAbn()V
    .registers 2

    .line 4530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->IsAbn:Z

    .line 4531
    return-void
.end method
