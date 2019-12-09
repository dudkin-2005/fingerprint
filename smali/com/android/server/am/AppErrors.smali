.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$ANRProcessInfo;,
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final sANRTime:J = 0x927c0L

.field private static final sANRcout:I = 0x3


# instance fields
.field private final mANRProcess:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppErrors$ANRProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 103
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 113
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mANRProcess:Landroid/util/ArrayMap;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 124
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 125
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 680
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 681
    return-object v1

    .line 684
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_13

    .line 685
    return-object v1

    .line 688
    :cond_13
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 689
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 690
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 691
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 692
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 693
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 695
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_69

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_42

    goto :goto_69

    .line 698
    :cond_42
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_6d

    .line 699
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 700
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 702
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 703
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 704
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_6d

    .line 696
    :cond_69
    :goto_69
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 697
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 707
    :cond_6d
    :goto_6d
    return-object v0
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 651
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 653
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 654
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 655
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 656
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 657
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 658
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 659
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 660
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 662
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 30
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 573
    iget-object v0, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v10, 0x0

    if-nez v0, :cond_e

    .line 574
    return v10

    .line 578
    :cond_e
    const/4 v11, 0x0

    if-eqz v8, :cond_17

    :try_start_11
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_18

    .line 603
    :catch_14
    move-exception v0

    goto/16 :goto_c1

    .line 578
    :cond_17
    move-object v0, v11

    .line 579
    .local v0, "name":Ljava/lang/String;
    :goto_18
    if-eqz v8, :cond_1d

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_1f

    :cond_1d
    move/from16 v1, p8

    :goto_1f
    move v6, v1

    .line 580
    .local v6, "pid":I
    if-eqz v8, :cond_27

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_29

    :cond_27
    move/from16 v1, p9

    :goto_29
    move v5, v1

    .line 581
    .local v5, "uid":I
    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object v13, v0

    move v14, v6

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v1

    invoke-interface/range {v12 .. v19}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 583
    const-string v1, "1"

    const-string/jumbo v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_82

    const-string v1, "Native crash"

    iget-object v2, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 585
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move v14, v5

    move v15, v6

    goto :goto_bf

    .line 588
    :cond_82
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-eqz v8, :cond_b7

    .line 591
    const/4 v13, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v14, v5

    move-object/from16 v5, p5

    .line 591
    .end local v5    # "uid":I
    .local v14, "uid":I
    move v15, v6

    move-object v6, v13

    .line 591
    .end local v6    # "pid":I
    .local v15, "pid":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 593
    const-string v1, "crash"

    invoke-virtual {v8, v1, v12}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_bf

    .line 597
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .restart local v5    # "uid":I
    .restart local v6    # "pid":I
    :cond_b7
    move v14, v5

    move v15, v6

    .line 597
    .end local v5    # "uid":I
    .end local v6    # "pid":I
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 598
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_bf} :catch_14

    .line 601
    :cond_bf
    :goto_bf
    return v12

    .line 606
    .end local v0    # "name":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    :cond_c0
    goto :goto_cd

    .line 603
    :goto_c1
    nop

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 605
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 607
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_cd
    return v10
.end method

