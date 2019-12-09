.class Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
.super Ljava/lang/Object;
.source "VerityUtils.java"

# interfaces
.implements Landroid/util/apk/ByteBufferFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/VerityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackedShmBufferFactory"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mShm:Landroid/os/SharedMemory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/VerityUtils$1;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 192
    const-string v0, "apkverity"

    invoke-static {v0, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 193
    iget-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 197
    iget-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p1

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to set protection"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple instantiation from this factory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    move-exception p1

    .line 199
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Failed to set protection"

    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBufferLimit()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_0
    return v0
.end method

.method public releaseSharedMemory()Landroid/os/SharedMemory;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 206
    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 209
    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 210
    return-object v0
.end method
