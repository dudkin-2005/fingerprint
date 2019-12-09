.class public final Lcom/android/server/tv/UinputBridge;
.super Ljava/lang/Object;
.source "UinputBridge.java"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mPtr:J

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 46
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    if-lt p4, v0, :cond_3

    .line 49
    if-lt p5, v0, :cond_2

    const/16 v0, 0x20

    if-gt p5, v0, :cond_2

    .line 52
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3, p4, p5}, Lcom/android/server/tv/UinputBridge;->nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 56
    iget-wide p3, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_0

    .line 59
    iput-object p1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 60
    iget-object p1, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not open uinput device "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Token cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Touchpad must support between 1 and 32 pointers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Touchpad must be at least 1x1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J
.end method

.method private static native nativeSendKey(JIZ)V
.end method

.method private static native nativeSendPointerDown(JIII)V
.end method

.method private static native nativeSendPointerSync(J)V
.end method

.method private static native nativeSendPointerUp(JI)V
.end method

.method private static native nativeSendTimestamp(JJ)V
.end method


# virtual methods
.method public clear(Landroid/os/IBinder;)V
    .locals 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/tv/UinputBridge;->nativeClear(J)V

    .line 137
    :cond_0
    return-void
.end method

.method public close(Landroid/os/IBinder;)V
    .locals 4

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V

    .line 80
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/tv/UinputBridge;->nativeClose(J)V

    .line 82
    iput-wide v2, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 83
    iget-object p1, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 86
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    nop

    .line 74
    return-void

    .line 71
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected isTokenValid(Landroid/os/IBinder;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .locals 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const/4 p1, 0x1

    invoke-static {v0, v1, p2, p1}, Lcom/android/server/tv/UinputBridge;->nativeSendKey(JIZ)V

    .line 106
    :cond_0
    return-void
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .locals 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const/4 p1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/android/server/tv/UinputBridge;->nativeSendKey(JIZ)V

    .line 112
    :cond_0
    return-void
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .locals 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerDown(JIII)V

    .line 118
    :cond_0
    return-void
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .locals 2

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerSync(J)V

    .line 131
    :cond_0
    return-void
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .locals 2

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1, p2}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerUp(JI)V

    .line 124
    :cond_0
    return-void
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .locals 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1, p2, p3}, Lcom/android/server/tv/UinputBridge;->nativeSendTimestamp(JJ)V

    .line 100
    :cond_0
    return-void
.end method
