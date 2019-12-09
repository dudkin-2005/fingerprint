.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1635
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1636
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 1637
    return-void
.end method

.method private connectToService()Z
    .registers 7

    .line 1614
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_b

    const-string v0, "PackageManager"

    const-string v1, "Trying to bind to DefaultContainerService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1616
    .local v0, "service":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1617
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_35

    .line 1619
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1620
    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1621
    return v5

    .line 1623
    :cond_35
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1624
    return v1
.end method

.method private disconnectService()V
    .registers 3

    .line 1628
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1630
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1631
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1632
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1633
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 30
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1648
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_733

    const/4 v7, 0x6

    const/4 v8, 0x3

    const-wide/32 v9, 0x40000

    if-eq v0, v8, :cond_64e

    const/16 v11, 0x15be

    if-eq v0, v11, :cond_60b

    packed-switch v0, :pswitch_data_7ea

    packed-switch v0, :pswitch_data_7f4

    const/16 v8, 0xe

    packed-switch v0, :pswitch_data_7fe

    goto/16 :goto_7e5

    .line 1650
    :pswitch_25
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v0, :cond_7e5

    .line 1651
    const-string v0, "earlyBindingMCS"

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1652
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1651
    invoke-static {v9, v10, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1653
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1654
    const-string v0, "PackageManager"

    const-string v3, "Failed to bind to media container service"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_43
    const-string v0, "earlyBindingMCS"

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1657
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1656
    invoke-static {v9, v10, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_7e5

    .line 2131
    :pswitch_52
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/InstantAppRequest;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    goto/16 :goto_7e5

    .line 1979
    :pswitch_6b
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1980
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1981
    const/16 v0, 0x13

    :try_start_75
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1982
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1983
    monitor-exit v5
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_87

    .line 1984
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1985
    goto/16 :goto_7e5

    .line 1983
    :catchall_87
    move-exception v0

    :try_start_88
    monitor-exit v5
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v0

    .line 2074
    :pswitch_8a
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2076
    .local v0, "verificationId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 2078
    .local v4, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v4, :cond_b5

    .line 2079
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IntentFilter verification token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    goto/16 :goto_7e5

    .line 2084
    :cond_b5
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v5

    .line 2086
    .local v5, "userId":I
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_db

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing IntentFilter verification with token:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and userId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_db
    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 2093
    .local v6, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    iget v7, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    iget v8, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 2095
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v7, :cond_112

    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentFilter verification with token:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is settings verifier response with response code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_112
    iget v7, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    if-ne v7, v3, :cond_134

    .line 2102
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_134

    const-string v3, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Domains failing verification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationResponse;->getFailedDomainsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2102
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_134
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v3

    if-eqz v3, :cond_145

    .line 2107
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerifier:Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_7e5

    .line 2109
    :cond_145
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_7e5

    const-string v3, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IntentFilter verification with token:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " was not said to be complete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e5

    .line 2068
    .end local v0    # "verificationId":I
    .end local v4    # "state":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v5    # "userId":I
    .end local v6    # "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    :pswitch_166
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 2069
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    iget-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->verifyIntentFiltersIfNeeded(IIZLandroid/content/pm/PackageParser$Package;)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    .line 2071
    goto/16 :goto_7e5

    .line 1987
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_179
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 1988
    .local v4, "verificationId":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageVerificationState;

    .line 1990
    .local v6, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v6, :cond_7e5

    invoke-virtual {v6}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v0

    if-nez v0, :cond_7e5

    .line 1991
    invoke-virtual {v6}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v8

    .line 1992
    .local v8, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 1994
    .local v11, "originUri":Landroid/net/Uri;
    const-string v0, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Verification timed out for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1997
    const/16 v12, -0x16

    .line 1999
    .local v12, "ret":I
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    .line 2000
    .local v13, "user":Landroid/os/UserHandle;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDefaultVerificationResponse(Landroid/os/UserHandle;)I
    invoke-static {v0, v13}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v0

    if-ne v0, v5, :cond_1fd

    .line 2002
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuing with installation of "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {v6, v0, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 2005
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v0, v4, v11, v5, v13}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 2008
    :try_start_1e8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    invoke-virtual {v8, v0, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v0
    :try_end_1f2
    .catch Landroid/os/RemoteException; {:try_start_1e8 .. :try_end_1f2} :catch_1f4

    move v12, v0

    .line 2011
    :goto_1f3
    goto :goto_202

    .line 2009
    :catch_1f4
    move-exception v0

    .line 2010
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v5, "Could not contact the ContainerService"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1f3

    .line 2013
    :cond_1fd
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v0, v4, v11, v3, v13}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 2017
    :goto_202
    const-string/jumbo v0, "verification"

    invoke-static {v9, v10, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2020
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v8, v12}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 2021
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 2022
    .end local v8    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v11    # "originUri":Landroid/net/Uri;
    .end local v12    # "ret":I
    .end local v13    # "user":Landroid/os/UserHandle;
    goto/16 :goto_7e5

    .line 2026
    .end local v4    # "verificationId":I
    .end local v6    # "state":Lcom/android/server/pm/PackageVerificationState;
    :pswitch_216
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 2028
    .local v3, "verificationId":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    .line 2029
    .local v4, "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v4, :cond_242

    .line 2030
    const-string v0, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid verification token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    goto/16 :goto_7e5

    .line 2034
    :cond_242
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageVerificationResponse;

    .line 2036
    .local v6, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iget v0, v6, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v8, v6, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v4, v0, v8}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 2038
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-eqz v0, :cond_7e5

    .line 2039
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2041
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v8

    .line 2042
    .restart local v8    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 2045
    .restart local v11    # "originUri":Landroid/net/Uri;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v0

    if-eqz v0, :cond_293

    .line 2046
    const/16 v12, -0x6e

    .line 2047
    .restart local v12    # "ret":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v13, v6, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    .line 2048
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    .line 2047
    # invokes: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v0, v3, v11, v13, v14}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 2050
    :try_start_27e
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    invoke-virtual {v8, v0, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v0
    :try_end_288
    .catch Landroid/os/RemoteException; {:try_start_27e .. :try_end_288} :catch_28a

    move v12, v0

    goto :goto_292

    .line 2051
    :catch_28a
    move-exception v0

    .line 2052
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v5, "PackageManager"

    const-string v13, "Could not contact the ContainerService"

    invoke-static {v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_292
    goto :goto_295

    .line 2055
    .end local v12    # "ret":I
    :cond_293
    const/16 v12, -0x16

    .line 2055
    .restart local v12    # "ret":I
    :goto_295
    move v0, v12

    .line 2058
    .end local v12    # "ret":I
    .local v0, "ret":I
    const-string/jumbo v5, "verification"

    invoke-static {v9, v10, v5, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2061
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v5, v8, v0}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 2062
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 2063
    .end local v0    # "ret":I
    .end local v8    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v11    # "originUri":Landroid/net/Uri;
    goto/16 :goto_7e5

    .line 1968
    .end local v3    # "verificationId":I
    .end local v4    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v6    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :pswitch_2aa
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1969
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1970
    :try_start_2b2
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1971
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2bf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1972
    .restart local v5    # "userId":I
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1973
    .end local v5    # "userId":I
    goto :goto_2bf

    .line 1974
    :cond_2d7
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1975
    monitor-exit v3
    :try_end_2e1
    .catchall {:try_start_2b2 .. :try_end_2e1} :catchall_2e6

    .line 1976
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1977
    goto/16 :goto_7e5

    .line 1975
    :catchall_2e6
    move-exception v0

    :try_start_2e7
    monitor-exit v3
    :try_end_2e8
    .catchall {:try_start_2e7 .. :try_end_2e8} :catchall_2e6

    throw v0

    .line 1958
    :pswitch_2e9
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1959
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1960
    const/16 v0, 0xd

    :try_start_2f3
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1961
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1962
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1963
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1964
    monitor-exit v3
    :try_end_30a
    .catchall {:try_start_2f3 .. :try_end_30a} :catchall_30f

    .line 1965
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1966
    goto/16 :goto_7e5

    .line 1964
    :catchall_30f
    move-exception v0

    :try_start_310
    monitor-exit v3
    :try_end_311
    .catchall {:try_start_310 .. :try_end_311} :catchall_30f

    throw v0

    .line 1804
    :pswitch_312
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_31e

    const-string v0, "PackageManager"

    const-string/jumbo v3, "mcs_giveup too many retries"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_31e
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7e5

    .line 1808
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1809
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    const-string/jumbo v3, "queueInstall"

    .line 1810
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1809
    invoke-static {v9, v10, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1811
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    goto/16 :goto_7e5

    .line 1766
    :pswitch_33a
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_346

    const-string v0, "PackageManager"

    const-string/jumbo v3, "mcs_reconnect"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_346
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7e5

    .line 1768
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v0, :cond_355

    .line 1769
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 1771
    :cond_355
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v0

    if-nez v0, :cond_7e5

    .line 1772
    const-string v0, "PackageManager"

    const-string v3, "Failed to bind to media container service"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_368
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_382

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1775
    .local v3, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1776
    const-string/jumbo v4, "queueInstall"

    .line 1777
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1776
    invoke-static {v9, v10, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1778
    .end local v3    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    goto :goto_368

    .line 1779
    :cond_382
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7e5

    .line 1882
    :pswitch_389
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_3a5

    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling post-install for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_3a5
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1885
    .local v3, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_3b9

    move/from16 v17, v5

    goto :goto_3bb

    :cond_3b9
    move/from16 v17, v6

    .line 1886
    .local v17, "didRestore":Z
    :goto_3bb
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 1888
    if-eqz v3, :cond_4d0

    .line 1889
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1890
    .local v4, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1892
    .local v7, "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3d2

    move v13, v5

    goto :goto_3d3

    :cond_3d2
    move v13, v6

    .line 1894
    .local v13, "grantPermissions":Z
    :goto_3d3
    iget v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_3db

    move v14, v5

    goto :goto_3dc

    :cond_3db
    move v14, v6

    .line 1896
    .local v14, "killApp":Z
    :goto_3dc
    iget v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v8, 0x10000

    and-int/2addr v0, v8

    if-eqz v0, :cond_3e5

    move v15, v5

    goto :goto_3e6

    :cond_3e5
    move v15, v6

    .line 1898
    .local v15, "virtualPreload":Z
    :goto_3e6
    iget-object v8, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1901
    .local v8, "grantedPermissions":[Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v19, v12

    move-object v12, v7

    move-object/from16 v16, v8

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->handlePackagePostInstall(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V
    invoke-static/range {v11 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1906
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_403

    .line 1907
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_404

    :cond_403
    move v0, v6

    :goto_404
    move v11, v0

    .line 1908
    .local v11, "childCount":I
    move v0, v6

    .line 1908
    .local v0, "i":I
    :goto_406
    if-ge v0, v11, :cond_432

    .line 1909
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1910
    .local v12, "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v24, 0x0

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v18, v9

    move-object/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v23, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v6

    # invokes: Lcom/android/server/pm/PackageManagerService;->handlePackagePostInstall(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V
    invoke-static/range {v18 .. v26}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1908
    .end local v12    # "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x0

    const-wide/32 v9, 0x40000

    goto :goto_406

    .line 1918
    .end local v0    # "i":I
    :cond_432
    :try_start_432
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1919
    .local v0, "packageName":Ljava/lang/String;
    new-array v5, v5, [I

    const/16 v6, 0xc

    const/4 v9, 0x0

    aput v6, v5, v9

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_4b0

    const-string v5, "com.cttl"

    .line 1920
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b0

    iget-object v5, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x16

    if-le v5, v6, :cond_4b0

    iget-object v5, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v5, :cond_4b0

    iget-object v5, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1923
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4b0

    .line 1924
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    .local v5, "grantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_474
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_48a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1926
    .local v9, "requestedPerm":Ljava/lang/String;
    invoke-static {v9}, Landroid/util/Permission;->isCTADefaultGrantedForSDK23(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_489

    .line 1927
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    .end local v9    # "requestedPerm":Ljava/lang/String;
    :cond_489
    goto :goto_474

    .line 1930
    :cond_48a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 1931
    .local v22, "callingUid":I
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerInternal;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerInternal;

    move-result-object v18

    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    .line 1932
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v21, v10

    check-cast v21, [Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1933
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-result-object v23

    .line 1931
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/pm/permission/PermissionManagerInternal;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    :try_end_4b0
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_4b0} :catch_4b1

    .line 1938
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v5    # "grantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    :cond_4b0
    goto :goto_4bc

    .line 1935
    :catch_4b1
    move-exception v0

    .line 1936
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PackageManager"

    const-string v6, "error while grant permission"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1943
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4bc
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->recordInstallInfo(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$InstallArgs;)V
    invoke-static {v0, v7, v4}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 1947
    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v0, :cond_4cf

    .line 1948
    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    iget v5, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    const-wide/32 v9, 0x40000

    invoke-static {v9, v10, v0, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1951
    .end local v4    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v7    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v8    # "grantedPermissions":[Ljava/lang/String;
    .end local v11    # "childCount":I
    .end local v13    # "grantPermissions":Z
    .end local v14    # "killApp":Z
    .end local v15    # "virtualPreload":Z
    :cond_4cf
    goto :goto_4e8

    .line 1952
    :cond_4d0
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bogus post-install token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :goto_4e8
    const-string/jumbo v0, "postInstall"

    iget v4, v2, Landroid/os/Message;->arg1:I

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1956
    .end local v3    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v17    # "didRestore":Z
    goto/16 :goto_7e5

    .line 1862
    :pswitch_4f5
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1863
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 1864
    .local v6, "packageName":Ljava/lang/String;
    iget v7, v2, Landroid/os/Message;->arg1:I

    .line 1865
    .local v7, "userId":I
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_505

    goto :goto_506

    :cond_505
    const/4 v5, 0x0

    .line 1866
    .local v5, "andCode":Z
    :goto_506
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 1867
    if-ne v7, v3, :cond_52b

    .line 1868
    :try_start_50d
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 1869
    .local v0, "users":[I
    array-length v3, v0

    const/4 v8, 0x0

    :goto_515
    if-ge v8, v3, :cond_528

    aget v10, v0, v8

    .line 1870
    .local v10, "user":I
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v12, Landroid/content/pm/PackageCleanItem;

    invoke-direct {v12, v10, v6, v5}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v11, v12}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1869
    .end local v10    # "user":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_515

    .line 1873
    .end local v0    # "users":[I
    :cond_528
    goto :goto_537

    .line 1877
    :catchall_529
    move-exception v0

    goto :goto_542

    .line 1874
    :cond_52b
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v3, Landroid/content/pm/PackageCleanItem;

    invoke-direct {v3, v7, v6, v5}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1877
    :goto_537
    monitor-exit v9
    :try_end_538
    .catchall {:try_start_50d .. :try_end_538} :catchall_529

    .line 1878
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1879
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    .line 1880
    .end local v5    # "andCode":Z
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    goto/16 :goto_7e5

    .line 1877
    .restart local v5    # "andCode":Z
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "userId":I
    :goto_542
    :try_start_542
    monitor-exit v9
    :try_end_543
    .catchall {:try_start_542 .. :try_end_543} :catchall_529

    throw v0

    .line 1786
    .end local v5    # "andCode":Z
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    :pswitch_544
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_550

    const-string v0, "PackageManager"

    const-string/jumbo v3, "mcs_unbind"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_550
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_576

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_576

    .line 1789
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v0, :cond_7e5

    .line 1790
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_571

    const-string v0, "PackageManager"

    const-string v3, "calling disconnectService()"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_571
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_7e5

    .line 1794
    :cond_576
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7e5

    .line 1798
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7e5

    .line 1661
    :pswitch_587
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1662
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1663
    .local v3, "idx":I
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v4, :cond_5b4

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init_copy idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_5b4
    iget-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v4, :cond_5fb

    .line 1668
    const-string v4, "bindingMCS"

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1669
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1668
    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1672
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_5f4

    .line 1673
    const-string v4, "PackageManager"

    const-string v5, "Failed to bind to media container service"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1675
    const-string v4, "bindingMCS"

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1676
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1675
    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1677
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_5f3

    .line 1678
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1681
    :cond_5f3
    return-void

    .line 1685
    :cond_5f4
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7e5

    .line 1688
    :cond_5fb
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1691
    if-nez v3, :cond_7e5

    .line 1692
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7e5

    .line 2120
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .end local v3    # "idx":I
    :cond_60b
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Lcom/oneplus/config/ConfigObserver;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$DozeWhitelistConfigUpdater;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v6, v7}, Lcom/android/server/pm/PackageManagerService$DozeWhitelistConfigUpdater;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    # getter for: Lcom/android/server/pm/PackageManagerService;->DOZE_WHITELIST_CONFIG_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1900()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    # setter for: Lcom/android/server/pm/PackageManagerService;->mDozeWhitelistConfigObserver:Lcom/oneplus/config/ConfigObserver;
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->access$1802(Lcom/android/server/pm/PackageManagerService;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;

    .line 2121
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDozeWhitelistConfigObserver:Lcom/oneplus/config/ConfigObserver;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;)Lcom/oneplus/config/ConfigObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 2122
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/pm/PackageManagerService;->DOZE_WHITELIST_CONFIG_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1900()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2123
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v4

    # invokes: Lcom/android/server/pm/PackageManagerService;->resolveDozeWhitelistConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;Lorg/json/JSONArray;)V

    .line 2125
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->removeAbnormalDozeWhiteList()V
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)V

    .line 2126
    goto/16 :goto_7e5

    .line 1698
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :cond_64e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_65a

    const-string v0, "PackageManager"

    const-string/jumbo v3, "mcs_bound"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_65a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_677

    .line 1700
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IMediaContainerService;

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1701
    const-string v0, "bindingMCS"

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1702
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1701
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1704
    :cond_677
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    if-nez v0, :cond_6c8

    .line 1705
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v0, :cond_6bf

    .line 1708
    const-string v0, "PackageManager"

    const-string v3, "Cannot bind to media container service"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_690
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1711
    .local v3, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1712
    const-string/jumbo v4, "queueInstall"

    .line 1713
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1712
    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1714
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_6b7

    .line 1715
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    iget v5, v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1718
    .end local v3    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_6b7
    goto :goto_690

    .line 1719
    :cond_6b8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7e5

    .line 1721
    :cond_6bf
    const-string v0, "PackageManager"

    const-string v3, "Waiting to connect to media container service"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e5

    .line 1723
    :cond_6c8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_72a

    .line 1724
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1725
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v0, :cond_728

    .line 1726
    const-string/jumbo v3, "queueInstall"

    .line 1727
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1726
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1728
    const-string/jumbo v3, "startCopy"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1729
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v3

    if-eqz v3, :cond_722

    .line 1735
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_702

    .line 1736
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1738
    :cond_702
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_71b

    .line 1739
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v3, :cond_722

    .line 1742
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1743
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1746
    .local v3, "ubmsg":Landroid/os/Message;
    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1747
    .end local v3    # "ubmsg":Landroid/os/Message;
    goto :goto_722

    .line 1754
    :cond_71b
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 1757
    :cond_722
    :goto_722
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1759
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_728
    goto/16 :goto_7e5

    .line 1761
    :cond_72a
    const-string v0, "PackageManager"

    const-string v3, "Empty queue"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    goto/16 :goto_7e5

    .line 1818
    :cond_733
    const/4 v6, 0x0

    .line 1820
    .local v6, "size":I
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1821
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1822
    :try_start_73d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    if-nez v0, :cond_745

    .line 1823
    monitor-exit v7

    return-void

    .line 1825
    :cond_745
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v0

    move v6, v0

    .line 1826
    if-gtz v6, :cond_752

    .line 1828
    monitor-exit v7

    return-void

    .line 1830
    :cond_752
    new-array v0, v6, [Ljava/lang/String;

    .line 1831
    .local v0, "packages":[Ljava/lang/String;
    new-array v8, v6, [Ljava/util/ArrayList;

    .line 1832
    .local v8, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v10, v6, [I

    .line 1833
    .local v10, "uids":[I
    const/4 v11, 0x0

    .line 1835
    .local v11, "i":I
    move v12, v11

    move v11, v9

    .line 1835
    .local v11, "n":I
    .local v12, "i":I
    :goto_75b
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v13

    if-ge v11, v13, :cond_7c2

    .line 1836
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v13, v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v13

    .line 1837
    .local v13, "packageUserId":I
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    .line 1838
    invoke-virtual {v14, v13}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v14

    .line 1839
    invoke-virtual {v14}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1840
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_77d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7bd

    if-ge v12, v6, :cond_7bd

    .line 1841
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1842
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    aput-object v16, v0, v12

    .line 1843
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    aput-object v16, v8, v12

    .line 1844
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1845
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_7b4

    .line 1846
    iget v9, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v13, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    goto :goto_7b5

    .line 1847
    :cond_7b4
    const/4 v9, -0x1

    :goto_7b5
    aput v9, v10, v12

    .line 1848
    add-int/lit8 v12, v12, 0x1

    .line 1849
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    nop

    .line 1839
    const/4 v3, -0x1

    const/4 v9, 0x0

    goto :goto_77d

    .line 1835
    .end local v13    # "packageUserId":I
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_7bd
    add-int/lit8 v11, v11, 0x1

    const/4 v3, -0x1

    const/4 v9, 0x0

    goto :goto_75b

    .line 1851
    .end local v11    # "n":I
    :cond_7c2
    move v6, v12

    .line 1852
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 1853
    .end local v12    # "i":I
    monitor-exit v7
    :try_end_7cb
    .catchall {:try_start_73d .. :try_end_7cb} :catchall_7e6

    move-object v3, v8

    .line 1853
    .end local v8    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v7, v10

    .line 1855
    .end local v10    # "uids":[I
    .local v7, "uids":[I
    const/16 v27, 0x0

    .line 1855
    .local v27, "i":I
    :goto_7cf
    move/from16 v8, v27

    .line 1855
    .end local v27    # "i":I
    .local v8, "i":I
    if-ge v8, v6, :cond_7e1

    .line 1856
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v0, v8

    aget-object v11, v3, v8

    aget v12, v7, v8

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v9, v10, v5, v11, v12}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1855
    add-int/lit8 v27, v8, 0x1

    .line 1855
    .end local v8    # "i":I
    .restart local v27    # "i":I
    goto :goto_7cf

    .line 1858
    .end local v27    # "i":I
    :cond_7e1
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1859
    nop

    .line 2138
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v3    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "size":I
    .end local v7    # "uids":[I
    :cond_7e5
    :goto_7e5
    return-void

    .line 1853
    .restart local v6    # "size":I
    :catchall_7e6
    move-exception v0

    :try_start_7e7
    monitor-exit v7
    :try_end_7e8
    .catchall {:try_start_7e7 .. :try_end_7e8} :catchall_7e6

    throw v0

    nop

    :pswitch_data_7ea
    .packed-switch 0x5
        :pswitch_587
        :pswitch_544
        :pswitch_4f5
    .end packed-switch

    :pswitch_data_7f4
    .packed-switch 0x9
        :pswitch_389
        :pswitch_33a
        :pswitch_312
    .end packed-switch

    :pswitch_data_7fe
    .packed-switch 0xd
        :pswitch_2e9
        :pswitch_2aa
        :pswitch_216
        :pswitch_179
        :pswitch_166
        :pswitch_8a
        :pswitch_6b
        :pswitch_52
        :pswitch_25
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1641
    const/16 v0, 0xa

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    .line 1643
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1644
    nop

    .line 1645
    return-void

    .line 1643
    :catchall_a
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method
