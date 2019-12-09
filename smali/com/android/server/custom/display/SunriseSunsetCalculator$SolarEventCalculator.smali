.class Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;
.super Ljava/lang/Object;
.source "SunriseSunsetCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/SunriseSunsetCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SolarEventCalculator"
.end annotation


# instance fields
.field private final location:Landroid/location/Location;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->location:Landroid/location/Location;

    .line 337
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->timeZone:Ljava/util/TimeZone;

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Ljava/util/TimeZone;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->location:Landroid/location/Location;

    .line 350
    iput-object p2, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->timeZone:Ljava/util/TimeZone;

    .line 351
    return-void
.end method

.method private adjustForDST(Ljava/math/BigDecimal;Ljava/util/Calendar;)Ljava/math/BigDecimal;
    .locals 4

    .line 574
    nop

    .line 575
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 576
    sget-object p2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 578
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_1

    .line 579
    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 581
    :cond_1
    return-object p1
.end method

.method private computeSolarEventTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;Z)Ljava/math/BigDecimal;
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 409
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getLongitudeHour(Ljava/util/Calendar;Ljava/lang/Boolean;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 411
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getMeanAnomaly(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 412
    invoke-direct {p0, v1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getSunTrueLongitude(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 413
    invoke-direct {p0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getCosineSunLocalHour(Ljava/math/BigDecimal;Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getSunLocalHour(Ljava/math/BigDecimal;Ljava/lang/Boolean;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 419
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getLocalMeanTime(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getLocalTime(Ljava/math/BigDecimal;Ljava/util/Calendar;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 421
    return-object p1

    .line 415
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 683
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->multiplyBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private convertRadiansToDegrees(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3

    .line 679
    new-instance v0, Ljava/math/BigDecimal;

    const-wide v1, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->multiplyBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private divideBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 691
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getArcCosineFor(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 674
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 675
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getBaseLongitudeHour()Ljava/math/BigDecimal;
    .locals 3

    .line 431
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const-wide/16 v1, 0xf

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->divideBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private getCosineOfSunDeclination(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 538
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 539
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 540
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getCosineSunLocalHour(Ljava/math/BigDecimal;Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;)Ljava/math/BigDecimal;
    .locals 5

    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getSinOfSunDeclination(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 517
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getCosineOfSunDeclination(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 519
    invoke-virtual {p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->degrees()Ljava/math/BigDecimal;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 520
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    .line 521
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {p0, v1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    .line 522
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {p0, v2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    .line 524
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 525
    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 526
    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->divideBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getDayOfYear(Ljava/util/Calendar;)Ljava/math/BigDecimal;
    .locals 2

    .line 664
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v0
.end method

.method private getLocalMeanTime(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 4

    .line 553
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getRightAscension(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 554
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.06571"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 555
    invoke-virtual {p3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 556
    new-instance p2, Ljava/math/BigDecimal;

    const-string p3, "6.622"

    invoke-direct {p2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmpg-double p2, p2, v0

    const-wide/16 v0, 0x18

    if-gez p2, :cond_0

    .line 559
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double p2, p2, v2

    if-lez p2, :cond_1

    .line 561
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 563
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getLocalTime(Ljava/math/BigDecimal;Ljava/util/Calendar;)Ljava/math/BigDecimal;
    .locals 1

    .line 567
    invoke-direct {p0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getBaseLongitudeHour()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 568
    invoke-direct {p0, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getUTCOffSet(Ljava/util/Calendar;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 569
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 570
    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->adjustForDST(Ljava/math/BigDecimal;Ljava/util/Calendar;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getLocalTimeAsString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 5

    .line 592
    if-nez p1, :cond_0

    .line 593
    const-string p1, "99:99"

    return-object p1

    .line 596
    :cond_0
    nop

    .line 597
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 598
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 600
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 601
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 603
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 604
    const-wide/16 v3, 0x3c

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 606
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 607
    add-int/lit8 v1, v1, 0x1

    .line 609
    :cond_2
    const/16 v2, 0x18

    if-ne v1, v2, :cond_3

    .line 610
    goto :goto_0

    .line 613
    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    .line 614
    :goto_1
    if-ge v0, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLongitudeHour(Ljava/util/Calendar;Ljava/lang/Boolean;)Ljava/math/BigDecimal;
    .locals 2

    .line 440
    nop

    .line 441
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 442
    const/4 p2, 0x6

    goto :goto_0

    .line 444
    :cond_0
    const/16 p2, 0x12

    :goto_0
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getBaseLongitudeHour()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 445
    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->divideBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getDayOfYear(Ljava/util/Calendar;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getMeanAnomaly(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 456
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.9856"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->multiplyBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "3.289"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 457
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getRightAscension(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 8

    .line 492
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 494
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertRadiansToDegrees(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.91764"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->multiplyBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 495
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 496
    invoke-direct {p0, v1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertRadiansToDegrees(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    const-wide/16 v2, 0x168

    if-gez v1, :cond_0

    .line 499
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4076800000000000L    # 360.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    .line 501
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 504
    :cond_1
    :goto_0
    const-wide/16 v1, 0x5a

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 505
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 506
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 508
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 509
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 511
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 512
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->divideBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getSinOfSunDeclination(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 532
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 533
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.39782"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 534
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getSunLocalHour(Ljava/math/BigDecimal;Ljava/lang/Boolean;)Ljava/math/BigDecimal;
    .locals 2

    .line 544
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getArcCosineFor(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertRadiansToDegrees(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 546
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 547
    const-wide/16 v0, 0x168

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 549
    :cond_0
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->divideBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getSunTrueLongitude(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 5

    .line 469
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 470
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->convertDegreesToRadians(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->multiplyBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 471
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 470
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 473
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "1.916"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->multiplyBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 474
    new-instance v0, Ljava/math/BigDecimal;

    const-string v2, "0.020"

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->multiplyBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "282.634"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 475
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 478
    const-wide/16 v0, 0x168

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 480
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private getUTCOffSet(Ljava/util/Calendar;)Ljava/math/BigDecimal;
    .locals 3

    .line 668
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 669
    new-instance p1, Ljava/math/BigDecimal;

    const v1, 0x36ee80

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/MathContext;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/math/MathContext;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 670
    return-object p1
.end method

.method private multiplyBy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 0

    .line 687
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private setScale(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 695
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public computeSunriseCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 377
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSolarEventTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;Z)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getLocalTimeAsCalendar(Ljava/math/BigDecimal;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public computeSunriseTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 364
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSolarEventTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;Z)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getLocalTimeAsString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public computeSunsetCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSolarEventTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;Z)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getLocalTimeAsCalendar(Ljava/math/BigDecimal;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public computeSunsetTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSolarEventTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;Z)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->getLocalTimeAsString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLocalTimeAsCalendar(Ljava/math/BigDecimal;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 7

    .line 626
    if-nez p1, :cond_0

    .line 627
    const/4 p1, 0x0

    return-object p1

    .line 631
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 633
    nop

    .line 634
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0xb

    if-ne v1, v2, :cond_1

    .line 635
    const-wide/high16 v1, 0x4038000000000000L    # 24.0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 636
    const/16 v1, -0x18

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 638
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 639
    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 641
    new-instance v4, Ljava/math/BigDecimal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object p1, p1, v6

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 642
    const-wide/16 v5, 0x3c

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v4, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v1, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 643
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_2

    .line 644
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 645
    add-int/lit8 v2, v2, 0x1

    .line 647
    :cond_2
    const/16 v4, 0x18

    if-ne v2, v4, :cond_3

    .line 648
    nop

    .line 652
    move v2, v1

    :cond_3
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 653
    const/16 v2, 0xc

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 654
    const/16 p1, 0xd

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 655
    const/16 p1, 0xe

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 656
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 658
    return-object v0
.end method
