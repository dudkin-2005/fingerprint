.class public Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidWakeupAlarmsInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mPkg:Ljava/lang/String;

.field public mStart:I

.field public mUid:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "Uid"    # I
    .param p2, "count"    # I

    .line 4131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 4129
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    .line 4130
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    .line 4132
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    .line 4133
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 4134
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "Uid"    # I
    .param p2, "count"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 4135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 4129
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    .line 4130
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    .line 4136
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    .line 4137
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 4138
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    .line 4139
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    .line 4140
    return-void
.end method


# virtual methods
.method public toRawString()Ljava/lang/String;
    .registers 3

    .line 4147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# WUA ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRawString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 4142
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mPkg:Ljava/lang/String;

    .line 4143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# WUA ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# WUA ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
