.class Lcom/android/server/am/Connor$BingoStatistic;
.super Ljava/lang/Object;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BingoStatistic"
.end annotation


# static fields
.field private static final RECORD_SIZE:I = 0x32


# instance fields
.field bitSet:Ljava/util/BitSet;

.field private index:I

.field private isWarmUp:Z

.field mCategory:I

.field mLastSPCount:J

.field mLastSPHit:J

.field mPredictNum:I

.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/Connor;II)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/Connor;
    .param p2, "category"    # I
    .param p3, "predictNum"    # I

    .line 1053
    iput-object p1, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    .line 1046
    iput-boolean v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->isWarmUp:Z

    .line 1047
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    .line 1050
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPCount:J

    .line 1051
    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPHit:J

    .line 1054
    iput p2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    .line 1055
    iput p3, p0, Lcom/android/server/am/Connor$BingoStatistic;->mPredictNum:I

    .line 1056
    # getter for: Lcom/android/server/am/Connor;->mSPCount:J
    invoke-static {p1}, Lcom/android/server/am/Connor;->access$2500(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPCount:J

    .line 1057
    invoke-direct {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getStartProcHit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPHit:J

    .line 1058
    return-void
.end method

.method private getStartProcHit()J
    .registers 4

    .line 1107
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mPredictNum:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSPHitMM3:J
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$2800(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSPHitMM5:J
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$2900(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    :goto_17
    return-wide v0

    .line 1108
    :cond_18
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mPredictNum:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSPHitNN3:J
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$3000(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    goto :goto_29

    :cond_23
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSPHitNN5:J
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$3100(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    :goto_29
    return-wide v0
.end method

.method private prepareData()Landroid/content/ContentValues;
    .registers 7

    .line 1093
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1094
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "connor_model_ver"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    const-string v1, "connor_model_acc"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    if-ne v2, v3, :cond_1f

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAccOfNN:I
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2600(Lcom/android/server/am/Connor;)I

    move-result v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    const-string v1, "connor_model_loss"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    if-ne v2, v3, :cond_34

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mLossOfNN:F
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2700(Lcom/android/server/am/Connor;)F

    move-result v2

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1097
    const-string v1, "connor_stat_category"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    const-string v1, "connor_predict_num"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mPredictNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    const-string v1, "connor_feed_count"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1100
    const-string v1, "connor_feed_hit"

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    const-string v1, "connor_proc_count"

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSPCount:J
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2500(Lcom/android/server/am/Connor;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPCount:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1102
    const-string v1, "connor_proc_hit"

    invoke-direct {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getStartProcHit()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPHit:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1103
    return-object v0
.end method


# virtual methods
.method public getCurrHitRate()F
    .registers 3

    .line 1087
    iget-boolean v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->isWarmUp:Z

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 1089
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRoundedIndex()I
    .registers 5

    .line 1071
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_6c

    .line 1072
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->isWarmUp:Z

    .line 1074
    iget-object v1, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mIsDebugMode:Z
    invoke-static {v1}, Lcom/android/server/am/Connor;->access$700(Lcom/android/server/am/Connor;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save to db for cate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    if-ne v3, v0, :cond_28

    const-string v0, "MM"

    goto :goto_2a

    :cond_28
    const-string v0, "NN"

    :goto_2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_34
    # getter for: Lcom/android/server/am/Connor;->mIsAlpha:Z
    invoke-static {}, Lcom/android/server/am/Connor;->access$1700()Z

    move-result v0

    if-nez v0, :cond_48

    # getter for: Lcom/android/server/am/Connor;->mIsBeta:Z
    invoke-static {}, Lcom/android/server/am/Connor;->access$1800()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mIsDebugMode:Z
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$700(Lcom/android/server/am/Connor;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1077
    :cond_48
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Connor$RecordStatistic;

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Lcom/android/server/am/Connor$BingoStatistic;->prepareData()Landroid/content/ContentValues;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/Connor$RecordStatistic;-><init>(Lcom/android/server/am/Connor;Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1080
    :cond_5e
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSPCount:J
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$2500(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPCount:J

    .line 1081
    invoke-direct {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getStartProcHit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPHit:J

    .line 1083
    :cond_6c
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    return v0
.end method

.method public hit()V
    .registers 4

    .line 1061
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getRoundedIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1062
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    .line 1063
    return-void
.end method

.method public miss()V
    .registers 4

    .line 1066
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getRoundedIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1067
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    .line 1068
    return-void
.end method
