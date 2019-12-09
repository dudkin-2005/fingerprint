.class public final Lcom/android/server/pm/permission/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionsState$PermissionState;,
        Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionsLock:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 3
    .param p1, "prototype"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionsLock:Ljava/lang/Object;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 81
    return-void
.end method

.method private static appendInts([I[I)[I
    .registers 5
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    .line 638
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 639
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    .line 640
    .local v2, "guid":I
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 639
    .end local v2    # "guid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 643
    :cond_11
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .registers 4
    .param p0, "userId"    # I

    .line 647
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1d

    if-ltz p0, :cond_6

    goto :goto_1d

    .line 648
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1d
    :goto_1d
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_5

    .line 674
    return-void

    .line 677
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 681
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 684
    :cond_18
    monitor-exit v0

    .line 686
    return-void

    .line 684
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .registers 6
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 653
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "permName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_12

    .line 658
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 661
    :cond_12
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 662
    .local v2, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v2, :cond_27

    .line 663
    new-instance v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v3, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    move-object v2, v3

    .line 664
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_27
    monitor-exit v1

    return-object v2

    .line 668
    .end local v2    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 545
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 546
    return-object v1

    .line 548
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 549
    .local v0, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v0, :cond_11

    .line 550
    return-object v1

    .line 552
    :cond_11
    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 556
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    .line 559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 563
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v1, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 568
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_31

    .line 569
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 571
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v5

    .line 572
    .local v5, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v5, :cond_2e

    .line 573
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    .end local v4    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .end local v5    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 577
    .end local v3    # "i":I
    :cond_31
    monitor-exit v0

    return-object v1

    .line 579
    .end local v1    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v2    # "permissionCount":I
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_33

    throw v1
.end method

.method private grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 10
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 584
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 585
    return v1

    .line 588
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 589
    .local v0, "hasGids":Z
    if-eqz v0, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v3

    goto :goto_1f

    :cond_1d
    sget-object v3, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 591
    .local v3, "oldGids":[I
    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v4

    .line 593
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->grant(I)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 594
    return v1

    .line 597
    :cond_2a
    if-eqz v0, :cond_35

    .line 598
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 599
    .local v1, "newGids":[I
    array-length v5, v3

    array-length v6, v1

    if-eq v5, v6, :cond_35

    .line 600
    return v2

    .line 604
    .end local v1    # "newGids":[I
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method private hasPermissionRequiringReview(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 454
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 455
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1f

    .line 456
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 457
    .local v3, "permission":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1c

    .line 459
    const/4 v1, 0x1

    return v1

    .line 455
    .end local v3    # "permission":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 462
    .end local v2    # "i":I
    :cond_1f
    return v1
.end method

.method private revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 11
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 608
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "permName":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_c

    .line 610
    return v2

    .line 613
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 614
    .local v1, "hasGids":Z
    if-eqz v1, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v4

    goto :goto_1f

    :cond_1d
    sget-object v4, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 616
    .local v4, "oldGids":[I
    :goto_1f
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 618
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->revoke(I)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 619
    return v2

    .line 622
    :cond_2e
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 623
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    .line 626
    :cond_37
    if-eqz v1, :cond_42

    .line 627
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .line 628
    .local v2, "newGids":[I
    array-length v6, v4

    array-length v7, v2

    if-eq v6, v7, :cond_42

    .line 629
    return v3

    .line 633
    .end local v2    # "newGids":[I
    :cond_42
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 9
    .param p1, "userId"    # I

    .line 490
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 494
    .local v0, "gids":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v1, :cond_38

    .line 495
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 496
    .local v1, "permissionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_38

    .line 497
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 498
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 499
    goto :goto_35

    .line 501
    :cond_21
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 502
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v5

    .line 503
    .local v5, "permGids":[I
    sget-object v6, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    if-eq v5, v6, :cond_35

    .line 504
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 496
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .end local v5    # "permGids":[I
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 509
    .end local v1    # "permissionCount":I
    .end local v2    # "i":I
    :cond_38
    return-object v0
.end method

.method public computeGids([I)[I
    .registers 7
    .param p1, "userIds"    # [I

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 521
    .local v0, "gids":[I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_13

    aget v3, p1, v2

    .line 522
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v4

    .line 523
    .local v4, "userGids":[I
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 521
    .end local v3    # "userId":I
    .end local v4    # "userGids":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 526
    :cond_13
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 11
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 100
    if-ne p1, p0, :cond_3

    .line 101
    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 108
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_12

    .line 109
    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    goto :goto_17

    .line 111
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 115
    :cond_17
    :goto_17
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    .line 116
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_27

    .line 117
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 119
    :cond_27
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 120
    .local v1, "permissionCount":I
    move v4, v3

    .local v4, "i":I
    :goto_2e
    if-ge v4, v1, :cond_4d

    .line 121
    iget-object v5, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 122
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 123
    .local v6, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v8, v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V

    invoke-virtual {v7, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 127
    .end local v1    # "permissionCount":I
    .end local v4    # "i":I
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_9b

    .line 130
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 131
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    sget-object v1, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    if-eq v0, v1, :cond_63

    .line 132
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 136
    :cond_63
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_73

    .line 137
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6e

    .line 138
    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    goto :goto_73

    .line 140
    :cond_6e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 143
    :cond_73
    :goto_73
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9a

    .line 144
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_82

    .line 145
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 147
    :cond_82
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 148
    .local v0, "userCount":I
    nop

    .local v3, "i":I
    :goto_89
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_9a

    .line 149
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 150
    .local v2, "reviewRequired":Z
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 148
    .end local v2    # "reviewRequired":Z
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    goto :goto_89

    .line 153
    .end local v0    # "userCount":I
    .end local v3    # "i":I
    :cond_9a
    return-void

    .line 127
    :catchall_9b
    move-exception v1

    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 157
    if-ne p0, p1, :cond_4

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 161
    return v0

    .line 163
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 164
    return v0

    .line 166
    :cond_13
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState;

    .line 168
    .local v1, "other":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_1f

    .line 169
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2a

    .line 170
    return v0

    .line 172
    :cond_1f
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 173
    return v0

    .line 175
    :cond_2a
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_33

    .line 176
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_3e

    .line 177
    return v0

    .line 179
    :cond_33
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 180
    return v0

    .line 182
    :cond_3e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 347
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 368
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    .line 390
    .local v0, "installPermState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v0, :cond_b

    .line 391
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v1

    return v1

    .line 393
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v1

    .line 394
    .local v1, "runtimePermState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v1, :cond_16

    .line 395
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 397
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public getPermissions(I)Ljava/util/Set;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 319
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 321
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 322
    .local v1, "permissionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_41

    .line 323
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 325
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 326
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    goto :goto_3e

    .line 330
    :cond_32
    const/4 v4, -0x1

    if-eq p1, v4, :cond_3e

    .line 331
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 332
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v3    # "permission":Ljava/lang/String;
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 337
    .end local v2    # "i":I
    :cond_41
    return-object v0
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 358
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 378
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 198
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 223
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 224
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 225
    return v0

    .line 227
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 267
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 279
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 281
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 282
    return v1

    .line 285
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 286
    .local v0, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x1

    nop

    :cond_1b
    return v1
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 294
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 295
    return v1

    .line 297
    :cond_6
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1e

    .line 298
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 299
    return v2

    .line 297
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 302
    .end local v0    # "i":I
    :cond_1e
    return v1
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 256
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isPermissionReviewRequired(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public reset()V
    .registers 3

    .line 533
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 535
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 539
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_e

    .line 541
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 542
    return-void

    .line 539
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 210
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 240
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 241
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 242
    return v0

    .line 244
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public setGlobalGids([I)V
    .registers 3
    .param p1, "globalGids"    # [I

    .line 89
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 90
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 92
    :cond_d
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    .registers 12
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    .line 410
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 412
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_c

    if-eqz p3, :cond_a

    goto :goto_c

    :cond_a
    move v2, v1

    goto :goto_d

    :cond_c
    :goto_c
    move v2, v0

    .line 414
    .local v2, "mayChangeFlags":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v3, :cond_17

    .line 415
    if-nez v2, :cond_14

    .line 416
    return v1

    .line 418
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 421
    :cond_17
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 422
    .local v3, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v3, :cond_2c

    .line 423
    if-nez v2, :cond_28

    .line 424
    return v1

    .line 426
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v3

    .line 429
    :cond_2c
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v1

    .line 431
    .local v1, "oldFlags":I
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    .line 432
    .local v4, "updated":Z
    if-eqz v4, :cond_75

    .line 433
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v5

    .line 434
    .local v5, "newFlags":I
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_53

    and-int/lit8 v6, v5, 0x40

    if-eqz v6, :cond_53

    .line 436
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_4d

    .line 437
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 439
    :cond_4d
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_75

    .line 440
    :cond_53
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_75

    and-int/lit8 v0, v5, 0x40

    if-nez v0, :cond_75

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_75

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermissionRequiringReview(I)Z

    move-result v0

    if-nez v0, :cond_75

    .line 443
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 444
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-gtz v0, :cond_75

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 450
    .end local v5    # "newFlags":I
    :cond_75
    :goto_75
    return v4
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .line 467
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 469
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 470
    return v1

    .line 472
    :cond_9
    const/4 v0, 0x0

    .line 473
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 474
    .local v2, "permissionCount":I
    nop

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_23

    .line 475
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 476
    .local v3, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    or-int/2addr v0, v4

    .line 474
    .end local v3    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 478
    .end local v1    # "i":I
    :cond_23
    return v0
.end method
