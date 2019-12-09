.class final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field public allowedCount:I

.field final clientTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field delayedCount:I

.field dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

.field duration:I

.field public ignoredCount:I

.field mode:I

.field noteOpCount:I

.field final op:I

.field final packageName:Ljava/lang/String;

.field proxyPackageName:Ljava/lang/String;

.field proxyUid:I

.field rejectTime:[J

.field startNesting:I

.field startOpCount:I

.field startRealtime:J

.field time:[J

.field final uid:I

.field final uidState:Lcom/android/server/AppOpsService$UidState;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V
    .locals 2

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 433
    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    .line 434
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 446
    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 447
    iget p1, p1, Lcom/android/server/AppOpsService$UidState;->uid:I

    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 448
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 449
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 450
    iget p1, p0, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 451
    new-instance p1, Lcom/android/server/PermissionDialogReqQueue;

    invoke-direct {p1}, Lcom/android/server/PermissionDialogReqQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    .line 452
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    .line 453
    return-void
.end method

.method constructor <init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;II)V
    .locals 2

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 433
    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    .line 434
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 456
    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 457
    iget p1, p1, Lcom/android/server/AppOpsService$UidState;->uid:I

    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 458
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 459
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 460
    iput p4, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 461
    new-instance p1, Lcom/android/server/PermissionDialogReqQueue;

    invoke-direct {p1}, Lcom/android/server/PermissionDialogReqQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    .line 462
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    .line 463
    return-void
.end method


# virtual methods
.method getMode()I
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v0

    return v0
.end method

.method hasAnyTime()Z
    .locals 8

    .line 466
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 467
    iget-object v2, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 468
    return v3

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    aget-wide v6, v2, v1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    .line 471
    return v3

    .line 466
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_2
    return v0
.end method
