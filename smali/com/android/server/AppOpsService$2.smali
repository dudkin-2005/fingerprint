.class Lcom/android/server/AppOpsService$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageTrustedToInstallApps(Ljava/lang/String;I)I
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p1

    .line 702
    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 708
    return p2

    .line 706
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 704
    :cond_1
    const/4 p1, 0x0

    return p1
.end method