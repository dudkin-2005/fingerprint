.class Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
.super Landroid/app/PackageInstallObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstallObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionId:I

.field private final mShowNotification:Z

.field private final mTarget:Landroid/content/IntentSender;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V
    .locals 0

    .line 873
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 874
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 875
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 876
    iput p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    .line 877
    iput-boolean p4, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    .line 878
    iput p5, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    .line 879
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 897
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    if-eqz v1, :cond_2

    .line 898
    if-eqz p4, :cond_0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 899
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 900
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 901
    if-eqz v0, :cond_1

    const v0, 0x1040491

    goto :goto_1

    .line 902
    :cond_1
    const v0, 0x1040490

    .line 901
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    .line 899
    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageInstallerService;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    .line 905
    if-eqz v0, :cond_2

    .line 906
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 907
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 908
    const/16 v2, 0x15

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 913
    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 914
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string p1, "android.content.pm.extra.SESSION_ID"

    iget v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    const-string p1, "android.content.pm.extra.STATUS"

    .line 917
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v0

    .line 916
    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 918
    const-string p1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 919
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 918
    invoke-virtual {v6, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    const-string p1, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 921
    if-eqz p4, :cond_3

    .line 922
    const-string p1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 924
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 925
    const-string p2, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    goto :goto_2

    .line 930
    :catch_0
    move-exception p1

    .line 932
    :goto_2
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 6

    .line 883
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 884
    const-string v0, "android.content.pm.extra.SESSION_ID"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 887
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    goto :goto_0

    .line 890
    :catch_0
    move-exception p1

    .line 892
    :goto_0
    return-void
.end method
