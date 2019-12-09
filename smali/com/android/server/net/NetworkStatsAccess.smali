.class public final Lcom/android/server/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I
    .locals 5

    .line 107
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 109
    const-string/jumbo v1, "phone"

    .line 110
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 111
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 114
    move v1, v3

    goto :goto_0

    .line 112
    :cond_0
    nop

    .line 114
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, -0x2

    invoke-virtual {v0, p1, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    move v4, v3

    goto :goto_1

    .line 114
    :cond_1
    nop

    .line 116
    move v4, v2

    :goto_1
    if-nez v1, :cond_7

    if-nez v4, :cond_7

    .line 117
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_2

    goto :goto_4

    .line 123
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    .line 124
    if-nez p2, :cond_6

    const-string p2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {p0, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    .line 129
    :cond_3
    if-eqz v0, :cond_4

    const/4 p0, -0x1

    invoke-virtual {v0, p1, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 131
    move p0, v3

    goto :goto_2

    .line 129
    :cond_4
    nop

    .line 131
    move p0, v2

    :goto_2
    if-eqz p0, :cond_5

    .line 134
    return v3

    .line 138
    :cond_5
    return v2

    .line 126
    :cond_6
    :goto_3
    const/4 p0, 0x2

    return p0

    .line 120
    :cond_7
    :goto_4
    const/4 p0, 0x3

    return p0
.end method

.method private static hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3

    .line 173
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 174
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 177
    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    .line 179
    const/4 p2, 0x3

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 182
    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    .line 184
    if-nez p0, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 186
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 188
    :cond_3
    return v0
.end method

.method public static isAccessibleToUser(III)Z
    .locals 5

    .line 147
    const/4 v0, -0x5

    const/4 v1, -0x4

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    .line 167
    if-ne p0, p1, :cond_4

    move v3, v4

    goto :goto_4

    .line 150
    :pswitch_0
    return v4

    .line 155
    :pswitch_1
    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 p2, -0x1

    if-eq p0, p2, :cond_1

    .line 157
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    return v3

    .line 161
    :pswitch_2
    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    .line 163
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 161
    :cond_3
    :goto_2
    move v3, v4

    :goto_3
    return v3

    .line 167
    :cond_4
    :goto_4
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
