.class public Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RPMInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mIsVmin:Z

.field public mStart:I

.field public mTimeSinceLastMode:J

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;I)V
    .registers 6
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .param p2, "count"    # I

    .line 2238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 2219
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 2220
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 2221
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mTimeSinceLastMode:J

    .line 2222
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 2239
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 2240
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 2241
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_1c

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_1f

    .line 2242
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 2244
    :cond_1f
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V
    .registers 8
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .param p2, "count"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 2245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 2219
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 2220
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 2221
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mTimeSinceLastMode:J

    .line 2222
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 2246
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 2247
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 2248
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 2249
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 2250
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_20

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_23

    .line 2251
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 2253
    :cond_23
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .param p2, "count"    # Ljava/lang/String;
    .param p3, "timeSLM"    # Ljava/lang/String;

    .line 2223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 2219
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 2220
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 2221
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mTimeSinceLastMode:J

    .line 2222
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 2224
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 2225
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 2226
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mTimeSinceLastMode:J

    .line 2227
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_26

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_29

    .line 2228
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 2230
    :cond_29
    return-void
.end method


# virtual methods
.method public isVimCanDeepSleep()Z
    .registers 6

    .line 2278
    const/4 v0, 0x0

    .line 2279
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    goto :goto_1a

    .line 2282
    :pswitch_f
    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mTimeSinceLastMode:J

    # getter for: Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$2400()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1a

    const/4 v0, 0x1

    .line 2285
    :cond_1a
    :goto_1a
    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x3
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public isVlowAbnormal()Z
    .registers 4

    .line 2258
    const/4 v0, 0x0

    .line 2259
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    goto :goto_14

    .line 2262
    :pswitch_f
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_14

    const/4 v0, 0x1

    .line 2265
    :cond_14
    :goto_14
    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public isVmin()Z
    .registers 2

    .line 2255
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    return v0
.end method

.method public isVminAbnormal()Z
    .registers 4

    .line 2268
    const/4 v0, 0x0

    .line 2269
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    goto :goto_14

    .line 2272
    :pswitch_f
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_14

    const/4 v0, 0x1

    .line 2275
    :cond_14
    :goto_14
    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "count"    # Ljava/lang/String;
    .param p2, "timeSLM"    # Ljava/lang/String;

    .line 2233
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 2235
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 2236
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mTimeSinceLastMode:J

    .line 2237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# RPMInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mTimeSinceLastMode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
