.class Lcom/android/server/substratum/SubstratumService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "SubstratumService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/substratum/SubstratumService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/substratum/SubstratumService;


# direct methods
.method private constructor <init>(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService$PackageInstallObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1087
    iget-object p2, p0, Lcom/android/server/substratum/SubstratumService$PackageInstallObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Installer - successfully installed \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\'!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 1088
    iget-object p2, p0, Lcom/android/server/substratum/SubstratumService$PackageInstallObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p2, p1}, Lcom/android/server/substratum/SubstratumService;->access$2902(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$PackageInstallObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$902(Lcom/android/server/substratum/SubstratumService;Z)Z

    .line 1090
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$PackageInstallObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v0, "Installer - user action required callback"

    invoke-static {p1, v0}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 1081
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$PackageInstallObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/substratum/SubstratumService;->access$902(Lcom/android/server/substratum/SubstratumService;Z)Z

    .line 1082
    return-void
.end method
