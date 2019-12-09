.class public Lcom/android/server/StorageManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mStorageManagerService:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 192
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 203
    const/16 v0, 0x226

    if-ne p1, v0, :cond_a

    .line 204
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$100(Lcom/android/server/StorageManagerService;)V

    goto :goto_13

    .line 205
    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 206
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->bootCompleted()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$200(Lcom/android/server/StorageManagerService;)V

    .line 208
    :cond_13
    :goto_13
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 222
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onCleanupUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$500(Lcom/android/server/StorageManagerService;I)V

    .line 223
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 196
    new-instance v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 197
    const-string/jumbo v0, "mount"

    iget-object v1, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/StorageManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->start()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$000(Lcom/android/server/StorageManagerService;)V

    .line 199
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # setter for: Lcom/android/server/StorageManagerService;->mCurrentUserId:I
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$302(Lcom/android/server/StorageManagerService;I)I

    .line 213
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 217
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onUnlockUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$400(Lcom/android/server/StorageManagerService;I)V

    .line 218
    return-void
.end method