.method static isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 914
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 915
    return v2

    .line 927
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingTopLocked()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1e

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 928
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v2, 0x0

    nop

    .line 927
    :cond_29
    :goto_29
    return v2
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 613
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 616
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 617
    const-string v3, "force-crash"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 1195
    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1198
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1199
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 1200
    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .registers 45
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "aboveSystem"    # Z
    .param p5, "annotation"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 937
    move-object/from16 v15, p5

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "anr_show_background"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_1c

    move v0, v11

    goto :goto_1d

    :cond_1c
    move v0, v3

    :goto_1d
    move/from16 v16, v0

    .line 939
    .local v16, "showANRinBackground":Z
    if-nez v16, :cond_29

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v11

    goto :goto_2a

    :cond_29
    move v0, v3

    :goto_2a
    move/from16 v17, v0

    .line 940
    .local v17, "isSilent":Z
    const-string v0, "ContentProvider"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "Input"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_4d

    if-eqz v17, :cond_4d

    .line 941
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/AppErrors;->forceStopAppForANRFrequency(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 942
    return-void

    .line 947
    :cond_4d
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 948
    .local v10, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    move-object v9, v0

    .line 953
    .local v9, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v0, :cond_61

    .line 954
    return-void

    .line 959
    :cond_61
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v8, 0x0

    if-eqz v0, :cond_8e

    .line 962
    :try_start_68
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-interface {v0, v4, v5, v15}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 964
    .local v0, "res":I
    if-gez v0, :cond_81

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_81

    .line 965
    const-string v4, "anr"

    invoke-virtual {v12, v4, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_81} :catch_82

    .line 970
    .end local v0    # "res":I
    :cond_81
    goto :goto_8e

    .line 967
    :catch_82
    move-exception v0

    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 969
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8e
    :goto_8e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 975
    .local v6, "anrTime":J
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 979
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a7

    move v0, v11

    goto :goto_a8

    :cond_a7
    move v0, v3

    :goto_a8
    move/from16 v18, v0

    .line 984
    .local v18, "showBackground":Z
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_ad
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 986
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_596

    if-eqz v0, :cond_e5

    .line 987
    :try_start_b6
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During shutdown skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    monitor-exit v4
    :try_end_d5
    .catchall {:try_start_b6 .. :try_end_d5} :catchall_d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1051
    :catchall_d9
    move-exception v0

    move-wide/from16 v24, v6

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    move-object v3, v15

    move/from16 v7, p4

    goto/16 :goto_5a0

    .line 989
    :cond_e5
    :try_start_e5
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->notResponding:Z
    :try_end_e7
    .catchall {:try_start_e5 .. :try_end_e7} :catchall_596

    if-eqz v0, :cond_10c

    .line 990
    :try_start_e9
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping duplicate ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    monitor-exit v4
    :try_end_108
    .catchall {:try_start_e9 .. :try_end_108} :catchall_d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 992
    :cond_10c
    :try_start_10c
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->crashing:Z
    :try_end_10e
    .catchall {:try_start_10c .. :try_end_10e} :catchall_596

    if-eqz v0, :cond_133

    .line 993
    :try_start_110
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashing app skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    monitor-exit v4
    :try_end_12f
    .catchall {:try_start_110 .. :try_end_12f} :catchall_d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 995
    :cond_133
    :try_start_133
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_596

    if-eqz v0, :cond_15a

    .line 996
    :try_start_137
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already killed by AM skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    monitor-exit v4
    :try_end_156
    .catchall {:try_start_137 .. :try_end_156} :catchall_d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 998
    :cond_15a
    :try_start_15a
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killed:Z
    :try_end_15c
    .catchall {:try_start_15a .. :try_end_15c} :catchall_596

    if-eqz v0, :cond_181

    .line 999
    :try_start_15e
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping died app ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    monitor-exit v4
    :try_end_17d
    .catchall {:try_start_15e .. :try_end_17d} :catchall_d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1005
    :cond_181
    :try_start_181
    iput-boolean v11, v12, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 1008
    const/16 v0, 0x7538

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v11

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v5, v2, v11

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1009
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v2, v8

    const/4 v5, 0x4

    aput-object v15, v2, v5

    .line 1008
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1012
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b6
    .catchall {:try_start_181 .. :try_end_1b6} :catchall_596

    .line 1015
    if-nez v18, :cond_1c0

    :try_start_1b8
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_1bc
    .catchall {:try_start_1b8 .. :try_end_1bc} :catchall_d9

    if-nez v0, :cond_1c0

    const/4 v0, 0x1

    goto :goto_1c1

    :cond_1c0
    move v0, v3

    .line 1018
    .local v0, "isSilentANR":Z
    :goto_1c1
    :try_start_1c1
    const-string/jumbo v2, "persist.sys.assert.enable"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1c8
    .catchall {:try_start_1c1 .. :try_end_1c8} :catchall_596

    .line 1019
    .local v2, "isAssert":Z
    if-eqz v2, :cond_1cb

    .line 1020
    const/4 v0, 0x0

    .line 1023
    :cond_1cb
    if-nez v0, :cond_2cc

    .line 1024
    :try_start_1cd
    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1cf
    .catchall {:try_start_1cd .. :try_end_1cf} :catchall_2c0

    .line 1025
    .local v5, "parentPid":I
    if-eqz v14, :cond_1e0

    :try_start_1d1
    iget-object v11, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_1e0

    iget-object v11, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v11, :cond_1e0

    .line 1026
    iget-object v11, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1df
    .catchall {:try_start_1d1 .. :try_end_1df} :catchall_d9

    move v5, v11

    .line 1028
    :cond_1e0
    :try_start_1e0
    iget v11, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1e2
    .catchall {:try_start_1e0 .. :try_end_1e2} :catchall_2c0

    if-eq v5, v11, :cond_1eb

    :try_start_1e4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1eb
    .catchall {:try_start_1e4 .. :try_end_1eb} :catchall_d9

    .line 1030
    :cond_1eb
    :try_start_1eb
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v8, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1ef
    .catchall {:try_start_1eb .. :try_end_1ef} :catchall_2c0

    if-eq v11, v8, :cond_1fe

    :try_start_1f1
    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v5, :cond_1fe

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1fe
    .catchall {:try_start_1f1 .. :try_end_1fe} :catchall_d9

    .line 1032
    :cond_1fe
    :try_start_1fe
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    .line 1032
    .local v8, "i":I
    :goto_208
    if-ltz v8, :cond_2cc

    .line 1033
    iget-object v11, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 1034
    .local v11, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_2af

    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2af

    .line 1035
    iget v3, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1036
    .local v3, "pid":I
    if-lez v3, :cond_2af

    move/from16 v24, v2

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1036
    .end local v2    # "isAssert":Z
    .local v24, "isAssert":Z
    if-eq v3, v2, :cond_2aa

    if-eq v3, v5, :cond_2aa

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v2, :cond_2aa

    .line 1037
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v2, :cond_254

    .line 1038
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v2, :cond_2aa

    const-string v2, "ActivityManager"

    move/from16 v25, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 1039
    .end local v5    # "parentPid":I
    .local v25, "parentPid":I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_242
    .catchall {:try_start_1fe .. :try_end_242} :catchall_2c0

    move-wide/from16 v26, v6

    :try_start_244
    const-string v6, "Adding persistent proc: "

    .line 1039
    .end local v6    # "anrTime":J
    .local v26, "anrTime":J
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b5

    .line 1040
    .end local v25    # "parentPid":I
    .end local v26    # "anrTime":J
    .restart local v5    # "parentPid":I
    .restart local v6    # "anrTime":J
    :cond_254
    move/from16 v25, v5

    move-wide/from16 v26, v6

    .line 1040
    .end local v5    # "parentPid":I
    .end local v6    # "anrTime":J
    .restart local v25    # "parentPid":I
    .restart local v26    # "anrTime":J
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_27e

    .line 1041
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v2, :cond_2b5

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding likely IME: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b5

    .line 1044
    :cond_27e
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1045
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v2, :cond_2b5

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding ANR proc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29d
    .catchall {:try_start_244 .. :try_end_29d} :catchall_29e

    .end local v3    # "pid":I
    .end local v11    # "r":Lcom/android/server/am/ProcessRecord;
    goto :goto_2b5

    .line 1051
    .end local v0    # "isSilentANR":Z
    .end local v8    # "i":I
    .end local v24    # "isAssert":Z
    .end local v25    # "parentPid":I
    :catchall_29e
    move-exception v0

    move/from16 v7, p4

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    move-object v3, v15

    move-wide/from16 v24, v26

    goto/16 :goto_5a0

    .line 1032
    .end local v26    # "anrTime":J
    .restart local v0    # "isSilentANR":Z
    .restart local v5    # "parentPid":I
    .restart local v6    # "anrTime":J
    .restart local v8    # "i":I
    .restart local v24    # "isAssert":Z
    :cond_2aa
    move/from16 v25, v5

    move-wide/from16 v26, v6

    .line 1032
    .end local v5    # "parentPid":I
    .end local v6    # "anrTime":J
    .restart local v25    # "parentPid":I
    .restart local v26    # "anrTime":J
    goto :goto_2b5

    .line 1032
    .end local v24    # "isAssert":Z
    .end local v25    # "parentPid":I
    .end local v26    # "anrTime":J
    .restart local v2    # "isAssert":Z
    .restart local v5    # "parentPid":I
    .restart local v6    # "anrTime":J
    :cond_2af
    move/from16 v24, v2

    move/from16 v25, v5

    move-wide/from16 v26, v6

    .line 1032
    .end local v2    # "isAssert":Z
    .end local v5    # "parentPid":I
    .end local v6    # "anrTime":J
    .restart local v24    # "isAssert":Z
    .restart local v25    # "parentPid":I
    .restart local v26    # "anrTime":J
    :cond_2b5
    :goto_2b5
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v24

    move/from16 v5, v25

    move-wide/from16 v6, v26

    const/4 v3, 0x0

    goto/16 :goto_208

    .line 1051
    .end local v0    # "isSilentANR":Z
    .end local v8    # "i":I
    .end local v24    # "isAssert":Z
    .end local v25    # "parentPid":I
    .end local v26    # "anrTime":J
    .restart local v6    # "anrTime":J
    :catchall_2c0
    move-exception v0

    move-wide/from16 v24, v6

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    move-object v3, v15

    move/from16 v7, p4

    .line 1051
    .end local v6    # "anrTime":J
    .restart local v26    # "anrTime":J
    goto/16 :goto_5a0

    .line 1051
    .end local v26    # "anrTime":J
    .restart local v0    # "isSilentANR":Z
    .restart local v6    # "anrTime":J
    :cond_2cc
    move-wide/from16 v26, v6

    .line 1051
    .end local v6    # "anrTime":J
    .restart local v26    # "anrTime":J
    :try_start_2ce
    monitor-exit v4
    :try_end_2cf
    .catchall {:try_start_2ce .. :try_end_2cf} :catchall_58b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v11, v0

    .line 1054
    .end local v0    # "isSilentANR":Z
    .local v11, "isSilentANR":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    .line 1055
    .local v8, "info":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1056
    const-string v0, "ANR in "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    if-eqz v13, :cond_2fc

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_2fc

    .line 1058
    const-string v0, " ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    :cond_2fc
    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v0, "PID: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    if-eqz v15, :cond_31f

    .line 1063
    const-string v0, "Reason: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    :cond_31f
    if-eqz v14, :cond_332

    if-eq v14, v13, :cond_332

    .line 1066
    const-string v0, "Parent: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_332
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v7, v0

    .line 1072
    .local v7, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/4 v0, 0x0

    .line 1073
    .local v0, "nativeProcs":[Ljava/lang/String;
    if-eqz v11, :cond_35e

    .line 1074
    const/4 v2, 0x0

    .line 1074
    .local v2, "i":I
    :goto_33d
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_35c

    .line 1075
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_358

    .line 1076
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object v0, v4

    .line 1077
    goto :goto_361

    .line 1074
    :cond_358
    const/4 v5, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_33d

    .line 1084
    .end local v2    # "i":I
    :cond_35c
    const/4 v5, 0x0

    goto :goto_361

    .line 1081
    :cond_35e
    const/4 v5, 0x0

    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 1084
    .end local v0    # "nativeProcs":[Ljava/lang/String;
    .local v6, "nativeProcs":[Ljava/lang/String;
    :goto_361
    move-object v6, v0

    if-nez v6, :cond_366

    const/4 v0, 0x0

    goto :goto_36a

    :cond_366
    invoke-static {v6}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    :goto_36a
    move-object v4, v0

    .line 1085
    .local v4, "pids":[I
    const/4 v0, 0x0

    .line 1087
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_38a

    .line 1088
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1089
    array-length v2, v4

    move v3, v5

    :goto_377
    if-ge v3, v2, :cond_38a

    aget v5, v4, v3

    .line 1090
    .local v5, "i":I
    move/from16 v29, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    .end local v5    # "i":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v29

    const/4 v5, 0x0

    goto :goto_377

    .line 1096
    :cond_38a
    move-object v5, v0

    .line 1098
    .end local v0    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_38f

    .line 1099
    const/4 v0, 0x0

    goto :goto_390

    :cond_38f
    move-object v0, v7

    :goto_390
    if-eqz v11, :cond_394

    .line 1096
    const/4 v2, 0x0

    goto :goto_395

    :cond_394
    move-object v2, v9

    :goto_395
    const/4 v3, 0x1

    invoke-static {v3, v10, v0, v2, v5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v19

    .line 1102
    .local v19, "tracesFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 1104
    .local v2, "cpuInfo":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1105
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 1106
    :try_start_3a5
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;
    :try_end_3a9
    .catchall {:try_start_3a5 .. :try_end_3a9} :catchall_56f

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-wide/from16 v2, v26

    :try_start_3af
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0
    :try_end_3b3
    .catchall {:try_start_3af .. :try_end_3b3} :catchall_558

    .line 1106
    .end local v26    # "anrTime":J
    .local v2, "anrTime":J
    .local v31, "cpuInfo":Ljava/lang/String;
    move-object/from16 v33, v0

    .line 1107
    .end local v31    # "cpuInfo":Ljava/lang/String;
    .local v33, "cpuInfo":Ljava/lang/String;
    :try_start_3b5
    monitor-exit v32
    :try_end_3b6
    .catchall {:try_start_3b5 .. :try_end_3b6} :catchall_53f

    .line 1108
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    move/from16 v34, v11

    move-object/from16 v11, v33

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    .end local v33    # "cpuInfo":Ljava/lang/String;
    .local v11, "cpuInfo":Ljava/lang/String;
    .local v34, "isSilentANR":Z
    invoke-virtual {v7, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    const-string v0, "ActivityManager"

    move-wide/from16 v35, v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1114
    .end local v2    # "anrTime":J
    .local v35, "anrTime":J
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    if-nez v19, :cond_3de

    .line 1117
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/os/Process;->sendSignal(II)V

    .line 1120
    :cond_3de
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1121
    if-nez v13, :cond_3e8

    const-string/jumbo v22, "unknown"

    goto :goto_3ec

    :cond_3e8
    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1122
    move-object/from16 v22, v2

    :goto_3ec
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_400

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_3fc

    .line 1123
    nop

    .line 1126
    const/16 v23, 0x2

    goto :goto_403

    .line 1124
    :cond_3fc
    nop

    .line 1126
    const/16 v23, 0x1

    goto :goto_403

    .line 1125
    :cond_400
    nop

    .line 1126
    const/16 v23, 0x0

    :goto_403
    if-eqz v12, :cond_413

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v2

    if-eqz v2, :cond_40f

    .line 1127
    nop

    .line 1120
    const/16 v28, 0x2

    goto :goto_416

    .line 1128
    :cond_40f
    nop

    .line 1120
    const/16 v28, 0x1

    goto :goto_416

    .line 1129
    :cond_413
    nop

    .line 1120
    const/16 v28, 0x0

    :goto_416
    move-wide/from16 v24, v35

    const/16 v2, 0x4f

    .line 1120
    .end local v35    # "anrTime":J
    .local v24, "anrTime":J
    const/16 v26, 0x1

    move-object/from16 v27, v4

    move-object v4, v0

    .line 1120
    .end local v4    # "pids":[I
    .local v27, "pids":[I
    move-object/from16 v29, v5

    move-object/from16 v5, v22

    .line 1120
    .end local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v29, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v22, v6

    move-object v6, v15

    .line 1120
    .end local v6    # "nativeProcs":[Ljava/lang/String;
    .local v22, "nativeProcs":[Ljava/lang/String;
    move-object/from16 v30, v7

    move/from16 v7, v23

    .line 1120
    .end local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v30, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object/from16 v37, v8

    move/from16 v8, v28

    .line 1120
    .end local v8    # "info":Ljava/lang/StringBuilder;
    .local v37, "info":Ljava/lang/StringBuilder;
    invoke-static/range {v2 .. v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 1130
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "anr"

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v4, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v20, v9

    move-object v9, v11

    .line 1130
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v20, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v23, v10

    move-object/from16 v10, v19

    .line 1130
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v23, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v21, v11

    move/from16 v15, v26

    move/from16 v14, v34

    move-object v11, v0

    .line 1130
    .end local v11    # "cpuInfo":Ljava/lang/String;
    .end local v34    # "isSilentANR":Z
    .local v14, "isSilentANR":Z
    .local v21, "cpuInfo":Ljava/lang/String;
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1133
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_4a3

    .line 1136
    :try_start_453
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_45b
    .catch Landroid/os/RemoteException; {:try_start_453 .. :try_end_45b} :catch_493

    .line 1137
    move-object/from16 v5, v37

    :try_start_45d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1136
    .end local v37    # "info":Ljava/lang/StringBuilder;
    .local v5, "info":Ljava/lang/StringBuilder;
    invoke-interface {v0, v2, v3, v4}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    .line 1138
    .local v2, "res":I
    if-eqz v2, :cond_48e

    .line 1139
    if-gez v2, :cond_476

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v3, :cond_476

    .line 1140
    const-string v0, "anr"

    invoke-virtual {v12, v0, v15}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_487

    .line 1142
    :cond_476
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_479
    .catch Landroid/os/RemoteException; {:try_start_45d .. :try_end_479} :catch_491

    :try_start_479
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1143
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1144
    monitor-exit v3
    :try_end_484
    .catchall {:try_start_479 .. :try_end_484} :catchall_488

    :try_start_484
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_487
    .catch Landroid/os/RemoteException; {:try_start_484 .. :try_end_487} :catch_491

    .line 1146
    :goto_487
    return-void

    .line 1144
    :catchall_488
    move-exception v0

    :try_start_489
    monitor-exit v3
    :try_end_48a
    .catchall {:try_start_489 .. :try_end_48a} :catchall_488

    :try_start_48a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_48e
    .catch Landroid/os/RemoteException; {:try_start_48a .. :try_end_48e} :catch_491

    .line 1151
    .end local v2    # "res":I
    :cond_48e
    nop

    .line 1154
    const/4 v3, 0x0

    goto :goto_4a6

    .line 1148
    :catch_491
    move-exception v0

    goto :goto_496

    .line 1148
    .end local v5    # "info":Ljava/lang/StringBuilder;
    .restart local v37    # "info":Ljava/lang/StringBuilder;
    :catch_493
    move-exception v0

    move-object/from16 v5, v37

    .line 1149
    .end local v37    # "info":Ljava/lang/StringBuilder;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "info":Ljava/lang/StringBuilder;
    :goto_496
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 1150
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1150
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4a6

    .line 1154
    .end local v5    # "info":Ljava/lang/StringBuilder;
    .restart local v37    # "info":Ljava/lang/StringBuilder;
    :cond_4a3
    move-object/from16 v5, v37

    const/4 v3, 0x0

    .line 1154
    .end local v37    # "info":Ljava/lang/StringBuilder;
    .restart local v5    # "info":Ljava/lang/StringBuilder;
    :goto_4a6
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_4a9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1155
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 1156
    if-eqz v14, :cond_4c3

    .line 1157
    const-string v0, "bg anr"

    invoke-virtual {v12, v0, v15}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1158
    monitor-exit v2
    :try_end_4bf
    .catchall {:try_start_4a9 .. :try_end_4bf} :catchall_533

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1162
    :cond_4c3
    nop

    .line 1163
    if-eqz v13, :cond_4c9

    :try_start_4c6
    iget-object v8, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;
    :try_end_4c8
    .catchall {:try_start_4c6 .. :try_end_4c8} :catchall_533

    goto :goto_4ca

    .line 1164
    :cond_4c9
    move-object v8, v3

    :goto_4ca
    move-object/from16 v3, p5

    if-eqz v3, :cond_4e4

    :try_start_4ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e6

    .line 1173
    :catchall_4e0
    move-exception v0

    move/from16 v7, p4

    goto :goto_538

    .line 1164
    :cond_4e4
    const-string v0, "ANR"

    .line 1165
    :goto_4e6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1162
    invoke-direct {v1, v12, v8, v0, v4}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1169
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1170
    new-instance v6, Lcom/android/server/am/AppNotRespondingDialog$Data;
    :try_end_4f6
    .catchall {:try_start_4ce .. :try_end_4f6} :catchall_4e0

    move/from16 v7, p4

    :try_start_4f8
    invoke-direct {v6, v12, v13, v7}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1172
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1173
    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit v2
    :try_end_505
    .catchall {:try_start_4f8 .. :try_end_505} :catchall_53d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1177
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mOpAms:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v6, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v4}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1182
    :try_start_513
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    if-nez v0, :cond_520

    .line 1183
    new-instance v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/am/AppErrors;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 1185
    :cond_520
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v14}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordAppAnr(Ljava/lang/String;Z)V
    :try_end_527
    .catch Ljava/lang/Exception; {:try_start_513 .. :try_end_527} :catch_528

    .line 1188
    goto :goto_532

    .line 1186
    :catch_528
    move-exception v0

    .line 1187
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_532
    return-void

    .line 1173
    :catchall_533
    move-exception v0

    move/from16 v7, p4

    move-object/from16 v3, p5

    :goto_538
    :try_start_538
    monitor-exit v2
    :try_end_539
    .catchall {:try_start_538 .. :try_end_539} :catchall_53d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_53d
    move-exception v0

    goto :goto_538

    .line 1107
    .end local v14    # "isSilentANR":Z
    .end local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v21    # "cpuInfo":Ljava/lang/String;
    .end local v22    # "nativeProcs":[Ljava/lang/String;
    .end local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "anrTime":J
    .end local v27    # "pids":[I
    .end local v29    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v2, "anrTime":J
    .restart local v4    # "pids":[I
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "nativeProcs":[Ljava/lang/String;
    .restart local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v8    # "info":Ljava/lang/StringBuilder;
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v11, "isSilentANR":Z
    .restart local v33    # "cpuInfo":Ljava/lang/String;
    :catchall_53f
    move-exception v0

    move-wide/from16 v24, v2

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    move-object/from16 v22, v6

    move-object/from16 v30, v7

    move-object v5, v8

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    move v14, v11

    move-object v3, v15

    move-object/from16 v21, v33

    move/from16 v7, p4

    move-object/from16 v2, v21

    .end local v2    # "anrTime":J
    .end local v4    # "pids":[I
    .end local v6    # "nativeProcs":[Ljava/lang/String;
    .end local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v8    # "info":Ljava/lang/StringBuilder;
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "isSilentANR":Z
    .end local v33    # "cpuInfo":Ljava/lang/String;
    .local v5, "info":Ljava/lang/StringBuilder;
    .restart local v14    # "isSilentANR":Z
    .restart local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v21    # "cpuInfo":Ljava/lang/String;
    .restart local v22    # "nativeProcs":[Ljava/lang/String;
    .restart local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "anrTime":J
    .restart local v27    # "pids":[I
    .restart local v29    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    goto :goto_587

    .line 1107
    .end local v14    # "isSilentANR":Z
    .end local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v21    # "cpuInfo":Ljava/lang/String;
    .end local v22    # "nativeProcs":[Ljava/lang/String;
    .end local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "anrTime":J
    .end local v27    # "pids":[I
    .end local v29    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v2    # "anrTime":J
    .restart local v4    # "pids":[I
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "nativeProcs":[Ljava/lang/String;
    .restart local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v8    # "info":Ljava/lang/StringBuilder;
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "isSilentANR":Z
    .restart local v31    # "cpuInfo":Ljava/lang/String;
    :catchall_558
    move-exception v0

    move-wide/from16 v24, v2

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    move-object/from16 v22, v6

    move-object/from16 v30, v7

    move-object v5, v8

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    move v14, v11

    move-object v3, v15

    move/from16 v7, p4

    move-object/from16 v2, v31

    .end local v2    # "anrTime":J
    .end local v4    # "pids":[I
    .end local v6    # "nativeProcs":[Ljava/lang/String;
    .end local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v8    # "info":Ljava/lang/StringBuilder;
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "isSilentANR":Z
    .local v5, "info":Ljava/lang/StringBuilder;
    .restart local v14    # "isSilentANR":Z
    .restart local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v22    # "nativeProcs":[Ljava/lang/String;
    .restart local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "anrTime":J
    .restart local v27    # "pids":[I
    .restart local v29    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    goto :goto_587

    .line 1107
    .end local v14    # "isSilentANR":Z
    .end local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "nativeProcs":[Ljava/lang/String;
    .end local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "anrTime":J
    .end local v27    # "pids":[I
    .end local v29    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v31    # "cpuInfo":Ljava/lang/String;
    .local v2, "cpuInfo":Ljava/lang/String;
    .restart local v4    # "pids":[I
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "nativeProcs":[Ljava/lang/String;
    .restart local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v8    # "info":Ljava/lang/StringBuilder;
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "isSilentANR":Z
    .restart local v26    # "anrTime":J
    :catchall_56f
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v29, v5

    move-object/from16 v22, v6

    move-object/from16 v30, v7

    move-object v5, v8

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    move v14, v11

    move-object v3, v15

    move-wide/from16 v24, v26

    move/from16 v7, p4

    move-object/from16 v27, v4

    .end local v4    # "pids":[I
    .end local v6    # "nativeProcs":[Ljava/lang/String;
    .end local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v8    # "info":Ljava/lang/StringBuilder;
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "isSilentANR":Z
    .end local v26    # "anrTime":J
    .local v5, "info":Ljava/lang/StringBuilder;
    .restart local v14    # "isSilentANR":Z
    .restart local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v22    # "nativeProcs":[Ljava/lang/String;
    .restart local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "anrTime":J
    .restart local v27    # "pids":[I
    .restart local v29    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    :goto_587
    :try_start_587
    monitor-exit v32
    :try_end_588
    .catchall {:try_start_587 .. :try_end_588} :catchall_589

    throw v0

    :catchall_589
    move-exception v0

    goto :goto_587

    .line 1051
    .end local v2    # "cpuInfo":Ljava/lang/String;
    .end local v5    # "info":Ljava/lang/StringBuilder;
    .end local v14    # "isSilentANR":Z
    .end local v19    # "tracesFile":Ljava/io/File;
    .end local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "nativeProcs":[Ljava/lang/String;
    .end local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "anrTime":J
    .end local v27    # "pids":[I
    .end local v29    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26    # "anrTime":J
    :catchall_58b
    move-exception v0

    move/from16 v7, p4

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    move-object v3, v15

    move-wide/from16 v24, v26

    .line 1051
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "anrTime":J
    .restart local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "anrTime":J
    goto :goto_5a0

    .line 1051
    .end local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "anrTime":J
    .local v6, "anrTime":J
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_596
    move-exception v0

    move-wide/from16 v24, v6

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    move-object v3, v15

    move/from16 v7, p4

    .line 1051
    .end local v6    # "anrTime":J
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v23    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "anrTime":J
    :goto_5a0
    :try_start_5a0
    monitor-exit v4
    :try_end_5a1
    .catchall {:try_start_5a0 .. :try_end_5a1} :catchall_5a5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5a5
    move-exception v0

    goto :goto_5a0
.end method

.method clearANRProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 298
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mANRProcess:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 303
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 422
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 424
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 426
    .local v2, "origId":J
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 428
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    nop

    .line 430
    return-void

    .line 428
    :catchall_14
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 43
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 435
    .local v14, "timeMillis":J
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 436
    .local v10, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 437
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 438
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v10, :cond_29

    if-eqz v0, :cond_29

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 440
    :cond_29
    if-eqz v10, :cond_2c

    .line 441
    move-object v0, v10

    .line 446
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :cond_2c
    :goto_2c
    move-object/from16 v16, v0

    if-eqz v12, :cond_3b

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_3b

    .line 447
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->notePersistentAppCrash(Landroid/content/Context;I)V

    .line 450
    :cond_3b
    new-instance v0, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v7, v0

    .line 452
    .local v7, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v8, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_21a

    .line 457
    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v10

    move-object/from16 v5, v16

    move-object v6, v9

    move-object v13, v7

    move-object/from16 v17, v8

    move-wide v7, v14

    .line 457
    .end local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "result":Lcom/android/server/am/AppErrorResult;
    move-wide/from16 v18, v14

    move-object v14, v9

    move/from16 v9, p3

    .line 457
    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v14, "stackTrace":Ljava/lang/String;
    .local v18, "timeMillis":J
    move-object v15, v10

    move/from16 v10, p4

    .line 457
    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v15, "shortMsg":Ljava/lang/String;
    :try_start_5a
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_215

    if-eqz v0, :cond_6b

    .line 459
    :try_start_60
    monitor-exit v17
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_65

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 495
    :catchall_65
    move-exception v0

    move-object v8, v13

    move-wide/from16 v6, v18

    goto/16 :goto_221

    .line 466
    :cond_6b
    if-eqz v12, :cond_76

    :try_start_6d
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v0, :cond_76

    .line 467
    monitor-exit v17
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_65

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 471
    :cond_76
    if-eqz v12, :cond_83

    .line 472
    :try_start_78
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_65

    .line 475
    :cond_83
    :try_start_83
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 476
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iput-object v13, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 477
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 480
    iput-object v14, v0, Lcom/android/server/am/AppErrorDialog$Data;->stackTrace:Ljava/lang/String;

    .line 485
    if-eqz v12, :cond_20d

    move-object v1, v11

    move-object v2, v12

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v5, v14

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 486
    move-object v8, v13

    move-wide/from16 v6, v18

    goto/16 :goto_210

    .line 489
    :cond_a2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 490
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 492
    iget-object v3, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 493
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 494
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v17
    :try_end_b5
    .catchall {:try_start_83 .. :try_end_b5} :catchall_215

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 497
    invoke-virtual {v13}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v0

    .line 499
    .local v0, "res":I
    const/4 v1, 0x0

    .line 500
    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v5, 0x13c

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 501
    const/4 v4, 0x6

    if-eq v0, v4, :cond_cd

    const/4 v4, 0x7

    if-ne v0, v4, :cond_cb

    goto :goto_cd

    .line 504
    .end local v0    # "res":I
    .local v4, "res":I
    :cond_cb
    :goto_cb
    move v4, v0

    goto :goto_cf

    .line 502
    .end local v4    # "res":I
    .restart local v0    # "res":I
    :cond_cd
    :goto_cd
    const/4 v0, 0x1

    goto :goto_cb

    .line 504
    .end local v0    # "res":I
    .restart local v4    # "res":I
    :goto_cf
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_d2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_200

    .line 505
    const/4 v0, 0x5

    if-ne v4, v0, :cond_e4

    .line 506
    :try_start_d8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_e4

    .line 557
    :catchall_dc
    move-exception v0

    move-object/from16 v36, v3

    move-object v8, v13

    move-wide/from16 v6, v18

    goto/16 :goto_206

    .line 508
    :cond_e4
    :goto_e4
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v4, v6, :cond_150

    .line 509
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "crash"

    invoke-virtual {v0, v12, v7, v2, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_ef
    .catchall {:try_start_d8 .. :try_end_ef} :catchall_dc

    .line 510
    if-eqz v3, :cond_150

    .line 512
    :try_start_f1
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 513
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 512
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_100
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f1 .. :try_end_100} :catch_101
    .catchall {:try_start_f1 .. :try_end_100} :catchall_dc

    .line 527
    goto :goto_150

    .line 514
    :catch_101
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_102
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_10d

    .line 518
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    goto :goto_10e

    :cond_10d
    const/4 v8, 0x0

    .line 519
    .local v8, "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_10e
    if-eqz v8, :cond_150

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_150

    .line 520
    iget-object v9, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v20

    iget v9, v3, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v10, v3, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    new-instance v7, Lcom/android/server/am/SafeActivityOptions;

    .line 523
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    iget v2, v3, Lcom/android/server/am/TaskRecord;->userId:I

    const/16 v33, 0x0

    const-string v34, "AppErrors"

    const/16 v35, 0x0

    .line 520
    move/from16 v21, v9

    move/from16 v22, p3

    move/from16 v23, p4

    move-object/from16 v24, v10

    move-object/from16 v25, v6

    move-object/from16 v31, v7

    move/from16 v32, v2

    invoke-virtual/range {v20 .. v35}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    .line 530
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_150
    :goto_150
    const/4 v2, 0x1

    if-ne v4, v2, :cond_17a

    .line 531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_157
    .catchall {:try_start_102 .. :try_end_157} :catchall_dc

    .line 534
    .local v6, "orig":J
    :try_start_157
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 535
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_171

    .line 536
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "crash"

    const/4 v8, 0x0

    invoke-virtual {v0, v12, v8, v8, v2}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 537
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_171
    .catchall {:try_start_157 .. :try_end_171} :catchall_175

    .line 540
    :cond_171
    :try_start_171
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    goto :goto_17a

    .line 540
    :catchall_175
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 543
    .end local v6    # "orig":J
    :cond_17a
    :goto_17a
    const/16 v0, 0x8

    if-ne v4, v0, :cond_1a8

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 546
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1a8
    .catchall {:try_start_171 .. :try_end_1a8} :catchall_dc

    .line 548
    :cond_1a8
    const/4 v0, 0x2

    if-ne v4, v0, :cond_1ba

    .line 549
    move-object v8, v13

    move-wide/from16 v6, v18

    move-object/from16 v2, p2

    :try_start_1b0
    invoke-virtual {v11, v12, v6, v7, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1b4
    .catchall {:try_start_1b0 .. :try_end_1b4} :catchall_1b6

    .line 551
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .local v0, "appErrorIntent":Landroid/content/Intent;
    .local v6, "timeMillis":J
    .local v8, "result":Lcom/android/server/am/AppErrorResult;
    move-object v1, v0

    goto :goto_1bf

    .line 557
    .end local v0    # "appErrorIntent":Landroid/content/Intent;
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    :catchall_1b6
    move-exception v0

    move-object/from16 v36, v3

    goto :goto_206

    .line 551
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "timeMillis":J
    :cond_1ba
    move-object v8, v13

    move-wide/from16 v6, v18

    move-object/from16 v2, p2

    .line 551
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_1bf
    if-eqz v12, :cond_1e2

    :try_start_1c1
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_1e2

    const/4 v9, 0x3

    if-eq v4, v9, :cond_1e2

    .line 554
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v10, v12, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_1d0
    .catchall {:try_start_1c1 .. :try_end_1d0} :catchall_1de

    .line 555
    move-object/from16 v36, v3

    :try_start_1d2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 555
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .local v36, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 554
    invoke-virtual {v0, v9, v10, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e4

    .line 557
    .end local v36    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_1de
    move-exception v0

    move-object/from16 v36, v3

    .line 557
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_206

    .line 557
    .end local v36    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1e2
    move-object/from16 v36, v3

    .line 557
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1e4
    monitor-exit v5
    :try_end_1e5
    .catchall {:try_start_1d2 .. :try_end_1e5} :catchall_20b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 559
    if-eqz v1, :cond_1ff

    .line 561
    :try_start_1ea
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1f6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1ea .. :try_end_1f6} :catch_1f7

    .line 564
    goto :goto_1ff

    .line 562
    :catch_1f7
    move-exception v0

    .line 563
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ActivityManager"

    const-string v3, "bug report receiver dissappeared"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1ff
    :goto_1ff
    return-void

    .line 557
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v36    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "timeMillis":J
    :catchall_200
    move-exception v0

    move-object/from16 v36, v3

    move-object v8, v13

    move-wide/from16 v6, v18

    .line 557
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v36    # "task":Lcom/android/server/am/TaskRecord;
    :goto_206
    :try_start_206
    monitor-exit v5
    :try_end_207
    .catchall {:try_start_206 .. :try_end_207} :catchall_20b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_20b
    move-exception v0

    goto :goto_206

    .line 486
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v4    # "res":I
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v36    # "task":Lcom/android/server/am/TaskRecord;
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "timeMillis":J
    :cond_20d
    move-object v8, v13

    move-wide/from16 v6, v18

    .line 486
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_210
    :try_start_210
    monitor-exit v17
    :try_end_211
    .catchall {:try_start_210 .. :try_end_211} :catchall_226

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 495
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "timeMillis":J
    :catchall_215
    move-exception v0

    move-object v8, v13

    move-wide/from16 v6, v18

    .line 495
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    goto :goto_221

    .line 495
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v15    # "shortMsg":Ljava/lang/String;
    .restart local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v9    # "stackTrace":Ljava/lang/String;
    .restart local v10    # "shortMsg":Ljava/lang/String;
    .local v14, "timeMillis":J
    :catchall_21a
    move-exception v0

    move-object/from16 v17, v8

    move-object v8, v7

    move-wide v6, v14

    move-object v14, v9

    move-object v15, v10

    .line 495
    .end local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v9    # "stackTrace":Ljava/lang/String;
    .end local v10    # "shortMsg":Ljava/lang/String;
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .local v14, "stackTrace":Ljava/lang/String;
    .restart local v15    # "shortMsg":Ljava/lang/String;
    :goto_221
    :try_start_221
    monitor-exit v17
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_226

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_226
    move-exception v0

    goto :goto_221
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 667
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 668
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_8

    .line 669
    const/4 v1, 0x0

    return-object v1

    .line 671
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 673
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 674
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 675
    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 198
    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a9

    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 201
    .local v5, "now":J
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 202
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 203
    .local v8, "processCount":I
    move/from16 v10, p3

    move v9, v3

    const/4 v3, 0x0

    .end local p3    # "needSep":Z
    .local v3, "ip":I
    .local v9, "printed":Z
    .local v10, "needSep":Z
    :goto_25
    if-ge v3, v8, :cond_ab

    .line 204
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 205
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 206
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 207
    .local v13, "uidCount":I
    move v14, v9

    const/4 v9, 0x0

    .local v9, "i":I
    .local v14, "printed":Z
    :goto_39
    if-ge v9, v13, :cond_a0

    .line 208
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 209
    .local v15, "puid":I
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 210
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_5d

    if-eqz v4, :cond_58

    move-object/from16 v16, v7

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 211
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 212
    goto :goto_5a

    .line 207
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_58
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :goto_5a
    move/from16 v19, v8

    goto :goto_99

    .line 214
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v15    # "puid":I
    :cond_5d
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_5f
    if-nez v14, :cond_6e

    .line 215
    if-eqz v10, :cond_66

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 216
    :cond_66
    const/4 v10, 0x1

    .line 217
    const-string v7, "  Time since processes crashed:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    const/4 v7, 0x1

    .line 220
    .end local v14    # "printed":Z
    .local v7, "printed":Z
    move v14, v7

    .end local v7    # "printed":Z
    .restart local v14    # "printed":Z
    :cond_6e
    const-string v7, "    Process "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    const-string v7, " uid "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 222
    const-string v7, ": last crashed "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move/from16 v19, v8

    sub-long v7, v5, v17

    .end local v8    # "processCount":I
    .local v19, "processCount":I
    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 224
    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :goto_99
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v19

    goto :goto_39

    .line 203
    .end local v9    # "i":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v19    # "processCount":I
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_a0
    move-object/from16 v16, v7

    move/from16 v19, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v19    # "processCount":I
    add-int/lit8 v3, v3, 0x1

    move v9, v14

    goto/16 :goto_25

    .line 229
    .end local v3    # "ip":I
    .end local v5    # "now":J
    .end local v10    # "needSep":Z
    .end local v14    # "printed":Z
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v19    # "processCount":I
    .restart local p3    # "needSep":Z
    :cond_a9
    move/from16 v10, p3

    .end local p3    # "needSep":Z
    .restart local v10    # "needSep":Z
    :cond_ab
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1af

    .line 230
    const/4 v3, 0x0

    .line 231
    .local v3, "printed":Z
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 232
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 233
    .local v5, "processCount":I
    move v6, v3

    const/4 v3, 0x0

    .local v3, "ip":I
    .local v6, "printed":Z
    :goto_c4
    if-ge v3, v5, :cond_1af

    .line 234
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 235
    .local v7, "pname":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 236
    .local v8, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 237
    .local v9, "uidCount":I
    move v11, v6

    const/4 v6, 0x0

    .local v6, "i":I
    .local v11, "printed":Z
    :goto_d8
    if-ge v6, v9, :cond_1a4

    .line 238
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 239
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 240
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_fb

    if-eqz v13, :cond_f5

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 241
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_fb

    .line 242
    nop

    .line 237
    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_f5
    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_19a

    .line 244
    .restart local v12    # "puid":I
    .restart local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_fb
    if-nez v11, :cond_109

    .line 245
    if-eqz v10, :cond_102

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 246
    :cond_102
    const/4 v10, 0x1

    .line 247
    const-string v14, "  Bad processes:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const/4 v11, 0x1

    .line 250
    :cond_109
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 251
    .local v14, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string v15, "    Bad process "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    const-string v15, " uid "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 253
    const-string v15, ": crashed at time "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v20, v4

    move/from16 v21, v5

    iget-wide v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v5    # "processCount":I
    .local v20, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v21, "processCount":I
    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 254
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v4, :cond_13b

    .line 255
    const-string v4, "      Short msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_13b
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v4, :cond_149

    .line 258
    const-string v4, "      Long msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    :cond_149
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v4, :cond_19a

    .line 261
    const-string v4, "      Stack:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    const/4 v4, 0x0

    .line 263
    .local v4, "lastPos":I
    move v5, v4

    const/4 v4, 0x0

    .local v4, "pos":I
    .local v5, "lastPos":I
    :goto_155
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v4, v15, :cond_17e

    .line 264
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0xa

    if-ne v15, v0, :cond_179

    .line 265
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v15, v4, v5

    invoke-virtual {v1, v0, v5, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 268
    add-int/lit8 v0, v4, 0x1

    .line 263
    .end local v5    # "lastPos":I
    .local v0, "lastPos":I
    move v5, v0

    .end local v0    # "lastPos":I
    .restart local v5    # "lastPos":I
    :cond_179
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_155

    .line 271
    .end local v4    # "pos":I
    :cond_17e
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_19a

    .line 272
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 237
    .end local v5    # "lastPos":I
    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    :cond_19a
    :goto_19a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v0, p0

    goto/16 :goto_d8

    .line 233
    .end local v6    # "i":I
    .end local v7    # "pname":Ljava/lang/String;
    .end local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v9    # "uidCount":I
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "processCount":I
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v5, "processCount":I
    :cond_1a4
    move-object/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v5    # "processCount":I
    .restart local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v21    # "processCount":I
    add-int/lit8 v3, v3, 0x1

    move v6, v11

    move-object/from16 v0, p0

    goto/16 :goto_c4

    .line 280
    .end local v3    # "ip":I
    .end local v11    # "printed":Z
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "processCount":I
    :cond_1af
    return v10
.end method

.method forceStopAppForANRFrequency(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1265
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mANRProcess:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;

    .line 1266
    .local v0, "curProcess":Lcom/android/server/am/AppErrors$ANRProcessInfo;
    const/4 v1, 0x0

    .line 1267
    .local v1, "isForceStop":Z
    const/4 v2, 0x1

    if-nez v0, :cond_1b

    .line 1268
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mANRProcess:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/server/am/AppErrors$ANRProcessInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, p1, v2}, Lcom/android/server/am/AppErrors$ANRProcessInfo;-><init>(JLjava/lang/String;I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    .line 1270
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->time:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    const/4 v4, 0x2

    if-gez v3, :cond_51

    iget v3, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    if-lt v3, v4, :cond_51

    .line 1271
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceStopPackage fo anr frequency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1273
    iget v3, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    .line 1274
    const/4 v1, 0x1

    goto :goto_6e

    .line 1275
    :cond_51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->time:J

    sub-long/2addr v7, v9

    cmp-long v3, v7, v5

    if-gez v3, :cond_66

    iget v3, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    if-ge v3, v4, :cond_66

    .line 1276
    iget v3, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    goto :goto_6e

    .line 1278
    :cond_66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->time:J

    .line 1279
    iput v2, v0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    .line 1282
    :goto_6e
    return v1
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 27
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 712
    move-object/from16 v3, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 713
    .local v10, "now":J
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v12, 0x0

    invoke-static {v0, v4, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_1c

    move v0, v13

    goto :goto_1d

    :cond_1c
    move v0, v12

    :goto_1d
    move v14, v0

    .line 716
    .local v14, "showBackground":Z
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_25

    move v0, v13

    goto :goto_26

    :cond_25
    move v0, v12

    :goto_26
    move v15, v0

    .line 721
    .local v15, "procIsBoundForeground":Z
    const/4 v0, 0x0

    .line 723
    .local v0, "tryAgain":Z
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_4a

    .line 724
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 725
    .local v4, "crashTime":Ljava/lang/Long;
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 727
    .local v5, "crashTimePersistent":Ljava/lang/Long;
    .local v9, "crashTimePersistent":Ljava/lang/Long;
    :goto_48
    move-object v9, v5

    goto :goto_4d

    .end local v4    # "crashTime":Ljava/lang/Long;
    .end local v5    # "crashTimePersistent":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    :cond_4a
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_48

    .restart local v4    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    :goto_4d
    move-object v8, v4

    .line 731
    .end local v4    # "crashTime":Ljava/lang/Long;
    .local v8, "crashTime":Ljava/lang/Long;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v13

    move v7, v0

    .end local v0    # "tryAgain":Z
    .local v4, "i":I
    .local v7, "tryAgain":Z
    :goto_56
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    const-wide/32 v4, 0xea60

    if-ltz v0, :cond_8f

    .line 734
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 736
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v12, v6, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v12, v4

    cmp-long v4, v10, v12

    if-lez v4, :cond_6f

    .line 737
    const/4 v4, 0x1

    iput v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_75

    .line 739
    :cond_6f
    const/4 v4, 0x1

    iget v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v4

    iput v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 743
    :goto_75
    iget v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v4, v4

    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v4, v4, v12

    if-gez v4, :cond_8a

    iget-boolean v4, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_88

    if-eqz v15, :cond_8a

    .line 745
    :cond_88
    const/4 v4, 0x1

    .line 731
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "tryAgain":Z
    .local v4, "tryAgain":Z
    move v7, v4

    .end local v4    # "tryAgain":Z
    .restart local v7    # "tryAgain":Z
    :cond_8a
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "i":I
    .local v4, "i":I
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_56

    .line 749
    .end local v4    # "i":I
    :cond_8f
    if-eqz v8, :cond_167

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v4

    cmp-long v0, v10, v12

    if-gez v0, :cond_167

    .line 752
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has crashed too many times: killing!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v0, 0x7550

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 755
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v5, v12

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v6, v5, v12

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v5, v12

    .line 754
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 756
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 757
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_155

    .line 762
    const/16 v0, 0x753f

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v12

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 764
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_136

    .line 767
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v4, v5

    move/from16 v16, v15

    move-object v15, v5

    move-wide v5, v10

    .end local v15    # "procIsBoundForeground":Z
    .local v16, "procIsBoundForeground":Z
    move-wide/from16 v17, v10

    move v10, v7

    move-object/from16 v7, p3

    .end local v7    # "tryAgain":Z
    .local v10, "tryAgain":Z
    .local v17, "now":J
    move-object v11, v8

    move-object/from16 v8, p4

    .end local v8    # "crashTime":Ljava/lang/Long;
    .local v11, "crashTime":Ljava/lang/Long;
    move-object/from16 v19, v11

    move-object v11, v9

    move-object/from16 v9, p5

    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v11, "crashTimePersistent":Ljava/lang/Long;
    .local v19, "crashTime":Ljava/lang/Long;
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13, v15}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_13e

    .line 771
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_136
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :goto_13e
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 772
    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 776
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "crash"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v10, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 777
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 778
    if-nez v14, :cond_15d

    .line 779
    return v5

    .line 782
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_155
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :cond_15d
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 795
    move-object/from16 v6, p2

    goto :goto_18e

    .line 784
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_167
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 785
    move-object/from16 v6, p2

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 786
    .local v0, "affectedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_17d

    .line 787
    iput-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 789
    :cond_17d
    if-eqz v3, :cond_18e

    if-eqz v11, :cond_18e

    .line 790
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v4

    cmp-long v4, v17, v7

    if-gez v4, :cond_18e

    .line 791
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .end local v0    # "affectedTask":Lcom/android/server/am/TaskRecord;
    goto :goto_18f

    .line 795
    :cond_18e
    :goto_18e
    const/4 v4, 0x1

    :goto_18f
    if-eqz v3, :cond_195

    if-eqz v10, :cond_195

    .line 796
    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 803
    :cond_195
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 804
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v0, :cond_1ea

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ea

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-nez v0, :cond_1ea

    .line 806
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .local v0, "activityNdx":I
    :goto_1b4
    move v5, v0

    .end local v0    # "activityNdx":I
    .local v5, "activityNdx":I
    if-ltz v5, :cond_1ea

    .line 807
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 808
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 809
    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clearing package preferred activities from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :try_start_1dc
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 812
    invoke-interface {v0, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1dc .. :try_end_1e5} :catch_1e6

    .line 815
    goto :goto_1e7

    .line 813
    :catch_1e6
    move-exception v0

    .line 806
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1e7
    :goto_1e7
    add-int/lit8 v0, v5, -0x1

    .end local v5    # "activityNdx":I
    .restart local v0    # "activityNdx":I
    goto :goto_1b4

    .line 820
    .end local v0    # "activityNdx":I
    :cond_1ea
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_20f

    .line 823
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move-wide/from16 v8, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .end local v17    # "now":J
    .local v8, "now":J
    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_211

    .line 827
    .end local v8    # "now":J
    .restart local v17    # "now":J
    :cond_20f
    move-wide/from16 v8, v17

    .end local v17    # "now":J
    .restart local v8    # "now":J
    :goto_211
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_21e

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 828
    :cond_21e
    const/4 v5, 0x1

    return v5
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .registers 28
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1203
    const/4 v2, 0x0

    .line 1204
    .local v2, "dialogToShow":Landroid/app/Dialog;
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_ba

    .line 1205
    move-object/from16 v4, p1

    :try_start_b
    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1206
    .local v0, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v5, v0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1207
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_20

    .line 1208
    const-string v6, "ActivityManager"

    const-string/jumbo v7, "handleShowAnrUi: proc is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_b8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1211
    :cond_20
    :try_start_20
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/16 v7, 0x13d

    if-eqz v6, :cond_47

    .line 1212
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has anr dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1215
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_b8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1218
    :cond_47
    :try_start_47
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ANR"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v6, "intent":Landroid/content/Intent;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v8, :cond_59

    .line 1220
    const/high16 v8, 0x50000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1223
    :cond_59
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    const/16 v25, 0x0

    move-object v12, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1227
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "anr_show_background"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_89

    const/4 v10, 0x1

    nop

    :cond_89
    move v8, v10

    .line 1229
    .local v8, "showBackground":Z
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v9

    if-nez v9, :cond_a2

    if-eqz v8, :cond_95

    goto :goto_a2

    .line 1233
    :cond_95
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-static {v9, v7, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1236
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .line 1236
    .end local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "showBackground":Z
    goto :goto_ae

    .line 1230
    .restart local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "showBackground":Z
    :cond_a2
    :goto_a2
    new-instance v7, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9, v10, v0}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    move-object v2, v7

    .line 1231
    iput-object v2, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1238
    .end local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "showBackground":Z
    :goto_ae
    monitor-exit v3
    :try_end_af
    .catchall {:try_start_47 .. :try_end_af} :catchall_b8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1240
    if-eqz v2, :cond_b7

    .line 1241
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1243
    :cond_b7
    return-void

    .line 1238
    :catchall_b8
    move-exception v0

    goto :goto_bd

    :catchall_ba
    move-exception v0

    move-object/from16 v4, p1

    :goto_bd
    :try_start_bd
    monitor-exit v3
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_b8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 23
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 832
    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 833
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v5

    :goto_1b
    move v6, v0

    .line 836
    .local v6, "showBackground":Z
    const/4 v7, 0x0

    .line 839
    .local v7, "dialogToShow":Lcom/android/server/am/AppErrorDialog;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 840
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 841
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 842
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v0, :cond_36

    .line 843
    const-string v4, "ActivityManager"

    const-string/jumbo v5, "handleShowAppErrorUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    monitor-exit v8
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_17e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 846
    :cond_36
    :try_start_36
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 847
    .local v10, "packageName":Ljava/lang/String;
    iget v11, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 848
    .local v11, "userId":I
    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v12, :cond_62

    .line 849
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-eqz v9, :cond_5d

    .line 851
    sget v4, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 853
    :cond_5d
    monitor-exit v8
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_17e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 855
    :cond_62
    :try_start_62
    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v13, 0x2710

    if-lt v12, v13, :cond_74

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v12, v13, :cond_74

    const/4 v12, 0x1

    goto :goto_75

    :cond_74
    move v12, v5

    .line 858
    .local v12, "isBackground":Z
    :goto_75
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v13

    array-length v14, v13

    move v15, v12

    move v12, v5

    .line 858
    .end local v12    # "isBackground":Z
    .local v15, "isBackground":Z
    :goto_80
    if-ge v12, v14, :cond_94

    aget v16, v13, v12

    move/from16 v17, v16

    .line 859
    .local v17, "profileId":I
    move/from16 v4, v17

    if-eq v11, v4, :cond_8d

    .line 859
    .end local v17    # "profileId":I
    .local v4, "profileId":I
    const/16 v16, 0x1

    goto :goto_8f

    :cond_8d
    move/from16 v16, v5

    :goto_8f
    and-int v15, v15, v16

    .line 858
    .end local v4    # "profileId":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_80

    .line 861
    :cond_94
    if-eqz v15, :cond_bf

    if-nez v6, :cond_bf

    .line 862
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": background"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    if-eqz v9, :cond_ba

    .line 864
    sget v4, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 866
    :cond_ba
    monitor-exit v8
    :try_end_bb
    .catchall {:try_start_62 .. :try_end_bb} :catchall_17e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 868
    :cond_bf
    :try_start_bf
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 869
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v12, "show_first_crash_dialog"

    .line 868
    invoke-static {v4, v12, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d0

    const/4 v4, 0x1

    goto :goto_d1

    :cond_d0
    move v4, v5

    .line 871
    .local v4, "showFirstCrash":Z
    :goto_d1
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 872
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog_dev_option"

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 875
    invoke-virtual {v14}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v14

    .line 871
    invoke-static {v12, v13, v5, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_ea

    const/4 v12, 0x1

    goto :goto_eb

    :cond_ea
    move v12, v5

    .line 876
    .local v12, "showFirstCrashDevOption":Z
    :goto_eb
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v13, :cond_fd

    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 877
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_fd

    const/4 v13, 0x1

    goto :goto_fe

    :cond_fd
    move v13, v5

    .line 880
    .local v13, "crashSilenced":Z
    :goto_fe
    if-eqz v0, :cond_109

    invoke-static {v0}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-nez v14, :cond_109

    const/16 v18, 0x1

    goto :goto_10b

    :cond_109
    move/from16 v18, v5

    :goto_10b
    move/from16 v14, v18

    .line 881
    .local v14, "isSilentCrash":Z
    const-string/jumbo v5, "persist.sys.assert.enable"

    const/4 v2, 0x0

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 882
    .local v2, "isAssert":Z
    if-nez v2, :cond_11b

    if-nez v4, :cond_11b

    if-eqz v12, :cond_11c

    .line 883
    :cond_11b
    const/4 v14, 0x0

    .line 885
    :cond_11c
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v5

    if-nez v5, :cond_12c

    if-eqz v6, :cond_127

    goto :goto_12c

    .line 893
    :cond_127
    move/from16 v19, v2

    move/from16 v20, v4

    goto :goto_14d

    .line 885
    :cond_12c
    :goto_12c
    if-nez v13, :cond_149

    if-nez v4, :cond_138

    if-nez v12, :cond_138

    iget-boolean v5, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v5, :cond_127

    if-nez v14, :cond_127

    .line 889
    :cond_138
    new-instance v5, Lcom/android/server/am/AppErrorDialog;

    move/from16 v19, v2

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 889
    .end local v2    # "isAssert":Z
    .local v19, "isAssert":Z
    move/from16 v20, v4

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 889
    .end local v4    # "showFirstCrash":Z
    .local v20, "showFirstCrash":Z
    invoke-direct {v5, v2, v4, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    move-object v7, v5

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    goto :goto_154

    .line 893
    .end local v19    # "isAssert":Z
    .end local v20    # "showFirstCrash":Z
    .restart local v2    # "isAssert":Z
    .restart local v4    # "showFirstCrash":Z
    :cond_149
    move/from16 v19, v2

    move/from16 v20, v4

    .line 893
    .end local v2    # "isAssert":Z
    .end local v4    # "showFirstCrash":Z
    .restart local v19    # "isAssert":Z
    .restart local v20    # "showFirstCrash":Z
    :goto_14d
    if-eqz v9, :cond_154

    .line 894
    sget v2, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 897
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v12    # "showFirstCrashDevOption":Z
    .end local v13    # "crashSilenced":Z
    .end local v14    # "isSilentCrash":Z
    .end local v15    # "isBackground":Z
    .end local v19    # "isAssert":Z
    .end local v20    # "showFirstCrash":Z
    :cond_154
    :goto_154
    monitor-exit v8
    :try_end_155
    .catchall {:try_start_bf .. :try_end_155} :catchall_17e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v0, v10

    .line 897
    .end local v10    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    move v2, v11

    .line 899
    .end local v11    # "userId":I
    .local v2, "userId":I
    if-eqz v7, :cond_17d

    .line 900
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing crash dialog for package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {v7}, Lcom/android/server/am/AppErrorDialog;->show()V

    .line 903
    :cond_17d
    return-void

    .line 897
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    :catchall_17e
    move-exception v0

    :try_start_17f
    monitor-exit v8
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isANRProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "isSkip":Z
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mANRProcess:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mANRProcess:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppErrors$ANRProcessInfo;

    iget v1, v1, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1b

    .line 292
    const/4 v0, 0x1

    .line 294
    :cond_1b
    return v0
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 284
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "fromDialog"    # Landroid/app/Dialog;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 352
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 353
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 354
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 355
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_10

    .line 356
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 358
    :cond_10
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_16

    .line 359
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 361
    :cond_16
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_33

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_33

    .line 362
    const-string/jumbo v4, "user-terminated"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 364
    const-string/jumbo v0, "user request after error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 366
    :cond_33
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 341
    if-eqz p1, :cond_17

    .line 342
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_17

    .line 344
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 345
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 348
    .end local v0    # "split":[Ljava/lang/String;
    :cond_17
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 307
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .registers 11
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 311
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 312
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ip":I
    :goto_c
    if-ltz v1, :cond_51

    .line 313
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 314
    .local v2, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1a
    if-ltz v3, :cond_45

    .line 315
    const/4 v4, 0x0

    .line 316
    .local v4, "remove":Z
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 317
    .local v5, "entUid":I
    if-nez p1, :cond_36

    .line 318
    const/4 v6, -0x1

    if-ne p3, v6, :cond_2e

    .line 319
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_3d

    .line 320
    const/4 v4, 0x1

    goto :goto_3d

    .line 323
    :cond_2e
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v5, v6, :cond_3d

    .line 324
    const/4 v4, 0x1

    goto :goto_3d

    .line 327
    :cond_36
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_3d

    .line 328
    const/4 v4, 0x1

    .line 330
    :cond_3d
    :goto_3d
    if-eqz v4, :cond_42

    .line 331
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 314
    .end local v4    # "remove":Z
    .end local v5    # "entUid":I
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 334
    .end local v3    # "i":I
    :cond_45
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4e

    .line 335
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 312
    .end local v2    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 338
    .end local v1    # "ip":I
    :cond_51
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    .line 385
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 386
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 387
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 388
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_22

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_22

    .line 389
    goto :goto_37

    .line 391
    :cond_22
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_28

    .line 392
    move-object v0, v3

    .line 393
    goto :goto_3a

    .line 395
    :cond_28
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    if-ltz p4, :cond_36

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_37

    .line 397
    :cond_36
    move-object v0, v3

    .line 386
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 400
    .end local v2    # "i":I
    :cond_3a
    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_70

    .line 402
    if-nez v0, :cond_6c

    .line 403
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 410
    :cond_6c
    invoke-virtual {v0, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 411
    return-void

    .line 400
    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v2
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 625
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 627
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_28

    aget v3, v0, v2

    .line 628
    .local v3, "userId":I
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_25

    .line 629
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 627
    .end local v3    # "userId":I
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 633
    :cond_28
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 634
    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 906
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 907
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 909
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 910
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 37
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 129
    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 130
    return-void

    .line 133
    :cond_1f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 134
    .local v3, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 135
    .local v5, "now":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 137
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    const/16 v16, 0x0

    if-nez v7, :cond_107

    .line 138
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 139
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 140
    .local v8, "procCount":I
    move/from16 v9, v16

    .local v9, "ip":I
    :goto_53
    if-ge v9, v8, :cond_107

    .line 141
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 142
    .local v10, "ctoken":J
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    .line 143
    .local v14, "pname":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 144
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    move-wide/from16 v18, v5

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 146
    .local v5, "uidCount":I
    .local v18, "now":J
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 147
    move/from16 v6, v16

    .local v6, "i":I
    :goto_72
    if-ge v6, v5, :cond_ea

    .line 148
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 149
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 150
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_a5

    if-eqz v13, :cond_9a

    move/from16 v20, v5

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .end local v5    # "uidCount":I
    .local v20, "uidCount":I
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    .line 151
    nop

    .line 147
    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    goto :goto_d8

    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "uidCount":I
    .restart local v5    # "uidCount":I
    :cond_9a
    move/from16 v20, v5

    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    .end local v5    # "uidCount":I
    .restart local v20    # "uidCount":I
    goto :goto_d8

    .line 153
    .end local v20    # "uidCount":I
    .restart local v5    # "uidCount":I
    .restart local v12    # "puid":I
    .restart local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_a5
    move/from16 v20, v5

    .end local v5    # "uidCount":I
    .restart local v20    # "uidCount":I
    :cond_a7
    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v24, v13

    move-object/from16 v23, v14

    const-wide v7, 0x20b00000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 154
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .local v13, "etoken":J
    .local v21, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v22, "procCount":I
    .local v23, "pname":Ljava/lang/String;
    .local v24, "r":Lcom/android/server/am/ProcessRecord;
    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 155
    nop

    .line 156
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 155
    move-wide/from16 v25, v3

    const-wide v3, 0x10300000002L

    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 157
    .end local v3    # "token":J
    .local v25, "token":J
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 147
    .end local v12    # "puid":I
    .end local v13    # "etoken":J
    .end local v24    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_d8
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v14, v23

    move-wide/from16 v3, v25

    const-wide v12, 0x10900000001L

    goto :goto_72

    .line 159
    .end local v6    # "i":I
    .end local v20    # "uidCount":I
    .end local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v22    # "procCount":I
    .end local v23    # "pname":Ljava/lang/String;
    .end local v25    # "token":J
    .restart local v3    # "token":J
    .restart local v5    # "uidCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "procCount":I
    .restart local v14    # "pname":Ljava/lang/String;
    :cond_ea
    move-wide/from16 v25, v3

    move/from16 v20, v5

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    .end local v3    # "token":J
    .end local v5    # "uidCount":I
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .restart local v20    # "uidCount":I
    .restart local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v22    # "procCount":I
    .restart local v23    # "pname":Ljava/lang/String;
    .restart local v25    # "token":J
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 140
    .end local v10    # "ctoken":J
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v20    # "uidCount":I
    .end local v23    # "pname":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v18

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto/16 :goto_53

    .line 164
    .end local v9    # "ip":I
    .end local v18    # "now":J
    .end local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v22    # "procCount":I
    .end local v25    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    :cond_107
    move-wide/from16 v25, v3

    move-wide/from16 v18, v5

    .end local v3    # "token":J
    .end local v5    # "now":J
    .restart local v18    # "now":J
    .restart local v25    # "token":J
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e2

    .line 165
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 166
    .local v3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 167
    .local v4, "processCount":I
    move/from16 v5, v16

    .local v5, "ip":I
    :goto_123
    if-ge v5, v4, :cond_1e2

    .line 168
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 169
    .local v6, "btoken":J
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 170
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 171
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 173
    .local v10, "uidCount":I
    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 174
    move/from16 v13, v16

    .local v13, "i":I
    :goto_148
    if-ge v13, v10, :cond_1ce

    .line 175
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 176
    .local v14, "puid":I
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 177
    .local v15, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_171

    if-eqz v15, :cond_165

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 178
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_171

    .line 179
    nop

    .line 174
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v27, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v28, "pname":Ljava/lang/String;
    .local v29, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_165
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    goto :goto_1bd

    .line 181
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v8    # "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v14    # "puid":I
    .restart local v15    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_171
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 182
    .local v11, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 183
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v8, "etoken":J
    .restart local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v28    # "pname":Ljava/lang/String;
    .restart local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 184
    iget-wide v2, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v30, v14

    move-object/from16 v31, v15

    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 185
    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v30, "puid":I
    .local v31, "r":Lcom/android/server/am/ProcessRecord;
    const-wide v2, 0x10900000003L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 186
    const-wide v2, 0x10900000004L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 187
    const-wide v2, 0x10900000005L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 188
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 174
    .end local v8    # "etoken":J
    .end local v11    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v30    # "puid":I
    .end local v31    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_1bd
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v2, p4

    const-wide v11, 0x10900000001L

    goto/16 :goto_148

    .line 190
    .end local v13    # "i":I
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v8, "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_1ce
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v28    # "pname":Ljava/lang/String;
    .restart local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 167
    .end local v6    # "btoken":J
    .end local v10    # "uidCount":I
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_123

    .line 194
    .end local v4    # "processCount":I
    .end local v5    # "ip":I
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_1e2
    move-wide/from16 v2, v25

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 195
    .end local v25    # "token":J
    .local v2, "token":J
    return-void
.end method
