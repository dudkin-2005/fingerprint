.class Lcom/android/server/pm/PackageManagerService$28;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$measurePath:Ljava/io/File;

.field final synthetic val$moveId:I

.field final synthetic val$sizeBytes:J

.field final synthetic val$startFreeBytes:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .locals 0

    .line 23342
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$28;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$28;->val$startFreeBytes:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$28;->val$measurePath:Ljava/io/File;

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$28;->val$sizeBytes:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$28;->val$moveId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 23347
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$28;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 23348
    nop

    .line 23358
    return-void

    .line 23351
    :cond_0
    goto :goto_1

    .line 23350
    :catch_0
    move-exception v0

    .line 23353
    :goto_1
    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerService$28;->val$startFreeBytes:J

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$28;->val$measurePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 23354
    const/16 v2, 0xa

    const-wide/16 v3, 0x50

    mul-long/2addr v0, v3

    iget-wide v3, p0, Lcom/android/server/pm/PackageManagerService$28;->val$sizeBytes:J

    div-long v5, v0, v3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x50

    invoke-static/range {v5 .. v10}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v2, v0

    .line 23356
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$28;->val$moveId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6000(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 23357
    goto :goto_0
.end method
