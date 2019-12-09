.class public Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandbyUpdateRecord"
.end annotation


# instance fields
.field bucket:I

.field isUserInteraction:Z

.field packageName:Ljava/lang/String;

.field reason:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    .line 282
    iput p2, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    .line 283
    iput p3, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    .line 284
    iput p4, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    .line 285
    iput-boolean p5, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    .line 286
    return-void
.end method

.method public static obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    .locals 9

    .line 290
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 291
    :try_start_0
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 292
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 293
    new-instance v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;-><init>(Ljava/lang/String;IIIZ)V

    monitor-exit v0

    return-object v1

    .line 295
    :cond_0
    sget-object v3, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 296
    iput-object p0, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    .line 297
    iput p1, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    .line 298
    iput p2, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    .line 299
    iput p3, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    .line 300
    iput-boolean p4, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    .line 301
    monitor-exit v0

    return-object v1

    .line 302
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public recycle()V
    .locals 2

    .line 306
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 307
    :try_start_0
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
