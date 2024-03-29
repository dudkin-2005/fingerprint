.class public Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;
.super Ljava/lang/Object;
.source "OnePlusWmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusWmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusWindowManagerService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mNetBoostFeature:Z

.field private mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 45
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mContext:Landroid/content/Context;

    .line 48
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x42

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    .line 50
    return-void
.end method


# virtual methods
.method public findFocusedWindow()V
    .registers 3

    .line 85
    iget-boolean v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    if-eqz v0, :cond_32

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->updateTouchWindowUidChange(Ljava/util/HashSet;)V

    .line 91
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 93
    :cond_32
    return-void
.end method

.method public getSysAlertWindowUids()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 69
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getSysAlertWindowUidsForScreenOff()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 77
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 78
    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 79
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getVisibleWindowUids()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 61
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
