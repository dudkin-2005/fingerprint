.class Lcom/android/server/oneplus/display/ColorBalanceService$2;
.super Landroid/database/ContentObserver;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 447
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iput-object p3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 450
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$700(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 451
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 452
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$802(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 454
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$900(Lcom/android/server/oneplus/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 455
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1000(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 459
    :cond_26
    return-void
.end method
