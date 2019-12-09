.class public Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BGCAbnInfo"
.end annotation


# instance fields
.field private mRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$UidmAh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    .line 1722
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    monitor-enter v0

    .line 1741
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1742
    monitor-exit v0

    .line 1743
    return-void

    .line 1742
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dump()V
    .registers 4

    .line 1733
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    monitor-enter v0

    .line 1734
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1735
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidmAh;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidmAh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1734
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1737
    .end local v1    # "i":I
    :cond_1e
    monitor-exit v0

    .line 1738
    return-void

    .line 1737
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getRecordList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$UidmAh;",
            ">;"
        }
    .end annotation

    .line 1724
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    return-object v0
.end method

.method public insert(Ljava/lang/String;IDDDLcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;ZZ)V
    .registers 29
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "dayOfFgmAh"    # D
    .param p5, "dayOfBgmAh"    # D
    .param p7, "dayOfBgCriteria"    # D
    .param p9, "ranking"    # Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .param p10, "type"    # Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;
    .param p11, "isRelief"    # Z
    .param p12, "isForceStop"    # Z

    move-object/from16 v1, p0

    .line 1727
    iget-object v2, v1, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    monitor-enter v2

    .line 1728
    :try_start_5
    new-instance v0, Lcom/android/server/am/OnePlusBGController$UidmAh;

    move-object v3, v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Lcom/android/server/am/OnePlusBGController$UidmAh;-><init>(Ljava/lang/String;IDDDLcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;ZZ)V

    .line 1729
    .local v0, "onerecord":Lcom/android/server/am/OnePlusBGController$UidmAh;
    iget-object v3, v1, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->mRecordList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1730
    .end local v0    # "onerecord":Lcom/android/server/am/OnePlusBGController$UidmAh;
    monitor-exit v2

    .line 1731
    return-void

    .line 1730
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0
.end method
