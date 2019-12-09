.class public final Lcom/android/server/power/QCNsrmPowerExtension;
.super Ljava/lang/Object;
.source "QCNsrmPowerExtension.java"


# static fields
.field static final TAG:Ljava/lang/String; = "QCNsrmPowerExtn"

.field static final localLOGV:Z = false


# instance fields
.field private final mPmsBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pmHandle:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    .line 49
    return-void
.end method

.method private checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 3

    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    iget-object v2, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v2, :cond_0

    .line 73
    const/4 p1, 0x1

    return p1

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    nop

    .line 80
    return v0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    return v0
.end method

.method private updatePmsBlockedUids(IZ)V
    .locals 1

    .line 125
    if-eqz p2, :cond_0

    .line 128
    iget-object p2, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 134
    :goto_0
    return-void
.end method

.method private updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .locals 2

    .line 139
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 142
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    if-eqz v0, :cond_1

    .line 143
    iput-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 145
    iget-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz p2, :cond_0

    .line 147
    iget-object p2, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 151
    :goto_0
    return v1

    .line 157
    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected checkPmsBlockedWakelocks(IIILjava/lang/String;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 62
    const/4 p1, 0x1

    invoke-direct {p0, p5, p1}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    .line 64
    :cond_0
    return-void
.end method

.method protected processPmsBlockedUid(IZLjava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;)Z"
        }
    .end annotation

    .line 87
    nop

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedUidAllowed(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    return v1

    .line 91
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 92
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 93
    if-eqz v2, :cond_2

    .line 95
    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v4, p1, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/android/server/power/QCNsrmPowerExtension;->checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v5, "*sync*"

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    .line 98
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    nop

    .line 91
    move v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_3
    if-eqz v0, :cond_4

    .line 105
    iget-object p1, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    iget p2, p1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object p3, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    or-int/2addr p2, v3

    iput p2, p1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 106
    iget-object p1, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 108
    :cond_4
    return v0
.end method

.method protected updatePmsBlockedUidAllowed(IZ)Z
    .locals 2

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 118
    const/4 p1, 0x1

    return p1

    .line 120
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedUids(IZ)V

    .line 121
    const/4 p1, 0x0

    return p1
.end method
