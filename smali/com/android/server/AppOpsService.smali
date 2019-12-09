.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$ActiveCallback;,
        Lcom/android/server/AppOpsService$ModeCallback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$UidState;,
        Lcom/android/server/AppOpsService$Constants;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field private static final NO_VERSION:I = -0x1

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field public static final RATE_LIMIT_OPS_TOTAL_PKG_COUNT:I = 0x4

.field public static final RATE_LIMIT_OP_COUNT:I = 0x3

.field public static final RATE_LIMIT_OP_DELAY_CEILING:I = 0xa

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final UID_STATE_NAMES:[Ljava/lang/String;

.field static final UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

.field static final UID_STATE_TIME_ATTRS:[Ljava/lang/String;

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/AppOpsService$Constants;

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInteractive:Z

.field mLastUptime:J

.field final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfileOwners:Landroid/util/SparseIntArray;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 134
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 157
    const-string/jumbo v1, "pers "

    const-string/jumbo v2, "top  "

    const-string v3, "fgsvc"

    const-string v4, "fg   "

    const-string v5, "bg   "

    const-string v6, "cch  "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    .line 166
    const-string/jumbo v1, "tp"

    const-string/jumbo v2, "tt"

    const-string/jumbo v3, "tfs"

    const-string/jumbo v4, "tf"

    const-string/jumbo v5, "tb"

    const-string/jumbo v6, "tc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    .line 175
    const-string/jumbo v1, "rp"

    const-string/jumbo v2, "rt"

    const-string/jumbo v3, "rfs"

    const-string/jumbo v4, "rf"

    const-string/jumbo v5, "rb"

    const-string/jumbo v6, "rc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    .line 625
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mIsInteractive:Z

    .line 198
    new-instance v0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    .line 203
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 227
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 482
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 483
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 484
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 485
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 486
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 582
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 805
    new-instance v0, Lcom/android/server/AppOpsService$4;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$4;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 626
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 627
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "appops"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 628
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 629
    new-instance p1, Lcom/android/server/AppOpsService$Constants;

    iget-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/AppOpsService$Constants;-><init>(Lcom/android/server/AppOpsService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    .line 630
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    .line 631
    iput-object p3, p0, Lcom/android/server/AppOpsService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 632
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 633
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsService;IILjava/lang/String;Z)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/AppOpsService;II)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsService;IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsService;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AppOpsService;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    return-void
.end method

.method static synthetic access$500(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/AppOpsService;IILjava/lang/String;ILjava/lang/String;Z)I
    .locals 0

    .line 118
    invoke-direct/range {p0 .. p6}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/android/server/AppOpsService;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/android/server/AppOpsService;->mIsInteractive:Z

    return p1
.end method

.method static synthetic access$900(Ljava/lang/String;)I
    .locals 0

    .line 118
    invoke-static {p0}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .line 1331
    if-nez p4, :cond_0

    .line 1332
    return-object p0

    .line 1334
    :cond_0
    if-nez p0, :cond_1

    .line 1335
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1337
    :cond_1
    nop

    .line 1338
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1339
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    .line 1340
    invoke-virtual {p4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1341
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1342
    if-nez v5, :cond_2

    .line 1343
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1346
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1347
    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_4

    .line 1348
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ChangeRec;

    .line 1349
    iget v8, v7, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v8, p1, :cond_3

    iget-object v7, v7, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1350
    nop

    .line 1351
    nop

    .line 1355
    const/4 v3, 0x1

    goto :goto_2

    .line 1347
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1355
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 1356
    new-instance v4, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v4, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1359
    :cond_6
    return-object p0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .locals 0

    .line 3890
    new-instance p1, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {p1, p4}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;-><init>(Lcom/android/server/AppOpsService$Op;)V

    .line 3891
    iget-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/AppOpsService$AskRunnable;

    invoke-direct {p3, p0, p1}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3892
    return-object p1
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 0

    .line 1642
    iget-object p3, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 1643
    if-eqz p1, :cond_0

    .line 1644
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppOpsService$Restriction;

    .line 1645
    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1646
    iget p1, p1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return p1

    .line 1649
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 2

    .line 3864
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3865
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3868
    return-void

    .line 3866
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must by called by the system"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1011
    move-object/from16 v1, p2

    .line 1012
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1013
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1015
    new-instance v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v15}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 1020
    aget v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 1021
    if-ltz v4, :cond_2

    .line 1022
    if-nez v3, :cond_1

    .line 1023
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    :cond_1
    new-instance v15, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v5, v15

    move-object/from16 v17, v15

    move v15, v4

    invoke-direct/range {v5 .. v16}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;II)V

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1030
    :cond_3
    move-object v1, v3

    :cond_4
    return-object v1
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 974
    move-object/from16 v1, p2

    .line 975
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 976
    const/4 v4, -0x1

    if-nez v1, :cond_2

    .line 977
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 978
    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 979
    invoke-virtual {v0, v7}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 980
    iget-wide v9, v0, Lcom/android/server/AppOpsService$Ops;->startRealtime:J

    iput-wide v9, v8, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    .line 981
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    if-ne v9, v4, :cond_0

    .line 982
    const/16 v16, 0x1

    goto :goto_1

    .line 981
    :cond_0
    nop

    .line 982
    const/16 v16, 0x0

    :goto_1
    if-eqz v16, :cond_1

    .line 983
    iget-wide v9, v8, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v9, v2, v9

    goto :goto_2

    .line 984
    :cond_1
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v9, v9

    .line 985
    :goto_2
    new-instance v15, Landroid/app/AppOpsManager$OpEntry;

    iget v11, v8, Lcom/android/server/AppOpsService$Op;->op:I

    iget v12, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v14, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v9, v9

    iget v10, v8, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v5, v8, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    iget v6, v8, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    iget v8, v8, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    move/from16 v17, v10

    move-object v10, v15

    move-object v4, v15

    move v15, v9

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    invoke-direct/range {v10 .. v20}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    add-int/lit8 v7, v7, 0x1

    const/4 v4, -0x1

    goto :goto_0

    .line 990
    :cond_2
    const/4 v4, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    :goto_3
    array-length v6, v1

    if-ge v4, v6, :cond_7

    .line 991
    aget v6, v1, v4

    invoke-virtual {v0, v6}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    .line 992
    if-eqz v6, :cond_6

    .line 993
    if-nez v5, :cond_3

    .line 994
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 996
    :cond_3
    iget-wide v7, v0, Lcom/android/server/AppOpsService$Ops;->startRealtime:J

    iput-wide v7, v6, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    .line 997
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 998
    const/4 v15, 0x1

    goto :goto_4

    .line 997
    :cond_4
    nop

    .line 998
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_5

    .line 999
    iget-wide v9, v6, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v9, v2, v9

    goto :goto_5

    .line 1000
    :cond_5
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v9, v7

    .line 1001
    :goto_5
    new-instance v7, Landroid/app/AppOpsManager$OpEntry;

    iget v11, v6, Lcom/android/server/AppOpsService$Op;->op:I

    iget v12, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v13, v6, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v10, v9

    iget v9, v6, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v8, v6, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    iget v0, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    iget v6, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    move/from16 v16, v9

    move-object v9, v7

    move/from16 v17, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v17

    move-object/from16 v17, v8

    move/from16 v18, v0

    move/from16 v19, v6

    invoke-direct/range {v9 .. v19}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    goto :goto_3

    .line 1007
    :cond_7
    move-object v1, v5

    :cond_8
    return-object v1
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V
    .locals 20

    move-object/from16 v6, p0

    .line 2156
    move-object/from16 v7, p1

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-gt v0, v1, :cond_0

    .line 2157
    move v0, v9

    goto :goto_0

    .line 2156
    :cond_0
    nop

    .line 2157
    const/4 v0, 0x0

    :goto_0
    iget v2, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-gt v2, v1, :cond_1

    .line 2158
    move v1, v9

    goto :goto_1

    .line 2157
    :cond_1
    nop

    .line 2158
    const/4 v1, 0x0

    :goto_1
    iget v2, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    iput v2, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    .line 2159
    const-wide/16 v2, 0x0

    iput-wide v2, v7, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2160
    iget-boolean v2, v7, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v2, :cond_9

    if-eq v0, v1, :cond_9

    .line 2161
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v10, v0

    :goto_2
    if-ltz v10, :cond_9

    .line 2162
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2163
    goto/16 :goto_9

    .line 2165
    :cond_2
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    .line 2167
    iget-object v0, v6, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/ArraySet;

    .line 2168
    if-eqz v12, :cond_8

    .line 2169
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v13, v0

    :goto_3
    if-ltz v13, :cond_8

    .line 2170
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/AppOpsService$ModeCallback;

    .line 2171
    iget v0, v14, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_7

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 2172
    invoke-virtual {v14, v0}, Lcom/android/server/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2173
    goto/16 :goto_8

    .line 2175
    :cond_3
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v15, 0x4

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2176
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v15, :cond_4

    .line 2177
    move/from16 v16, v9

    goto :goto_4

    .line 2176
    :cond_4
    nop

    .line 2177
    const/16 v16, 0x0

    :goto_4
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7

    .line 2178
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v5, v0

    :goto_5
    if-ltz v5, :cond_7

    .line 2179
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    invoke-virtual {v0, v11}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 2180
    if-nez v16, :cond_6

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v0, v15, :cond_5

    goto :goto_6

    .line 2178
    :cond_5
    move/from16 v17, v5

    goto :goto_7

    .line 2182
    :cond_6
    :goto_6
    iget-object v4, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 2184
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2185
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    .line 2182
    move-object v1, v6

    move-object v2, v14

    move-object v8, v4

    move-object/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2178
    :goto_7
    add-int/lit8 v5, v17, -0x1

    goto :goto_5

    .line 2169
    :cond_7
    :goto_8
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_3

    .line 2161
    :cond_8
    :goto_9
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 2193
    :cond_9
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1

    .line 2993
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    const-string v0, "  start [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    const-string v0, "  stop [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const-string v0, "  set [--user <USER_ID>] <PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    const-string v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    const-string v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    const-string v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    .line 3234
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3237
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    return-void
.end method

.method private dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V
    .locals 10

    move-object v0, p1

    .line 3247
    nop

    .line 3248
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-ge v2, v5, :cond_1

    .line 3249
    aget-wide v7, p4, v2

    cmp-long v7, v7, v3

    if-eqz v7, :cond_0

    .line 3250
    nop

    .line 3251
    nop

    .line 3254
    move v2, v6

    goto :goto_1

    .line 3248
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3254
    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    .line 3255
    return-void

    .line 3257
    :cond_2
    nop

    .line 3258
    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_5

    .line 3259
    aget-wide v7, p4, v2

    cmp-long v7, v7, v3

    if-eqz v7, :cond_4

    .line 3260
    if-eqz v6, :cond_3

    move-object v6, p2

    goto :goto_3

    :cond_3
    move-object v6, p3

    :goto_3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3261
    nop

    .line 3262
    sget-object v6, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3263
    const-string v6, " = "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3264
    aget-wide v6, p4, v2

    move-object/from16 v8, p8

    invoke-virtual {v8, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 3265
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3266
    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3267
    aget-wide v6, p4, v2

    sub-long/2addr v6, p5

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3268
    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    move v6, v1

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3271
    :cond_5
    return-void
.end method

.method private evalAllForegroundOpsLocked()V
    .locals 3

    .line 1487
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1488
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    .line 1489
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 1490
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1487
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1493
    :cond_1
    return-void
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 1

    .line 2277
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object p2

    .line 2279
    if-nez p2, :cond_0

    .line 2280
    const/4 p1, 0x0

    return-object p1

    .line 2282
    :cond_0
    invoke-direct {p0, p2, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object p1

    return-object p1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 3

    .line 2286
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 2287
    if-nez v0, :cond_1

    .line 2288
    if-nez p3, :cond_0

    .line 2289
    const/4 p1, 0x0

    return-object p1

    .line 2291
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$Op;

    iget-object v1, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2292
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2294
    :cond_1
    if-eqz p3, :cond_2

    .line 2295
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 2297
    :cond_2
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;
    .locals 8

    .line 2197
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 2198
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2199
    return-object v1

    .line 2202
    :cond_0
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 2203
    if-nez p3, :cond_1

    .line 2204
    return-object v1

    .line 2206
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2209
    :cond_2
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    .line 2210
    if-nez v2, :cond_a

    .line 2211
    if-nez p3, :cond_3

    .line 2212
    return-object v1

    .line 2214
    :cond_3
    nop

    .line 2217
    const/4 p3, 0x0

    if-eqz p1, :cond_9

    .line 2218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2220
    const/4 v4, -0x1

    .line 2222
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/high16 v6, 0x10000000

    .line 2225
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2223
    invoke-interface {v5, p2, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2226
    if-eqz v5, :cond_5

    .line 2227
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    :try_start_1
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    goto :goto_0

    .line 2236
    :catch_0
    move-exception v4

    move-object v5, v4

    goto :goto_1

    .line 2231
    :cond_5
    :try_start_2
    invoke-static {p2}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2232
    if-ltz v6, :cond_6

    .line 2233
    nop

    .line 2238
    :cond_6
    :goto_0
    goto :goto_2

    .line 2251
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 2236
    :catch_1
    move-exception v5

    move v6, v4

    .line 2237
    :goto_1
    :try_start_3
    const-string v4, "AppOps"

    const-string v7, "Could not contact PackageManager"

    invoke-static {v4, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2239
    :goto_2
    if-eq v6, p1, :cond_8

    .line 2242
    if-nez p4, :cond_7

    .line 2243
    new-instance p3, Ljava/lang/RuntimeException;

    const-string p4, "here"

    invoke-direct {p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2245
    const-string p4, "AppOps"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad call: specified package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " under uid "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but it is really "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2248
    :cond_7
    nop

    .line 2251
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2248
    return-object v1

    .line 2251
    :cond_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2252
    goto :goto_4

    .line 2251
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2254
    :cond_9
    :goto_4
    new-instance v2, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v2, p2, v0, p3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 2255
    iget-object p1, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    :cond_a
    return-object v2
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .line 4051
    nop

    .line 4053
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4056
    goto :goto_0

    .line 4054
    :catch_0
    move-exception p0

    .line 4057
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 4058
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 4060
    :cond_0
    return-object p0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 3

    .line 2133
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 2134
    if-nez v0, :cond_1

    .line 2135
    if-nez p2, :cond_0

    .line 2136
    const/4 p1, 0x0

    return-object p1

    .line 2138
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 2139
    iget-object p2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2141
    :cond_1
    iget-wide p1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_3

    .line 2142
    iget-wide p1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v1, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    .line 2143
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    goto :goto_0

    .line 2145
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    .line 2146
    iget-wide p1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v1, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_3

    .line 2147
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    .line 2152
    :cond_3
    :goto_0
    return-object v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .locals 5

    .line 2301
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2302
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2304
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 2307
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2308
    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2309
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 2311
    monitor-enter p0

    .line 2312
    :try_start_0
    invoke-direct {p0, p1, p3, v0, v2}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object p1

    .line 2314
    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz p1, :cond_0

    .line 2315
    monitor-exit p0

    return v2

    .line 2317
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2319
    :cond_1
    :goto_1
    return v0

    .line 2304
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2322
    :cond_3
    return v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 1

    .line 1634
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1635
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1634
    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1636
    :catch_0
    move-exception p1

    .line 1637
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Could not talk to package manager service"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$1lQKm3WHEUQsD7KzYyJ5stQSc04(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$NC5g1JY4YR6y4VePru4TO7AKp8M(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$UKMH8n9xZqCOX59uFPylskhjBgo(Lcom/android/server/AppOpsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic lambda$lxgFmOnGguOiLyfUZbyOpNBfTVw(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1735
    nop

    .line 1736
    monitor-enter p0

    .line 1737
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v6

    .line 1739
    if-nez v6, :cond_0

    .line 1742
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 1744
    :cond_0
    invoke-direct {v1, v6, v0, v5}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .line 1745
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1746
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/2addr v0, v5

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1747
    monitor-exit p0

    return v5

    .line 1749
    :cond_1
    iget-object v8, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1750
    iget v9, v7, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1751
    const-string v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Noting op not finished: uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v12, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " duration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_2
    iput v4, v7, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1756
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .line 1759
    iget-object v10, v8, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_4

    iget-object v10, v8, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_4

    .line 1760
    iget-object v0, v8, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v0

    .line 1761
    if-eqz v0, :cond_3

    .line 1765
    iget-object v2, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v3, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1766
    monitor-exit p0

    return v0

    .line 1768
    :cond_3
    goto/16 :goto_3

    .line 1769
    :cond_4
    if-eq v9, v0, :cond_5

    invoke-direct {v1, v6, v9, v5}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v9

    goto :goto_0

    .line 1770
    :cond_5
    move-object v9, v7

    :goto_0
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v10

    .line 1771
    const/4 v11, 0x5

    if-eqz v10, :cond_6

    if-eq v10, v11, :cond_6

    .line 1775
    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v2, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 1776
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/2addr v0, v5

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1777
    monitor-exit p0

    return v10

    .line 1778
    :cond_6
    if-ne v10, v11, :cond_11

    .line 1779
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-eq v11, v12, :cond_10

    iget-object v11, v1, Lcom/android/server/AppOpsService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v11}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_2

    .line 1784
    :cond_7
    if-eqz p6, :cond_8

    .line 1785
    monitor-exit p0

    return v10

    .line 1800
    :cond_8
    iget-object v10, v7, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v11, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v10, v10, v11

    iget-object v12, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v13, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v12, v12, v13

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1802
    iget-wide v12, v6, Lcom/android/server/AppOpsService$Ops;->startRealtime:J

    cmp-long v12, v10, v12

    if-lez v12, :cond_a

    iget-wide v12, v6, Lcom/android/server/AppOpsService$Ops;->startRealtime:J

    const-wide/32 v14, 0x493e0

    add-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gez v10, :cond_a

    .line 1804
    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v2, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v2, v0, v2

    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v6, v0, v6

    cmp-long v0, v2, v6

    if-ltz v0, :cond_9

    .line 1805
    goto :goto_1

    :cond_9
    move v4, v5

    :goto_1
    monitor-exit p0

    .line 1804
    return v4

    .line 1820
    :cond_a
    iget-boolean v10, v1, Lcom/android/server/AppOpsService;->mIsInteractive:Z

    if-eqz v10, :cond_e

    iget-object v6, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v6, v6, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1821
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v10, 0x4

    if-ge v6, v10, :cond_b

    iget v6, v7, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    const/4 v10, 0x3

    if-lt v6, v10, :cond_c

    :cond_b
    iget v6, v7, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    const/16 v10, 0xa

    if-le v6, v10, :cond_e

    .line 1826
    :cond_c
    iget v6, v7, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    if-lez v6, :cond_d

    .line 1828
    iput v4, v7, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    .line 1831
    :cond_d
    iget v6, v7, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/2addr v6, v5

    iput v6, v7, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1832
    invoke-direct {v1, v0, v2, v3, v9}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object v0

    goto :goto_4

    .line 1834
    :cond_e
    iget-boolean v0, v1, Lcom/android/server/AppOpsService;->mIsInteractive:Z

    if-eqz v0, :cond_f

    .line 1835
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    add-int/2addr v0, v5

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    .line 1837
    :cond_f
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/2addr v0, v5

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1838
    monitor-exit p0

    return v5

    .line 1780
    :cond_10
    :goto_2
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noteOperation: this method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " uid: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    monitor-exit p0

    return v10

    .line 1842
    :cond_11
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_12

    .line 1845
    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v2, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, v0, v2

    .line 1846
    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v2, v8, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v8, 0x0

    aput-wide v8, v0, v2

    .line 1847
    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1848
    move-object/from16 v0, p5

    iput-object v0, v7, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1849
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/2addr v0, v5

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1850
    monitor-exit p0

    return v4

    .line 1852
    :cond_12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    invoke-virtual {v0}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v0

    return v0

    .line 1852
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2068
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2069
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 2070
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    :try_start_1
    iget-object v4, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v4, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2075
    goto :goto_1

    .line 2073
    :catch_0
    move-exception v4

    .line 2069
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2078
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2079
    nop

    .line 2080
    return-void

    .line 2078
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1304
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1305
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1306
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 1304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1308
    :cond_0
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 2

    .line 1312
    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v0, p3, :cond_0

    .line 1313
    return-void

    .line 1318
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1320
    :try_start_0
    iget-object p1, p1, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1324
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1321
    :catch_0
    move-exception p1

    .line 1324
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    nop

    .line 1326
    return-void
.end method

.method private notifyWatchersOfChange(II)V
    .locals 2

    .line 3805
    monitor-enter p0

    .line 3806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 3807
    if-nez v0, :cond_0

    .line 3808
    monitor-exit p0

    return-void

    .line 3810
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 3811
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3813
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 3814
    return-void

    .line 3811
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 12

    .line 3021
    if-nez p1, :cond_0

    .line 3022
    invoke-virtual {p0, p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3024
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3025
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 3027
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "read-settings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "reset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "stop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :sswitch_5
    const-string v3, "get"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "query-op"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "write-settings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    .line 3225
    invoke-virtual {p0, p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_f

    .line 3211
    :pswitch_0
    invoke-virtual {p0, v4, v1}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result p1

    .line 3212
    if-gez p1, :cond_2

    .line 3213
    return p1

    .line 3216
    :cond_2
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 3217
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v4, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object p0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v4, p0}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3222
    return v5

    .line 3220
    :cond_3
    return v2

    .line 3197
    :pswitch_1
    invoke-virtual {p0, v4, v1}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result p1

    .line 3198
    if-gez p1, :cond_4

    .line 3199
    return p1

    .line 3202
    :cond_4
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 3203
    iget-object v6, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v7, p0, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v8, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v9, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 3208
    return v5

    .line 3206
    :cond_5
    return v2

    .line 3185
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3185
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3189
    :try_start_1
    iget-object p0, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 3190
    const-string p0, "Last settings read."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3192
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3193
    nop

    .line 3194
    return v5

    .line 3192
    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    .line 3170
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3170
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3174
    :try_start_3
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3175
    :try_start_4
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3176
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3177
    :try_start_5
    iget-object p0, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 3178
    const-string p0, "Current settings written."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3180
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3181
    nop

    .line 3182
    return v5

    .line 3176
    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3180
    :catchall_2
    move-exception p0

    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    .line 3134
    :pswitch_4
    nop

    .line 3135
    nop

    .line 3136
    const/4 p1, -0x2

    move v3, p1

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 3137
    const-string v7, "--user"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3138
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 3139
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 3140
    goto :goto_2

    .line 3141
    :cond_6
    if-nez v6, :cond_7

    .line 3142
    nop

    .line 3136
    move-object v6, v4

    goto :goto_2

    .line 3144
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Unsupported argument: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    return v2

    .line 3150
    :cond_8
    if-ne v3, p1, :cond_9

    .line 3151
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 3154
    :cond_9
    iget-object p0, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p0, v3, v6}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 3155
    const-string p0, "Reset all modes for: "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3156
    if-ne v3, v2, :cond_a

    .line 3157
    const-string p0, "all users"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 3159
    :cond_a
    const-string/jumbo p0, "user "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3161
    :goto_3
    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3162
    if-nez v6, :cond_b

    .line 3163
    const-string p0, "all packages"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3165
    :cond_b
    const-string/jumbo p0, "package "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    :goto_4
    return v5

    .line 3106
    :pswitch_5
    invoke-virtual {p0, v4, v1}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result p1

    .line 3107
    if-gez p1, :cond_c

    .line 3108
    return p1

    .line 3110
    :cond_c
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v1, v4, [I

    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v3, v1, v5

    invoke-interface {p1, v1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p1

    .line 3112
    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_8

    .line 3116
    :cond_d
    move v1, v5

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_11

    .line 3117
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 3118
    nop

    .line 3119
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    .line 3120
    move v7, v5

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_f

    .line 3121
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 3122
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    iget v10, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-ne v9, v10, :cond_e

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    iget v9, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-ne v8, v9, :cond_e

    .line 3123
    nop

    .line 3124
    nop

    .line 3127
    move v6, v4

    goto :goto_7

    .line 3120
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3127
    :cond_f
    move v6, v5

    :goto_7
    if-eqz v6, :cond_10

    .line 3128
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3131
    :cond_11
    return v5

    .line 3113
    :cond_12
    :goto_8
    const-string p0, "No operations."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    return v5

    .line 3053
    :pswitch_6
    invoke-virtual {p0, v5, v1}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result p1

    .line 3054
    if-gez p1, :cond_13

    .line 3055
    return p1

    .line 3059
    :cond_13
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 3060
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v3, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3062
    iget v7, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v7, v2, :cond_14

    new-array v6, v4, [I

    iget v4, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v4, v6, v5

    nop

    .line 3060
    :cond_14
    invoke-interface {p1, v1, v3, v6}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    goto :goto_9

    .line 3064
    :cond_15
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    .line 3066
    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v3, v2, :cond_16

    new-array v6, v4, [I

    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v3, v6, v5

    nop

    .line 3064
    :cond_16
    invoke-interface {p1, v1, v6}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object p1

    .line 3068
    :goto_9
    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_17

    goto/16 :goto_d

    .line 3076
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3077
    move p0, v5

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1d

    .line 3078
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    .line 3079
    move v6, v5

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1c

    .line 3080
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    .line 3081
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3082
    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_18

    .line 3085
    const-string v8, "; time="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3086
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3087
    const-string v8, " ago"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3089
    :cond_18
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_19

    .line 3090
    const-string v8, "; rejectTime="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3091
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3092
    const-string v8, " ago"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3094
    :cond_19
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v8

    if-ne v8, v2, :cond_1a

    .line 3095
    const-string v7, " (running)"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    .line 3096
    :cond_1a
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v8

    if-eqz v8, :cond_1b

    .line 3097
    const-string v8, "; duration="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3100
    :cond_1b
    :goto_c
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3079
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    .line 3077
    :cond_1c
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_a

    .line 3103
    :cond_1d
    return v5

    .line 3069
    :cond_1e
    :goto_d
    const-string p1, "No operations."

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    iget p1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-le p1, v2, :cond_1f

    iget p1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    const/16 v1, 0x52

    if-ge p1, v1, :cond_1f

    .line 3071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default mode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 3072
    invoke-static {p0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    .line 3071
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    :cond_1f
    return v5

    .line 3029
    :pswitch_7
    invoke-virtual {p0, v4, v1}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result p1

    .line 3030
    if-gez p1, :cond_20

    .line 3031
    return p1

    .line 3033
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 3034
    if-nez p1, :cond_21

    .line 3035
    const-string p0, "Error: Mode not specified."

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    return v2

    .line 3039
    :cond_21
    invoke-static {p1, v1}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    .line 3040
    if-gez p1, :cond_22

    .line 3041
    return v2

    .line 3044
    :cond_22
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 3045
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v4, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object p0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p0, p1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_e

    .line 3048
    :cond_23
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget p0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v1, v3, p0, p1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 3050
    :goto_e
    return v5

    .line 3225
    :goto_f
    return p0

    .line 3227
    :catch_0
    move-exception p0

    .line 3228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3230
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_7
        -0x458a76fa -> :sswitch_6
        0x18f56 -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 0

    .line 3896
    if-eqz p1, :cond_1

    .line 3897
    iget p1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 3898
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 3902
    :cond_0
    nop

    .line 3907
    :cond_1
    :goto_0
    return-void
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 1

    .line 1113
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1114
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object p3

    .line 1116
    if-eqz p3, :cond_1

    .line 1117
    iget p1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {p3, p1}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 1118
    invoke-virtual {p3}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 1119
    iget-object p1, p3, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1120
    iget-object v0, p1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1121
    if-eqz v0, :cond_1

    .line 1122
    iget-object p3, p3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1124
    const/4 p3, 0x0

    iput-object p3, p1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1126
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1127
    iget-object p1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1133
    :cond_1
    return-void
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .locals 9

    .line 3910
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 3911
    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    .line 3912
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 3913
    iget v3, v1, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_0

    .line 3914
    const-string v3, "noteOperartion"

    invoke-direct {p0, v1, p4, v3}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 3916
    :cond_0
    iget v3, v1, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_1

    .line 3917
    const-string/jumbo v3, "startOperation"

    invoke-direct {p0, v1, p4, v3}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 3919
    :cond_1
    const/4 v3, 0x1

    if-ne p4, v3, :cond_2

    .line 3920
    iget-object p1, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget p2, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    aput-wide p3, p1, p2

    goto :goto_1

    .line 3921
    :cond_2
    if-nez p4, :cond_6

    .line 3922
    iget p4, v1, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    const-wide/16 v4, 0x0

    if-eqz p4, :cond_3

    .line 3923
    iget-object p4, v1, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v6, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, p4, v6

    .line 3924
    iget-object p4, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    aput-wide v4, p4, v6

    .line 3926
    :cond_3
    iget p4, v1, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz p4, :cond_6

    .line 3927
    iget p4, v1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-nez p4, :cond_4

    .line 3928
    iget-object p4, v1, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v6, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, p4, v6

    .line 3929
    iget-object p4, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    aput-wide v4, p4, v2

    .line 3930
    const/4 p4, -0x1

    iput p4, v1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 3931
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 3933
    :cond_4
    iget p1, v1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    iget p2, v1, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr p1, p2

    iput p1, v1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 3934
    :goto_0
    iget-object p1, v1, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 3935
    iget-object p1, v1, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    .line 3936
    iget-object p2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppOpsService$ClientState;

    .line 3937
    if-eqz p1, :cond_5

    .line 3938
    iget-object p2, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 3939
    iget-object p1, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3942
    :cond_5
    iget-object p1, v1, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3943
    goto :goto_0

    .line 3946
    :cond_6
    :goto_1
    iget-object p1, v1, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3947
    iput v0, v1, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 3948
    iput v0, v1, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 3950
    :cond_7
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .locals 2

    .line 3855
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3856
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3857
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3858
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3855
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3861
    :cond_1
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4015
    if-nez p0, :cond_0

    .line 4016
    const-string/jumbo p0, "root"

    return-object p0

    .line 4017
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 4018
    const-string p0, "com.android.shell"

    return-object p0

    .line 4019
    :cond_1
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_2

    .line 4020
    const-string p0, "media"

    return-object p0

    .line 4021
    :cond_2
    const/16 v0, 0x411

    if-ne p0, v0, :cond_3

    .line 4022
    const-string p0, "audioserver"

    return-object p0

    .line 4023
    :cond_3
    const/16 v0, 0x417

    if-ne p0, v0, :cond_4

    .line 4024
    const-string p0, "cameraserver"

    return-object p0

    .line 4025
    :cond_4
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_5

    .line 4026
    const-string p0, "android"

    return-object p0

    .line 4028
    :cond_5
    return-object p1
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .locals 3

    .line 4032
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 4033
    return v0

    .line 4035
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 4047
    return v0

    .line 4045
    :pswitch_0
    const/16 p0, 0x417

    return p0

    .line 4043
    :pswitch_1
    const/16 p0, 0x411

    return p0

    .line 4041
    :pswitch_2
    const/16 p0, 0x3f5

    return p0

    .line 4039
    :pswitch_3
    const/16 p0, 0x7d0

    return p0

    .line 4037
    :pswitch_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .line 2268
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2270
    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 2271
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2272
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2274
    :cond_0
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .locals 10

    .line 2038
    nop

    .line 2039
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2040
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2041
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2042
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ActiveCallback;

    .line 2043
    if-eqz v1, :cond_2

    .line 2044
    iget v3, v1, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v3, :cond_0

    iget v3, v1, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v3, p2, :cond_0

    .line 2045
    goto :goto_1

    .line 2047
    :cond_0
    if-nez v5, :cond_1

    .line 2048
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2050
    :cond_1
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2040
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2053
    :cond_3
    if-nez v5, :cond_4

    .line 2054
    return-void

    .line 2056
    :cond_4
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;

    .line 2058
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2056
    move-object v4, p0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2059
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .line 2261
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2263
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2265
    :cond_0
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 2

    .line 3779
    monitor-enter p0

    .line 3780
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3782
    if-nez v0, :cond_0

    .line 3784
    :try_start_1
    new-instance v0, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3787
    nop

    .line 3788
    :try_start_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3785
    :catch_0
    move-exception p1

    .line 3786
    monitor-exit p0

    return-void

    .line 3791
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3792
    iget-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object p4, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    .line 3793
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, -0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 3792
    invoke-static {p4, p0, p1, p5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3796
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3797
    iget-object p1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3798
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V

    .line 3800
    :cond_2
    monitor-exit p0

    .line 3801
    return-void

    .line 3800
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private upgradeLocked(I)V
    .locals 4

    .line 2440
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2441
    return-void

    .line 2443
    :cond_0
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading app-ops xml from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2446
    :cond_1
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 2451
    :goto_0
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 2452
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .locals 11

    .line 2404
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2405
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 2406
    if-nez v2, :cond_0

    .line 2407
    goto :goto_2

    .line 2409
    :cond_0
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v4, 0x3f

    const/16 v5, 0x46

    if-eqz v3, :cond_1

    .line 2410
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 2411
    if-ltz v3, :cond_1

    .line 2412
    iget-object v6, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2413
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 2412
    invoke-virtual {v6, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2416
    :cond_1
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    .line 2417
    goto :goto_2

    .line 2419
    :cond_2
    nop

    .line 2420
    move v3, v0

    move v6, v3

    :goto_1
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 2421
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 2422
    if-eqz v7, :cond_3

    .line 2423
    invoke-virtual {v7, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 2424
    if-eqz v8, :cond_3

    iget v9, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v10, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 2425
    new-instance v6, Lcom/android/server/AppOpsService$Op;

    iget-object v9, v8, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v10, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {v6, v9, v10, v5}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2427
    iget v8, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iput v8, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2428
    invoke-virtual {v7, v5, v6}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2429
    nop

    .line 2420
    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2433
    :cond_4
    if-eqz v6, :cond_5

    .line 2434
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2404
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2437
    :cond_6
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3

    .line 2126
    if-ltz p1, :cond_0

    const/16 v0, 0x52

    if-ge p1, v0, :cond_0

    .line 2127
    return-void

    .line 2129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 4

    .line 2111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_0

    .line 2113
    return-void

    .line 2115
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2116
    return-void

    .line 2118
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2119
    return-void

    .line 2121
    :cond_2
    iget-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2122
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 2121
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2123
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 1

    .line 1612
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    goto :goto_0

    .line 1613
    :catch_0
    move-exception v0

    .line 1615
    const/4 v0, 0x0

    .line 1618
    :goto_0
    if-eqz v0, :cond_0

    .line 1619
    const-string p1, "AppOps"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio disabled for suspended package="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " for uid="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const/4 p1, 0x1

    return p1

    .line 1623
    :cond_0
    monitor-enter p0

    .line 1624
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result p2

    .line 1625
    if-eqz p2, :cond_1

    .line 1626
    monitor-exit p0

    return p2

    .line 1628
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1629
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p1

    return p1

    .line 1628
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 3

    .line 1584
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1585
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1586
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1587
    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1588
    return v0

    .line 1590
    :cond_0
    monitor-enter p0

    .line 1591
    :try_start_0
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1592
    monitor-exit p0

    return v0

    .line 1594
    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1595
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 1596
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1597
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 1598
    iget-object p2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    monitor-exit p0

    return p1

    .line 1600
    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object p2

    .line 1601
    if-nez p2, :cond_3

    .line 1602
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    monitor-exit p0

    return p1

    .line 1604
    :cond_3
    iget p1, p2, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return p1

    .line 1605
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1

    .line 1688
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    monitor-enter p0

    .line 1690
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object p1

    .line 1692
    if-eqz p1, :cond_0

    .line 1693
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1695
    :cond_0
    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 1697
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 30

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 3275
    move-object/from16 v1, p3

    iget-object v0, v10, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "AppOps"

    invoke-static {v0, v2, v11}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3277
    :cond_0
    nop

    .line 3278
    const/4 v0, 0x0

    .line 3279
    nop

    .line 3280
    nop

    .line 3282
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_d

    .line 3283
    move-object v5, v0

    move v0, v13

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_c

    .line 3284
    aget-object v6, v1, v0

    .line 3285
    const-string v7, "-h"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3286
    invoke-direct {v10, v11}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3287
    return-void

    .line 3288
    :cond_1
    const-string v7, "-a"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_2

    .line 3290
    :cond_2
    const-string v7, "--op"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3291
    add-int/lit8 v0, v0, 0x1

    .line 3292
    array-length v3, v1

    if-lt v0, v3, :cond_3

    .line 3293
    const-string v0, "No argument for --op option"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    return-void

    .line 3296
    :cond_3
    aget-object v3, v1, v0

    invoke-static {v3, v11}, Lcom/android/server/AppOpsService$Shell;->access$1000(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v3

    .line 3297
    if-gez v3, :cond_9

    .line 3298
    return-void

    .line 3300
    :cond_4
    const-string v7, "--package"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3301
    add-int/lit8 v5, v0, 0x1

    .line 3302
    array-length v0, v1

    if-lt v5, v0, :cond_5

    .line 3303
    const-string v0, "No argument for --package option"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    return-void

    .line 3306
    :cond_5
    aget-object v6, v1, v5

    .line 3308
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v7, 0xc02000

    invoke-interface {v0, v6, v7, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3312
    goto :goto_1

    .line 3311
    :catch_0
    move-exception v0

    .line 3313
    move v0, v2

    :goto_1
    if-gez v0, :cond_6

    .line 3314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    return-void

    .line 3317
    :cond_6
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3283
    move v2, v0

    move v0, v5

    move-object v5, v6

    goto :goto_2

    .line 3318
    :cond_7
    const-string v4, "--mode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3319
    add-int/lit8 v0, v0, 0x1

    .line 3320
    array-length v4, v1

    if-lt v0, v4, :cond_8

    .line 3321
    const-string v0, "No argument for --mode option"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3322
    return-void

    .line 3324
    :cond_8
    aget-object v4, v1, v0

    invoke-static {v4, v11}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    .line 3325
    if-gez v4, :cond_9

    .line 3326
    return-void

    .line 3283
    :cond_9
    :goto_2
    add-int/2addr v0, v14

    goto/16 :goto_0

    .line 3328
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b

    .line 3329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3330
    return-void

    .line 3332
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3333
    return-void

    .line 3338
    :cond_c
    move v0, v3

    move v15, v4

    move-object v9, v5

    goto :goto_3

    :cond_d
    move-object v9, v0

    const/4 v0, -0x1

    const/4 v2, -0x1

    const/4 v15, -0x1

    :goto_3
    monitor-enter p0

    .line 3339
    :try_start_1
    const-string v1, "Current AppOps Service state:"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    iget-object v1, v10, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    invoke-virtual {v1, v11}, Lcom/android/server/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3341
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 3344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3345
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3346
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 3347
    nop

    .line 3348
    if-gez v0, :cond_f

    if-gez v15, :cond_f

    if-nez v9, :cond_f

    iget-object v1, v10, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_f

    .line 3349
    const-string v1, "  Profile owners:"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    move v1, v13

    :goto_4
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 3351
    const-string v3, "    User #"

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3352
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3353
    const-string v3, ": "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3354
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v11, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3355
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3350
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3357
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3359
    :cond_f
    iget-object v1, v10, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 3360
    nop

    .line 3361
    move v1, v13

    move v3, v1

    move v4, v3

    :goto_5
    iget-object v12, v10, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_16

    .line 3362
    if-ltz v0, :cond_10

    iget-object v12, v10, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    if-eq v0, v12, :cond_10

    .line 3363
    goto/16 :goto_8

    .line 3365
    :cond_10
    nop

    .line 3366
    iget-object v12, v10, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    .line 3367
    move/from16 v21, v4

    move/from16 v20, v13

    move v4, v3

    move/from16 v3, v20

    :goto_6
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v3, v14, :cond_14

    .line 3368
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$ModeCallback;

    .line 3369
    if-eqz v9, :cond_11

    iget v13, v14, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v13, :cond_11

    iget v13, v14, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3370
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v2, v13, :cond_11

    .line 3371
    goto :goto_7

    .line 3373
    :cond_11
    nop

    .line 3374
    if-nez v4, :cond_12

    .line 3375
    const-string v4, "  Op mode watchers:"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3376
    nop

    .line 3378
    const/4 v4, 0x1

    :cond_12
    if-nez v20, :cond_13

    .line 3379
    const-string v13, "    Op "

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3380
    iget-object v13, v10, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3381
    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3382
    nop

    .line 3384
    const/16 v20, 0x1

    :cond_13
    const-string v13, "      #"

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, ": "

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {v11, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3367
    const/16 v21, 0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_6

    .line 3361
    :cond_14
    move v3, v4

    move/from16 v4, v21

    :goto_8
    add-int/lit8 v1, v1, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_5

    .line 3389
    :cond_15
    const/4 v4, 0x0

    :cond_16
    iget-object v1, v10, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1a

    if-gez v0, :cond_1a

    .line 3390
    nop

    .line 3391
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_9
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1a

    .line 3392
    if-eqz v9, :cond_17

    iget-object v3, v10, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3393
    goto :goto_b

    .line 3395
    :cond_17
    nop

    .line 3396
    if-nez v14, :cond_18

    .line 3397
    const-string v3, "  Package mode watchers:"

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3398
    nop

    .line 3400
    const/4 v14, 0x1

    :cond_18
    const-string v3, "    Pkg "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v10, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3401
    const-string v3, ":"

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3402
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 3403
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-ge v4, v12, :cond_19

    .line 3404
    const-string v12, "      #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3405
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3403
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 3391
    :cond_19
    const/4 v4, 0x1

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3409
    :cond_1a
    iget-object v1, v10, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1d

    if-gez v0, :cond_1d

    .line 3410
    nop

    .line 3411
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_c
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 3412
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ModeCallback;

    .line 3413
    if-eqz v9, :cond_1b

    iget v12, v3, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v12, :cond_1b

    iget v12, v3, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3414
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v2, v12, :cond_1b

    .line 3415
    goto :goto_d

    .line 3417
    :cond_1b
    nop

    .line 3418
    if-nez v14, :cond_1c

    .line 3419
    const-string v4, "  All op mode watchers:"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3420
    nop

    .line 3422
    const/4 v14, 0x1

    :cond_1c
    const-string v4, "    "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3423
    iget-object v4, v10, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3424
    const-string v4, ": "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3411
    const/4 v4, 0x1

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3427
    :cond_1d
    move v14, v4

    iget-object v1, v10, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_26

    if-gez v15, :cond_26

    .line 3428
    nop

    .line 3429
    nop

    .line 3430
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_e
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 3431
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3432
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_1e

    .line 3433
    nop

    .line 3430
    const/4 v12, 0x0

    goto :goto_f

    .line 3435
    :cond_1e
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;

    .line 3436
    if-ltz v0, :cond_1f

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v13

    if-gez v13, :cond_1f

    .line 3437
    goto :goto_f

    .line 3439
    :cond_1f
    if-eqz v9, :cond_20

    iget v13, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v13, :cond_20

    iget v13, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3440
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v2, v13, :cond_20

    .line 3441
    nop

    .line 3430
    :goto_f
    move v13, v1

    goto :goto_11

    .line 3443
    :cond_20
    if-nez v14, :cond_21

    .line 3444
    const-string v13, "  All op active watchers:"

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3445
    nop

    .line 3447
    const/4 v14, 0x1

    :cond_21
    const-string v13, "    "

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3448
    iget-object v13, v10, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3449
    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 3448
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3450
    const-string v1, " ->"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    const-string v1, "        ["

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3452
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3453
    move v13, v12

    :goto_10
    if-ge v13, v1, :cond_24

    .line 3454
    if-lez v13, :cond_22

    .line 3455
    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3457
    :cond_22
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3458
    add-int/lit8 v12, v1, -0x1

    if-ge v13, v12, :cond_23

    .line 3459
    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3453
    :cond_23
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto :goto_10

    .line 3462
    :cond_24
    const-string v1, "]"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3463
    const-string v1, "        "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3464
    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3430
    :goto_11
    const/4 v1, 0x1

    add-int/lit8 v3, v13, 0x1

    move v1, v3

    goto/16 :goto_e

    .line 3467
    :cond_25
    const/4 v14, 0x1

    :cond_26
    iget-object v1, v10, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_30

    if-gez v15, :cond_30

    .line 3468
    nop

    .line 3469
    nop

    .line 3470
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 3471
    nop

    .line 3472
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ClientState;

    .line 3473
    iget-object v4, v3, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2e

    .line 3474
    nop

    .line 3475
    move v14, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_13
    iget-object v13, v3, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_2d

    .line 3476
    iget-object v13, v3, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 3477
    if-ltz v0, :cond_27

    move-object/from16 v23, v5

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    if-eq v5, v0, :cond_28

    .line 3478
    goto :goto_14

    .line 3480
    :cond_27
    move-object/from16 v23, v5

    :cond_28
    if-eqz v9, :cond_29

    iget-object v5, v13, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 3481
    goto :goto_14

    .line 3483
    :cond_29
    if-nez v14, :cond_2a

    .line 3484
    const-string v5, "  Clients:"

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    nop

    .line 3487
    const/4 v14, 0x1

    :cond_2a
    if-nez v4, :cond_2b

    .line 3488
    const-string v4, "    "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v10, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v4, ":"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3489
    const-string v4, "      "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3490
    nop

    .line 3492
    const/4 v4, 0x1

    :cond_2b
    if-nez v12, :cond_2c

    .line 3493
    const-string v5, "      Started ops:"

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3494
    nop

    .line 3496
    const/4 v12, 0x1

    :cond_2c
    const-string v5, "        "

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "uid="

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3497
    const-string v5, " pkg="

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3498
    const-string v5, " op="

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3475
    :goto_14
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v23

    goto/16 :goto_13

    .line 3470
    :cond_2d
    move-object/from16 v23, v5

    move v2, v14

    goto :goto_15

    :cond_2e
    move-object/from16 v23, v5

    :goto_15
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v23

    goto/16 :goto_12

    .line 3503
    :cond_2f
    move-object/from16 v23, v5

    const/4 v14, 0x1

    goto :goto_16

    :cond_30
    move-object/from16 v23, v5

    :goto_16
    iget-object v1, v10, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_35

    if-gez v0, :cond_35

    if-eqz v9, :cond_35

    if-gez v15, :cond_35

    .line 3505
    nop

    .line 3506
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 3507
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    .line 3508
    iget-object v4, v10, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3509
    move v5, v2

    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v2, v12, :cond_34

    .line 3510
    if-nez v5, :cond_31

    .line 3511
    const-string v5, "  Audio Restrictions:"

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3512
    nop

    .line 3513
    nop

    .line 3515
    const/4 v5, 0x1

    const/4 v14, 0x1

    :cond_31
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 3516
    const-string v13, "    "

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3517
    const-string v13, " usage="

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3518
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Restriction;

    .line 3519
    const-string v13, ": mode="

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v13, v12, Lcom/android/server/AppOpsService$Restriction;->mode:I

    invoke-static {v13}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3520
    iget-object v13, v12, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_32

    .line 3521
    const-string v13, "      Exceptions:"

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3522
    const/4 v13, 0x0

    :goto_19
    move-object/from16 v24, v3

    iget-object v3, v12, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v13, v3, :cond_33

    .line 3523
    const-string v3, "        "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3522
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v24

    goto :goto_19

    .line 3509
    :cond_32
    move-object/from16 v24, v3

    :cond_33
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v24

    goto :goto_18

    .line 3506
    :cond_34
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto/16 :goto_17

    .line 3529
    :cond_35
    if-eqz v14, :cond_36

    .line 3530
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3532
    :cond_36
    const/4 v12, 0x0

    :goto_1a
    iget-object v1, v10, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_63

    .line 3533
    iget-object v1, v10, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    .line 3534
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3535
    iget-object v13, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 3537
    if-gez v0, :cond_38

    if-nez v9, :cond_38

    if-ltz v15, :cond_37

    goto :goto_1b

    .line 3579
    :cond_37
    move-object/from16 v27, v8

    goto/16 :goto_27

    .line 3538
    :cond_38
    :goto_1b
    if-ltz v0, :cond_3a

    iget-object v3, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_39

    iget-object v3, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3539
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_39

    goto :goto_1c

    .line 3540
    :cond_39
    const/4 v3, 0x0

    goto :goto_1d

    .line 3539
    :cond_3a
    :goto_1c
    nop

    .line 3540
    const/4 v3, 0x1

    :goto_1d
    if-nez v9, :cond_3b

    .line 3541
    const/4 v4, 0x1

    goto :goto_1e

    .line 3540
    :cond_3b
    nop

    .line 3541
    const/4 v4, 0x0

    :goto_1e
    if-gez v15, :cond_3c

    .line 3542
    const/4 v5, 0x1

    goto :goto_1f

    .line 3541
    :cond_3c
    nop

    .line 3542
    const/4 v5, 0x0

    :goto_1f
    if-nez v5, :cond_3f

    if-eqz v2, :cond_3f

    .line 3543
    move/from16 v25, v3

    const/4 v3, 0x0

    :goto_20
    if-nez v5, :cond_3e

    move/from16 v26, v4

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 3544
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-ne v4, v15, :cond_3d

    .line 3545
    nop

    .line 3543
    const/4 v5, 0x1

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v26

    goto :goto_20

    .line 3549
    :cond_3e
    :goto_21
    move/from16 v26, v4

    goto :goto_22

    :cond_3f
    move/from16 v25, v3

    goto :goto_21

    :cond_40
    :goto_22
    if-eqz v13, :cond_48

    .line 3550
    nop

    .line 3551
    const/4 v3, 0x0

    :goto_23
    if-eqz v25, :cond_41

    if-eqz v26, :cond_41

    if-nez v5, :cond_48

    :cond_41
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 3553
    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Ops;

    .line 3554
    if-nez v25, :cond_42

    if-eqz v4, :cond_42

    invoke-virtual {v4, v0}, Lcom/android/server/AppOpsService$Ops;->indexOfKey(I)I

    move-result v20

    if-ltz v20, :cond_42

    .line 3555
    nop

    .line 3557
    const/16 v25, 0x1

    :cond_42
    if-nez v5, :cond_46

    .line 3558
    move-object/from16 v27, v8

    const/4 v8, 0x0

    :goto_24
    if-nez v5, :cond_44

    move/from16 v28, v5

    invoke-virtual {v4}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v5

    if-ge v8, v5, :cond_45

    .line 3559
    invoke-virtual {v4, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Op;

    iget v5, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v5, v15, :cond_43

    .line 3560
    nop

    .line 3558
    const/4 v5, 0x1

    goto :goto_25

    :cond_43
    move/from16 v5, v28

    :goto_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 3564
    :cond_44
    move/from16 v28, v5

    :cond_45
    move/from16 v5, v28

    goto :goto_26

    :cond_46
    move-object/from16 v27, v8

    :goto_26
    if-nez v26, :cond_47

    iget-object v4, v4, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3565
    nop

    .line 3552
    const/16 v26, 0x1

    :cond_47
    add-int/lit8 v3, v3, 0x1

    .line 3551
    move-object/from16 v8, v27

    goto :goto_23

    .line 3569
    :cond_48
    move-object/from16 v27, v8

    iget-object v3, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_49

    if-nez v25, :cond_49

    .line 3570
    iget-object v3, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-lez v3, :cond_49

    .line 3571
    nop

    .line 3574
    const/16 v25, 0x1

    :cond_49
    if-eqz v25, :cond_62

    if-eqz v26, :cond_62

    if-nez v5, :cond_4a

    .line 3575
    goto/16 :goto_36

    .line 3579
    :cond_4a
    :goto_27
    const-string v3, "  Uid "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v11, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ":"

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3580
    const-string v3, "    state="

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3581
    sget-object v3, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-object v3, v3, v4

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-eq v3, v4, :cond_4b

    .line 3583
    const-string v3, "    pendingState="

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3584
    sget-object v3, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    aget-object v3, v3, v4

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3586
    :cond_4b
    iget-wide v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v20, 0x0

    cmp-long v3, v3, v20

    if-eqz v3, :cond_4c

    .line 3587
    const-string v3, "    pendingStateCommitTime="

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3588
    iget-wide v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v3, v4, v6, v7, v11}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3589
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3591
    :cond_4c
    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    if-eqz v3, :cond_4d

    .line 3592
    const-string v3, "    startNesting="

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3593
    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3595
    :cond_4d
    iget-object v3, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_52

    if-ltz v15, :cond_4e

    const/4 v3, 0x4

    if-ne v15, v3, :cond_52

    .line 3597
    :cond_4e
    const-string v3, "    foregroundOps:"

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    const/4 v3, 0x0

    :goto_28
    iget-object v4, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 3599
    if-ltz v0, :cond_4f

    iget-object v4, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    if-eq v0, v4, :cond_4f

    .line 3600
    goto :goto_2a

    .line 3602
    :cond_4f
    const-string v4, "      "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3603
    iget-object v4, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3604
    const-string v4, ": "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3605
    iget-object v4, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, "WATCHER"

    goto :goto_29

    :cond_50
    const-string v4, "SILENT"

    :goto_29
    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 3607
    :cond_51
    const-string v3, "    hasForegroundWatchers="

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3608
    iget-boolean v1, v1, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3610
    :cond_52
    nop

    .line 3612
    if-eqz v2, :cond_55

    .line 3613
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3614
    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_55

    .line 3615
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3616
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 3617
    if-ltz v0, :cond_53

    if-eq v0, v4, :cond_53

    .line 3618
    goto :goto_2c

    .line 3620
    :cond_53
    if-ltz v15, :cond_54

    if-eq v15, v5, :cond_54

    .line 3621
    goto :goto_2c

    .line 3623
    :cond_54
    const-string v8, "      "

    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3624
    const-string v4, ": mode="

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 3628
    :cond_55
    if-nez v13, :cond_57

    .line 3629
    nop

    .line 3532
    :cond_56
    move/from16 v29, v0

    move-wide/from16 v24, v6

    move-object/from16 v21, v23

    move-object/from16 v22, v27

    const/4 v2, -0x1

    move-object/from16 v27, v9

    goto/16 :goto_35

    .line 3632
    :cond_57
    const/4 v14, 0x0

    :goto_2d
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v14, v1, :cond_56

    .line 3633
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/AppOpsService$Ops;

    .line 3634
    if-eqz v9, :cond_58

    iget-object v1, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 3635
    goto/16 :goto_34

    .line 3637
    :cond_58
    nop

    .line 3638
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2e
    invoke-virtual {v8}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v5, v2, :cond_61

    .line 3639
    invoke-virtual {v8, v5}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/AppOpsService$Op;

    .line 3640
    if-ltz v0, :cond_59

    iget v2, v4, Lcom/android/server/AppOpsService$Op;->op:I

    if-eq v0, v2, :cond_59

    .line 3641
    goto :goto_2f

    .line 3643
    :cond_59
    if-ltz v15, :cond_5a

    iget v2, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v15, v2, :cond_5a

    .line 3644
    nop

    .line 3638
    :goto_2f
    move/from16 v29, v0

    move-wide/from16 v24, v6

    move-object/from16 v26, v8

    move-object/from16 v21, v23

    move-object/from16 v22, v27

    const/4 v2, -0x1

    move/from16 v23, v5

    move-object/from16 v27, v9

    goto/16 :goto_33

    .line 3646
    :cond_5a
    if-nez v1, :cond_5b

    .line 3647
    const-string v1, "    Package "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    nop

    .line 3650
    const/16 v20, 0x1

    goto :goto_30

    :cond_5b
    move/from16 v20, v1

    :goto_30
    const-string v1, "      "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v4, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3651
    const-string v1, " ("

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3652
    iget v1, v4, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 3653
    iget v2, v4, Lcom/android/server/AppOpsService$Op;->op:I

    if-eq v1, v2, :cond_5d

    .line 3654
    const-string v2, " / switch "

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3655
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3656
    invoke-virtual {v8, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    .line 3657
    if-eqz v2, :cond_5c

    .line 3658
    iget v1, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_31

    :cond_5c
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    .line 3659
    :goto_31
    const-string v2, "="

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3661
    :cond_5d
    const-string v1, "): "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    const-string v3, "          Access: "

    const-string v21, "                  "

    iget-object v2, v4, Lcom/android/server/AppOpsService$Op;->time:[J

    move-object v1, v10

    move-object/from16 v22, v2

    move-object v2, v11

    move/from16 v29, v0

    move-object v0, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v23

    move/from16 v23, v5

    move-object/from16 v5, v22

    move-wide/from16 v24, v6

    move-wide/from16 v6, v16

    move-object/from16 v26, v8

    move-object/from16 v22, v27

    move-object/from16 v8, v22

    move-object/from16 v27, v9

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 3665
    const-string v3, "          Reject: "

    const-string v4, "                  "

    iget-object v5, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    move-object v1, v10

    move-object v2, v11

    move-wide/from16 v6, v16

    move-object/from16 v8, v22

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 3668
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5e

    .line 3669
    const-string v1, "          Running start at: "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3670
    iget-wide v3, v0, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v3, v18, v3

    invoke-static {v3, v4, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3671
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_32

    .line 3672
    :cond_5e
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    if-eqz v1, :cond_5f

    .line 3673
    const-string v1, "          duration="

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v3, v1

    invoke-static {v3, v4, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3675
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3677
    :cond_5f
    :goto_32
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eqz v1, :cond_60

    .line 3678
    const-string v1, "          startNesting="

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3679
    iget v0, v0, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3638
    :cond_60
    move/from16 v1, v20

    :goto_33
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v23, v21

    move-wide/from16 v6, v24

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move/from16 v0, v29

    move-object/from16 v27, v22

    goto/16 :goto_2e

    .line 3632
    :cond_61
    :goto_34
    move/from16 v29, v0

    move-wide/from16 v24, v6

    move-object/from16 v21, v23

    move-object/from16 v22, v27

    const/4 v2, -0x1

    move-object/from16 v27, v9

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v23, v21

    move-wide/from16 v6, v24

    move-object/from16 v9, v27

    move/from16 v0, v29

    move-object/from16 v27, v22

    goto/16 :goto_2d

    .line 3532
    :goto_35
    const/4 v14, 0x1

    goto :goto_37

    :cond_62
    :goto_36
    move/from16 v29, v0

    move-wide/from16 v24, v6

    move-object/from16 v21, v23

    move-object/from16 v22, v27

    const/4 v2, -0x1

    move-object/from16 v27, v9

    :goto_37
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v23, v21

    move-object/from16 v8, v22

    move-wide/from16 v6, v24

    move-object/from16 v9, v27

    move/from16 v0, v29

    goto/16 :goto_1a

    .line 3684
    :cond_63
    if-eqz v14, :cond_64

    .line 3685
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3688
    :cond_64
    iget-object v0, v10, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3689
    const/4 v1, 0x0

    :goto_38
    if-ge v1, v0, :cond_6d

    .line 3690
    iget-object v2, v10, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 3691
    iget-object v3, v10, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 3692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  User restrictions for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v2, :cond_65

    .line 3695
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    goto :goto_39

    .line 3696
    :cond_65
    const/4 v13, 0x0

    :goto_39
    if-lez v13, :cond_6a

    .line 3697
    const-string v2, "      Restricted ops:"

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v13, :cond_6a

    .line 3699
    iget-object v4, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3700
    iget-object v5, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    .line 3701
    if-nez v5, :cond_66

    .line 3702
    nop

    .line 3698
    const/4 v12, 0x1

    goto :goto_3d

    .line 3704
    :cond_66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3705
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    array-length v7, v5

    .line 3707
    const/4 v8, 0x0

    :goto_3b
    if-ge v8, v7, :cond_69

    .line 3708
    aget-boolean v9, v5, v8

    if-eqz v9, :cond_68

    .line 3709
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v12, 0x1

    if-le v9, v12, :cond_67

    .line 3710
    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3712
    :cond_67
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 3707
    :cond_68
    const/4 v12, 0x1

    :goto_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 3715
    :cond_69
    const/4 v12, 0x1

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3716
    const-string v5, "        "

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "user: "

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3717
    const-string v4, " restricted ops: "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3698
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 3721
    :cond_6a
    const/4 v12, 0x1

    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v2, :cond_6b

    .line 3722
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    goto :goto_3e

    .line 3723
    :cond_6b
    const/4 v13, 0x0

    :goto_3e
    if-lez v13, :cond_6c

    .line 3724
    const-string v2, "      Excluded packages:"

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v13, :cond_6c

    .line 3726
    iget-object v4, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3727
    iget-object v5, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 3728
    const-string v6, "        "

    invoke-virtual {v11, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "user: "

    invoke-virtual {v11, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3729
    const-string v4, " packages: "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 3689
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_38

    .line 3733
    :cond_6d
    monitor-exit p0

    .line 3734
    return-void

    .line 3733
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method enforceManageAppOpsModes(III)V
    .locals 2

    .line 1136
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1137
    return-void

    .line 1139
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1140
    monitor-enter p0

    .line 1141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 1142
    if-ltz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 1145
    monitor-exit p0

    return-void

    .line 1148
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    iget-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.MANAGE_APP_OPS_MODES"

    .line 1150
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 1149
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1151
    return-void

    .line 1148
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5

    .line 1993
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1994
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1995
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1996
    if-nez v0, :cond_0

    .line 1997
    return-void

    .line 1999
    :cond_0
    instance-of v1, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v1, :cond_1

    .line 2000
    return-void

    .line 2002
    :cond_1
    check-cast p1, Lcom/android/server/AppOpsService$ClientState;

    .line 2003
    monitor-enter p0

    .line 2004
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 2005
    if-nez v1, :cond_2

    .line 2006
    monitor-exit p0

    return-void

    .line 2008
    :cond_2
    iget-object p1, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_4

    .line 2013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2015
    :try_start_1
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 2016
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    .line 2015
    invoke-virtual {p1, v0, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result p1

    if-gez p1, :cond_3

    .line 2017
    const-string p1, "AppOps"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing op="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for non-existing package="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in uid="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2023
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 2020
    return-void

    .line 2023
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2024
    nop

    .line 2025
    const-string p1, "AppOps"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Operation not started: uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pkg="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " op="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 2026
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2025
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    monitor-exit p0

    return-void

    .line 2023
    :catchall_0
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2029
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 2030
    iget p1, v1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz p1, :cond_5

    .line 2031
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 2033
    :cond_5
    monitor-exit p0

    .line 2034
    return-void

    .line 2033
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V
    .locals 6

    .line 2091
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2105
    :cond_0
    iget p2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr p2, v1

    iput p2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 2106
    iget-object p1, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget p2, p1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    sub-int/2addr p2, v1

    iput p2, p1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    goto/16 :goto_3

    .line 2092
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eq v0, v1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 2096
    :cond_2
    const-string p2, "AppOps"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2093
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long/2addr v2, v4

    long-to-int p2, v2

    iput p2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2094
    iget-object p2, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 2100
    :goto_2
    iget p2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lt p2, v1, :cond_4

    .line 2101
    iget-object p2, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v0, p2, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    iget v1, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    .line 2103
    :cond_4
    const/4 p2, 0x0

    iput p2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 2108
    :goto_3
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 1068
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1067
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1069
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1070
    if-nez p2, :cond_0

    .line 1071
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1073
    :cond_0
    monitor-enter p0

    .line 1074
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object p1

    .line 1076
    if-nez p1, :cond_1

    .line 1077
    monitor-exit p0

    return-object v4

    .line 1079
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1080
    if-nez p2, :cond_2

    .line 1081
    monitor-exit p0

    return-object v4

    .line 1083
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    iget-object v1, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget p1, p1, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v0, v1, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1086
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    monitor-exit p0

    return-object p3

    .line 1088
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 1036
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1035
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1037
    nop

    .line 1038
    monitor-enter p0

    .line 1039
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1040
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1041
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$UidState;

    .line 1042
    iget-object v5, v3, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1043
    goto :goto_2

    .line 1045
    :cond_0
    iget-object v3, v3, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1046
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1047
    move-object v6, v4

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_3

    .line 1048
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 1049
    invoke-direct {p0, v7, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v8

    .line 1050
    if-eqz v8, :cond_2

    .line 1051
    if-nez v6, :cond_1

    .line 1052
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    :cond_1
    new-instance v9, Landroid/app/AppOpsManager$PackageOps;

    iget-object v10, v7, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v7, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v9, v10, v7, v8}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1056
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1040
    :cond_3
    move-object v4, v6

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_5
    monitor-exit p0

    .line 1061
    return-object v4

    .line 1060
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z
    .locals 6

    .line 4227
    sget-object v0, Landroid/app/AppOpsManager;->PRIVACY_GUARD_OP_STATES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 4228
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 4229
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    .line 4230
    if-eqz v4, :cond_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 4231
    return v5

    .line 4227
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4234
    :cond_1
    return v2
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2

    .line 1572
    monitor-enter p0

    .line 1573
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1574
    if-nez v0, :cond_0

    .line 1575
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 1576
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1579
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1093
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 1094
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1093
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1095
    monitor-enter p0

    .line 1096
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object p1

    .line 1097
    if-nez p1, :cond_0

    .line 1098
    monitor-exit p0

    return-object v4

    .line 1100
    :cond_0
    iget-object v0, p1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, p2}, Lcom/android/server/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1101
    if-nez p2, :cond_1

    .line 1102
    monitor-exit p0

    return-object v4

    .line 1104
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    new-instance v1, Landroid/app/AppOpsManager$PackageOps;

    iget p1, p1, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v1, v4, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    monitor-exit p0

    return-object v0

    .line 1109
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handlePackageResumed(ILjava/lang/String;)V
    .locals 2

    .line 842
    monitor-enter p0

    .line 843
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object p1

    .line 844
    if-nez p1, :cond_0

    .line 845
    monitor-exit p0

    return-void

    .line 847
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Ops;->startRealtime:J

    .line 848
    monitor-exit p0

    .line 849
    return-void

    .line 848
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 6

    .line 3831
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 3832
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3834
    return v1

    .line 3837
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 3838
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3839
    if-nez p3, :cond_1

    .line 3840
    return v1

    .line 3842
    :cond_1
    monitor-enter p0

    .line 3843
    :try_start_0
    iget-object p3, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_4

    .line 3844
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientState;

    .line 3845
    iget-object v3, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_3

    .line 3846
    iget-object v4, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Op;

    .line 3847
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->op:I

    if-ne v5, p1, :cond_2

    iget v4, v4, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne v4, p2, :cond_2

    monitor-exit p0

    return v0

    .line 3845
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3843
    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 3850
    :cond_4
    monitor-exit p0

    .line 3851
    return v1

    .line 3850
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 7

    .line 1724
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1725
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1726
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1727
    if-nez v3, :cond_0

    .line 1728
    const/4 p1, 0x1

    return p1

    .line 1730
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 10

    .line 1703
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1705
    invoke-static {v2, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1706
    const/4 p2, 0x1

    if-nez v8, :cond_0

    .line 1707
    return p2

    .line 1709
    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result v7

    .line 1711
    if-nez v7, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 1714
    :cond_1
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1715
    if-nez v6, :cond_2

    .line 1716
    return p2

    .line 1718
    :cond_2
    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result p1

    return p1

    .line 1712
    :cond_3
    :goto_0
    return v7
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .locals 6

    .line 3956
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 3957
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 3958
    nop

    .line 3959
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 3960
    nop

    .line 3961
    monitor-enter p0

    .line 3962
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    .line 3963
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 3964
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 3966
    iget-object v4, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v4, p4}, Lcom/android/server/PermissionDialogReqQueue;->dismissAndNotify(I)V

    .line 3967
    if-eqz p5, :cond_4

    iget p5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq p5, p4, :cond_4

    .line 3968
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 3969
    iget-object p5, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArraySet;

    .line 3970
    if-eqz p5, :cond_0

    .line 3971
    nop

    .line 3972
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3974
    invoke-virtual {v3, p5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 3976
    :cond_0
    iget-object p5, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArraySet;

    .line 3977
    if-eqz p5, :cond_2

    .line 3978
    if-nez v3, :cond_1

    .line 3979
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3981
    :cond_1
    invoke-virtual {v3, p5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 3983
    :cond_2
    iget p5, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {p5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p5

    if-ne p4, p5, :cond_3

    .line 3986
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 3988
    :cond_3
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 3991
    :cond_4
    move-object v2, v3

    const/4 p5, 0x0

    invoke-direct {p0, p2, p5}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 3992
    if-eqz v0, :cond_6

    iget v3, v0, Lcom/android/server/AppOpsService$UidState;->pendingAskOp:I

    if-ne v3, p1, :cond_6

    .line 3993
    if-nez p4, :cond_5

    .line 3994
    iput-boolean v1, v0, Lcom/android/server/AppOpsService$UidState;->receivedPendingAskResponse:Z

    .line 3995
    nop

    .line 4001
    move p5, v1

    goto :goto_0

    .line 3997
    :cond_5
    iput p5, v0, Lcom/android/server/AppOpsService$UidState;->pendingAskOp:I

    .line 3998
    iput-boolean p5, v0, Lcom/android/server/AppOpsService$UidState;->receivedPendingAskResponse:Z

    .line 4001
    :cond_6
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4002
    if-eqz v2, :cond_7

    .line 4003
    iget-object p4, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;

    .line 4005
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4003
    move-object v1, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4007
    :cond_7
    if-eqz p5, :cond_8

    .line 4008
    const-class p1, Landroid/os/storage/StorageManagerInternal;

    .line 4009
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManagerInternal;

    .line 4010
    invoke-virtual {p1, p2, p3}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V

    .line 4012
    :cond_8
    return-void

    .line 4001
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 2989
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2990
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 9

    .line 852
    monitor-enter p0

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 854
    if-nez v0, :cond_0

    .line 855
    monitor-exit p0

    return-void

    .line 858
    :cond_0
    const/4 v1, 0x0

    .line 861
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    .line 862
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Ops;

    .line 866
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2

    .line 868
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 873
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 874
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    .line 875
    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 876
    goto :goto_2

    .line 878
    :cond_3
    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 879
    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1
    if-ltz v5, :cond_5

    .line 880
    iget-object v7, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Op;

    .line 881
    iget v8, v7, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne p1, v8, :cond_4

    iget-object v8, v7, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 882
    invoke-virtual {p0, v7, v6}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 883
    iget-object v8, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 884
    iget v8, v7, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v8, :cond_4

    .line 885
    iget v7, v7, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-direct {p0, v7, p1, p2, v2}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 879
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 873
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 892
    :cond_6
    if-eqz v1, :cond_8

    .line 893
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 895
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result p1

    .line 896
    move p2, v2

    :goto_3
    if-ge p2, p1, :cond_8

    .line 897
    invoke-virtual {v1, p2}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 898
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 899
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v4, v0, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v0, v0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 896
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 904
    :cond_8
    monitor-exit p0

    .line 905
    return-void

    .line 904
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 0

    .line 2084
    if-nez p1, :cond_0

    .line 2085
    const/4 p1, -0x1

    return p1

    .line 2087
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public publish(Landroid/content/Context;)V
    .locals 1

    .line 636
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 637
    const-string p1, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 638
    const-class p1, Landroid/app/AppOpsManagerInternal;

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 639
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2484
    const-string v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2485
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2487
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2488
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2489
    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2490
    goto :goto_0

    .line 2493
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2494
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2495
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 2497
    :cond_3
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <pkg>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2498
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2497
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2501
    :goto_1
    goto :goto_0

    .line 2502
    :cond_4
    return-void
.end method

.method readState()V
    .locals 9

    .line 2326
    nop

    .line 2327
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 2328
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2331
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2335
    nop

    .line 2336
    nop

    .line 2337
    :try_start_2
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2339
    const/4 v2, -0x1

    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2340
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2342
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 2347
    :cond_0
    if-ne v4, v6, :cond_8

    .line 2351
    const/4 v4, 0x0

    const-string/jumbo v6, "v"

    invoke-interface {v3, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2352
    if-eqz v4, :cond_1

    .line 2353
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2356
    move v2, v4

    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 2357
    :cond_2
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 2358
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_7

    .line 2359
    :cond_3
    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 2360
    goto :goto_1

    .line 2363
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2364
    const-string/jumbo v7, "pkg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2365
    invoke-virtual {p0, v3}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2366
    :cond_5
    const-string/jumbo v7, "uid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2367
    invoke-virtual {p0, v3}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2369
    :cond_6
    const-string v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <app-ops>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2369
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2373
    :goto_2
    goto :goto_1

    .line 2374
    :cond_7
    nop

    .line 2388
    nop

    .line 2392
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2394
    :goto_3
    goto/16 :goto_4

    .line 2393
    :catch_0
    move-exception v1

    .line 2395
    goto/16 :goto_4

    .line 2348
    :cond_8
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "no start tag found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2388
    :catchall_0
    move-exception v2

    goto/16 :goto_5

    .line 2385
    :catch_1
    move-exception v3

    .line 2386
    :try_start_6
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2388
    nop

    .line 2389
    :try_start_7
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2392
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 2383
    :catch_2
    move-exception v3

    .line 2384
    :try_start_9
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2388
    nop

    .line 2389
    :try_start_a
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2392
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    .line 2381
    :catch_3
    move-exception v3

    .line 2382
    :try_start_c
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2388
    nop

    .line 2389
    :try_start_d
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2392
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_3

    .line 2379
    :catch_4
    move-exception v3

    .line 2380
    :try_start_f
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2388
    nop

    .line 2389
    :try_start_10
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2392
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_3

    .line 2377
    :catch_5
    move-exception v3

    .line 2378
    :try_start_12
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2388
    nop

    .line 2389
    :try_start_13
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 2392
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_3

    .line 2375
    :catch_6
    move-exception v3

    .line 2376
    :try_start_15
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2388
    nop

    .line 2389
    :try_start_16
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 2392
    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto/16 :goto_3

    .line 2396
    :goto_4
    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 2397
    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 2398
    monitor-enter p0

    .line 2399
    :try_start_1a
    invoke-direct {p0, v2}, Lcom/android/server/AppOpsService;->upgradeLocked(I)V

    .line 2400
    monitor-exit p0

    .line 2401
    return-void

    .line 2400
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    throw v0

    .line 2388
    :goto_5
    nop

    .line 2389
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 2392
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 2394
    goto :goto_6

    .line 2393
    :catch_7
    move-exception v1

    .line 2394
    :goto_6
    :try_start_1d
    throw v2

    .line 2396
    :catchall_2
    move-exception v1

    goto :goto_7

    .line 2332
    :catch_8
    move-exception v1

    .line 2333
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing app ops "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; starting empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :try_start_1e
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    return-void

    .line 2396
    :goto_7
    :try_start_1f
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :try_start_20
    throw v1

    .line 2397
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    throw v1
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2506
    move-object/from16 v3, p2

    const-string v0, "n"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2507
    const-string/jumbo v0, "p"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2508
    nop

    .line 2509
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_3

    .line 2511
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2512
    if-eqz v0, :cond_2

    .line 2513
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2514
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-interface {v0, v3, v7, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2515
    if-eqz v0, :cond_1

    .line 2516
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v6

    if-eqz v0, :cond_0

    .line 2519
    move v0, v8

    goto :goto_0

    .line 2516
    :cond_0
    nop

    .line 2519
    :cond_1
    move v0, v7

    .line 2525
    :goto_0
    goto :goto_1

    .line 2521
    :cond_2
    return-void

    .line 2523
    :catch_0
    move-exception v0

    .line 2524
    const-string v9, "AppOps"

    const-string v10, "Could not contact PackageManager"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2525
    nop

    .line 2529
    move v0, v7

    goto :goto_1

    .line 2527
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2529
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 2531
    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v8, :cond_10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 2532
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v9, :cond_10

    .line 2533
    :cond_5
    if-eq v10, v11, :cond_4

    const/4 v12, 0x4

    if-ne v10, v12, :cond_6

    .line 2534
    goto :goto_2

    .line 2537
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2538
    const-string/jumbo v13, "op"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2539
    invoke-direct {v1, v5, v8}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v10

    .line 2540
    iget-object v13, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v13, :cond_7

    .line 2541
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    iput-object v13, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2544
    :cond_7
    const-string v13, "n"

    invoke-interface {v2, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2546
    const-string v14, "ns"

    invoke-interface {v2, v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2547
    if-eqz v14, :cond_8

    .line 2549
    invoke-static {v14}, Landroid/app/AppOpsManager;->nameToOp(Ljava/lang/String;)I

    move-result v13

    .line 2552
    :cond_8
    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    const/16 v15, 0x52

    if-lt v13, v15, :cond_9

    .line 2553
    goto :goto_2

    .line 2556
    :cond_9
    new-instance v15, Lcom/android/server/AppOpsService$Op;

    const/4 v6, 0x2

    invoke-direct {v15, v10, v3, v13, v6}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 2558
    const-string v14, "m"

    invoke-interface {v2, v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2559
    if-eqz v14, :cond_a

    .line 2560
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_3

    .line 2562
    :cond_a
    const-string v14, "dm"

    invoke-interface {v2, v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2563
    if-eqz v14, :cond_b

    .line 2564
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_3

    .line 2566
    :cond_b
    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v13

    iput v13, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2570
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    sub-int/2addr v13, v8

    :goto_4
    if-ltz v13, :cond_d

    .line 2571
    invoke-interface {v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 2572
    invoke-interface {v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 2573
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, 0x5

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string/jumbo v7, "tfs"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0xb

    goto/16 :goto_6

    :sswitch_1
    const-string/jumbo v7, "rfs"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x11

    goto/16 :goto_6

    :sswitch_2
    const-string/jumbo v7, "tt"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0xa

    goto/16 :goto_6

    :sswitch_3
    const-string/jumbo v7, "tp"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x9

    goto/16 :goto_6

    :sswitch_4
    const-string/jumbo v7, "tf"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0xc

    goto/16 :goto_6

    :sswitch_5
    const-string/jumbo v7, "tc"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0xe

    goto/16 :goto_6

    :sswitch_6
    const-string/jumbo v7, "tb"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0xd

    goto/16 :goto_6

    :sswitch_7
    const-string/jumbo v7, "rt"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x10

    goto/16 :goto_6

    :sswitch_8
    const-string/jumbo v7, "rp"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0xf

    goto/16 :goto_6

    :sswitch_9
    const-string/jumbo v7, "rf"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x12

    goto/16 :goto_6

    :sswitch_a
    const-string/jumbo v7, "rc"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x14

    goto/16 :goto_6

    :sswitch_b
    const-string/jumbo v7, "rb"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x13

    goto/16 :goto_6

    :sswitch_c
    const-string/jumbo v7, "pu"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x7

    goto/16 :goto_6

    :sswitch_d
    const-string/jumbo v7, "pp"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x8

    goto/16 :goto_6

    :sswitch_e
    const-string v7, "ns"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move/from16 v7, v17

    goto :goto_6

    :sswitch_f
    const-string v7, "ic"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v8

    goto :goto_6

    :sswitch_10
    const-string v7, "dm"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v6

    goto :goto_6

    :sswitch_11
    const-string v7, "ac"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    goto :goto_6

    :sswitch_12
    const-string/jumbo v7, "t"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x15

    goto :goto_6

    :sswitch_13
    const-string/jumbo v7, "r"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x16

    goto :goto_6

    :sswitch_14
    const-string v7, "n"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v12

    goto :goto_6

    :sswitch_15
    const-string v7, "m"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v11

    goto :goto_6

    :sswitch_16
    const-string v7, "d"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x6

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v7, -0x1

    :goto_6
    packed-switch v7, :pswitch_data_0

    .line 2645
    const-string v4, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown attribute in \'op\' tag: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2642
    :pswitch_0
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v8

    .line 2643
    goto/16 :goto_7

    .line 2638
    :pswitch_1
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v8

    .line 2639
    goto/16 :goto_7

    .line 2633
    :pswitch_2
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2634
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v7, v17

    .line 2635
    goto/16 :goto_7

    .line 2629
    :pswitch_3
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2630
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v12

    .line 2631
    goto/16 :goto_7

    .line 2625
    :pswitch_4
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2626
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v11

    .line 2627
    goto/16 :goto_7

    .line 2621
    :pswitch_5
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2622
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v6

    .line 2623
    goto/16 :goto_7

    .line 2618
    :pswitch_6
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v8

    .line 2619
    goto :goto_7

    .line 2614
    :pswitch_7
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2615
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const/4 v4, 0x0

    aput-wide v16, v7, v4

    .line 2616
    goto :goto_7

    .line 2611
    :pswitch_8
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v7, v17

    .line 2612
    goto :goto_7

    .line 2608
    :pswitch_9
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v12

    .line 2609
    goto :goto_7

    .line 2605
    :pswitch_a
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v11

    .line 2606
    goto :goto_7

    .line 2601
    :pswitch_b
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->time:[J

    .line 2602
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v6

    .line 2603
    goto :goto_7

    .line 2598
    :pswitch_c
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v7, v8

    .line 2599
    goto :goto_7

    .line 2595
    :pswitch_d
    iget-object v7, v15, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const/4 v4, 0x0

    aput-wide v16, v7, v4

    .line 2596
    goto :goto_7

    .line 2592
    :pswitch_e
    iput-object v4, v15, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 2593
    goto :goto_7

    .line 2589
    :pswitch_f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 2590
    goto :goto_7

    .line 2586
    :pswitch_10
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2587
    goto :goto_7

    .line 2584
    :pswitch_11
    goto :goto_7

    .line 2578
    :pswitch_12
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 2579
    goto :goto_7

    .line 2575
    :pswitch_13
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 2576
    nop

    .line 2570
    :goto_7
    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2650
    :cond_d
    iget-object v4, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Ops;

    .line 2651
    if-nez v4, :cond_e

    .line 2652
    new-instance v4, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v4, v3, v10, v0}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 2653
    iget-object v6, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2655
    :cond_e
    iget v6, v15, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6, v15}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2656
    goto :goto_8

    .line 2657
    :cond_f
    const-string v4, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <pkg>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2657
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2661
    :goto_8
    nop

    .line 2531
    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2662
    :cond_10
    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 2663
    if-eqz v0, :cond_11

    .line 2664
    iget-object v1, v1, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2666
    :cond_11
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_16
        0x6d -> :sswitch_15
        0x6e -> :sswitch_14
        0x72 -> :sswitch_13
        0x74 -> :sswitch_12
        0xc22 -> :sswitch_11
        0xc89 -> :sswitch_10
        0xd1a -> :sswitch_f
        0xdc5 -> :sswitch_e
        0xe00 -> :sswitch_d
        0xe05 -> :sswitch_c
        0xe30 -> :sswitch_b
        0xe31 -> :sswitch_a
        0xe34 -> :sswitch_9
        0xe3e -> :sswitch_8
        0xe42 -> :sswitch_7
        0xe6e -> :sswitch_6
        0xe6f -> :sswitch_5
        0xe72 -> :sswitch_4
        0xe7c -> :sswitch_3
        0xe80 -> :sswitch_2
        0x1b8bf -> :sswitch_1
        0x1c041 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2456
    const-string v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2457
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2459
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 2460
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_5

    .line 2461
    :cond_1
    if-eq v3, v5, :cond_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 2462
    goto :goto_0

    .line 2465
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2466
    const-string/jumbo v5, "op"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2467
    const-string v3, "n"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2468
    const-string v5, "m"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2469
    invoke-direct {p0, v0, v4}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v4

    .line 2470
    iget-object v6, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v6, :cond_3

    .line 2471
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2473
    :cond_3
    iget-object v4, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2474
    goto :goto_1

    .line 2475
    :cond_4
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <uid-ops>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2475
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2479
    :goto_1
    goto :goto_0

    .line 2480
    :cond_5
    return-void
.end method

.method public removeUser(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3818
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 3819
    monitor-enter p0

    .line 3820
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3821
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3822
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 3823
    invoke-virtual {v1, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 3821
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3825
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->removeUidsForUserLocked(I)V

    .line 3826
    monitor-exit p0

    .line 3827
    return-void

    .line 3826
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 18

    move-object/from16 v7, p0

    .line 1376
    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1378
    const-string/jumbo v13, "resetAllModes"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v14, 0x0

    move v8, v2

    move v9, v3

    move/from16 v10, p1

    invoke-static/range {v8 .. v14}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1381
    nop

    .line 1382
    const/4 v5, -0x1

    if-eqz v1, :cond_0

    .line 1384
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v6, 0x2000

    invoke-interface {v0, v1, v6, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    goto :goto_0

    .line 1386
    :catch_0
    move-exception v0

    .line 1391
    :cond_0
    move v0, v5

    :goto_0
    invoke-virtual {v7, v2, v3, v0}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1393
    nop

    .line 1394
    monitor-enter p0

    .line 1395
    nop

    .line 1396
    :try_start_1
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v6, 0x0

    move-object v10, v6

    const/4 v9, 0x0

    :goto_1
    if-ltz v2, :cond_10

    .line 1397
    iget-object v11, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .line 1399
    iget-object v12, v11, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1400
    if-eqz v12, :cond_5

    iget v13, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v13, v0, :cond_1

    if-ne v0, v5, :cond_5

    .line 1401
    :cond_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1402
    sub-int/2addr v13, v3

    :goto_2
    if-ltz v13, :cond_5

    .line 1403
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 1404
    invoke-static {v14}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1405
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1406
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-gtz v15, :cond_2

    .line 1407
    iput-object v6, v11, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1409
    :cond_2
    iget v15, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v15}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    array-length v6, v15

    move-object v8, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_3

    aget-object v3, v15, v10

    .line 1410
    iget v5, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v16, v0

    iget-object v0, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1411
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1410
    invoke-static {v8, v14, v5, v3, v0}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    .line 1412
    iget v5, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v8, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1413
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1412
    invoke-static {v0, v14, v5, v3, v8}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v8

    .line 1409
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v5, -0x1

    goto :goto_3

    .line 1402
    :cond_3
    move/from16 v16, v0

    move-object v10, v8

    goto :goto_4

    :cond_4
    move/from16 v16, v0

    :goto_4
    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    goto :goto_2

    .line 1419
    :cond_5
    move/from16 v16, v0

    iget-object v0, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 1420
    nop

    .line 1396
    const/4 v3, -0x1

    goto :goto_5

    .line 1423
    :cond_6
    const/4 v3, -0x1

    if-eq v4, v3, :cond_7

    iget v0, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 1424
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v4, v0, :cond_7

    .line 1426
    nop

    .line 1396
    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 1429
    :cond_7
    iget-object v0, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1430
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1431
    nop

    .line 1432
    const/4 v8, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1433
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1434
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1435
    if-eqz v1, :cond_8

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1437
    goto :goto_6

    .line 1439
    :cond_8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;

    .line 1440
    invoke-virtual {v5}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    :goto_7
    if-ltz v12, :cond_b

    .line 1441
    invoke-virtual {v5, v12}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    .line 1442
    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v15

    if-eqz v15, :cond_a

    iget v15, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v3, v14, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1443
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-eq v15, v3, :cond_a

    .line 1444
    iget v3, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    iput v3, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1445
    nop

    .line 1446
    nop

    .line 1447
    iget v3, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v8, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v9, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1448
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1447
    invoke-static {v10, v3, v8, v6, v9}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v3

    .line 1449
    iget v8, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v9, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v10, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1450
    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 1449
    invoke-static {v3, v8, v9, v6, v10}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v10

    .line 1451
    invoke-virtual {v14}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1452
    invoke-virtual {v5, v12}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 1440
    :cond_9
    move v8, v13

    move v9, v8

    :cond_a
    add-int/lit8 v12, v12, -0x1

    const/4 v3, -0x1

    goto :goto_7

    .line 1456
    :cond_b
    invoke-virtual {v5}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 1457
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1459
    :cond_c
    nop

    .line 1432
    const/4 v3, -0x1

    goto/16 :goto_6

    .line 1460
    :cond_d
    const/4 v13, 0x1

    invoke-virtual {v11}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1461
    iget-object v0, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v3, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1463
    :cond_e
    if-eqz v8, :cond_f

    .line 1464
    iget-object v0, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1396
    :cond_f
    :goto_8
    add-int/lit8 v2, v2, -0x1

    move v3, v13

    move/from16 v0, v16

    const/4 v5, -0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1468
    :cond_10
    if-eqz v9, :cond_11

    .line 1469
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 1471
    :cond_11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    if-eqz v10, :cond_13

    .line 1473
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1474
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1475
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/ArrayList;

    .line 1476
    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_12

    .line 1477
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ChangeRec;

    .line 1478
    iget-object v11, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    iget v3, v1, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    .line 1480
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v3, v1, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1478
    move-object v1, v2

    move-object v2, v7

    move-object v3, v8

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1476
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 1482
    :cond_12
    goto :goto_9

    .line 1484
    :cond_13
    return-void

    .line 1471
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public resetCounters()V
    .locals 6

    .line 4248
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 4249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4248
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 4250
    monitor-enter p0

    .line 4251
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4252
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 4253
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_0

    .line 4254
    goto :goto_3

    .line 4256
    :cond_0
    iget-object v2, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4257
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4258
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 4259
    move v4, v0

    :goto_2
    invoke-virtual {v3}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 4260
    invoke-virtual {v3, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Op;

    .line 4261
    iput v0, v5, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 4262
    iput v0, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 4259
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4264
    :cond_1
    goto :goto_1

    .line 4251
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4267
    :cond_3
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 4268
    monitor-exit p0

    .line 4269
    return-void

    .line 4268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 4

    .line 1655
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1656
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1657
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1658
    monitor-enter p0

    .line 1659
    :try_start_0
    iget-object p3, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    .line 1660
    if-nez p3, :cond_0

    .line 1661
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 1662
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1664
    :cond_0
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1665
    if-eqz p4, :cond_3

    .line 1666
    new-instance v0, Lcom/android/server/AppOpsService$Restriction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 1667
    iput p4, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1668
    if-eqz p5, :cond_2

    .line 1669
    array-length p4, p5

    .line 1670
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1671
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    .line 1672
    aget-object v2, p5, v1

    .line 1673
    if-eqz v2, :cond_1

    .line 1674
    iget-object v3, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1671
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1678
    :cond_2
    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1680
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    iget-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object p3, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    .line 1683
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, -0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1682
    invoke-static {p3, p0, p1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1684
    return-void

    .line 1680
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 6

    .line 1259
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1260
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1261
    nop

    .line 1262
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1263
    monitor-enter p0

    .line 1264
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 1265
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 1266
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1267
    iget v3, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v3, p4, :cond_5

    .line 1268
    iput p4, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1269
    if-eqz v0, :cond_0

    .line 1270
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1273
    if-eqz v0, :cond_1

    .line 1274
    nop

    .line 1275
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1277
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1280
    if-eqz v0, :cond_3

    .line 1281
    if-nez v2, :cond_2

    .line 1282
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1284
    :cond_2
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1286
    :cond_3
    iget v0, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    if-ne p4, v0, :cond_4

    .line 1289
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1291
    :cond_4
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 1294
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    if-eqz v2, :cond_6

    .line 1296
    iget-object p4, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;

    .line 1298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1296
    move-object v1, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1300
    :cond_6
    return-void

    .line 1294
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V
    .locals 6

    .line 4239
    sget-object v0, Landroid/app/AppOpsManager;->PRIVACY_GUARD_OP_STATES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 4240
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 4241
    if-eqz p3, :cond_0

    .line 4242
    const/4 v5, 0x5

    goto :goto_1

    .line 4241
    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {p0, v4, p1, p2, v5}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 4239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4244
    :cond_1
    return-void
.end method

.method public setUidMode(III)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v0, p2

    .line 1155
    move/from16 v1, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v7, v2, v3, v0}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1156
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1157
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v8

    .line 1159
    monitor-enter p0

    .line 1160
    nop

    .line 1161
    :try_start_0
    invoke-static {v8}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v2

    .line 1160
    invoke-static {v8, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v2

    .line 1163
    const/4 v9, 0x0

    invoke-direct {v7, v0, v9}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v3

    .line 1164
    const/4 v10, 0x0

    if-nez v3, :cond_1

    .line 1165
    if-ne v1, v2, :cond_0

    .line 1166
    monitor-exit p0

    return-void

    .line 1168
    :cond_0
    new-instance v2, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v2, v0}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 1169
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1170
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1171
    iget-object v1, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 1173
    :cond_1
    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v4, :cond_2

    .line 1174
    if-eq v1, v2, :cond_6

    .line 1175
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1176
    iget-object v2, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 1180
    :cond_2
    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 1181
    monitor-exit p0

    return-void

    .line 1183
    :cond_3
    if-ne v1, v2, :cond_4

    .line 1184
    iget-object v1, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1185
    iget-object v1, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-gtz v1, :cond_5

    .line 1186
    iput-object v10, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1189
    :cond_4
    iget-object v2, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1191
    :cond_5
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1193
    :cond_6
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1195
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1196
    nop

    .line 1198
    monitor-enter p0

    .line 1199
    :try_start_1
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1200
    if-eqz v2, :cond_8

    .line 1201
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 1202
    move v4, v9

    move-object v5, v10

    :goto_2
    if-ge v4, v3, :cond_9

    .line 1203
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1204
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1205
    invoke-static {v11, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1206
    if-nez v5, :cond_7

    .line 1207
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1209
    :cond_7
    invoke-virtual {v5, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1213
    :cond_8
    move-object v5, v10

    :cond_9
    array-length v2, v1

    move-object v11, v5

    move v3, v9

    :goto_3
    if-ge v3, v2, :cond_d

    aget-object v4, v1, v3

    .line 1214
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1215
    if-eqz v5, :cond_c

    .line 1216
    if-nez v11, :cond_a

    .line 1217
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 1219
    :cond_a
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 1220
    move v12, v9

    :goto_4
    if-ge v12, v6, :cond_c

    .line 1221
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1222
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArraySet;

    .line 1223
    if-nez v14, :cond_b

    .line 1224
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1225
    invoke-virtual {v11, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    :cond_b
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1220
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1213
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1231
    :cond_d
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    if-nez v11, :cond_e

    .line 1234
    return-void

    .line 1237
    :cond_e
    move v12, v9

    :goto_5
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v12, v1, :cond_11

    .line 1238
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1239
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/util/ArraySet;

    .line 1240
    if-nez v14, :cond_f

    .line 1241
    iget-object v14, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 1243
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v10

    check-cast v6, Ljava/lang/String;

    .line 1241
    move-object v2, v7

    move-object v3, v13

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 1246
    :cond_f
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v15

    .line 1247
    move v6, v9

    :goto_6
    if-ge v6, v15, :cond_10

    .line 1248
    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 1249
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 1251
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 1249
    move-object v2, v7

    move-object v3, v13

    move-object v9, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1247
    add-int/lit8 v6, v17, 0x1

    const/4 v9, 0x0

    goto :goto_6

    .line 1237
    :cond_10
    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_5

    .line 1255
    :cond_11
    return-void

    .line 1231
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1193
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5

    .line 3759
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3760
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 3761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 3760
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 3763
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    .line 3764
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 3766
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3768
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3772
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 3773
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3774
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 3775
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 8

    .line 3744
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 3745
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3747
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    const/16 v1, 0x52

    if-ge v7, v1, :cond_1

    .line 3748
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v1

    .line 3749
    if-eqz v1, :cond_0

    .line 3750
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 3747
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3754
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 960
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    nop

    .line 962
    monitor-enter p0

    .line 963
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 964
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 965
    const/4 v1, 0x1

    .line 967
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    if-eqz v1, :cond_1

    .line 969
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 971
    :cond_1
    return-void

    .line 967
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I
    .locals 8

    .line 1915
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1916
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1917
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1918
    const/4 v0, 0x1

    if-nez p5, :cond_0

    .line 1919
    return v0

    .line 1921
    :cond_0
    check-cast p1, Lcom/android/server/AppOpsService$ClientState;

    .line 1922
    monitor-enter p0

    .line 1923
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p3, p5, v0, v1}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v2

    .line 1925
    if-nez v2, :cond_1

    .line 1928
    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 1930
    :cond_1
    invoke-direct {p0, v2, p2, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 1931
    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1932
    iget p1, v3, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/2addr p1, v0

    iput p1, v3, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1933
    monitor-exit p0

    return v0

    .line 1935
    :cond_2
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 1936
    iget-object v5, v2, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1937
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_3

    .line 1938
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1939
    if-eqz v6, :cond_3

    .line 1943
    iget-object p1, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget p2, v5, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    aput-wide p3, p1, p2

    .line 1944
    monitor-exit p0

    return v6

    .line 1947
    :cond_3
    if-eq v4, p2, :cond_4

    invoke-direct {p0, v2, v4, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    goto :goto_0

    .line 1948
    :cond_4
    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v4

    .line 1949
    if-eqz v4, :cond_5

    const/4 v6, 0x5

    if-eq v4, v6, :cond_5

    .line 1953
    iget-object p1, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget p2, v5, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    aput-wide p3, p1, p2

    .line 1954
    iget p1, v3, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/2addr p1, v0

    iput p1, v3, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1955
    monitor-exit p0

    return v4

    .line 1956
    :cond_5
    if-nez v4, :cond_8

    .line 1959
    iget p5, v3, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-nez p5, :cond_6

    .line 1960
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    .line 1961
    iget-object p5, v3, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v2, v5, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, p5, v2

    .line 1962
    iget-object p5, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v2, v5, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v6, 0x0

    aput-wide v6, p5, v2

    .line 1963
    const/4 p5, -0x1

    iput p5, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1964
    iget p5, v3, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/2addr p5, v0

    iput p5, v3, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1965
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 1967
    :cond_6
    iget p2, v3, Lcom/android/server/AppOpsService$Op;->startNesting:I

    add-int/2addr p2, v0

    iput p2, v3, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 1968
    iget p2, v5, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    add-int/2addr p2, v0

    iput p2, v5, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    .line 1969
    iget-object p2, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 1970
    iget-object p1, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1972
    :cond_7
    monitor-exit p0

    return v1

    .line 1974
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-eq p4, v1, :cond_a

    iget-object p4, p0, Lcom/android/server/AppOpsService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_1

    .line 1982
    :cond_9
    iget p4, v3, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr p4, v0

    iput p4, v3, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 1983
    iget-object p1, p1, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 1984
    iget-object p4, v3, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    invoke-direct {p0, p2, p3, p5, v2}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object p1

    .line 1987
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1988
    invoke-virtual {p1}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result p1

    return p1

    .line 1975
    :cond_a
    :goto_1
    :try_start_1
    const-string p1, "AppOps"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startOperation: this method will deadlock if called from the main thread. (Code: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " package: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    monitor-exit p0

    return v4

    .line 1987
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 9

    .line 1862
    nop

    .line 1863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1864
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1865
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    nop

    .line 1869
    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v3, v0

    :goto_0
    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 1870
    const/16 v0, 0x51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1870
    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 1873
    :cond_1
    if-nez p2, :cond_2

    .line 1874
    return-void

    .line 1876
    :cond_2
    monitor-enter p0

    .line 1877
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1878
    if-nez v0, :cond_3

    .line 1879
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1880
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    :cond_3
    move-object v7, v0

    new-instance v8, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    .line 1884
    array-length p2, p1

    :goto_1
    if-ge v6, p2, :cond_4

    aget v0, p1, v6

    .line 1885
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1884
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1887
    :cond_4
    monitor-exit p0

    .line 1888
    return-void

    .line 1887
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1

    .line 1497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1498
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 9

    .line 1503
    nop

    .line 1504
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1505
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, -0x1

    const/16 v1, 0x51

    invoke-static {p1, v7, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1512
    if-nez p4, :cond_0

    .line 1513
    return-void

    .line 1515
    :cond_0
    monitor-enter p0

    .line 1516
    if-eq p1, v7, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    goto :goto_0

    .line 1539
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1517
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1518
    if-nez v0, :cond_2

    .line 1519
    new-instance v8, Lcom/android/server/AppOpsService$ModeCallback;

    const/4 v3, -0x1

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService$ModeCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    .line 1520
    iget-object p3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-virtual {p3, p4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    move-object v0, v8

    :cond_2
    if-eq p1, v7, :cond_4

    .line 1523
    iget-object p3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArraySet;

    .line 1524
    if-nez p3, :cond_3

    .line 1525
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 1526
    iget-object p4, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p4, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1528
    :cond_3
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1530
    :cond_4
    if-eqz p2, :cond_6

    .line 1531
    iget-object p1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 1532
    if-nez p1, :cond_5

    .line 1533
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1534
    iget-object p3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    :cond_5
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1538
    :cond_6
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1539
    monitor-exit p0

    .line 1540
    return-void

    .line 1539
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 3

    .line 1892
    if-nez p1, :cond_0

    .line 1893
    return-void

    .line 1895
    :cond_0
    monitor-enter p0

    .line 1896
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 1897
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 1898
    if-nez p1, :cond_1

    .line 1899
    monitor-exit p0

    return-void

    .line 1901
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1902
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1904
    if-nez v1, :cond_2

    .line 1905
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ActiveCallback;

    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ActiveCallback;->destroy()V

    .line 1902
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1908
    :cond_3
    monitor-exit p0

    .line 1909
    return-void

    .line 1908
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 2

    .line 1544
    if-nez p1, :cond_0

    .line 1545
    return-void

    .line 1547
    :cond_0
    monitor-enter p0

    .line 1548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1549
    if-eqz p1, :cond_4

    .line 1550
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 1551
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1552
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1553
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1554
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1555
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1551
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1558
    :cond_2
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 1559
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1560
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1561
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1562
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1558
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1566
    :cond_4
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1567
    monitor-exit p0

    .line 1568
    return-void

    .line 1567
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public systemReady()V
    .locals 10

    .line 642
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 644
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 645
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 649
    monitor-enter p0

    .line 650
    const/4 v0, 0x0

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_5

    .line 652
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$UidState;

    .line 654
    iget v4, v3, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 655
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 656
    invoke-virtual {v3}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 657
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 658
    nop

    .line 659
    nop

    .line 651
    move v0, v2

    goto/16 :goto_3

    .line 662
    :cond_0
    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 663
    if-nez v4, :cond_1

    .line 664
    goto :goto_3

    .line 667
    :cond_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 668
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 669
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    nop

    .line 672
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v8, 0x2000

    iget-object v9, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v9, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 674
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 672
    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    goto :goto_2

    .line 675
    :catch_0
    move-exception v6

    .line 677
    const/4 v6, -0x1

    :goto_2
    :try_start_2
    iget-object v7, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v7, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v6, v7, :cond_2

    .line 678
    const-string v0, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pruning old package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": new uid="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 681
    nop

    .line 683
    move v0, v2

    :cond_2
    goto :goto_1

    .line 685
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 686
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 651
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 689
    :cond_5
    if-eqz v0, :cond_6

    .line 690
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 692
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 696
    new-instance v1, Lcom/android/server/AppOpsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 713
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 715
    new-instance v1, Lcom/android/server/AppOpsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 803
    return-void

    .line 692
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public uidRemoved(I)V
    .locals 1

    .line 908
    monitor-enter p0

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 911
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 913
    :cond_0
    monitor-exit p0

    .line 914
    return-void

    .line 913
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateUidProcState(II)V
    .locals 9

    .line 917
    monitor-enter p0

    .line 918
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object p1

    .line 919
    sget-object v1, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget p2, v1, p2

    .line 920
    if-eqz p1, :cond_7

    iget v1, p1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-eq v1, p2, :cond_7

    .line 921
    iget v1, p1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 922
    iput p2, p1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 923
    iget v2, p1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-lt p2, v2, :cond_3

    const/4 v2, 0x2

    if-gt p2, v2, :cond_0

    goto :goto_1

    .line 927
    :cond_0
    iget-wide v3, p1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 931
    iget v3, p1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v3, v0, :cond_1

    .line 932
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v2, v2, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    goto :goto_0

    .line 933
    :cond_1
    iget v3, p1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v3, v2, :cond_2

    .line 934
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v2, v2, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_0

    .line 936
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v2, v2, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 938
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    goto :goto_2

    .line 926
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    .line 940
    :cond_4
    :goto_2
    iget v2, p1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    if-eqz v2, :cond_7

    .line 943
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 944
    iget-object v4, p1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_3
    if-ltz v4, :cond_7

    .line 945
    iget-object v5, p1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;

    .line 946
    invoke-virtual {v5}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v6

    sub-int/2addr v6, v0

    :goto_4
    if-ltz v6, :cond_6

    .line 947
    invoke-virtual {v5, v6}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Op;

    .line 948
    iget v8, v7, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lez v8, :cond_5

    .line 949
    iget-object v8, v7, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v2, v8, v1

    .line 950
    iget-object v7, v7, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v2, v7, p2

    .line 946
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 944
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 956
    :cond_7
    monitor-exit p0

    .line 957
    return-void

    .line 956
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method writeState()V
    .locals 19

    .line 2669
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 2672
    :try_start_0
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2676
    nop

    .line 2678
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2681
    :try_start_2
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2682
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2683
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2684
    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2685
    const-string/jumbo v7, "v"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2687
    iget-object v6, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 2688
    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    .line 2689
    iget-object v9, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    .line 2690
    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_1

    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 2691
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2692
    const-string v10, "n"

    iget v11, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2693
    iget-object v9, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2694
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    .line 2695
    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_0

    .line 2696
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 2697
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .line 2698
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2699
    const-string v14, "n"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2700
    const-string v12, "m"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2701
    const-string/jumbo v12, "op"

    invoke-interface {v5, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2695
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2703
    :cond_0
    const-string/jumbo v9, "uid"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2688
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2707
    :cond_2
    if-eqz v4, :cond_11

    .line 2708
    nop

    .line 2709
    move-object v8, v0

    move v6, v7

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_10

    .line 2710
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 2711
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2712
    if-eqz v8, :cond_3

    .line 2713
    const-string/jumbo v8, "pkg"

    invoke-interface {v5, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2715
    :cond_3
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2716
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2717
    const-string v10, "n"

    invoke-interface {v5, v0, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2719
    :cond_4
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2720
    const-string v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2721
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2722
    :try_start_3
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11, v7, v7}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v10

    .line 2726
    if-eqz v10, :cond_5

    .line 2727
    const-string/jumbo v11, "p"

    iget-boolean v10, v10, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 2729
    :cond_5
    const-string/jumbo v10, "p"

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2731
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2732
    :try_start_4
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v9

    .line 2733
    move v10, v7

    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_f

    .line 2734
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    .line 2735
    const-string/jumbo v12, "op"

    invoke-interface {v5, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2736
    const-string v12, "n"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2737
    const-string v12, "ns"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2738
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v12

    .line 2739
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    if-eq v13, v12, :cond_6

    .line 2740
    const-string v12, "m"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 2742
    :cond_6
    const-string v13, "dm"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2744
    :goto_5
    move v12, v7

    :goto_6
    const/4 v13, 0x6

    if-ge v12, v13, :cond_9

    .line 2745
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$OpEntry;->getLastTimeFor(I)J

    move-result-wide v13

    .line 2746
    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_7

    .line 2747
    sget-object v17, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    aget-object v7, v17, v12

    .line 2748
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 2747
    invoke-interface {v5, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2750
    :cond_7
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTimeFor(I)J

    move-result-wide v13

    .line 2751
    cmp-long v7, v13, v15

    if-eqz v7, :cond_8

    .line 2752
    sget-object v7, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    aget-object v7, v7, v12

    .line 2753
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 2752
    invoke-interface {v5, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2744
    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    goto :goto_6

    .line 2756
    :cond_9
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v7

    .line 2757
    if-eqz v7, :cond_a

    .line 2758
    const-string v12, "d"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2760
    :cond_a
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v7

    .line 2761
    const/4 v12, -0x1

    if-eq v7, v12, :cond_b

    .line 2762
    const-string/jumbo v12, "pu"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2764
    :cond_b
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2765
    if-eqz v7, :cond_c

    .line 2766
    const-string/jumbo v12, "pp"

    invoke-interface {v5, v0, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2768
    :cond_c
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAllowedCount()I

    move-result v7

    .line 2769
    if-eqz v7, :cond_d

    .line 2770
    const-string v12, "ac"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2772
    :cond_d
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getIgnoredCount()I

    move-result v7

    .line 2773
    if-eqz v7, :cond_e

    .line 2774
    const-string v11, "ic"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2776
    :cond_e
    const-string/jumbo v7, "op"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2733
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2778
    :cond_f
    const-string/jumbo v7, "uid"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2709
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2731
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 2780
    :cond_10
    if-eqz v8, :cond_11

    .line 2781
    const-string/jumbo v4, "pkg"

    invoke-interface {v5, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2785
    :cond_11
    const-string v4, "app-ops"

    invoke-interface {v5, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2786
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2787
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2791
    goto :goto_7

    .line 2788
    :catch_0
    move-exception v0

    .line 2789
    :try_start_7
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2790
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2792
    :goto_7
    monitor-exit v2

    .line 2793
    return-void

    .line 2792
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 2673
    :catch_1
    move-exception v0

    .line 2674
    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    monitor-exit v2

    return-void

    .line 2792
    :goto_8
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method
