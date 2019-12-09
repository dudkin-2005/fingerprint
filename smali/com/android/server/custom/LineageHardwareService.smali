.class public Lcom/android/server/custom/LineageHardwareService;
.super Lcom/android/server/SystemService;
.source "LineageHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;,
        Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLineageHwImpl:Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/android/server/custom/LineageHardwareService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/custom/LineageHardwareService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 355
    new-instance v0, Lcom/android/server/custom/LineageHardwareService$1;

    invoke-direct {v0, p0}, Lcom/android/server/custom/LineageHardwareService$1;-><init>(Lcom/android/server/custom/LineageHardwareService;)V

    iput-object v0, p0, Lcom/android/server/custom/LineageHardwareService;->mService:Landroid/os/IBinder;

    .line 336
    iput-object p1, p0, Lcom/android/server/custom/LineageHardwareService;->mContext:Landroid/content/Context;

    .line 337
    invoke-direct {p0, p1}, Lcom/android/server/custom/LineageHardwareService;->getImpl(Landroid/content/Context;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/LineageHardwareService;->mLineageHwImpl:Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    .line 338
    const-string p1, "lineagehardware"

    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/custom/LineageHardwareService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/custom/LineageHardwareService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/server/custom/LineageHardwareService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/custom/LineageHardwareService;->mLineageHwImpl:Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    return-object p0
.end method

.method private getImpl(Landroid/content/Context;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;
    .locals 0

    .line 331
    new-instance p1, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;

    invoke-direct {p1, p0}, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;-><init>(Lcom/android/server/custom/LineageHardwareService;)V

    return-object p1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3

    .line 343
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 344
    new-instance p1, Landroid/content/Intent;

    const-string v0, "lineageos.intent.action.INITIALIZE_LINEAGE_HARDWARE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 353
    return-void
.end method
