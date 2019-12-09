.class final Lcom/android/server/am/Uterus$BirthRunnable;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BirthRunnable"
.end annotation


# instance fields
.field private checkProcess:Z

.field private final info:Landroid/content/pm/ApplicationInfo;

.field private supervisor:Lcom/android/server/am/EmbryoSupervisor;

.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method private constructor <init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p2, "s"    # Lcom/android/server/am/EmbryoSupervisor;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 735
    iput-object p1, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/Uterus$BirthRunnable;->checkProcess:Z

    .line 736
    iput-object p2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    .line 737
    iput-object p3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    .line 738
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/Uterus$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/am/Uterus;
    .param p2, "x1"    # Lcom/android/server/am/EmbryoSupervisor;
    .param p3, "x2"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "x3"    # Lcom/android/server/am/Uterus$1;

    .line 730
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/Uterus$BirthRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 746
    iget-boolean v0, p0, Lcom/android/server/am/Uterus$BirthRunnable;->checkProcess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;
    invoke-static {v0}, Lcom/android/server/am/Uterus;->access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/am/EmbryoHelper;->checkIfProcessExist(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 747
    iget-object v0, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v0

    .line 748
    :try_start_16
    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 749
    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BirthRunnable checkProc return, uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    monitor-exit v0

    return-void

    .line 751
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_37

    throw v1

    .line 754
    :cond_3a
    iget-object v0, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;
    invoke-static {v0}, Lcom/android/server/am/Uterus;->access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 755
    iget-object v0, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v0

    .line 756
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 757
    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BirthRunnable check user return, uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    monitor-exit v0

    return-void

    .line 759
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_4b .. :try_end_6e} :catchall_6c

    throw v1

    .line 764
    :cond_6f
    :try_start_6f
    new-instance v0, Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;
    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoHelper;->getAMS()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 765
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;
    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v2

    const-string v3, "embryo"

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/EmbryoHelper;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;
    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoHelper;->isStartProcAsync()Z

    move-result v2

    if-nez v2, :cond_128

    .line 770
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v2, :cond_d5

    .line 771
    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create Embryo failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v2
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_cb} :catch_129

    .line 773
    :try_start_cb
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 774
    monitor-exit v2

    return-void

    .line 775
    :catchall_d2
    move-exception v3

    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_cb .. :try_end_d4} :catchall_d2

    :try_start_d4
    throw v3

    .line 778
    :cond_d5
    new-instance v2, Lcom/android/server/am/Embryo;

    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/Embryo;-><init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 779
    .local v2, "newbie":Lcom/android/server/am/Embryo;
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/Embryo;->setPid(I)V

    .line 781
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/am/Uterus;->access$1200(Lcom/android/server/am/Uterus;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_ec} :catch_129

    .line 782
    :try_start_ec
    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/Uterus;->access$1200(Lcom/android/server/am/Uterus;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    monitor-exit v3
    :try_end_fe
    .catchall {:try_start_ec .. :try_end_fe} :catchall_125

    .line 785
    :try_start_fe
    const-string v3, "Embryo_Uterus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Embryo created."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_124} :catch_129

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "newbie":Lcom/android/server/am/Embryo;
    goto :goto_128

    .line 783
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "newbie":Lcom/android/server/am/Embryo;
    :catchall_125
    move-exception v4

    :try_start_126
    monitor-exit v3
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    :try_start_127
    throw v4
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_128} :catch_129

    .line 792
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "newbie":Lcom/android/server/am/Embryo;
    :cond_128
    :goto_128
    goto :goto_14f

    .line 787
    :catch_129
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v2

    .line 789
    :try_start_12d
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 790
    monitor-exit v2
    :try_end_133
    .catchall {:try_start_12d .. :try_end_133} :catchall_150

    .line 791
    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create Embryo failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14f
    return-void

    .line 790
    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_150
    move-exception v1

    :try_start_151
    monitor-exit v2
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    throw v1
.end method

.method setCheckProcess(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 741
    iput-boolean p1, p0, Lcom/android/server/am/Uterus$BirthRunnable;->checkProcess:Z

    .line 742
    return-void
.end method
