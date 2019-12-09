.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .param p2, "x1"    # Lcom/android/server/pm/LauncherAppsService$1;

    .line 671
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method public static synthetic lambda$onShortcutChanged$0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 832
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onShortcutChangedInner(Ljava/lang/String;I)V

    return-void
.end method

.method private onShortcutChangedInner(Ljava/lang/String;I)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    move-object/from16 v1, p0

    .line 837
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v0

    move v2, v0

    .line 839
    .local v2, "n":I
    :try_start_d
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    move-object v3, v0

    .line 841
    .local v3, "user":Landroid/os/UserHandle;
    const/4 v0, 0x0

    .line 841
    .local v0, "i":I
    :goto_13
    move v4, v0

    .line 841
    .end local v0    # "i":I
    .local v4, "i":I
    if-ge v4, v2, :cond_9a

    .line 842
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    move-object v5, v0

    .line 843
    .local v5, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    move-object v6, v0

    .line 844
    .local v6, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onShortcutChanged"

    # invokes: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    invoke-static {v0, v7, v3, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 841
    .end local v5    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v6    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :goto_3d
    move-object/from16 v8, p1

    goto :goto_94

    .line 846
    .restart local v5    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v6    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :cond_40
    iget-object v0, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v15, v0

    .line 849
    .local v15, "launcherUserId":I
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;
    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v0

    iget-object v7, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    iget v8, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v9, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v0, v15, v7, v8, v9}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 852
    goto :goto_3d

    .line 858
    :cond_5a
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 859
    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;
    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v7

    iget-object v9, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v0, 0x40f

    iget v12, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v8, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    move/from16 v18, v8

    move v8, v15

    move/from16 v17, v12

    move-object/from16 v12, p1

    move/from16 v19, v15

    move v15, v0

    .end local v15    # "launcherUserId":I
    .local v19, "launcherUserId":I
    move/from16 v16, p2

    invoke-virtual/range {v7 .. v18}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v0
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_7c} :catch_aa
    .catchall {:try_start_d .. :try_end_7c} :catchall_a6

    move-object v7, v0

    .line 867
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_7d
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_82} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_82} :catch_aa
    .catchall {:try_start_7d .. :try_end_82} :catchall_a6

    move-object/from16 v8, p1

    :try_start_84
    invoke-interface {v5, v3, v8, v0}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_87} :catch_88
    .catch Ljava/lang/RuntimeException; {:try_start_84 .. :try_end_87} :catch_98
    .catchall {:try_start_84 .. :try_end_87} :catchall_b8

    .line 871
    goto :goto_94

    .line 869
    :catch_88
    move-exception v0

    goto :goto_8d

    :catch_8a
    move-exception v0

    move-object/from16 v8, p1

    .line 870
    .local v0, "re":Landroid/os/RemoteException;
    :goto_8d
    :try_start_8d
    const-string v9, "LauncherAppsService"

    const-string v10, "Callback failed "

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_94} :catch_98
    .catchall {:try_start_8d .. :try_end_94} :catchall_b8

    .line 841
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v5    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v6    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v19    # "launcherUserId":I
    :goto_94
    add-int/lit8 v0, v4, 0x1

    .line 841
    .end local v4    # "i":I
    .local v0, "i":I
    goto/16 :goto_13

    .line 873
    .end local v0    # "i":I
    .end local v3    # "user":Landroid/os/UserHandle;
    :catch_98
    move-exception v0

    goto :goto_ad

    .line 877
    :cond_9a
    move-object/from16 v8, p1

    :goto_9c
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 878
    goto :goto_b7

    .line 877
    :catchall_a6
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_b9

    .line 873
    :catch_aa
    move-exception v0

    move-object/from16 v8, p1

    .line 875
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_ad
    :try_start_ad
    const-string v3, "LauncherAppsService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_b8

    .line 875
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_9c

    .line 879
    :goto_b7
    return-void

    .line 877
    :catchall_b8
    move-exception v0

    :goto_b9
    iget-object v3, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v0
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 677
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 678
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 680
    .local v1, "n":I
    const/4 v2, 0x0

    .line 680
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 681
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 682
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 683
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageAdded"

    # invokes: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    .line 683
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    goto :goto_48

    .line 685
    .restart local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 688
    goto :goto_48

    .line 686
    :catch_40
    move-exception v5

    .line 687
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 680
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 691
    .end local v2    # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 692
    nop

    .line 694
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 695
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 721
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 722
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 724
    .local v1, "n":I
    const/4 v2, 0x0

    .line 724
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 725
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 726
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 727
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageModified"

    # invokes: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    .line 727
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    goto :goto_48

    .line 729
    .restart local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 732
    goto :goto_48

    .line 730
    :catch_40
    move-exception v5

    .line 731
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 724
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 735
    .end local v2    # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 736
    nop

    .line 738
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 699
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 700
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 702
    .local v1, "n":I
    const/4 v2, 0x0

    .line 702
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 703
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 704
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 705
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageRemoved"

    # invokes: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    .line 705
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    goto :goto_48

    .line 707
    .restart local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 710
    goto :goto_48

    .line 708
    :catch_40
    move-exception v5

    .line 709
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 702
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 713
    .end local v2    # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 714
    nop

    .line 716
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 717
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;

    .line 743
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 744
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 746
    .local v1, "n":I
    const/4 v2, 0x0

    .line 746
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_5a

    .line 747
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 748
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 749
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesAvailable"

    # invokes: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4f

    if-nez v5, :cond_3c

    .line 749
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    goto :goto_4c

    .line 751
    .restart local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v5

    invoke-interface {v3, v0, p1, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_44
    .catchall {:try_start_3c .. :try_end_43} :catchall_4f

    .line 754
    goto :goto_4c

    .line 752
    :catch_44
    move-exception v5

    .line 753
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_45
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4f

    .line 746
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 757
    .end local v2    # "i":I
    :catchall_4f
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_5a
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 758
    nop

    .line 760
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "launcherExtras"    # Landroid/os/Bundle;

    .line 787
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 788
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 790
    .local v1, "n":I
    const/4 v2, 0x0

    .line 790
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 791
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 792
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 793
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesSuspended"

    # invokes: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    .line 793
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    goto :goto_48

    .line 795
    .restart local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1, p2}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 798
    goto :goto_48

    .line 796
    :catch_40
    move-exception v5

    .line 797
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 790
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 801
    .end local v2    # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 802
    nop

    .line 804
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;Landroid/os/Bundle;)V

    .line 805
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;

    .line 765
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 766
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 768
    .local v1, "n":I
    const/4 v2, 0x0

    .line 768
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_5a

    .line 769
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 770
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 771
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnavailable"

    # invokes: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4f

    if-nez v5, :cond_3c

    .line 771
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    goto :goto_4c

    .line 773
    .restart local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v5

    invoke-interface {v3, v0, p1, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_44
    .catchall {:try_start_3c .. :try_end_43} :catchall_4f

    .line 776
    goto :goto_4c

    .line 774
    :catch_44
    move-exception v5

    .line 775
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_45
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4f

    .line 768
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 779
    .end local v2    # "i":I
    :catchall_4f
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_5a
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 780
    nop

    .line 782
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;

    .line 809
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 810
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 812
    .local v1, "n":I
    const/4 v2, 0x0

    .line 812
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 813
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 814
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 815
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnsuspended"

    # invokes: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    .line 815
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    goto :goto_48

    .line 817
    .restart local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 820
    goto :goto_48

    .line 818
    :catch_40
    move-exception v5

    .line 819
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 812
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 823
    .end local v2    # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 824
    nop

    .line 826
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public onShortcutChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 832
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$eTair5Mvr14v4M0nq9aQEW2cp-Y;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$eTair5Mvr14v4M0nq9aQEW2cp-Y;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method
