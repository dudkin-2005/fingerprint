.class Lcom/android/server/storage/CacheQuotaStrategy$1$1;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/CacheQuotaStrategy$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/storage/CacheQuotaStrategy$1;Landroid/os/IBinder;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iput-object p2, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v0, v0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-static {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->access$000(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v1, v1, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->val$service:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/app/usage/ICacheQuotaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/ICacheQuotaService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/storage/CacheQuotaStrategy;->access$102(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;

    .line 137
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v1, v1, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-static {v1}, Lcom/android/server/storage/CacheQuotaStrategy;->access$200(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;

    move-result-object v1

    .line 138
    new-instance v2, Landroid/os/RemoteCallback;

    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-static {v3}, Lcom/android/server/storage/CacheQuotaStrategy;->access$100(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/app/usage/ICacheQuotaService;->computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    :try_start_2
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "Remote exception occurred while trying to get cache quota"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :goto_0
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
