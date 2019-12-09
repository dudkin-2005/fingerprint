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
    .locals 2

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
    .locals 5

    .line 192
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_2

    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 195
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    move v3, v2

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 199
    aget v4, p0, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    :cond_1
    const/16 p0, 0x3f7

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    goto :goto_3

    .line 209
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 206
    :catch_0
    move-exception p0

    .line 207
    :try_start_1
    const-string v0, "DisplayTransformManager"

    const-string v2, "Failed to set color transform"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 209
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    .line 212
    :cond_2
    :goto_3
    return-void
.end method

.method private static applyDaltonizerMode(I)V
    .locals 4

    .line 218
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/16 p0, 0x3f6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    goto :goto_2

    .line 228
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 225
    :catch_0
    move-exception p0

    .line 226
    :try_start_1
    const-string v0, "DisplayTransformManager"

    const-string v2, "Failed to set Daltonizer mode"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    .line 231
    :cond_0
    :goto_2
    return-void
.end method

.method private applySaturation(F)V
    .locals 4

    .line 274
    const-string/jumbo v0, "persist.sys.sf.color_saturation"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 278
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 281
    const/16 p1, 0x3fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    goto :goto_2

    .line 285
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 282
    :catch_0
    move-exception p1

    .line 283
    :try_start_1
    const-string v0, "DisplayTransformManager"

    const-string v2, "Failed to set saturation"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1

    .line 288
    :cond_0
    :goto_2
    return-void
.end method

.method private computeColorMatrixLocked()[F
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 156
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 157
    :goto_0
    if-ge v2, v0, :cond_1

    .line 158
    iget-object v3, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [F

    .line 159
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v4, v3, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x0

    rem-int/lit8 v2, v2, 0x2

    aget-object v6, v1, v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 157
    move v2, v3

    goto :goto_0

    .line 161
    :cond_1
    rem-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static needsLinearColorMatrix()Z
    .locals 2

    .line 237
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static needsLinearColorMatrix(I)Z
    .locals 1

    .line 246
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDisplayColor(I)V
    .locals 4

    .line 294
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/16 p1, 0x3ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    goto :goto_2

    .line 305
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 302
    :catch_0
    move-exception p1

    .line 303
    :try_start_1
    const-string v0, "DisplayTransformManager"

    const-string v2, "Failed to set display color"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1

    .line 308
    :cond_0
    :goto_2
    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    .line 312
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v1, "DisplayTransformManager"

    const-string v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    :goto_0
    return-void
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 108
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    :goto_0
    monitor-exit v0

    return-object p1

    .line 109
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDaltonizerMode()I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    monitor-exit v0

    return v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setColorMatrix(I[F)V
    .locals 3

    .line 123
    if-eqz p2, :cond_1

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 130
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_4

    .line 131
    if-nez p2, :cond_2

    .line 132
    iget-object p2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 133
    :cond_2
    if-nez v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 136
    :cond_3
    array-length p1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V

    .line 142
    :cond_4
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setColorMode(I[F)Z
    .locals 4

    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 251
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 252
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_0

    .line 253
    :cond_0
    if-ne p1, v1, :cond_1

    .line 254
    const p1, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 255
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 257
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 258
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_0

    .line 259
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 260
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 261
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->setDisplayColor(I)V

    .line 263
    :cond_3
    :goto_0
    const/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 265
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->updateConfiguration()V

    .line 267
    return v1
.end method

.method public setDaltonizerMode(I)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v1, p1, :cond_0

    .line 182
    iput p1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 183
    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->applyDaltonizerMode(I)V

    .line 185
    :cond_0
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
