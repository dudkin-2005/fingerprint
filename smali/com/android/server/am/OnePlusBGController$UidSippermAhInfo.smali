.class public Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidSippermAhInfo"
.end annotation


# instance fields
.field private cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field private mBg_mAh:D

.field private mBucketRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

.field private mDayOfAbn_Handled_Count:I

.field private mDayOfBg_mAh:D

.field private mDayOfFg_mAh:D

.field private mEverDayOfForceStoped:Z

.field private mFg_mAh:D

.field private mNeedReliefBudget:Z

.field private mUid:I

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$mAhRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p3, "mAh"    # D

    .line 1770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1754
    sget-object v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBucketRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    .line 1759
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    .line 1771
    iput p1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    .line 1772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    .line 1773
    monitor-enter p0

    .line 1775
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_32

    .line 1776
    :try_start_1c
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1777
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, v7

    move-object v2, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusBGController$mAhRecord;-><init>(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;JD)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 1779
    :catchall_30
    move-exception v0

    goto :goto_34

    :cond_32
    :goto_32
    monitor-exit p0

    .line 1780
    return-void

    .line 1779
    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_30

    throw v0
.end method

.method private isAudioActive(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1814
    # getter for: Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$2900()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, "strUid":Ljava/lang/String;
    # getter for: Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$2900()Landroid/media/AudioManager;

    move-result-object v1

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1819
    .local v1, "uids":Ljava/lang/String;
    if-eqz v1, :cond_30

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1820
    const/4 v2, 0x1

    return v2

    .line 1823
    .end local v0    # "strUid":Ljava/lang/String;
    .end local v1    # "uids":Ljava/lang/String;
    :cond_30
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addAbnHandledCount()V
    .registers 2

    .line 1797
    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    .line 1798
    return-void
.end method

.method public cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V
    .registers 8
    .param p1, "type"    # Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    .line 1947
    monitor-enter p0

    .line 1948
    :try_start_1
    sget-object v0, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$CLEAN_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_6c

    goto :goto_61

    .line 1973
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_61

    .line 1951
    :pswitch_16
    iput v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    .line 1953
    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    .line 1955
    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    .line 1958
    :pswitch_1c
    sget-object v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    const/4 v4, 0x1

    if-ne p1, v0, :cond_45

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNotoriousAbn()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mark uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as ever day-of-force-stopped"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1961
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    .line 1965
    :cond_45
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_5c

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1969
    :cond_5c
    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    .line 1970
    nop

    .line 1976
    :goto_61
    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    .line 1977
    monitor-exit p0

    .line 1978
    return-void

    .line 1977
    :catchall_67
    move-exception v0

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_67

    throw v0

    nop

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1c
        :pswitch_10
    .end packed-switch
.end method

.method public dumpRecords()V
    .registers 3

    .line 2002
    monitor-enter p0

    .line 2003
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 2004
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 2005
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$mAhRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2004
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2008
    .end local v0    # "i":I
    :cond_20
    monitor-exit p0

    .line 2009
    return-void

    .line 2008
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public getDayOfBgmAh()D
    .registers 3

    .line 1791
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    return-wide v0
.end method

.method public getDayOfFgmAh()D
    .registers 3

    .line 1788
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    return-wide v0
.end method

.method public getTotoalDayOfmAh()D
    .registers 5

    .line 1794
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    .line 1782
    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    return v0
.end method

.method public ifNeedReliefBudget()Z
    .registers 2

    .line 1810
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    return v0
.end method

.method public ifNotoriousAbn()Z
    .registers 3

    .line 1801
    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public informChgToFg()V
    .registers 2

    .line 1805
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    if-eqz v0, :cond_7

    .line 1806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    .line 1808
    :cond_7
    return-void
.end method

.method public insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .registers 12
    .param p1, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p2, "mAh"    # D

    .line 1830
    monitor-enter p0

    .line 1831
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1838
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_108

    .line 1840
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    .line 1843
    .local v0, "pre_Record":Lcom/android/server/am/OnePlusBGController$mAhRecord;
    const-wide/16 v1, 0x0

    cmpg-double v3, p2, v1

    if-gez v3, :cond_24

    .line 1844
    iget-wide v3, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    move-wide p2, v3

    .line 1847
    :cond_24
    sget-object v3, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v3, :cond_2e

    .line 1848
    const-string/jumbo v3, "oops!! why insert type with PROC_TYPE.B_RECONFIRM"

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1863
    :cond_2e
    if-eqz v0, :cond_e7

    .line 1865
    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-eq v3, p1, :cond_a7

    .line 1866
    iget-wide v3, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    sub-double v3, p2, v3

    .line 1867
    .local v3, "diff":D
    cmpg-double v1, v3, v1

    if-gez v1, :cond_5b

    .line 1871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.oops, diff is negative:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", just cleanUp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1872
    sget-object v1, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    goto :goto_a6

    .line 1874
    :cond_5b
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v1, :cond_6a

    .line 1877
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    .line 1878
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    goto :goto_a6

    .line 1879
    :cond_6a
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v1, :cond_a6

    .line 1887
    iget v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->isAudioActive(I)Z

    move-result v1

    .line 1889
    .local v1, "isAudioActive":Z
    if-eqz v1, :cond_9c

    .line 1891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### Due to audio-active, uid:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", add into Fg instead."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1892
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    .line 1893
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    goto :goto_a6

    .line 1896
    :cond_9c
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    .line 1897
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    .line 1902
    .end local v1    # "isAudioActive":Z
    .end local v3    # "diff":D
    :cond_a6
    :goto_a6
    goto :goto_e7

    .line 1904
    :cond_a7
    iget-wide v3, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    sub-double v3, p2, v3

    .line 1905
    .restart local v3    # "diff":D
    cmpg-double v1, v3, v1

    if-gez v1, :cond_ce

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2.oops, diff is negative:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", just cleanUp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1910
    sget-object v1, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    goto :goto_e7

    .line 1913
    :cond_ce
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v1, :cond_dd

    .line 1915
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    .line 1916
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    goto :goto_e7

    .line 1920
    :cond_dd
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    .line 1921
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    .line 1926
    .end local v3    # "diff":D
    :cond_e7
    :goto_e7
    # getter for: Lcom/android/server/am/OnePlusBGController;->DEBUG_KEEP:Z
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3000()Z

    move-result v1

    if-nez v1, :cond_f2

    .line 1929
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1931
    .end local v0    # "pre_Record":Lcom/android/server/am/OnePlusBGController$mAhRecord;
    :cond_f2
    nop

    .line 1939
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1940
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, v7

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusBGController$mAhRecord;-><init>(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;JD)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1941
    monitor-exit p0

    .line 1942
    return-void

    .line 1936
    :cond_108
    monitor-exit p0

    return-void

    .line 1941
    :catchall_10a
    move-exception v0

    monitor-exit p0
    :try_end_10c
    .catchall {:try_start_1 .. :try_end_10c} :catchall_10a

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 1981
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v0, v2

    .line 1982
    .local v0, "sumUp":D
    const/4 v2, 0x0

    .line 1983
    .local v2, "bg_Percentage":F
    const/4 v3, 0x0

    .line 1984
    .local v3, "fg_Percentage":F
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-eqz v4, :cond_2b

    .line 1985
    iget-wide v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    div-double/2addr v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-float v3, v4

    .line 1986
    new-instance v4, Ljava/math/BigDecimal;

    float-to-double v5, v3

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1987
    .local v4, "b":Ljava/math/BigDecimal;
    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    .line 1988
    const/high16 v5, 0x42c80000    # 100.0f

    sub-float v2, v5, v3

    .line 1991
    .end local v4    # "b":Ljava/math/BigDecimal;
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# UidmAhInfo ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " %), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    .line 1993
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " %)] [Rnk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBucketRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] [Abn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [Relief: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "][ForceStoped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v5, v7

    .line 1999
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1991
    return-object v4
.end method

.method public updateBucketRanking(Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;)V
    .registers 2
    .param p1, "ranking"    # Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1785
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBucketRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1786
    return-void
.end method
