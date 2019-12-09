.class Lcom/android/server/PinnerService$2;
.super Landroid/database/ContentObserver;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PinnerService;->registerUserSetupCompleteListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;

.field final synthetic val$userSetupCompleteUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/server/PinnerService$2;->this$0:Lcom/android/server/PinnerService;

    iput-object p3, p0, Lcom/android/server/PinnerService$2;->val$userSetupCompleteUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lcom/android/server/PinnerService$2;->val$userSetupCompleteUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/android/server/PinnerService$2;->this$0:Lcom/android/server/PinnerService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    const/4 v0, 0x1

    invoke-static {p1, v0, p2, v0}, Lcom/android/server/PinnerService;->access$100(Lcom/android/server/PinnerService;IIZ)V

    .line 270
    :cond_0
    return-void
.end method
