.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4069
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4070
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4071
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 4072
    return-void
.end method

.method private isDefault([Z)Z
    .locals 5

    .line 4205
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4206
    return v1

    .line 4208
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-boolean v4, p1, v3

    .line 4209
    if-eqz v4, :cond_1

    .line 4210
    return v2

    .line 4208
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4213
    :cond_2
    return v1
.end method

.method public static synthetic lambda$binderDied$0(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V
    .locals 2

    .line 4192
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/android/server/AppOpsService;->access$1200(Lcom/android/server/AppOpsService;II)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 9

    .line 4180
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    .line 4181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v1}, Lcom/android/server/AppOpsService;->access$1100(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4182
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 4183
    monitor-exit v0

    return-void

    .line 4185
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4186
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4187
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 4188
    array-length v5, v4

    .line 4189
    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    .line 4190
    aget-boolean v7, v4, v6

    if-eqz v7, :cond_1

    .line 4191
    nop

    .line 4192
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v7, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;

    invoke-direct {v8, p0, v6}, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;-><init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4189
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4186
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4196
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4197
    monitor-exit v0

    .line 4198
    return-void

    .line 4197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 2

    .line 4201
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4202
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .locals 2

    .line 4139
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4140
    return v1

    .line 4142
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 4143
    if-nez v0, :cond_1

    .line 4144
    return v1

    .line 4146
    :cond_1
    aget-boolean p1, v0, p1

    if-nez p1, :cond_2

    .line 4147
    return v1

    .line 4149
    :cond_2
    iget-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 4150
    return v0

    .line 4152
    :cond_3
    iget-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 4153
    if-nez p1, :cond_4

    .line 4154
    return v0

    .line 4156
    :cond_4
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public isDefault()Z
    .locals 1

    .line 4175
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public removeUser(I)V
    .locals 2

    .line 4160
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4161
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4162
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4163
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4166
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 4167
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4168
    iget-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 4169
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4172
    :cond_1
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .locals 8

    .line 4076
    nop

    .line 4078
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4079
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4083
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p4, v0, :cond_2

    .line 4084
    iget-object p4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object p4, p4, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p4

    .line 4086
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4087
    move v3, v2

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4088
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v0, v3

    .line 4087
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4090
    :cond_1
    goto :goto_1

    .line 4091
    :cond_2
    new-array v0, v1, [I

    aput p4, v0, v2

    .line 4094
    :goto_1
    iget-object p4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz p4, :cond_b

    .line 4095
    array-length p4, v0

    .line 4097
    move v3, v2

    :goto_2
    if-ge v2, p4, :cond_a

    .line 4098
    aget v4, v0, v2

    .line 4100
    iget-object v5, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    .line 4101
    if-nez v5, :cond_3

    if-eqz p2, :cond_3

    .line 4102
    const/16 v5, 0x52

    new-array v5, v5, [Z

    .line 4103
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4105
    :cond_3
    const/4 v6, 0x0

    if-eqz v5, :cond_5

    aget-boolean v7, v5, p1

    if-eq v7, p2, :cond_5

    .line 4106
    aput-boolean p2, v5, p1

    .line 4107
    if-nez p2, :cond_4

    invoke-direct {p0, v5}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4108
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4109
    nop

    .line 4111
    move-object v5, v6

    .line 4114
    :cond_4
    move v3, v1

    :cond_5
    if-eqz v5, :cond_9

    .line 4115
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    .line 4116
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v7, :cond_6

    if-nez v5, :cond_6

    .line 4117
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4119
    :cond_6
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4120
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4119
    invoke-static {p3, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 4121
    if-eqz v5, :cond_7

    .line 4122
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4123
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_8

    .line 4124
    iput-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    goto :goto_3

    .line 4127
    :cond_7
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4129
    :cond_8
    :goto_3
    nop

    .line 4097
    move v3, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4135
    :cond_a
    move v2, v3

    :cond_b
    return v2
.end method
