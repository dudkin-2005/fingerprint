.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z
    .locals 4

    .line 844
    nop

    .line 845
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object p1

    .line 847
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 848
    return v0

    .line 851
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 852
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 853
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 854
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    const/4 p1, 0x1

    return p1

    .line 852
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 859
    :cond_2
    return v0
.end method

.method private hasPrintService(Ljava/lang/String;)Z
    .locals 3

    .line 824
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$400(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 830
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    .line 828
    const v2, 0x10800004

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 832
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 8

    .line 904
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 905
    :cond_0
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    invoke-static {v0, v1, p3, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 911
    nop

    .line 913
    nop

    .line 914
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object v2

    .line 915
    if-nez v2, :cond_1

    .line 916
    monitor-exit p1

    return p3

    .line 919
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 920
    move v3, p3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 921
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 922
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 923
    array-length v5, p2

    move v6, p3

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, p2, v6

    .line 924
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 925
    if-nez p4, :cond_2

    .line 926
    monitor-exit p1

    return v1

    .line 928
    :cond_2
    nop

    .line 929
    nop

    .line 932
    move v3, v1

    goto :goto_2

    .line 923
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 932
    :cond_4
    :goto_2
    goto :goto_0

    .line 933
    :cond_5
    if-eqz v3, :cond_6

    .line 934
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 936
    :cond_6
    monitor-exit p1

    return p3

    .line 937
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    .line 942
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 943
    :cond_0
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 944
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 945
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object p1

    .line 947
    invoke-virtual {p1}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 949
    :cond_1
    monitor-exit p2

    .line 950
    return-void

    .line 949
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4

    .line 864
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 868
    nop

    .line 869
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 870
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 871
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 872
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 873
    const/4 v2, 0x1

    .line 875
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    if-eqz v2, :cond_3

    .line 878
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 880
    :cond_3
    return-void

    .line 875
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    .line 884
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 885
    :cond_0
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 888
    nop

    .line 889
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 890
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 891
    invoke-virtual {p2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 892
    const/4 v1, 0x1

    .line 894
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    if-eqz v1, :cond_2

    .line 897
    invoke-virtual {p2}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 899
    :cond_2
    return-void

    .line 894
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
