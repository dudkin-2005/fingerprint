.class public Lcom/android/server/am/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# static fields
.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field private static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final STATUS_BAR_MASK_LOCKED:I = 0x3a60000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATUS_BAR_MASK_PINNED:I = 0x29f0000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private mLockTaskModeState:I

.field private final mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTaskPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mTelecomManager:Landroid/telecom/TelecomManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 106
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 107
    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 110
    const/high16 v2, 0x60000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 115
    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 118
    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 168
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    .line 184
    iput-object p1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 186
    iput-object p3, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LockTaskController;)Landroid/os/Handler;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/am/LockTaskController;)Landroid/os/IBinder;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 851
    const-string v0, "device_policy"

    .line 852
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 851
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 853
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 854
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 864
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 838
    const-string/jumbo v0, "statusbar"

    .line 839
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 838
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 840
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 841
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isEmergencyCallTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 4

    .line 330
    iget-object p1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 332
    return v0

    .line 336
    :cond_0
    sget-object v1, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 337
    return v2

    .line 341
    :cond_1
    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    return v2

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 348
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 349
    return v2

    .line 352
    :cond_4
    return v0
.end method

.method private isKeyguardAllowed(I)Z
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLockTaskModeViolationInternal(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 2

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 303
    return v1

    .line 307
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->isRecentsAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 308
    return v1

    .line 312
    :cond_1
    iget p2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->isKeyguardAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->isEmergencyCallTask(Lcom/android/server/am/TaskRecord;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 313
    return v1

    .line 316
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method private isRecentsAllowed(I)Z
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isRootTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$removeLockedTask$0(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V
    .locals 0

    .line 464
    iget p1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method public static synthetic lambda$setLockTaskMode$1(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V
    .locals 0

    .line 563
    nop

    .line 564
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Lcom/android/server/am/TaskRecord;->userId:I

    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic lambda$updateLockTaskFeatures$2(Lcom/android/server/am/LockTaskController;I)V
    .locals 2

    .line 694
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 695
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    .line 696
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    .line 698
    :cond_0
    return-void
.end method

.method private lockKeyguardIfNeeded()V
    .locals 2

    .line 782
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->shouldLockKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 784
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 785
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 787
    :cond_0
    return-void
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .locals 2

    .line 894
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    packed-switch v0, :pswitch_data_0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 898
    :pswitch_0
    const-string v0, "PINNED"

    return-object v0

    .line 896
    :pswitch_1
    const-string v0, "LOCKED"

    return-object v0

    .line 900
    :pswitch_2
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performStartLockTask(Ljava/lang/String;II)V
    .locals 2

    .line 594
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    .line 595
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    goto :goto_0

    .line 605
    :catch_0
    move-exception p1

    goto :goto_1

    .line 597
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 598
    iput p3, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    .line 599
    invoke-direct {p0, p3, p2}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    .line 600
    invoke-direct {p0, p3, p2}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    .line 601
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 602
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p3

    invoke-interface {p3, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 604
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->screenPinningStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    nop

    .line 608
    return-void

    .line 605
    :goto_1
    nop

    .line 606
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private performStopLockTask(I)V
    .locals 4

    .line 472
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    .line 473
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    .line 474
    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->lockKeyguardIfNeeded()V

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 478
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 480
    :cond_1
    iget p1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-ne p1, v2, :cond_2

    .line 481
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 483
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 484
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->screenPinningStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    .line 489
    nop

    .line 490
    return-void

    .line 488
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 485
    :catch_0
    move-exception p1

    .line 486
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :goto_0
    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    throw p1
.end method

.method private removeLockedTask(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;-><init>(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_1
    return-void
.end method

.method private setKeyguardState(II)V
    .locals 1

    .line 740
    if-nez p1, :cond_0

    .line 741
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    goto :goto_0

    .line 743
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 744
    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->isKeyguardAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 745
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    goto :goto_0

    .line 749
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result p1

    if-nez p1, :cond_2

    .line 750
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance p2, Lcom/android/server/am/LockTaskController$1;

    invoke-direct {p2, p0}, Lcom/android/server/am/LockTaskController$1;-><init>(Lcom/android/server/am/LockTaskController;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 768
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    const-string v0, "Lock-to-App"

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    const-string v0, "Lock-to-App"

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 775
    :goto_0
    return-void
.end method

.method private setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .locals 7

    .line 549
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_0

    .line 552
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    const-string p1, "ActivityManager"

    const-string/jumbo p2, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void

    .line 559
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 561
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/RecentTasks;->onLockTaskModeStateChanged(II)V

    .line 563
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$LockTaskController$utz-CwgPkuGXoN5jp5hMoe4EpuQ;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/am/-$$Lambda$LockTaskController$utz-CwgPkuGXoN5jp5hMoe4EpuQ;-><init>(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 572
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_3
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 576
    iget v0, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 579
    :cond_4
    if-eqz p4, :cond_6

    .line 580
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    :goto_0
    move v6, p2

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 582
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 583
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    goto :goto_2

    .line 584
    :cond_6
    if-eqz p2, :cond_7

    .line 585
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 586
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v5, 0x1

    .line 585
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 588
    :cond_7
    :goto_2
    return-void
.end method

.method private setStatusBarState(II)V
    .locals 4

    .line 707
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 708
    if-nez v0, :cond_0

    .line 709
    const-string p1, "ActivityManager"

    const-string p2, "Can\'t find StatusBarService"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void

    .line 714
    :cond_0
    nop

    .line 715
    nop

    .line 717
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 718
    const/high16 p1, 0x29f0000

    .line 728
    move v3, v2

    move v2, p1

    move p1, v3

    goto :goto_0

    .line 720
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 721
    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p1

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object p1

    .line 723
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 724
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 728
    :cond_2
    move p1, v2

    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, p2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 729
    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    goto :goto_1

    .line 730
    :catch_0
    move-exception p1

    .line 731
    const-string p2, "ActivityManager"

    const-string v0, "Failed to set status bar flags"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    :goto_1
    return-void
.end method

.method private shouldLockKeyguard()Z
    .locals 6

    .line 793
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    .line 794
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    .line 793
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 796
    :catch_0
    move-exception v3

    .line 798
    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "127605586"

    aput-object v5, v4, v0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    const-string v1, ""

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 799
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method activityBlockedFromFinish(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    .line 227
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget p1, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 231
    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isRootTask(Lcom/android/server/am/TaskRecord;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    const-string p1, "ActivityManager"

    const-string v0, "Not finishing task in lock task mode"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    .line 234
    const/4 p1, 0x1

    return p1

    .line 236
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method canMoveTaskToBack(Lcom/android/server/am/TaskRecord;)Z
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->isRootTask(Lcom/android/server/am/TaskRecord;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    .line 247
    const/4 p1, 0x0

    return p1

    .line 249
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method clearLockedTask(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 434
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 440
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->removeLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    return-void

    .line 448
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 449
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 450
    return-void

    .line 434
    :cond_3
    :goto_1
    return-void
.end method

.method clearLockedTasks(Ljava/lang/String;)V
    .locals 1

    .line 419
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 422
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 889
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 891
    :cond_1
    return-void
.end method

.method getLockTaskModeState()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    return v0
.end method

.method getRootTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getStatusBarDisableFlags(I)Landroid/util/Pair;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 813
    nop

    .line 814
    nop

    .line 815
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x3ff0000

    const/16 v2, 0x1f

    :goto_0
    if-ltz v0, :cond_1

    .line 816
    sget-object v3, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 817
    sget-object v4, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 818
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v1, v4

    .line 819
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    .line 815
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 823
    :cond_1
    const/high16 p1, 0x3a60000

    and-int/2addr p1, v1

    .line 824
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result p1

    return p1
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 0

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/am/TaskRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    .line 283
    const/4 p1, 0x1

    return p1

    .line 285
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method isPackageWhitelisted(ILjava/lang/String;)Z
    .locals 4

    .line 663
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 664
    return v0

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 668
    if-nez p1, :cond_1

    .line 669
    return v0

    .line 671
    :cond_1
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 672
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 673
    const/4 p1, 0x1

    return p1

    .line 671
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    :cond_3
    return v0
.end method

.method isTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z
    .locals 0

    .line 257
    iget p1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch p1, :pswitch_data_0

    .line 265
    const/4 p1, 0x0

    return p1

    .line 261
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 195
    return-void
.end method

.method showLockTaskToast()V
    .locals 3

    .line 497
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 499
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const-string v1, "ActivityManager"

    const-string v2, "Failed to send pinning escape toast"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    :cond_0
    :goto_0
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    .locals 1

    .line 519
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 520
    iput p3, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 521
    iget p3, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne p3, v0, :cond_1

    .line 525
    const-class p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 527
    if-eqz p2, :cond_0

    .line 528
    iget p1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {p2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(I)V

    .line 530
    :cond_0
    return-void

    .line 537
    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    const-string/jumbo p3, "startLockTask"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/LockTaskController;->setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 539
    return-void
.end method

.method stopLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    .locals 2

    .line 375
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    if-eqz p2, :cond_2

    .line 380
    iget p1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 381
    const-string/jumbo p1, "stopAppPinning"

    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_1
    const-string p1, "ActivityManager"

    const-string p2, "Attempted to stop LockTask with isSystemCaller=true"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    goto :goto_1

    .line 389
    :cond_2
    if-eqz p1, :cond_5

    .line 400
    iget p2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-eq p3, p2, :cond_4

    iget p2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-nez p2, :cond_3

    iget p2, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-ne p3, p2, :cond_3

    goto :goto_0

    .line 402
    :cond_3
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid uid, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " effectiveUid="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 407
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 409
    :goto_1
    return-void

    .line 390
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t stop LockTask for null task"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method updateLockTaskFeatures(II)V
    .locals 1

    .line 686
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    .line 687
    if-ne p2, v0, :cond_0

    .line 688
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/TaskRecord;

    iget p2, p2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne p1, p2, :cond_1

    .line 693
    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;-><init>(Lcom/android/server/am/LockTaskController;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 700
    :cond_1
    return-void
.end method

.method updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 8

    .line 617
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    nop

    .line 620
    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ltz p2, :cond_6

    .line 621
    iget-object v4, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 622
    iget v5, v4, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v6, 0x3

    if-eq v5, v3, :cond_1

    iget v5, v4, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 624
    :cond_0
    move v5, v1

    goto :goto_2

    .line 622
    :cond_1
    :goto_1
    nop

    .line 624
    move v5, v0

    :goto_2
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 625
    iget v7, v4, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v7, v3, :cond_3

    iget v3, v4, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v3, v6, :cond_2

    goto :goto_3

    .line 628
    :cond_2
    move v3, v1

    goto :goto_4

    .line 625
    :cond_3
    :goto_3
    nop

    .line 628
    move v3, v0

    :goto_4
    iget v6, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-ne v6, v0, :cond_5

    iget v6, v4, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v6, p1, :cond_5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    .line 631
    goto :goto_5

    .line 637
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/am/LockTaskController;->removeLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 638
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 639
    nop

    .line 620
    move v2, v0

    :cond_5
    :goto_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 642
    :cond_6
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_6
    if-ltz p1, :cond_7

    .line 643
    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/ActivityDisplay;->onLockTaskPackagesUpdated()V

    .line 642
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 646
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 647
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    goto :goto_7

    :cond_8
    const/4 p1, 0x0

    .line 648
    :goto_7
    iget-object p2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    iget p2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne p2, v3, :cond_9

    .line 653
    const-string/jumbo p2, "package updated"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/am/LockTaskController;->setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 654
    goto :goto_8

    .line 657
    :cond_9
    move v0, v2

    :goto_8
    if-eqz v0, :cond_a

    .line 658
    iget-object p1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 660
    :cond_a
    return-void
.end method
