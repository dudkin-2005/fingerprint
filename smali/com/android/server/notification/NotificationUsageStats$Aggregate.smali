.class public Lcom/android/server/notification/NotificationUsageStats$Aggregate;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aggregate"
.end annotation


# instance fields
.field avg:D

.field numSamples:J

.field sum2:D

.field var:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSample(J)V
    .locals 10

    .line 995
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    .line 996
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    long-to-double v0, v0

    .line 997
    long-to-double p1, p1

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    sub-double/2addr p1, v4

    .line 998
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, v6, v0

    mul-double/2addr v8, p1

    add-double/2addr v4, v8

    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    .line 999
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    sub-double v8, v0, v6

    div-double v0, v8, v0

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    .line 1000
    iget-wide p1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1001
    :cond_0
    move-wide v6, v8

    :goto_0
    iget-wide p1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    div-double/2addr p1, v6

    iput-wide p1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    .line 1002
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aggregate{numSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", var="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method