.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field private static final JOB_ID:I = 0x5039

.field private static final MAX_DEFERRAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field private static sKeyValueJobService:Landroid/content/ComponentName;

.field private static sNextScheduled:J

.field private static sScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 3

    .line 91
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 92
    :try_start_0
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 93
    const/16 v1, 0x5039

    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 94
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    .line 95
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static nextScheduled()J
    .locals 3

    .line 100
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-wide v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    monitor-exit v0

    return-wide v1

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .locals 9

    .line 55
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-boolean v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    if-eqz v1, :cond_0

    .line 57
    monitor-exit v0

    return-void

    .line 65
    :cond_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    invoke-virtual {p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v1

    .line 67
    invoke-virtual {p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupFuzzMilliseconds()J

    move-result-wide v3

    .line 68
    invoke-virtual {p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequiredNetworkType()I

    move-result v5

    .line 69
    invoke-virtual {p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequireCharging()Z

    move-result v6

    .line 70
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    const-wide/16 v7, 0x0

    cmp-long p3, p1, v7

    if-gtz p3, :cond_1

    .line 72
    :try_start_2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    long-to-int p2, v3

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr p1, v1

    .line 75
    :cond_1
    const-string p3, "KeyValueBackupJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling k/v pass in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    const-wide/16 v7, 0x3c

    div-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance p3, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x5039

    sget-object v2, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {p3, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 78
    invoke-virtual {p3, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    .line 79
    invoke-virtual {p3, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    .line 80
    invoke-virtual {p3, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    const-wide/32 v1, 0x5265c00

    .line 81
    invoke-virtual {p3, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    .line 82
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 83
    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    sput-wide v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    .line 86
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    .line 87
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    return-void

    .line 70
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 87
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V
    .locals 2

    .line 51
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 107
    const-class p1, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter p1

    .line 108
    const-wide/16 v0, 0x0

    :try_start_0
    sput-wide v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    .line 110
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object p1

    .line 115
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/backup/Trampoline;->backupNow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    :goto_0
    return v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 126
    const/4 p1, 0x0

    return p1
.end method
