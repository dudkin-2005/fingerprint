.class Lcom/android/server/pm/PackageInstallerService$Callbacks;
.super Landroid/os/Handler;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageInstallerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 986
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 991
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .locals 0

    .line 979
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionCreated(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .locals 0

    .line 979
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionBadgingChanged(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V
    .locals 0

    .line 979
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionActiveChanged(IIZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V
    .locals 0

    .line 979
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionProgressChanged(IIF)V

    return-void
.end method

.method private invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 1022
    iget v1, p2, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1036
    :pswitch_0
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionFinished(IZ)V

    goto :goto_0

    .line 1033
    :pswitch_1
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionProgressChanged(IF)V

    .line 1034
    goto :goto_0

    .line 1030
    :pswitch_2
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionActiveChanged(IZ)V

    .line 1031
    goto :goto_0

    .line 1027
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionBadgingChanged(I)V

    .line 1028
    goto :goto_0

    .line 1024
    :pswitch_4
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionCreated(I)V

    .line 1025
    nop

    .line 1039
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifySessionActiveChanged(IIZ)V
    .locals 1

    .line 1050
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1051
    return-void
.end method

.method private notifySessionBadgingChanged(II)V
    .locals 1

    .line 1046
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1047
    return-void
.end method

.method private notifySessionCreated(II)V
    .locals 1

    .line 1042
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1043
    return-void
.end method

.method private notifySessionProgressChanged(IIF)V
    .locals 1

    .line 1054
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1055
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1003
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1004
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1005
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1006
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageInstallerCallback;

    .line 1007
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 1009
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 1011
    :try_start_0
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    goto :goto_1

    .line 1012
    :catch_0
    move-exception v3

    .line 1005
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1016
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1017
    return-void
.end method

.method public notifySessionFinished(IIZ)V
    .locals 1

    .line 1058
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1059
    return-void
.end method

.method public register(Landroid/content/pm/IPackageInstallerCallback;I)V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 995
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 999
    return-void
.end method
