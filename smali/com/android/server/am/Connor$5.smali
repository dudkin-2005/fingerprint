.class Lcom/android/server/am/Connor$5;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 314
    iput-object p1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 317
    invoke-static {}, Lcom/android/server/am/Connor;->nativeCluster()Ljava/util/HashMap;

    move-result-object v0

    .line 318
    .local v0, "predicts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    monitor-enter v1

    .line 319
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    # setter for: Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;
    invoke-static {v2, v0}, Lcom/android/server/am/Connor;->access$1202(Lcom/android/server/am/Connor;Ljava/util/Map;)Ljava/util/Map;

    .line 320
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_8c

    .line 321
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mUstManager:Landroid/app/usage/UsageStatsManager;
    invoke-static {v1}, Lcom/android/server/am/Connor;->access$1300(Lcom/android/server/am/Connor;)Landroid/app/usage/UsageStatsManager;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 322
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usagestats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    # setter for: Lcom/android/server/am/Connor;->mUstManager:Landroid/app/usage/UsageStatsManager;
    invoke-static {v1, v2}, Lcom/android/server/am/Connor;->access$1302(Lcom/android/server/am/Connor;Landroid/app/usage/UsageStatsManager;)Landroid/app/usage/UsageStatsManager;

    .line 325
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$1200(Lcom/android/server/am/Connor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 327
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$1200(Lcom/android/server/am/Connor;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 328
    .local v4, "apps":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_58
    if-ge v6, v5, :cond_6c

    aget-object v7, v4, v6

    .line 328
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    # invokes: Lcom/android/server/am/Connor;->String2BucketInt(Ljava/lang/String;)I
    invoke-static {v8, v3}, Lcom/android/server/am/Connor;->access$1400(Lcom/android/server/am/Connor;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 329
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "apps":[Ljava/lang/String;
    :cond_6c
    goto :goto_3e

    .line 330
    :cond_6d
    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_72} :catch_73

    .line 335
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_77

    .line 333
    :catch_73
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_77
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$1500(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void

    .line 320
    :catchall_8c
    move-exception v2

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v2
.end method
