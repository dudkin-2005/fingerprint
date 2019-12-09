.class public Lcom/android/server/custom/display/SunriseSunsetCalculator;
.super Ljava/lang/Object;
.source "SunriseSunsetCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;,
        Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;
    }
.end annotation


# instance fields
.field private calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

.field private location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->location:Landroid/location/Location;

    .line 50
    new-instance v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    invoke-direct {v0, p1, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Ljava/util/TimeZone;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->location:Landroid/location/Location;

    .line 64
    new-instance v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    invoke-direct {v0, p1, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;-><init>(Landroid/location/Location;Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    .line 65
    return-void
.end method

.method public static getSunrise(Landroid/location/Location;Ljava/util/TimeZone;Ljava/util/Calendar;D)Ljava/util/Calendar;
    .locals 3

    .line 259
    new-instance v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    invoke-direct {v0, p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;-><init>(Landroid/location/Location;Ljava/util/TimeZone;)V

    .line 260
    new-instance p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    const-wide v1, 0x4056800000000000L    # 90.0

    sub-double/2addr v1, p3

    invoke-direct {p0, v1, v2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;-><init>(D)V

    invoke-virtual {v0, p0, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getSunset(Landroid/location/Location;Ljava/util/TimeZone;Ljava/util/Calendar;D)Ljava/util/Calendar;
    .locals 3

    .line 279
    new-instance v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    invoke-direct {v0, p0, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;-><init>(Landroid/location/Location;Ljava/util/TimeZone;)V

    .line 280
    new-instance p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    const-wide v1, 0x4056800000000000L    # 90.0

    sub-double/2addr v1, p3

    invoke-direct {p0, v1, v2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;-><init>(D)V

    invoke-virtual {v0, p0, p2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAstronomicalSunriseCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->ASTRONOMICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getAstronomicalSunriseForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->ASTRONOMICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAstronomicalSunsetCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->ASTRONOMICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getAstronomicalSunsetForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->ASTRONOMICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCivilSunriseCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->CIVIL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getCivilSunriseForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->CIVIL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCivilSunsetCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->CIVIL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getCivilSunsetForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->CIVIL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getNauticalSunriseCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->NAUTICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getNauticalSunriseForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->NAUTICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNauticalSunsetCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->NAUTICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getNauticalSunsetForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->NAUTICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOfficialSunriseCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->OFFICIAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getOfficialSunriseForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->OFFICIAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunriseTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOfficialSunsetCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->OFFICIAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetCalendar(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getOfficialSunsetForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator;->calculator:Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;

    sget-object v1, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->OFFICIAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/custom/display/SunriseSunsetCalculator$SolarEventCalculator;->computeSunsetTime(Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
