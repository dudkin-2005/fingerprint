.class Lcom/android/server/pm/PackageInstallerSession$3;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 285
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    goto :goto_72

    .line 307
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 308
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 310
    .local v2, "message":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 311
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/IPackageInstallObserver2;

    .line 312
    .local v4, "observer":Landroid/content/pm/IPackageInstallObserver2;
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 313
    .local v5, "returnCode":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 316
    :try_start_1f
    invoke-interface {v4, v1, v5, v2, v3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 318
    goto :goto_72

    .line 317
    :catch_23
    move-exception v6

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "observer":Landroid/content/pm/IPackageInstallObserver2;
    .end local v5    # "returnCode":I
    goto :goto_72

    .line 293
    :pswitch_25
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$100(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 295
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->commitLocked()V
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_31
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2c .. :try_end_31} :catch_34
    .catchall {:try_start_2c .. :try_end_31} :catchall_32

    .line 302
    goto :goto_68

    .line 303
    :catchall_32
    move-exception v1

    goto :goto_6a

    .line 296
    :catch_34
    move-exception v1

    .line 297
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_35
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "completeMsg":Ljava/lang/String;
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Commit of session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v5, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V
    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->access$300(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 301
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/pm/PackageInstallerSession;->access$400(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 303
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v2    # "completeMsg":Ljava/lang/String;
    :goto_68
    monitor-exit v0

    .line 305
    goto :goto_72

    .line 303
    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_35 .. :try_end_6b} :catchall_32

    throw v1

    .line 290
    :pswitch_6c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->earlyBindToDefContainer()V
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$000(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 291
    nop

    .line 323
    :goto_72
    const/4 v0, 0x1

    return v0

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_25
        :pswitch_6
    .end packed-switch
.end method
