.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final APPOP_CHECK:I = 0x2

.field private static final APPOP_NOTE:I = 0x1

.field private static final APPOP_NOTHROW:I = 0x3

.field private static final IS_EMULATOR:Z

.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

.field private mHostMonitorThread:Ljava/lang/Thread;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 142
    const-string/jumbo v0, "ro.kernel.qemu"

    .line 143
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 150
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    .line 151
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 166
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 167
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 168
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 169
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 170
    nop

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v1, "clipboard"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .line 176
    move-object p1, v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "clipboard"

    const-string v2, "AM dead"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :goto_0
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 177
    sget-boolean p1, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    if-eqz p1, :cond_0

    .line 178
    new-instance p1, Lcom/android/server/clipboard/HostClipboardMonitor;

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {p1, v0}, Lcom/android/server/clipboard/HostClipboardMonitor;-><init>(Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    .line 192
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    .line 193
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 195
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArray;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/clipboard/ClipboardService;)Z
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    return-object p0
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 6

    .line 563
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 564
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 567
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, p2, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_1

    .line 571
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not own package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 575
    :catch_0
    move-exception v0

    .line 578
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    nop

    .line 580
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 581
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 582
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 583
    :goto_1
    if-ge v4, v1, :cond_2

    .line 584
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 585
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 584
    invoke-direct {p0, v2, v3, p2, v5}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    .line 583
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 587
    :cond_2
    iget-object p1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_3
    return-void
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .locals 3

    .line 527
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 528
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 529
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_0
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .locals 1

    .line 517
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 521
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 524
    :cond_1
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .locals 8

    .line 500
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 502
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    .line 506
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    .line 508
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    .line 505
    move v3, p2

    invoke-interface/range {v2 .. v7}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 512
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 509
    :catch_0
    move-exception p1

    .line 512
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    nop

    .line 514
    return-void

    .line 500
    :cond_1
    :goto_1
    return-void
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;II)Z
    .locals 2

    .line 632
    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    .line 640
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p4, p1, p3, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 637
    :cond_0
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p4, p1, p3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 638
    goto :goto_0

    .line 634
    :cond_1
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p4, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    .line 635
    nop

    .line 644
    :goto_0
    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 645
    return p4

    .line 649
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    .line 650
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 649
    invoke-interface {p1, p2, v1}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 651
    return v0

    .line 654
    :cond_3
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {p1, p3}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 655
    :catch_0
    move-exception p1

    .line 656
    const-string p3, "clipboard"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get Instant App status for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    return p4
.end method

.method private getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 1

    .line 349
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 355
    if-nez v1, :cond_0

    .line 356
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    invoke-direct {v1, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    .line 357
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    :cond_0
    monitor-exit v0

    return-object v1

    .line 360
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .locals 1

    .line 553
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 556
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 557
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 560
    :cond_1
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10

    .line 535
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 537
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 539
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 540
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 542
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 539
    move v4, p2

    move-object v5, p3

    move v9, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 547
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 544
    :catch_0
    move-exception p1

    .line 547
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    nop

    .line 549
    return-void

    .line 535
    :cond_1
    :goto_1
    return-void
.end method

.method private hasRestriction(Ljava/lang/String;I)Z
    .locals 1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 383
    :catch_0
    move-exception p1

    .line 384
    const-string p2, "ClipboardService"

    const-string v0, "Remote Exception calling UserManager.getUserRestrictions: "

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    const/4 p1, 0x1

    return p1
.end method

.method private isDeviceLocked()Z
    .locals 5

    .line 488
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 489
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 491
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 493
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 495
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    return v0

    .line 495
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;I)V
    .locals 1

    .line 608
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;I)V

    .line 611
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 612
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;I)V

    .line 615
    :cond_1
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;I)V
    .locals 6

    .line 592
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 594
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 596
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 597
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 599
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    .line 596
    invoke-interface {v2, v3, v4, v5, p1}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 603
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 600
    :catch_0
    move-exception p1

    .line 603
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 604
    nop

    .line 605
    return-void

    .line 592
    :cond_1
    :goto_1
    return-void
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .locals 4

    .line 618
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    .line 619
    return-void

    .line 621
    :cond_0
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 622
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 623
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;I)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_1
    return-void
.end method


# virtual methods
.method getRelatedProfiles(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 367
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    nop

    .line 374
    return-object p1

    .line 372
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 368
    :catch_0
    move-exception p1

    .line 369
    :try_start_1
    const-string v2, "ClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception calling UserManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    const/4 p1, 0x0

    .line 372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    return-object p1

    .line 372
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onCleanupUser(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStart()V
    .locals 3

    .line 199
    const-string v0, "clipboard"

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 200
    return-void
.end method

.method setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .locals 8

    .line 392
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 393
    if-nez p1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/server/clipboard/HostClipboardMonitor;->setHostClipboard(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 397
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/clipboard/HostClipboardMonitor;->setHostClipboard(Ljava/lang/String;)V

    .line 405
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 406
    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V

    .line 409
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 410
    if-eqz v2, :cond_5

    .line 411
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 412
    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 413
    const-string v5, "no_cross_profile_copy_paste"

    invoke-direct {p0, v5, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v5

    .line 417
    xor-int/2addr v5, v4

    if-nez v5, :cond_2

    .line 418
    const/4 p1, 0x0

    goto :goto_2

    .line 424
    :cond_2
    new-instance v5, Landroid/content/ClipData;

    invoke-direct {v5, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    .line 425
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_1
    if-ltz p1, :cond_3

    .line 426
    new-instance v6, Landroid/content/ClipData$Item;

    invoke-virtual {v5, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v5, p1, v6}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 425
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 428
    :cond_3
    invoke-virtual {v5, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    .line 430
    move-object p1, v5

    :goto_2
    if-ge v1, v3, :cond_5

    .line 431
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 432
    if-eq v5, v0, :cond_4

    .line 433
    const-string v6, "no_sharing_into_profile"

    invoke-direct {p0, v6, v5}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v6

    .line 435
    xor-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 436
    invoke-direct {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V

    .line 430
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 442
    :cond_5
    return-void
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V
    .locals 6

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 447
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 448
    if-nez p2, :cond_0

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 452
    if-eqz p2, :cond_1

    .line 453
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    goto :goto_0

    .line 455
    :cond_1
    const/16 p3, 0x270f

    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 457
    :goto_0
    if-eqz p2, :cond_2

    .line 458
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    .line 459
    if-eqz p2, :cond_2

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 463
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 464
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 466
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 468
    :try_start_0
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 469
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 471
    const/16 v3, 0x1d

    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    const/4 v5, 0x3

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 473
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/IOnPrimaryClipChangedListener;

    .line 474
    invoke-interface {v2}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_3
    goto :goto_2

    .line 482
    :catchall_0
    move-exception v0

    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 483
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 476
    :catch_0
    move-exception v2

    .line 466
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    :cond_4
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 483
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 484
    nop

    .line 485
    return-void
.end method
