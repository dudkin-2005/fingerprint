.class public Lcom/android/server/am/OnePlusCTAPermissionService;
.super Ljava/lang/Object;
.source "OnePlusCTAPermissionService.java"


# static fields
.field public static DEBUG_ONEPLUS:Z = false

.field public static final TAG:Ljava/lang/String; = "CTAPermission"

.field private static mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

.field private static mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusCTAPermissionService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionServiceBinderProxy(I)Landroid/os/IBinder;
    .registers 4
    .param p0, "serviceIndex"    # I

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 66
    return-object v1

    .line 68
    :cond_10
    packed-switch p0, :pswitch_data_1a

    .line 74
    return-object v1

    .line 72
    :pswitch_14
    sget-object v0, Lcom/android/server/am/OnePlusCTAPermissionService;->mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

    return-object v0

    .line 70
    :pswitch_17
    sget-object v0, Lcom/android/server/am/OnePlusCTAPermissionService;->mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

.method public static isRequestPermission(Z)V
    .registers 2
    .param p0, "request"    # Z

    .line 36
    :try_start_0
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mOpAms:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->isRequestPermission(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 39
    goto :goto_a

    .line 37
    :catch_6
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public static setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .registers 5
    .param p0, "proxy"    # Landroid/os/IBinder;
    .param p1, "serviceIndex"    # I

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 45
    return-void

    .line 47
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 48
    .local v0, "callingUid":I
    if-eqz v0, :cond_23

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1a

    goto :goto_23

    .line 49
    :cond_1a
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "setPermissionServiceBinderProxy called from non-system process"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_23
    :goto_23
    packed-switch p1, :pswitch_data_3e

    goto :goto_3b

    .line 58
    :pswitch_27
    sput-object p0, Lcom/android/server/am/OnePlusCTAPermissionService;->mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

    .line 59
    const-string v1, "CTAPermission"

    const-string v2, "[CTAPermission] set control service proxy done"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 54
    :pswitch_31
    sput-object p0, Lcom/android/server/am/OnePlusCTAPermissionService;->mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;

    .line 55
    const-string v1, "CTAPermission"

    const-string v2, "[CTAPermission] set request service proxy done"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    nop

    .line 62
    :goto_3b
    return-void

    nop

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_31
        :pswitch_27
    .end packed-switch
.end method
