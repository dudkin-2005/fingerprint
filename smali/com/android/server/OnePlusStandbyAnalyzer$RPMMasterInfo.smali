.class public Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RPMMasterInfo"
.end annotation


# instance fields
.field public mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

.field public mEndRaw:Ljava/lang/String;

.field public mIsAsleep:Z

.field public mLastEntered:J

.field public mLastExited:J

.field public mSleepAccDuration:J

.field public mSleepAccDuration_Hrs:F

.field public mSleepCountDiff:J

.field public mStartRaw:Ljava/lang/String;

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .param p2, "startRaw"    # Ljava/lang/String;
    .param p3, "endRaw"    # Ljava/lang/String;

    .line 2340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    .line 2338
    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    .line 2339
    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    .line 2341
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 2342
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    .line 2343
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    .line 2344
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .param p2, "sleepCount"    # Ljava/lang/String;
    .param p3, "lastEntered"    # Ljava/lang/String;
    .param p4, "lastExited"    # Ljava/lang/String;
    .param p5, "sleepAccDuration"    # Ljava/lang/String;

    .line 2306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    .line 2338
    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    .line 2339
    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    .line 2307
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 2309
    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    .line 2310
    invoke-static {p3, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastEntered:J

    .line 2311
    invoke-static {p4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastExited:J

    .line 2312
    invoke-static {p5, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    .line 2313
    return-void
.end method


# virtual methods
.method public setInEndRaw(Ljava/lang/String;)V
    .registers 2
    .param p1, "endRaw"    # Ljava/lang/String;

    .line 2346
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    .line 2347
    return-void
.end method

.method public setInEndRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "sleepCount"    # Ljava/lang/String;
    .param p2, "lastEntered"    # Ljava/lang/String;
    .param p3, "lastExited"    # Ljava/lang/String;
    .param p4, "sleepAccDuration"    # Ljava/lang/String;

    .line 2317
    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastEntered:J

    .line 2318
    invoke-static {p3, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastExited:J

    .line 2321
    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    .line 2322
    invoke-static {p4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    .line 2324
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    const-wide/32 v2, 0x124f800

    div-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    .line 2326
    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2327
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    .line 2330
    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastExited:J

    iget-wide v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastEntered:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_4c

    .line 2331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    goto :goto_4f

    .line 2333
    :cond_4c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    .line 2335
    :goto_4f
    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    if-eqz v1, :cond_56

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->N:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    goto :goto_58

    :cond_56
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->A:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    :goto_58
    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    .line 2336
    return-void
.end method

.method public toMDMString()Ljava/lang/String;
    .registers 4

    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# RPMMasterInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
