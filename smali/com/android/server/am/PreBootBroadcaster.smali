.class public abstract Lcom/android/server/am/PreBootBroadcaster;
.super Landroid/content/IIntentReceiver$Stub;
.source "PreBootBroadcaster.java"


# static fields
.field private static final MSG_HIDE:I = 0x2

.field private static final MSG_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreBootBroadcaster"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private final mIntent:Landroid/content/Intent;

.field private final mProgress:Lcom/android/internal/util/ProgressReporter;

.field private final mQuiet:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Z)V
    .locals 4

    .line 64
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    .line 123
    new-instance v0, Lcom/android/server/am/PreBootBroadcaster$1;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/PreBootBroadcaster$1;-><init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 66
    iput p2, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    .line 67
    iput-object p3, p0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    .line 68
    iput-boolean p4, p0, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    .line 70
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    .line 71
    iget-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    const p3, 0x2000100

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    iget-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    .line 74
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 73
    const/high16 p4, 0x100000

    invoke-virtual {p1, p3, p4, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/am/PreBootBroadcaster;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    return p0
.end method


# virtual methods
.method public abstract onFinished()V
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    .line 118
    return-void
.end method

.method public sendNext()V
    .locals 18

    .line 78
    move-object/from16 v5, p0

    iget v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    iget-object v1, v5, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v5, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const-string v0, "PreBootBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is no longer running; skipping remaining receivers"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    .line 88
    return-void

    .line 91
    :cond_1
    iget-boolean v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 92
    iget-object v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    iget-object v2, v5, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v5, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    :cond_2
    iget-object v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    iget v2, v5, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v5, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 96
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 98
    iget-object v4, v5, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    if-eqz v4, :cond_3

    .line 99
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    iget-object v4, v5, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    iget v6, v5, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    iget-object v7, v5, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v5, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040074

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 102
    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v4, v6, v7, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 105
    :cond_3
    const-string v0, "PreBootBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-boot of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/EventLogTags;->writeAmPreBoot(ILjava/lang/String;)V

    .line 108
    iget-object v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    iget-object v0, v5, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v5, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v15, v5, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    move/from16 v16, v15

    const/16 v15, 0x3e8

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 112
    return-void
.end method
