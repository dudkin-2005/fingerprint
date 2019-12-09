.class Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;
.super Landroid/os/AsyncTask;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferredAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    .line 5054
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5054
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14

    .line 5057
    nop

    .line 5058
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5059
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getMemoryTrimLevel()I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    .line 5060
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/util/BoostFramework;->perfUXEngine_trigger(I)Ljava/lang/String;

    move-result-object p1

    .line 5061
    if-nez p1, :cond_0

    .line 5062
    return-object v0

    .line 5063
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5064
    array-length v1, p1

    if-eqz v1, :cond_1

    .line 5065
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5066
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 5067
    nop

    .line 5069
    const-string/jumbo p1, "start_empty_apps"

    invoke-virtual {v12, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5070
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserEmpty(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 5074
    :cond_1
    return-object v0
.end method
