.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    .line 107
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    .line 108
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 109
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 726
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 729
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 730
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 731
    iget-object v6, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/net/NetworkStatsHistory;

    .line 733
    iget-object v6, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v13, p6

    invoke-static {v13, v6}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 734
    :cond_0
    iget v6, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_1

    goto :goto_1

    .line 736
    :cond_1
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v7, 0x0

    iget v9, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v10, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v5, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-direct {v6, v7, v9, v10, v5}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 737
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 738
    if-nez v5, :cond_2

    .line 739
    new-instance v5, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v9

    invoke-direct {v5, v9, v10}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 740
    invoke-virtual {v2, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :cond_2
    move-object v7, v5

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 729
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 745
    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 746
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 747
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 749
    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 745
    move-object/from16 v5, p7

    goto :goto_3

    .line 751
    :cond_4
    const-string v5, "c,"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    move-object/from16 v5, p7

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 753
    iget v7, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 754
    iget v7, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v7}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 755
    iget v0, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 756
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 758
    invoke-virtual {v4, v1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    .line 745
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 760
    :cond_5
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    .line 665
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 3

    .line 437
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 438
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkStatsHistory;

    .line 441
    nop

    .line 442
    if-nez p1, :cond_0

    .line 443
    new-instance p2, Landroid/net/NetworkStatsHistory;

    iget-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v1, 0xa

    invoke-direct {p2, p3, p4, v1}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long p2, p2, v1

    if-eqz p2, :cond_1

    .line 445
    new-instance p2, Landroid/net/NetworkStatsHistory;

    iget-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {p2, p1, p3, p4}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    goto :goto_0

    .line 448
    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 449
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-object p2

    .line 452
    :cond_2
    return-object p1
.end method

.method private getSortedKeys()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            ">;"
        }
    .end annotation

    .line 670
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 672
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 673
    return-object v0
.end method

.method public static multiplySafe(JJJ)J
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 196
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    const-wide/16 p4, 0x1

    .line 197
    :cond_0
    nop

    .line 198
    nop

    .line 201
    mul-long v2, p0, p2

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 203
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 204
    or-long/2addr v4, v6

    const/16 v6, 0x1f

    ushr-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-eqz v4, :cond_3

    .line 208
    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    div-long v0, v2, p2

    cmp-long v0, v0, p0

    if-nez v0, :cond_2

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 211
    :cond_2
    long-to-double p2, p2

    long-to-double p4, p4

    div-double/2addr p2, p4

    long-to-double p0, p0

    mul-double/2addr p2, p0

    double-to-long p0, p2

    return-wide p0

    .line 214
    :cond_3
    div-long/2addr v2, p4

    return-wide v2
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 2

    .line 658
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 659
    :cond_0
    iget-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 660
    :cond_1
    iget-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr p1, p5

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 661
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 662
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .locals 8

    .line 412
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 415
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 416
    if-nez v0, :cond_1

    .line 417
    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 418
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 421
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 1

    .line 767
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 768
    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    const/4 p0, 0x1

    return p0

    .line 771
    :cond_0
    goto :goto_0

    .line 772
    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 113
    return-void
.end method

