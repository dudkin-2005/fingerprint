.class final Lcom/android/server/pm/permission/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mPerm:Lcom/android/server/pm/permission/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field

.field final mUserStatesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/pm/permission/BasePermission;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    .line 692
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStatesLock:Ljava/lang/Object;

    .line 696
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    .line 697
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V
    .registers 9
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 700
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    .line 701
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 703
    .local v0, "otherStateCount":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStatesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_2e

    .line 706
    :try_start_11
    iget-object v3, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 707
    .local v3, "otherUserId":I
    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 708
    .local v4, "otherState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-direct {v6, v4}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    .end local v3    # "otherUserId":I
    .end local v4    # "otherState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 711
    .end local v2    # "i":I
    :catchall_2c
    move-exception v2

    goto :goto_30

    :cond_2e
    monitor-exit v1

    .line 713
    return-void

    .line 711
    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_2c

    throw v2
.end method

.method private isCompatibleUserId(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 838
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method private isInstallPermission()Z
    .registers 4

    .line 842
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v2, -0x1

    .line 843
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 842
    :goto_14
    return v1
.end method

.method public static isInstallPermissionKey(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 799
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 3
    .param p1, "userId"    # I

    .line 716
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 787
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 788
    .local v0, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v0, :cond_f

    .line 789
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v1

    return v1

    .line 791
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 3
    .param p1, "userId"    # I

    .line 783
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    return-object v0
.end method

.method public grant(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 733
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 734
    return v1

    .line 737
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 738
    return v1

    .line 741
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 743
    .local v0, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStatesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 745
    if-nez v0, :cond_30

    .line 746
    :try_start_1c
    new-instance v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 747
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_30

    .line 750
    :catchall_2e
    move-exception v2

    goto :goto_36

    :cond_30
    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_2e

    .line 753
    const/4 v1, 0x1

    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 755
    return v1

    .line 750
    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2e

    throw v2
.end method

.method public isDefault()Z
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isGranted(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 720
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 721
    const/4 p1, -0x1

    .line 724
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 725
    .local v0, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-nez v0, :cond_13

    .line 726
    const/4 v1, 0x0

    return v1

    .line 729
    :cond_13
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$000(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)Z

    move-result v1

    return v1
.end method

.method public revoke(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 759
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 760
    return v1

    .line 763
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 764
    return v1

    .line 767
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 768
    .local v0, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 770
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStatesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 772
    :try_start_1d
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 773
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 776
    :cond_28
    monitor-exit v1

    .line 779
    const/4 v1, 0x1

    return v1

    .line 776
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public updateFlags(III)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .line 803
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 804
    const/4 p1, -0x1

    .line 807
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 808
    return v1

    .line 811
    :cond_f
    and-int v0, p3, p2

    .line 813
    .local v0, "newFlags":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 815
    .local v2, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStatesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 817
    const/4 v4, 0x1

    if-eqz v2, :cond_44

    .line 818
    :try_start_1f
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v5

    .line 819
    .local v5, "oldFlags":I
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v6

    not-int v7, p2

    and-int/2addr v6, v7

    or-int/2addr v6, v0

    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2, v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 820
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 821
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 823
    :cond_38
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v6

    if-eq v6, v5, :cond_40

    move v1, v4

    nop

    :cond_40
    monitor-exit v3

    return v1

    .line 831
    .end local v5    # "oldFlags":I
    :catchall_42
    move-exception v1

    goto :goto_5e

    .line 824
    :cond_44
    if-eqz v0, :cond_5c

    .line 825
    new-instance v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 826
    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 827
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    monitor-exit v3

    return v4

    .line 831
    :cond_5c
    monitor-exit v3

    .line 834
    return v1

    .line 831
    :goto_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_1f .. :try_end_5f} :catchall_42

    throw v1
.end method
