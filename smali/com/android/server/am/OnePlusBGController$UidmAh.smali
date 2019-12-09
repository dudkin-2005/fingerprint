.class public Lcom/android/server/am/OnePlusBGController$UidmAh;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidmAh"
.end annotation


# instance fields
.field public mCriteria:D

.field public mDayOfBg_mAh:D

.field public mDayOfFg_mAh:D

.field public mDrainType:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public mIsForceStop:Z

.field public mIsRelief:Z

.field public mPkgName:Ljava/lang/String;

.field public mRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

.field public mTotal_DayOfmAh:D

.field public mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IDDDLcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;ZZ)V
    .registers 26
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "dayOfFgmAh"    # D
    .param p5, "dayOfBgmAh"    # D
    .param p7, "criteria"    # D
    .param p9, "ranking"    # Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .param p10, "drainType"    # Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;
    .param p11, "isRelief"    # Z
    .param p12, "isForceStop"    # Z

    move-object v0, p0

    .line 1671
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1672
    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mPkgName:Ljava/lang/String;

    .line 1673
    move v2, p2

    iput v2, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mUid:I

    .line 1674
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfFg_mAh:D

    .line 1675
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfBg_mAh:D

    .line 1676
    iget-wide v7, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfFg_mAh:D

    iget-wide v9, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfBg_mAh:D

    add-double/2addr v7, v9

    iput-wide v7, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mTotal_DayOfmAh:D

    .line 1677
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mCriteria:D

    .line 1678
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1679
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDrainType:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    .line 1680
    move/from16 v11, p11

    iput-boolean v11, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mIsRelief:Z

    .line 1681
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mIsForceStop:Z

    .line 1682
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## UidmAh["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfFg_mAh:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfBg_mAh:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mIsForceStop:Z

    if-eqz v1, :cond_39

    const-string v1, "F"

    goto :goto_3b

    :cond_39
    const-string v1, "K"

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
