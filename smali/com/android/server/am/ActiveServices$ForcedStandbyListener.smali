.class Lcom/android/server/am/ActiveServices$ForcedStandbyListener;
.super Lcom/android/server/AppStateTracker$Listener;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForcedStandbyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;

    .line 214
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForegroundServicesForUidPackage(ILjava/lang/String;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 218
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    # invokes: Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-static {v1, v2}, Lcom/android/server/am/ActiveServices;->access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    .line 219
    .local v1, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 220
    .local v2, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v3, "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1f
    if-ge v5, v2, :cond_45

    .line 222
    iget-object v6, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 223
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v7, :cond_3b

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 225
    :cond_3b
    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v7, :cond_42

    .line 226
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 232
    .end local v5    # "i":I
    :cond_45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 233
    .local v5, "numToStop":I
    if-lez v5, :cond_72

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v6, :cond_72

    .line 234
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " entering FAS with foreground services"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_72
    move v6, v4

    .local v6, "i":I
    :goto_73
    if-ge v6, v5, :cond_9e

    .line 238
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 239
    .local v7, "r":Lcom/android/server/am/ServiceRecord;
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v8, :cond_95

    .line 240
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Stopping fg for service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_95
    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;I)V
    invoke-static {v8, v7, v4, v9, v4}, Lcom/android/server/am/ActiveServices;->access$100(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;I)V

    .line 237
    .end local v7    # "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 244
    .end local v1    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v2    # "N":I
    .end local v3    # "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "numToStop":I
    .end local v6    # "i":I
    :cond_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_5 .. :try_end_9f} :catchall_a3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 245
    return-void

    .line 244
    :catchall_a3
    move-exception v1

    :try_start_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
