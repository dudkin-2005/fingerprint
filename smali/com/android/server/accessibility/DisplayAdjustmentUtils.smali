.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 52
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDaltonizerSetting(Landroid/content/Context;I)V
    .locals 6

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 61
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 63
    nop

    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 66
    :try_start_0
    const-string v3, "accessibility_display_daltonizer_enabled"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "accessibility_display_daltonizer"

    const/16 v5, 0xc

    invoke-static {p0, v3, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :cond_0
    move p0, v4

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    nop

    .line 75
    const/4 p1, 0x0

    .line 76
    if-nez p0, :cond_1

    .line 78
    sget-object p1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 79
    nop

    .line 81
    move p0, v4

    :cond_1
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 83
    return-void

    .line 72
    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static applyInversionSetting(Landroid/content/Context;I)V
    .locals 5

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 90
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 92
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 94
    :try_start_0
    const-string v3, "accessibility_display_inversion_enabled"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v4, 0x1

    nop

    .line 96
    :cond_0
    const/16 p0, 0x12c

    .line 97
    if-eqz v4, :cond_1

    sget-object p1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 96
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    nop

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
