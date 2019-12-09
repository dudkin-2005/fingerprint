.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$flags:I

.field final synthetic val$instantUserIds:[I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V
    .locals 0

    .line 13715
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$userIds:[I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$7;->val$extras:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/server/pm/PackageManagerService$7;->val$flags:I

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$7;->val$targetPkg:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$7;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$7;->val$instantUserIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 13719
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    .line 13720
    if-nez v10, :cond_0

    return-void

    .line 13722
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$userIds:[I

    if-nez v0, :cond_1

    .line 13723
    invoke-interface {v10}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    .line 13727
    :goto_0
    move-object v8, v0

    goto :goto_1

    .line 13725
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$userIds:[I

    goto :goto_0

    .line 13727
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$extras:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$7;->val$flags:I

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$7;->val$targetPkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$7;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v9, 0x0

    move-object v1, v10

    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V

    .line 13729
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$instantUserIds:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$instantUserIds:[I

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3200()[I

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 13730
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$extras:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$7;->val$flags:I

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$7;->val$targetPkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$7;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$7;->val$instantUserIds:[I

    const/4 v9, 0x1

    move-object v1, v10

    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13734
    :cond_2
    goto :goto_2

    .line 13733
    :catch_0
    move-exception v0

    .line 13735
    :goto_2
    return-void
.end method
