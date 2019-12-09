.class Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;
.super Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# static fields
.field private static final mFourHourMillis:J = 0x1499700L

.field private static final mSixHourMillis:J = 0x1499700L

.field private static final mTwuentyHourMillis:J = 0x3dcc500L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mIsGetLocation:Ljava/lang/Boolean;

.field private mLastActivatedTime:Ljava/util/Calendar;

.field private mLastLocation:Landroid/location/Location;

.field private mLastTwilightState:Lcom/android/server/twilight/TwilightState;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPreIsNightStatus:Ljava/lang/Boolean;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .registers 3

    .line 1735
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    .line 1731
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    .line 1737
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;Ljava/lang/Boolean;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 1721
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    return-void
.end method

.method private calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .registers 45
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "timeMillis"    # J

    move-object/from16 v0, p0

    .line 1750
    move-wide/from16 v2, p2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1751
    .local v4, "noon":Ljava/util/Calendar;
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1752
    const/16 v5, 0xc

    const/16 v6, 0xb

    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1753
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1754
    const/16 v5, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1755
    const/16 v5, 0xe

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1756
    const/4 v5, 0x0

    .line 1757
    .local v5, "isDefaultLocation":Z
    const/4 v7, 0x0

    .line 1758
    .local v7, "lon":I
    const/4 v8, 0x0

    .line 1759
    .local v8, "lat":I
    const-wide/16 v9, 0x0

    .line 1760
    .local v9, "dlon":D
    const-wide/16 v11, 0x0

    .line 1761
    .local v11, "dlat":D
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1762
    .local v13, "isLastLocationUsed":Ljava/lang/Boolean;
    if-eqz p1, :cond_5e

    .line 1763
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 1764
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 1765
    double-to-int v15, v9

    mul-int/lit8 v7, v15, 0x64

    .line 1766
    double-to-int v15, v11

    mul-int/lit8 v8, v15, 0x64

    .line 1767
    const/16 v15, 0x283c

    if-ne v7, v15, :cond_45

    const/16 v15, 0xbb8

    if-ne v8, v15, :cond_45

    const/4 v15, 0x1

    goto :goto_46

    :cond_45
    move v15, v6

    :goto_46
    move v5, v15

    .line 1768
    const-string v15, "ColorBalanceService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDefaultLocation:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :cond_5e
    const/4 v6, -0x2

    if-eqz p1, :cond_66

    if-eqz v5, :cond_64

    goto :goto_66

    .line 1785
    :cond_64
    move v14, v7

    goto :goto_a9

    .line 1771
    :cond_66
    :goto_66
    iget-object v14, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "twils-lon"

    move/from16 v20, v7

    const/4 v7, 0x0

    invoke-static {v14, v15, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 1772
    .end local v7    # "lon":I
    .local v14, "lon":I
    iget-object v15, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move/from16 v21, v8

    const-string/jumbo v8, "twils-lat"

    .line 1772
    .end local v8    # "lat":I
    .local v21, "lat":I
    invoke-static {v15, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 1773
    .end local v21    # "lat":I
    .restart local v8    # "lat":I
    if-eqz v14, :cond_a9

    if-eqz v8, :cond_a9

    .line 1774
    const-string v7, "ColorBalanceService"

    const-string/jumbo v15, "used SAVED"

    invoke-static {v7, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    int-to-double v6, v14

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v9, v6, v18

    .line 1776
    int-to-double v6, v8

    div-double v11, v6, v18

    .line 1777
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1785
    :cond_a9
    :goto_a9
    const-wide/32 v6, 0x3dcc500

    const-wide/32 v20, 0x1499700

    if-eqz p1, :cond_bb

    if-eqz v5, :cond_b4

    goto :goto_bb

    .line 1801
    :cond_b4
    move/from16 v24, v8

    move-object/from16 v22, v13

    move/from16 v23, v14

    goto :goto_10b

    .line 1785
    :cond_bb
    :goto_bb
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_105

    .line 1786
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    .line 1787
    .local v15, "moonMillis":J
    move-object/from16 v22, v13

    move/from16 v23, v14

    sub-long v13, v15, v20

    .line 1788
    .end local v14    # "lon":I
    .local v13, "sunriseTimeMillis":J
    .local v22, "isLastLocationUsed":Ljava/lang/Boolean;
    .local v23, "lon":I
    add-long/2addr v6, v15

    .line 1789
    .local v6, "sunriseTimeMillis2":J
    add-long v0, v15, v20

    .line 1790
    .local v0, "sunsetTimeMillis":J
    cmp-long v17, v2, v13

    if-gez v17, :cond_da

    .line 1791
    move/from16 v24, v8

    new-instance v8, Lcom/android/server/twilight/TwilightState;

    .line 1791
    .end local v8    # "lat":I
    .local v24, "lat":I
    invoke-direct {v8, v13, v14, v0, v1}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1791
    .local v8, "ts":Lcom/android/server/twilight/TwilightState;
    goto :goto_e1

    .line 1794
    .end local v24    # "lat":I
    .local v8, "lat":I
    :cond_da
    move/from16 v24, v8

    .line 1794
    .end local v8    # "lat":I
    .restart local v24    # "lat":I
    new-instance v8, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v8, v6, v7, v0, v1}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1796
    .local v8, "ts":Lcom/android/server/twilight/TwilightState;
    :goto_e1
    move-wide/from16 v25, v0

    const-string v0, "ColorBalanceService"

    .line 1796
    .end local v0    # "sunsetTimeMillis":J
    .local v25, "sunsetTimeMillis":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v27, v6

    const-string/jumbo v6, "isDefaultLocation:"

    .line 1796
    .end local v6    # "sunriseTimeMillis2":J
    .local v27, "sunriseTimeMillis2":J
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " Time-fixed:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    return-object v8

    .line 1801
    .end local v15    # "moonMillis":J
    .end local v22    # "isLastLocationUsed":Ljava/lang/Boolean;
    .end local v23    # "lon":I
    .end local v24    # "lat":I
    .end local v25    # "sunsetTimeMillis":J
    .end local v27    # "sunriseTimeMillis2":J
    .local v8, "lat":I
    .local v13, "isLastLocationUsed":Ljava/lang/Boolean;
    .restart local v14    # "lon":I
    :cond_105
    move/from16 v24, v8

    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 1801
    .end local v8    # "lat":I
    .end local v13    # "isLastLocationUsed":Ljava/lang/Boolean;
    .end local v14    # "lon":I
    .restart local v22    # "isLastLocationUsed":Ljava/lang/Boolean;
    .restart local v23    # "lon":I
    .restart local v24    # "lat":I
    :goto_10b
    const/4 v0, 0x0

    .line 1802
    .local v0, "isTimeZoneError":Z
    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double v6, v9, v13

    double-to-int v1, v6

    .line 1803
    .end local v23    # "lon":I
    .local v1, "lon":I
    mul-double v14, v11, v13

    double-to-int v6, v14

    .line 1804
    .end local v24    # "lat":I
    .local v6, "lat":I
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v13, "twils-lon"

    const/4 v14, -0x2

    invoke-static {v8, v13, v1, v14}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1805
    iget-object v8, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v13, "twils-lat"

    invoke-static {v8, v13, v6, v14}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1806
    const-string v8, "ColorBalanceService"

    const-string v13, "Save loc!"

    invoke-static {v8, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    new-instance v8, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 1808
    .local v8, "ca":Landroid/icu/impl/CalendarAstronomer;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1809
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v14

    .line 1810
    .local v14, "sunriseTimeMillis":J
    move/from16 v29, v0

    move/from16 v30, v1

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v0

    .line 1811
    .end local v1    # "lon":I
    .local v0, "sunsetTimeMillis":J
    .local v29, "isTimeZoneError":Z
    .local v30, "lon":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 1812
    .local v13, "csunrise":Ljava/util/Calendar;
    move/from16 v31, v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1813
    .local v5, "csunset":Ljava/util/Calendar;
    .local v31, "isDefaultLocation":Z
    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1814
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1819
    move/from16 v32, v6

    const/4 v6, 0x5

    .line 1819
    .end local v6    # "lat":I
    .local v32, "lat":I
    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-wide/from16 v33, v9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1819
    .end local v9    # "dlon":D
    .local v33, "dlon":D
    if-eq v7, v9, :cond_185

    .line 1820
    const/4 v6, 0x1

    .line 1821
    .end local v29    # "isTimeZoneError":Z
    .local v6, "isTimeZoneError":Z
    const-string v7, "ColorBalanceService"

    const-string v9, "Time zone error 0"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    .end local v6    # "isTimeZoneError":Z
    .restart local v29    # "isTimeZoneError":Z
    :goto_182
    move/from16 v29, v6

    goto :goto_1c6

    .line 1823
    :cond_185
    cmp-long v7, v0, v2

    if-gez v7, :cond_1a5

    .line 1824
    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 1825
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1826
    invoke-virtual {v8, v7}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v14

    .line 1827
    cmp-long v6, v14, v2

    if-gez v6, :cond_1c6

    .line 1828
    const/4 v6, 0x1

    .line 1829
    .end local v29    # "isTimeZoneError":Z
    .restart local v6    # "isTimeZoneError":Z
    const-string v7, "ColorBalanceService"

    const-string v9, "Time zone error 1"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    .line 1831
    .end local v6    # "isTimeZoneError":Z
    .restart local v29    # "isTimeZoneError":Z
    :cond_1a5
    cmp-long v7, v14, v2

    if-lez v7, :cond_1c6

    .line 1832
    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 1833
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1834
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v0

    .line 1835
    cmp-long v6, v0, v2

    if-lez v6, :cond_1c6

    .line 1836
    const/4 v6, 0x1

    .line 1837
    .end local v29    # "isTimeZoneError":Z
    .restart local v6    # "isTimeZoneError":Z
    const-string v7, "ColorBalanceService"

    const-string v9, "Time zone error 2"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    .line 1841
    .end local v6    # "isTimeZoneError":Z
    .restart local v29    # "isTimeZoneError":Z
    :cond_1c6
    :goto_1c6
    new-instance v6, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v6, v14, v15, v0, v1}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1842
    .local v6, "ts":Lcom/android/server/twilight/TwilightState;
    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ts:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    if-eqz v29, :cond_221

    .line 1844
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 1845
    .local v9, "moonMillis":J
    sub-long v14, v9, v20

    .line 1846
    move-wide/from16 v35, v0

    const-wide/32 v16, 0x3dcc500

    add-long v0, v9, v16

    .line 1847
    .local v0, "sunriseTimeMillis2":J
    .local v35, "sunsetTimeMillis":J
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    add-long v4, v9, v20

    .line 1848
    .end local v5    # "csunset":Ljava/util/Calendar;
    .end local v35    # "sunsetTimeMillis":J
    .local v4, "sunsetTimeMillis":J
    .local v37, "noon":Ljava/util/Calendar;
    .local v38, "csunset":Ljava/util/Calendar;
    cmp-long v7, v2, v14

    if-gez v7, :cond_202

    .line 1849
    new-instance v7, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v7, v14, v15, v4, v5}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    move-object v6, v7

    goto :goto_208

    .line 1852
    :cond_202
    new-instance v7, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v7, v0, v1, v4, v5}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    move-object v6, v7

    .line 1854
    :goto_208
    const-string v7, "ColorBalanceService"

    move-wide/from16 v39, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1854
    .end local v0    # "sunriseTimeMillis2":J
    .local v39, "sunriseTimeMillis2":J
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time zone maybe error,Time-fixed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "moonMillis":J
    .end local v39    # "sunriseTimeMillis2":J
    goto :goto_229

    .line 1856
    .end local v37    # "noon":Ljava/util/Calendar;
    .end local v38    # "csunset":Ljava/util/Calendar;
    .local v0, "sunsetTimeMillis":J
    .local v4, "noon":Ljava/util/Calendar;
    .restart local v5    # "csunset":Ljava/util/Calendar;
    :cond_221
    move-wide/from16 v35, v0

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-wide/from16 v4, v35

    .line 1856
    .end local v0    # "sunsetTimeMillis":J
    .end local v5    # "csunset":Ljava/util/Calendar;
    .local v4, "sunsetTimeMillis":J
    .restart local v37    # "noon":Ljava/util/Calendar;
    .restart local v38    # "csunset":Ljava/util/Calendar;
    :goto_229
    return-object v6
