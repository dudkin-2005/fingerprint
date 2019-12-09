.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 56
    new-array v0, v0, [F

    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    return-void

    nop

    :array_12
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

    :array_36
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
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDaltonizerSetting(Landroid/content/Context;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v1, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    .line 67
    .local v1, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/4 v2, -0x1

    .line 68
    .local v2, "daltonizerMode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 70
    .local v3, "identity":J
    :try_start_11
    const-string v5, "accessibility_display_daltonizer_enabled"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2b

    .line 74
    const-string/jumbo v5, "persist.vendor.color.matrix"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v5, "accessibility_display_daltonizer"

    const/16 v6, 0xc

    invoke-static {v0, v5, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_3e

    move v2, v5

    .line 80
    :cond_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    nop

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "grayscaleMatrix":[F
    if-nez v2, :cond_35

    .line 86
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 87
    const/4 v2, -0x1

    .line 89
    :cond_35
    const/16 v6, 0xc8

    invoke-virtual {v1, v6, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 90
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 91
    return-void

    .line 80
    .end local v5    # "grayscaleMatrix":[F
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static applyInversionSetting(Landroid/content/Context;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v1, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    .line 100
    .local v1, "dtm":Lcom/android/server/display/DisplayTransformManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 102
    .local v2, "identity":J
    :try_start_10
    const-string v4, "accessibility_display_inversion_enabled"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v5, 0x1

    nop

    :cond_1b
    move v4, v5

    .line 106
    .local v4, "invertColors":Z
    if-eqz v4, :cond_26

    .line 107
    const-string/jumbo v5, "persist.vendor.color.matrix"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_26
    const/16 v5, 0x12c

    .line 110
    if-eqz v4, :cond_2d

    sget-object v6, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x0

    .line 109
    :goto_2e
    invoke-virtual {v1, v5, v6}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_36

    .line 112
    .end local v4    # "invertColors":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_36
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
