.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$affectedPackages:[Ljava/lang/String;

.field final synthetic val$intentExtras:Landroid/os/Bundle;

.field final synthetic val$suspended:Z

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZI[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 14469
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$suspended:Z

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$affectedPackages:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$8;->val$intentExtras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 14473
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    .line 14474
    if-nez v10, :cond_1

    .line 14475
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14476
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$suspended:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "UN"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SUSPENDED broadcasts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14475
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14477
    return-void

    .line 14479
    :cond_1
    const/4 v0, 0x1

    new-array v11, v0, [I

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    const/4 v1, 0x0

    aput v0, v11, v1

    .line 14480
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$8;->val$affectedPackages:[Ljava/lang/String;

    array-length v13, v12

    move v14, v1

    :goto_1
    if-ge v14, v13, :cond_2

    aget-object v6, v12, v14

    .line 14481
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$intentExtras:Landroid/os/Bundle;

    const/high16 v5, 0x1000000

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v8, v11

    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14480
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 14487
    :cond_2
    goto :goto_2

    .line 14485
    :catch_0
    move-exception v0

    .line 14488
    :goto_2
    return-void
.end method
