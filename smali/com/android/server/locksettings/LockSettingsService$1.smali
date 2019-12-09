.class Lcom/android/server/locksettings/LockSettingsService$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 582
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 585
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$200(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 587
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$300(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V

    .line 591
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 592
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 594
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z
    invoke-static {v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v3

    .line 597
    .local v3, "isSecure":Z
    if-eqz v3, :cond_65

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_65

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v4

    if-nez v4, :cond_65

    .line 599
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 600
    .local v4, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_65

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 601
    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 602
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    invoke-static {v5, v4}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V

    .line 592
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    .end local v3    # "isSecure":Z
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 607
    .end local v1    # "i":I
    :cond_68
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 608
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    .line 615
    :cond_82
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z
    invoke-static {v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 616
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    invoke-static {v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 618
    :cond_a5
    return-void
.end method
