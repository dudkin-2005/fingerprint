.class public Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelWakelockInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mCount_End:I

.field public mCount_Start:I

.field public mHolding:J

.field public mHolding_End:J

.field public mHolding_Start:J

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4169
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4170
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4172
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4173
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J

    .line 4175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4169
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4170
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4172
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4173
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4176
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 4177
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "count"    # I

    .line 4185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4169
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4170
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4172
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4173
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4186
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 4187
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4188
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJII)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding_start"    # J
    .param p4, "holding_end"    # J
    .param p6, "count_start"    # I
    .param p7, "count_end"    # I

    .line 4190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4169
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4170
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4172
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4173
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4191
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 4192
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4193
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4194
    iput p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4195
    iput p7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4196
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4197
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4198
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 4179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4169
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4170
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4172
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4173
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4180
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 4181
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4182
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4183
    iput-wide p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4184
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 4201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# kwl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
