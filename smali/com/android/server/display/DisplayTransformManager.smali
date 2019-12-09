.class public Lcom/android/server/display/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field private static final COLOR_SATURATION_BOOSTED:F = 1.1f

.field private static final COLOR_SATURATION_NATURAL:F = 1.0f

.field private static final DISPLAY_COLOR_ENHANCED:I = 0x2

.field private static final DISPLAY_COLOR_MANAGED:I = 0x0

.field private static final DISPLAY_COLOR_UNMANAGED:I = 0x1

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field public static final LEVEL_COLOR_MATRIX_SATURATION:I = 0x96

.field private static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_COLOR_MATRIX:I = 0x3f7

.field private static final SURFACE_FLINGER_TRANSACTION_DALTONIZER:I = 0x3f6

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final SURFACE_FLINGER_TRANSACTION_SATURATION:I = 0x3fe

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDaltonizerModeLock"
    .end annotation
.end field

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 89
    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 100
    return-void
.end method

.method private static applyColorMatrix([F)V
    .registers 6
    .param p0, "m"    # [F

    .line 204
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 205
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_41

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    const/4 v2, 0x0

    if-eqz p0, :cond_25

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    move v3, v2

    .local v3, "i":I
    :goto_19
    const/16 v4, 0x10

    if-ge v3, v4, :cond_28

    .line 211
    aget v4, p0, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 214
    .end local v3    # "i":I
    :cond_25
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    :cond_28
    const/16 v3, 0x3f7

    const/4 v4, 0x0

    :try_start_2b
    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_34
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 221
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    goto :goto_41

    .line 221
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_32
    move-exception v2

    goto :goto_3d

    .line 218
    :catch_34
    move-exception v2

    .line 219
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set color transform"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_2e

    .line 221
    :goto_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 224
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_41
    :goto_41
    return-void
.end method

.method private static applyDaltonizerMode(I)V
    .registers 6
    .param p0, "mode"    # I

    .line 230
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 231
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_2e

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 233
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/16 v2, 0x3f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_18
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_21
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    .line 240
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    goto :goto_2e

    .line 240
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_1f
    move-exception v2

    goto :goto_2a

    .line 237
    :catch_21
    move-exception v2

    .line 238
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_22
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_1b

    .line 240
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 243
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private applySaturation(F)V
    .registers 7
    .param p1, "saturation"    # F

    .line 286
    const-string/jumbo v0, "persist.sys.sf.color_saturation"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 288
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_38

    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 290
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 293
    const/16 v2, 0x3fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_22
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2b
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 297
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    goto :goto_38

    .line 297
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_29
    move-exception v2

    goto :goto_34

    .line 294
    :catch_2b
    move-exception v2

    .line 295
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2c
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set saturation"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 295
    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_25

    .line 297
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 300
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_38
    :goto_38
    return-void
.end method

.method private computeColorMatrixLocked()[F
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 163
    .local v0, "count":I
    if-nez v0, :cond_a

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 167
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 168
    .local v1, "result":[[F
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 169
    nop

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_31

    .line 170
    iget-object v3, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 171
    .local v3, "rhs":[F
    add-int/lit8 v4, v2, 0x1

    rem-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x0

    rem-int/lit8 v6, v2, 0x2

    aget-object v6, v1, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 169
    .end local v3    # "rhs":[F
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 173
    .end local v2    # "i":I
    :cond_31
    rem-int/lit8 v2, v0, 0x2

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static needsLinearColorMatrix()Z
    .registers 2

    .line 249
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static needsLinearColorMatrix(I)Z
    .registers 2
    .param p0, "colorMode"    # I

    .line 258
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private setDisplayColor(I)V
    .registers 7
    .param p1, "color"    # I

    .line 306
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 308
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_38

    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 310
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/16 v2, 0x3ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_22
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2b
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 317
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    goto :goto_38

    .line 317
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_29
    move-exception v2

    goto :goto_34

    .line 314
    :catch_2b
    move-exception v2

    .line 315
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2c
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set display color"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 315
    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_25

    .line 317
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 320
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_38
    :goto_38
    return-void
.end method

.method private updateConfiguration()V
    .registers 4

    .line 324
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 327
    goto :goto_11

    .line 325
    :catch_9
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayTransformManager"

    const-string v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .registers 5
    .param p1, "key"    # I

    .line 106
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 108
    .local v1, "value":[F
    if-nez v1, :cond_f

    const/4 v2, 0x0

    goto :goto_14

    :cond_f
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    :goto_14
    monitor-exit v0

    return-object v2

    .line 109
    .end local v1    # "value":[F
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getDaltonizerMode()I
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    monitor-exit v0

    return v1

    .line 182
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setColorMatrix(I[F)V
    .registers 7
    .param p1, "level"    # I
    .param p2, "value"    # [F

    .line 123
    if-eqz p2, :cond_20

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    goto :goto_20

    .line 124
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 130
    if-nez p1, :cond_2c

    .line 136
    :try_start_25
    invoke-static {p2}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V

    .line 137
    monitor-exit v0

    return-void

    .line 154
    :catchall_2a
    move-exception v1

    goto :goto_5d

    .line 141
    :cond_2c
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 142
    .local v1, "oldValue":[F
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 143
    if-nez p2, :cond_42

    .line 144
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_54

    .line 145
    :cond_42
    if-nez v1, :cond_4f

    .line 146
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_54

    .line 148
    :cond_4f
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :goto_54
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V

    .line 154
    .end local v1    # "oldValue":[F
    :cond_5b
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_2a

    throw v1
.end method

.method public setColorMode(I[F)Z
    .registers 7
    .param p1, "colorMode"    # I
    .param p2, "nightDisplayMatrix"    # [F

    .line 262
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_d

    .line 263
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 264
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_2c

    .line 265
    :cond_d
    if-ne p1, v1, :cond_19

    .line 266
    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 267
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_2c

    .line 268
    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 269
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 270
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_2c

    .line 271
    :cond_23
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2c

    .line 272
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 273
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    .line 275
    :cond_2c
    :goto_2c
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 277
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->updateConfiguration()V

    .line 279
    return v1
.end method

.method public setDaltonizerMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 192
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v1, p1, :cond_c

    .line 194
    iput p1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 195
    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->applyDaltonizerMode(I)V

    .line 197
    :cond_c
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
