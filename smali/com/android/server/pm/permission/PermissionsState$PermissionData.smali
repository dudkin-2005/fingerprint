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


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/BasePermission;)V
    .locals 1

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    .line 656
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    .line 657
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V
    .locals 6

    .line 660
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    .line 661
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 662
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 663
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 664
    iget-object v3, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 665
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-direct {v5, v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    :cond_0
    return-void
.end method

.method private isCompatibleUserId(I)Z
    .locals 1

    .line 775
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result p1

    xor-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isInstallPermission()Z
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v2, -0x1

    .line 780
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 779
    :goto_0
    return v1
.end method

.method public static isInstallPermissionKey(I)Z
    .locals 1

    .line 742
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getFlags(I)I
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 731
    if-eqz p1, :cond_0

    .line 732
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result p1

    return p1

    .line 734
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    return-object p1
.end method

.method public grant(I)Z
    .locals 2

    .line 687
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 688
    return v1

    .line 691
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    return v1

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 696
    if-nez v0, :cond_2

    .line 697
    new-instance v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    :cond_2
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 703
    return p1
.end method

.method public isDefault()Z
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGranted(I)Z
    .locals 1

    .line 674
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 p1, -0x1

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 679
    if-nez p1, :cond_1

    .line 680
    const/4 p1, 0x0

    return p1

    .line 683
    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$000(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)Z

    move-result p1

    return p1
.end method

.method public revoke(I)Z
    .locals 2

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 708
    return v1

    .line 711
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    return v1

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 716
    invoke-static {v0, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 718
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 722
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public updateFlags(III)Z
    .locals 5

    .line 746
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    const/4 p1, -0x1

    .line 750
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 751
    return v1

    .line 754
    :cond_1
    and-int/2addr p3, p2

    .line 756
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 757
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 758
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v3

    .line 759
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v4

    not-int p2, p2

    and-int/2addr p2, v4

    or-int/2addr p2, p3

    invoke-static {v0, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 760
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 761
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 763
    :cond_2
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result p1

    if-eq p1, v3, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    .line 764
    :cond_4
    if-eqz p3, :cond_5

    .line 765
    new-instance p2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 766
    invoke-static {p2, p3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 767
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 768
    return v2

    .line 771
    :cond_5
    return v1
.end method
