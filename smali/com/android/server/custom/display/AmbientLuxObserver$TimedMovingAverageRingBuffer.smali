.class Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/AmbientLuxObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimedMovingAverageRingBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;
    }
.end annotation


# instance fields
.field private final mPeriod:I

.field private final mRing:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    .line 211
    iput p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mPeriod:I

    .line 212
    return-void
.end method

.method private expire()V
    .locals 6

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    .line 240
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    iget-wide v2, v2, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mTimestamp:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mPeriod:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 241
    iget v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    iget-object v3, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    iget v3, v3, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mValue:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(F)V
    .locals 4

    monitor-enter p0

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    .line 216
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 217
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;-><init>(JF)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 220
    iget v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAverage()F
    .locals 2

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    .line 229
    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    iget-object v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    monitor-exit p0

    return v0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 251
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "average="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->getAverage()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRing=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
