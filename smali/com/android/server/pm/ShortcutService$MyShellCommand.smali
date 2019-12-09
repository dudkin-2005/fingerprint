.class Lcom/android/server/pm/ShortcutService$MyShellCommand;
.super Landroid/os/ShellCommand;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyShellCommand"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 4020
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4022
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "x1"    # Lcom/android/server/pm/ShortcutService$1;

    .line 4020
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private clearLauncher()V
    .registers 4

    .line 4160
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4161
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->forceClearLauncher()V

    .line 4162
    monitor-exit v0

    .line 4163
    return-void

    .line 4162
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private handleClearDefaultLauncher()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4176
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4177
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4179
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    .line 4180
    monitor-exit v0

    .line 4181
    return-void

    .line 4180
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private handleClearShortcuts()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4203
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4204
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4205
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 4207
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd: handleClearShortcuts: user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    # invokes: Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V
    invoke-static {v3, v2, v4, v1}, Lcom/android/server/pm/ShortcutService;->access$1500(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    .line 4211
    .end local v2    # "packageName":Ljava/lang/String;
    monitor-exit v0

    .line 4212
    return-void

    .line 4211
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private handleGetDefaultLauncher()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4184
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4185
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4187
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    .line 4188
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->showLauncher()V

    .line 4189
    monitor-exit v0

    .line 4190
    return-void

    .line 4189
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private handleOverrideConfig()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4140
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 4142
    .local v0, "config":Ljava/lang/String;
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd: handleOverrideConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4145
    :try_start_21
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4148
    monitor-exit v1

    .line 4149
    return-void

    .line 4146
    :cond_2b
    new-instance v2, Lcom/android/server/pm/ShortcutService$CommandException;

    const-string/jumbo v3, "override-config failed.  See logcat for details."

    invoke-direct {v2, v3}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4148
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private handleResetAllThrottling()V
    .registers 3

    .line 4134
    const-string v0, "ShortcutService"

    const-string v1, "cmd: handleResetAllThrottling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->resetAllThrottlingInner()V

    .line 4137
    return-void
.end method

.method private handleResetConfig()V
    .registers 3

    .line 4152
    const-string v0, "ShortcutService"

    const-string v1, "cmd: handleResetConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4155
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$1400(Lcom/android/server/pm/ShortcutService;)V

    .line 4156
    monitor-exit v0

    .line 4157
    return-void

    .line 4156
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method private handleResetThrottling()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4124
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4125
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4127
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd: handleResetThrottling: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 4130
    monitor-exit v0

    .line 4131
    return-void

    .line 4130
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private handleUnloadUser()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4193
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4194
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4196
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd: handleUnloadUser: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->handleStopUser(I)V

    .line 4199
    monitor-exit v0

    .line 4200
    return-void

    .line 4199
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private handleVerifyStates()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4216
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->verifyStatesForce()V
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$1600(Lcom/android/server/pm/ShortcutService;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    .line 4219
    nop

    .line 4220
    return-void

    .line 4217
    :catch_7
    move-exception v0

    .line 4218
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseOptionsLocked(Z)V
    .registers 6
    .param p1, "takeUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4027
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_69

    .line 4028
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x4f7b216b

    if-eq v2, v3, :cond_12

    goto :goto_1b

    :cond_12
    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    :goto_1b
    if-nez v0, :cond_52

    .line 4030
    if-eqz p1, :cond_52

    .line 4031
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 4032
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_0

    .line 4033
    :cond_34
    new-instance v0, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not running or locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4040
    :cond_52
    new-instance v0, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4043
    :cond_69
    return-void
.end method

.method private showLauncher()V
    .registers 6

    .line 4166
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4168
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v2, "-"

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    .line 4170
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 4171
    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4170
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4172
    monitor-exit v0

    .line 4173
    return-void

    .line 4172
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4047
    if-nez p1, :cond_7

    .line 4048
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4050
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4052
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_c4

    goto :goto_76

    :sswitch_16
    const-string/jumbo v3, "reset-config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/4 v1, 0x3

    goto :goto_76

    :sswitch_21
    const-string/jumbo v3, "unload-user"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/4 v1, 0x6

    goto :goto_76

    :sswitch_2c
    const-string v3, "get-default-launcher"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/4 v1, 0x5

    goto :goto_76

    :sswitch_36
    const-string v3, "clear-default-launcher"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/4 v1, 0x4

    goto :goto_76

    :sswitch_40
    const-string/jumbo v3, "reset-throttling"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    move v1, v4

    goto :goto_76

    :sswitch_4b
    const-string/jumbo v3, "override-config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/4 v1, 0x2

    goto :goto_76

    :sswitch_56
    const-string/jumbo v3, "reset-all-throttling"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    move v1, v2

    goto :goto_76

    :sswitch_61
    const-string v3, "clear-shortcuts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/4 v1, 0x7

    goto :goto_76

    :sswitch_6b
    const-string/jumbo v3, "verify-states"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/16 v1, 0x8

    :cond_76
    :goto_76
    packed-switch v1, :pswitch_data_ea

    .line 4081
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_a9

    .line 4078
    :pswitch_7e
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleVerifyStates()V

    .line 4079
    goto :goto_a2

    .line 4075
    :pswitch_82
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearShortcuts()V

    .line 4076
    goto :goto_a2

    .line 4072
    :pswitch_86
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleUnloadUser()V

    .line 4073
    goto :goto_a2

    .line 4069
    :pswitch_8a
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetDefaultLauncher()V

    .line 4070
    goto :goto_a2

    .line 4066
    :pswitch_8e
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearDefaultLauncher()V

    .line 4067
    goto :goto_a2

    .line 4063
    :pswitch_92
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetConfig()V

    .line 4064
    goto :goto_a2

    .line 4060
    :pswitch_96
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleOverrideConfig()V

    .line 4061
    goto :goto_a2

    .line 4057
    :pswitch_9a
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetAllThrottling()V

    .line 4058
    goto :goto_a2

    .line 4054
    :pswitch_9e
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetThrottling()V
    :try_end_a1
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_d .. :try_end_a1} :catch_aa

    .line 4055
    nop

    .line 4086
    :goto_a2
    nop

    .line 4087
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4088
    return v4

    .line 4081
    :goto_a9
    return v1

    .line 4083
    :catch_aa
    move-exception v1

    .line 4084
    .local v1, "e":Lcom/android/server/pm/ShortcutService$CommandException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService$CommandException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    return v2

    :sswitch_data_c4
    .sparse-switch
        -0x42951a2a -> :sswitch_6b
        -0x2cad7693 -> :sswitch_61
        -0x853beaf -> :sswitch_56
        -0x493cb9d -> :sswitch_4b
        0xb40bca5 -> :sswitch_40
        0xe23492c -> :sswitch_36
        0x46f58343 -> :sswitch_2c
        0x5427b5d9 -> :sswitch_21
        0x75140980 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 4093
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4094
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Usage: cmd shortcut COMMAND [options ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4095
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4096
    const-string v1, "cmd shortcut reset-throttling [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4097
    const-string v1, "    Reset throttling for all packages and users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4099
    const-string v1, "cmd shortcut reset-all-throttling"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4100
    const-string v1, "    Reset the throttling state for all users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4102
    const-string v1, "cmd shortcut override-config CONFIG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4103
    const-string v1, "    Override the configuration for testing (will last until reboot)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4104
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4105
    const-string v1, "cmd shortcut reset-config"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4106
    const-string v1, "    Reset the configuration set with \"update-config\""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4107
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4108
    const-string v1, "cmd shortcut clear-default-launcher [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    const-string v1, "    Clear the cached default launcher"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4111
    const-string v1, "cmd shortcut get-default-launcher [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4112
    const-string v1, "    Show the default launcher"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4114
    const-string v1, "cmd shortcut unload-user [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4115
    const-string v1, "    Unload a user from the memory"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    const-string v1, "    (This should not affect any observable behavior)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4118
    const-string v1, "cmd shortcut clear-shortcuts [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    const-string v1, "    Remove all shortcuts from a package, including pinned shortcuts"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4120
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4121
    return-void
.end method
