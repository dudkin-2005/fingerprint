.class Lcom/android/server/accounts/AccountManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->access$400(Lcom/android/server/accounts/AccountManagerService;IZ)V

    .line 343
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1

    .line 348
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->access$400(Lcom/android/server/accounts/AccountManagerService;IZ)V

    .line 349
    return-void
.end method
