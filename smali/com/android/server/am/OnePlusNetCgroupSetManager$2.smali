.class Lcom/android/server/am/OnePlusNetCgroupSetManager$2;
.super Landroid/app/IProcessObserver$Stub;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusNetCgroupSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 193
    iput-object p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 197
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v0, :cond_3a

    :cond_8
    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] onForegroundActivitiesChanged pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |foregroundActivities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3a
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$102(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    .line 199
    const-string v0, ""

    .line 200
    .local v0, "packageName_t":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 201
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->getCurrentFrontUid()Lcom/android/server/am/ActivityRecord;
    invoke-static {v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$200(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 202
    .local v3, "mFrontActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_62

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_62

    .line 203
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    # setter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$102(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    .line 204
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v4

    .line 207
    :cond_62
    if-eqz v3, :cond_74

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v4

    if-eq v4, v1, :cond_74

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 208
    :cond_74
    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v4, :cond_a4

    const-string v4, "OnePlusNetCgroupSetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[netCgroupSet] info is error return, mFrontActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " |mCurrentFrontUid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 209
    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |packageName_t:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_a4
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # setter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v4, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$102(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    .line 212
    const-string v4, ""

    move-object v0, v4

    .line 214
    .end local v3    # "mFrontActivity":Lcom/android/server/am/ActivityRecord;
    :cond_ac
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_45 .. :try_end_ad} :catchall_1b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 216
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    monitor-enter v3

    .line 217
    if-eqz p3, :cond_119

    :try_start_b7
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    .line 218
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 219
    .local v2, "tempUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 220
    .local v5, "temp":I
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v6

    if-eq v5, v6, :cond_f2

    .line 221
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 223
    .end local v5    # "temp":I
    :cond_f2
    goto :goto_cf

    .line 224
    :cond_f3
    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v4, :cond_fb

    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v4, :cond_119

    :cond_fb
    const-string v4, "OnePlusNetCgroupSetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[netCgroupSet] current is launcher, mFrontActivityUids:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "tempUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_119

    .line 226
    :catchall_116
    move-exception v1

    goto/16 :goto_1b1

    :cond_119
    :goto_119
    monitor-exit v3
    :try_end_11a
    .catchall {:try_start_b7 .. :try_end_11a} :catchall_116

    .line 228
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    monitor-enter v2

    .line 229
    if-eqz p3, :cond_13a

    .line 231
    :try_start_121
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17e

    .line 241
    :catchall_138
    move-exception v1

    goto :goto_1af

    .line 234
    :cond_13a
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v3

    if-eq v3, p2, :cond_17e

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 235
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_17e

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v3

    if-eq v3, v1, :cond_17e

    .line 237
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I
    invoke-static {v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_17e
    :goto_17e
    monitor-exit v2
    :try_end_17f
    .catchall {:try_start_121 .. :try_end_17f} :catchall_138

    .line 242
    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v1, :cond_187

    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_1a9

    :cond_187
    const-string v1, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netCgroupSet] after onForegroundActivitiesChanged mFrontActivityUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1a9
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->toSetNetCgroup(ZI)V
    invoke-static {v1, p3, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$300(Lcom/android/server/am/OnePlusNetCgroupSetManager;ZI)V

    .line 244
    return-void

    .line 241
    :goto_1af
    :try_start_1af
    monitor-exit v2
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_138

    throw v1

    .line 226
    :goto_1b1
    :try_start_1b1
    monitor-exit v3
    :try_end_1b2
    .catchall {:try_start_1b1 .. :try_end_1b2} :catchall_116

    throw v1

    .line 214
    :catchall_1b3
    move-exception v1

    :try_start_1b4
    monitor-exit v2
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onProcessDied(II)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 248
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_5
    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netCgroupSet] onProcessDied pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_27
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 251
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_47

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_47

    .line 254
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 257
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_47
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_49

    throw v1
.end method