.method public clearDirty()V
    .locals 1

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 153
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 677
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 678
    const-string v2, "ident="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 679
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 680
    const-string v2, " set="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 681
    const-string v2, " tag="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 683
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 684
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 685
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 686
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 687
    goto :goto_0

    .line 688
    :cond_0
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 16

    .line 714
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "cell"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 715
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string/jumbo v15, "wifi"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "eth"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string v15, "bt"

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 4

    .line 132
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 133
    return-wide v2

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    .line 245
    move/from16 v7, p12

    move/from16 v8, p11

    invoke-static {v1, v7, v8}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 252
    sub-long v7, v5, v3

    iget-wide v9, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long v11, v7, v9

    const-wide/16 v13, 0x0

    const-wide v7, 0x39ef8b000L

    iget-wide v9, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long v15, v7, v9

    invoke-static/range {v11 .. v16}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v7

    long-to-int v7, v7

    .line 254
    new-instance v14, Landroid/net/NetworkStatsHistory;

    iget-wide v8, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v14, v8, v9, v7, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 258
    cmp-long v8, v3, v5

    if-nez v8, :cond_0

    return-object v14

    .line 261
    :cond_0
    nop

    .line 262
    const-wide/16 v15, -0x1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v8

    goto :goto_0

    .line 263
    :cond_1
    nop

    .line 265
    move-wide v8, v15

    .line 266
    :goto_0
    nop

    .line 268
    cmp-long v10, v8, v15

    if-eqz v10, :cond_3

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 270
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 271
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Range;

    .line 272
    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/time/ZonedDateTime;

    invoke-virtual {v12}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v12

    .line 273
    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/time/ZonedDateTime;

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v17

    .line 274
    cmp-long v11, v12, v8

    if-gtz v11, :cond_2

    cmp-long v11, v8, v17

    if-gez v11, :cond_2

    .line 275
    nop

    .line 276
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v10

    .line 277
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v17

    .line 278
    nop

    .line 283
    move-wide/from16 v5, v17

    goto :goto_2

    .line 280
    :cond_2
    goto :goto_1

    .line 283
    :cond_3
    move-wide v10, v3

    move-wide v12, v15

    :goto_2
    cmp-long v17, v12, v15

    if-eqz v17, :cond_4

    .line 285
    invoke-virtual {v0, v12, v13}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v12

    .line 286
    invoke-virtual {v0, v8, v9}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v8

    .line 288
    invoke-virtual {v0, v10, v11}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v10

    .line 289
    invoke-virtual {v0, v5, v6}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v5

    .line 292
    :cond_4
    move-wide/from16 v21, v5

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide v5, v12

    const/16 v23, 0x0

    move/from16 v12, v23

    :goto_3
    iget-object v8, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v12, v8, :cond_6

    .line 293
    iget-object v8, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 294
    iget v9, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v9, v1, :cond_5

    iget v9, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    move/from16 v13, p4

    invoke-static {v13, v9}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v9

    if-eqz v9, :cond_5

    iget v9, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v10, p5

    if-ne v9, v10, :cond_5

    iget-object v8, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 295
    move-object/from16 v11, p1

    invoke-static {v11, v8}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 296
    iget-object v8, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/net/NetworkStatsHistory;

    .line 297
    move-object v8, v14

    move-wide/from16 v10, v19

    move/from16 v24, v12

    move-wide/from16 v12, v21

    invoke-virtual/range {v8 .. v13}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_4

    .line 292
    :cond_5
    move/from16 v24, v12

    :goto_4
    add-int/lit8 v12, v24, 0x1

    goto :goto_3

    .line 301
    :cond_6
    cmp-long v1, v5, v15

    if-eqz v1, :cond_d

    .line 302
    const/4 v13, 0x0

    move-object v8, v14

    move-wide v9, v5

    move-wide/from16 v11, v17

    invoke-virtual/range {v8 .. v13}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 307
    iget-wide v8, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v11, 0x0

    cmp-long v8, v8, v11

    if-eqz v8, :cond_8

    iget-wide v8, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v8, v8, v11

    if-nez v8, :cond_7

    goto :goto_5

    .line 313
    :cond_7
    move-wide v3, v11

    goto :goto_6

    .line 308
    :cond_8
    :goto_5
    new-instance v13, Landroid/net/NetworkStats$Entry;

    const-wide/16 v25, 0x1

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    move-object/from16 v24, v13

    invoke-direct/range {v24 .. v34}, Landroid/net/NetworkStats$Entry;-><init>(JJJJJ)V

    move-object v8, v14

    move-wide v9, v5

    move-wide v3, v11

    move-wide/from16 v11, v17

    invoke-virtual/range {v8 .. v13}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 310
    move-object v13, v1

    invoke-virtual/range {v8 .. v13}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 313
    :goto_6
    iget-wide v8, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v10, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v8, v10

    .line 314
    iget-wide v10, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 315
    iget-wide v12, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v15

    .line 317
    move-wide/from16 v24, v15

    move-wide/from16 v26, v10

    move-wide/from16 v28, v8

    invoke-static/range {v24 .. v29}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v19

    .line 318
    move-wide/from16 v26, v12

    invoke-static/range {v24 .. v29}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v8

    .line 321
    invoke-virtual {v14}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v15

    .line 322
    move/from16 v3, v23

    :goto_7
    invoke-virtual {v14}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 323
    invoke-virtual {v14, v3, v1}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 324
    move/from16 v35, v3

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    cmp-long v2, v2, v5

    if-ltz v2, :cond_9

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v36, v5

    iget-wide v4, v1, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v17

    if-gtz v2, :cond_a

    .line 326
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v24, v19

    move-wide/from16 v26, v2

    move-wide/from16 v28, v10

    invoke-static/range {v24 .. v29}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 327
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v24, v8

    move-wide/from16 v26, v2

    move-wide/from16 v28, v12

    invoke-static/range {v24 .. v29}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 330
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 331
    iput-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 332
    move/from16 v2, v35

    invoke-virtual {v14, v2, v1}, Landroid/net/NetworkStatsHistory;->setValues(ILandroid/net/NetworkStatsHistory$Entry;)V

    goto :goto_8

    .line 322
    :cond_9
    move-wide/from16 v36, v5

    :cond_a
    move/from16 v2, v35

    :goto_8
    add-int/lit8 v3, v2, 0x1

    move-wide/from16 v5, v36

    move/from16 v2, p6

    goto :goto_7

    .line 336
    :cond_b
    invoke-virtual {v14}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v1

    sub-long/2addr v1, v15

    .line 337
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_c

    .line 338
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Augmented network usage by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_c
    new-instance v6, Landroid/net/NetworkStatsHistory;

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move/from16 v2, p6

    invoke-direct {v6, v0, v1, v7, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 344
    move-object v0, v6

    move-object v1, v14

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 345
    return-object v6

    .line 347
    :cond_d
    return-object v14

    .line 246
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network stats history of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is forbidden for caller "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRelevantUids(I)[I
    .locals 1

    .line 218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object p1

    return-object p1
.end method

.method public getRelevantUids(II)[I
    .locals 4

    .line 223
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 224
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 226
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v3, p2, p1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    .line 229
    if-gez v3, :cond_0

    .line 230
    not-int v3, v3

    .line 231
    iget v2, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3, v2}, Landroid/util/IntArray;->add(II)V

    .line 224
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    return-object p1
.end method

.method public getStartMillis()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;
    .locals 17

    move-object/from16 v0, p0

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 359
    new-instance v12, Landroid/net/NetworkStats;

    sub-long v1, p4, p2

    const/16 v3, 0x18

    invoke-direct {v12, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 362
    cmp-long v1, p2, p4

    if-nez v1, :cond_0

    return-object v12

    .line 364
    :cond_0
    new-instance v8, Landroid/net/NetworkStats$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 365
    const/4 v1, 0x0

    .line 367
    const/4 v13, 0x0

    move-object v14, v1

    move v6, v13

    :goto_0
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_4

    .line 368
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 369
    iget-object v1, v7, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v7, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    .line 370
    move/from16 v5, p6

    move/from16 v2, p7

    invoke-static {v1, v2, v5}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v7, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_3

    .line 372
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 373
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move v15, v6

    move-object v0, v7

    move-wide v6, v10

    move-object v9, v8

    move-object v8, v14

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 375
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 376
    iget v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 377
    iget v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->set:I

    .line 378
    iget v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 379
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->areAllMembersOnDefaultNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    iput v2, v9, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 381
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberMetered()Z

    move-result v2

    iput v2, v9, Landroid/net/NetworkStats$Entry;->metered:I

    .line 382
    iget-object v0, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberRoaming()Z

    move-result v0

    iput v0, v9, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 383
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 384
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 385
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 386
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 387
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->operations:J

    .line 389
    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    invoke-virtual {v12, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 367
    :cond_2
    move-object v14, v1

    goto :goto_2

    :cond_3
    move v15, v6

    move-object v9, v8

    :goto_2
    add-int/lit8 v6, v15, 0x1

    move-object v8, v9

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 395
    :cond_4
    return-object v12
.end method

.method public getTotalBytes()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 156
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 464
    const v1, 0x414e4554

    if-ne v0, v1, :cond_3

    .line 468
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 469
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 472
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 473
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 474
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v3, p1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 476
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 477
    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 478
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 479
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 480
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 482
    new-instance v9, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v9, v3, v6, v7, v8}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 483
    new-instance v6, Landroid/net/NetworkStatsHistory;

    invoke-direct {v6, p1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 484
    invoke-direct {p0, v9, v6}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 477
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 473
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_1
    nop

    .line 493
    return-void

    .line 490
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected magic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    .line 459
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 532
    nop

    .line 534
    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 538
    const v0, 0x414e4554

    if-ne p1, v0, :cond_2

    .line 542
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 543
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 546
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 547
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 548
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v3, v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 549
    new-instance v4, Landroid/net/NetworkStatsHistory;

    invoke-direct {v4, v1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 551
    new-instance v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v6, -0x1

    invoke-direct {v5, v3, v6, v6, v0}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 552
    invoke-direct {p0, v5, v4}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_0
    goto :goto_2

    .line 557
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 560
    :catch_0
    move-exception p1

    goto :goto_2

    .line 563
    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 560
    :catch_1
    move-exception v0

    move-object v1, p1

    .line 563
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 564
    nop

    .line 565
    return-void
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 571
    nop

    .line 573
    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 576
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 577
    const v0, 0x414e4554

    if-ne p1, v0, :cond_5

    .line 581
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 582
    packed-switch p1, :pswitch_data_0

    .line 622
    new-instance p2, Ljava/net/ProtocolException;

    goto :goto_4

    .line 600
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 601
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 602
    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v4, v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 604
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 605
    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    .line 606
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 607
    const/4 v8, 0x4

    if-lt p1, v8, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    goto :goto_2

    .line 608
    :cond_0
    nop

    .line 609
    move v8, v2

    :goto_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 611
    new-instance v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 612
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-direct {v7, v1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 614
    if-nez v9, :cond_1

    const/4 v8, 0x1

    goto :goto_3

    :cond_1
    move v8, v2

    :goto_3
    if-eq v8, p2, :cond_2

    .line 615
    invoke-direct {p0, v10, v7}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 605
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 601
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 619
    :cond_4
    goto :goto_6

    .line 595
    :pswitch_1
    goto :goto_6

    .line 588
    :pswitch_2
    goto :goto_6

    .line 622
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 578
    :cond_5
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected magic: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 625
    :catch_0
    move-exception p1

    goto :goto_6

    .line 628
    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 625
    :catch_1
    move-exception p2

    move-object v1, p1

    .line 628
    :goto_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 629
    nop

    .line 630
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 3

    .line 428
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 429
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 430
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 431
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 6

    .line 403
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object p1

    .line 404
    move-object v0, p1

    move-wide v1, p5

    move-wide v3, p7

    move-object v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 405
    invoke-virtual {p1}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide p3

    invoke-virtual {p1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide p5

    iget-wide p1, p9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide p7, p9, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr p7, p1

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 406
    return-void
.end method

.method public removeUids([I)V
    .locals 6

    .line 638
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 643
    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v2, :cond_0

    .line 646
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 647
    iget-object v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v4, -0x4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5, v5}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 649
    invoke-virtual {v3, v2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 651
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 654
    :cond_1
    goto :goto_0

    .line 655
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 117
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 118
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 121
    return-void
.end method

.method public roundDown(J)J
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 176
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v0

    .line 181
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 182
    sub-long/2addr p1, v0

    .line 184
    :cond_1
    return-wide p1

    .line 178
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public roundUp(J)J
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 161
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v0

    .line 166
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 167
    sub-long/2addr p1, v0

    .line 168
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr p1, v0

    .line 170
    :cond_1
    return-wide p1

    .line 163
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 499
    iget-object v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 500
    if-nez v3, :cond_0

    .line 501
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 502
    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    goto :goto_0

    .line 507
    :cond_1
    const v1, 0x414e4554

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 508
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 510
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 511
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 512
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 513
    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 515
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 516
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 517
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 518
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 519
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 520
    iget v3, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 521
    invoke-virtual {v4, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 522
    goto :goto_2

    .line 523
    :cond_2
    goto :goto_1

    .line 525
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 526
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9

    .line 691
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 693
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 694
    const-wide v2, 0x20b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 697
    const-wide v4, 0x10b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 698
    iget-object v8, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v8, p1, v4, v5}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 699
    const-wide v4, 0x10500000002L

    iget v8, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 700
    const-wide v4, 0x10500000003L

    iget v8, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 701
    const-wide v4, 0x10500000004L

    iget v8, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 702
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 705
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 706
    const-wide v4, 0x10b00000002L

    invoke-virtual {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 707
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 708
    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 711
    return-void
.end method
