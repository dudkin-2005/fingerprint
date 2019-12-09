.class Lcom/android/server/NetworkManagementService$LocalService;
.super Lcom/android/server/NetworkManagementInternal;
.source "NetworkManagementService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .line 2914
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Lcom/android/server/NetworkManagementInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public forceCloseUidSocketForDeepSleep(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 2924
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/UidRange;

    new-instance v1, Landroid/net/UidRange;

    invoke-direct {v1, p1, p1}, Landroid/net/UidRange;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2928
    .local v0, "ranges":[Landroid/net/UidRange;
    :try_start_b
    const-string v1, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceCloseUidSocketForDeepSleep, Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;
    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;

    move-result-object v1

    new-array v2, v2, [I

    invoke-interface {v1, v0, v2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRange;[I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2c} :catch_2d
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_2c} :catch_2d

    .line 2932
    goto :goto_44

    .line 2930
    :catch_2d
    move-exception v1

    .line 2931
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing sockets on DeepSleep : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public isNetworkRestrictedForUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 2917
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z
    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;I)Z

    move-result v0

    return v0
.end method