.end method

.method private updateActivated()V
    .registers 10

    .line 1897
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1300(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1898
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1899
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v3

    .line 1900
    .local v3, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 1902
    .local v4, "isNight":Z
    :goto_1c
    const/4 v5, 0x1

    .line 1903
    .local v5, "setActivated":Z
    if-eqz v3, :cond_46

    .line 1904
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateActivated:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " isNight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " setActivated:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_46
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;
    invoke-static {v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1907
    .end local v1    # "currentTimeMillis":J
    .end local v3    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v4    # "isNight":Z
    .end local v5    # "setActivated":Z
    monitor-exit v0

    .line 1908
    return-void

    .line 1907
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private updateTwilightState(Ljava/lang/Boolean;)V
    .registers 22
    .param p1, "isCallByOnLocationChange"    # Ljava/lang/Boolean;

    move-object/from16 v7, p0

    .line 1911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1912
    .local v8, "currentTimeMillis":J
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1913
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    .line 1915
    :cond_1c
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v10

    .line 1916
    .local v10, "state":Lcom/android/server/twilight/TwilightState;
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwilightState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isNight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " PreIsNight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    if-eqz v0, :cond_66

    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    if-eq v0, v1, :cond_69

    .line 1919
    :cond_66
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateActivated()V

    .line 1921
    :cond_69
    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    .line 1922
    iput-object v10, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 1923
    if-eqz v10, :cond_11a

    .line 1924
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1925
    .local v11, "now":Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 1926
    .local v12, "nowMillis":J
    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v14

    .line 1927
    .local v14, "sunriseMillis":J
    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v16

    .line 1929
    .local v16, "sunsetMillis":J
    cmp-long v0, v14, v16

    if-gez v0, :cond_c2

    .line 1930
    cmp-long v0, v12, v14

    if-gez v0, :cond_a9

    .line 1932
    move-wide v0, v14

    .line 1933
    .local v0, "triggerAtMillis":J
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1 trigger time sunrise:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    .end local v0    # "triggerAtMillis":J
    .local v18, "triggerAtMillis":J
    :goto_a6
    move-wide/from16 v18, v0

    goto :goto_f7

    .line 1936
    .end local v18    # "triggerAtMillis":J
    :cond_a9
    move-wide/from16 v0, v16

    .line 1937
    .restart local v0    # "triggerAtMillis":J
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 trigger time sunset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 1940
    .end local v0    # "triggerAtMillis":J
    :cond_c2
    cmp-long v0, v12, v16

    if-gez v0, :cond_df

    .line 1942
    move-wide/from16 v0, v16

    .line 1943
    .restart local v0    # "triggerAtMillis":J
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 trigger time sunset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 1946
    .end local v0    # "triggerAtMillis":J
    :cond_df
    move-wide v0, v14

    .line 1947
    .restart local v0    # "triggerAtMillis":J
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4 trigger time sunrise:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 1951
    .end local v0    # "triggerAtMillis":J
    .restart local v18    # "triggerAtMillis":J
    :goto_f7
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1952
    cmp-long v0, v18, v12

    if-gez v0, :cond_109

    .line 1953
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "time zone maybe error,triggerAtMillis < nowMillis!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 1955
    :cond_109
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    const-string v4, "ColorBalanceService"

    iget-object v2, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1700(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;

    move-result-object v6

    move-wide/from16 v2, v18

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1957
    .end local v11    # "now":Ljava/util/Calendar;
    .end local v12    # "nowMillis":J
    .end local v14    # "sunriseMillis":J
    .end local v16    # "sunsetMillis":J
    .end local v18    # "triggerAtMillis":J
    :cond_11a
    :goto_11a
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .registers 3
    .param p1, "activated"    # Z

    .line 1999
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 2000
    return-void
.end method

.method public onAlarm()V
    .registers 3

    .line 1861
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1864
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 14
    .param p1, "location"    # Landroid/location/Location;

    .line 1868
    if-eqz p1, :cond_a8

    .line 1869
    const/4 v0, 0x0

    .line 1870
    .local v0, "isDefaultLocation":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    .line 1871
    .local v1, "lon":I
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    .line 1873
    .local v2, "lat":I
    const/16 v3, 0x283c

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1d

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_1d

    move v3, v5

    goto :goto_1e

    :cond_1d
    move v3, v4

    :goto_1e
    move v0, v3

    .line 1874
    if-eqz v0, :cond_43

    .line 1875
    const-string v3, "ColorBalanceService"

    const-string v6, "#1 startListening"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1877
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v7, "network"

    const-wide/32 v8, 0x36ee80

    const v10, 0x47c35000    # 100000.0f

    move-object v11, p0

    invoke-virtual/range {v6 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1878
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    goto :goto_6c

    .line 1880
    :cond_43
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1881
    const-string v3, "ColorBalanceService"

    const-string v4, "#2 startListening"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1883
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v7, "network"

    const-wide/32 v8, 0x36ee80

    const v10, 0x47c35000    # 100000.0f

    move-object v11, p0

    invoke-virtual/range {v6 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1884
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    .line 1887
    :cond_6c
    :goto_6c
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLocationChanged: provider="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " accuracy="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " time="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1887
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    .line 1892
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1894
    .end local v0    # "isDefaultLocation":Z
    .end local v1    # "lon":I
    .end local v2    # "lat":I
    :cond_a8
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1748
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1744
    return-void
.end method

.method public onStart()V
    .registers 8

    .line 1963
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1964
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    .line 1965
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1966
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4f

    .line 1967
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1975
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1976
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1977
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1979
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_4f
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1980
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateActivated()V

    .line 1981
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1740
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1986
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1987
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1988
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1989
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1990
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1991
    const-string v0, "ColorBalanceService"

    const-string v1, "TwilightAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1993
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1995
    :cond_45
    return-void
.end method
