.class public Lcom/android/server/custom/display/TwilightTracker$TwilightState;
.super Ljava/lang/Object;
.source "TwilightTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/TwilightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwilightState"
.end annotation


# instance fields
.field private final mIsNight:Z

.field private final mTodaySunrise:J

.field private final mTodaySunset:J

.field private final mTomorrowSunrise:J

.field private final mYesterdaySunset:J


# direct methods
.method constructor <init>(ZJJJJ)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-boolean p1, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mIsNight:Z

    .line 465
    iput-wide p2, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    .line 466
    iput-wide p4, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    .line 467
    iput-wide p6, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunset:J

    .line 468
    iput-wide p8, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    .line 469
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/custom/display/TwilightTracker$TwilightState;)Z
    .locals 4

    .line 516
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mIsNight:Z

    iget-boolean v1, p1, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mIsNight:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    iget-wide v2, p1, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    iget-wide v2, p1, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunset:J

    iget-wide v2, p1, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    iget-wide v2, p1, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 512
    instance-of v0, p1, Lcom/android/server/custom/display/TwilightTracker$TwilightState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/custom/display/TwilightTracker$TwilightState;

    invoke-virtual {p0, p1}, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->equals(Lcom/android/server/custom/display/TwilightTracker$TwilightState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getTodaySunrise()J
    .locals 2

    .line 491
    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    return-wide v0
.end method

.method public getTodaySunset()J
    .locals 2

    .line 499
    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunset:J

    return-wide v0
.end method

.method public getTomorrowSunrise()J
    .locals 2

    .line 507
    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    return-wide v0
.end method

.method public getYesterdaySunset()J
    .locals 2

    .line 483
    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public isNight()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mIsNight:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 531
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{TwilightState: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mIsNight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mYesterdaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 533
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTodaySunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 534
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTodaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTodaySunset:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 535
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTomorrowSunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 536
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    return-object v0
.end method
