.class final Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;
.super Lcom/oneplus/os/IOnePlusService$Stub;
.source "OnePlusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OnePlusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnePlusServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OnePlusService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OnePlusService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/server/OnePlusService;

    .line 65
    iput-object p1, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-direct {p0}, Lcom/oneplus/os/IOnePlusService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAppControlModes(I)Ljava/util/List;
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppControlMode(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 91
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppControlState(I)I
    .registers 3
    .param p1, "mode"    # I

    .line 101
    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    # getter for: Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlState(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 147
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 149
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPermissionService(I)Landroid/os/IBinder;
    .registers 3
    .param p1, "serviceIndex"    # I

    .line 79
    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->getPermissionServiceBinderProxy(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isRequestPermission(Z)V
    .registers 2
    .param p1, "request"    # Z

    .line 69
    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->isRequestPermission(Z)V

    .line 70
    return-void
.end method

.method public reportJank(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "jankType"    # I
    .param p4, "jankLevel"    # I

    .line 166
    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->getInstance()Lcom/android/server/am/OnePlusJankManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    .line 168
    return-void
.end method

.method public setAppControlMode(Ljava/lang/String;II)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .line 96
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlMode(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public setAppControlState(II)I
    .registers 4
    .param p1, "mode"    # I
    .param p2, "on"    # I

    .line 106
    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    # getter for: Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "proxy"    # Landroid/os/IBinder;
    .param p2, "serviceIndex"    # I

    .line 74
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusCTAPermissionService;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V

    .line 75
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 157
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    .line 159
    :cond_15
    return-void
.end method
