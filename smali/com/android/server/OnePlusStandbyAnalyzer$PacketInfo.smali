.class public Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketInfo"
.end annotation


# instance fields
.field public mEnd_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mMobileDiff:J

.field public mPkg:Ljava/lang/String;

.field public mStart_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalDiff:J

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

.field public mUid:I

.field public mWifiDiff:J


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V
    .registers 13
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "uid"    # I
    .param p3, "rxMobile"    # J
    .param p5, "txMobile"    # J
    .param p7, "rxWifi"    # J
    .param p9, "txWifi"    # J

    .line 4277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4278
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 4279
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mUid:I

    .line 4280
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    goto :goto_6d

    .line 4289
    :pswitch_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    .line 4290
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4291
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4292
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4293
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 4282
    :pswitch_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mStart_List:Ljava/util/List;

    .line 4283
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mStart_List:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4284
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mStart_List:Ljava/util/List;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4285
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mStart_List:Ljava/util/List;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4286
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mStart_List:Ljava/util/List;

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4287
    nop

    .line 4296
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public toRawString()Ljava/lang/String;
    .registers 4

    .line 4325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# pkt ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [MD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mMobileDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", WD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mWifiDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mTotalDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRawString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 4321
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mPkg:Ljava/lang/String;

    .line 4322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# pkt ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [MD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mMobileDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", WD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mWifiDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mTotalDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 4330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# pkt ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [MD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mMobileDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", WD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mWifiDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mTotalDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateEnd(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V
    .registers 23
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "uid"    # I
    .param p3, "rxMobile"    # J
    .param p5, "txMobile"    # J
    .param p7, "rxWifi"    # J
    .param p9, "txWifi"    # J

    move-object v0, p0

    .line 4299
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object v2, p1

    if-ne v2, v1, :cond_a3

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    if-nez v1, :cond_a3

    .line 4300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    .line 4301
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4302
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4303
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4304
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4305
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v3, :cond_9c

    aget-object v5, v1, v4

    .line 4306
    .local v5, "e":Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$PACKET_TYPE:[I

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_a4

    .end local v5    # "e":Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
    goto :goto_99

    .line 4313
    .restart local v5    # "e":Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
    :pswitch_4b
    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mWifiDiff:J

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mStart_List:Ljava/util/List;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mWifiDiff:J

    .end local v5    # "e":Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
    goto :goto_99

    .line 4309
    .restart local v5    # "e":Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
    :pswitch_72
    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mMobileDiff:J

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mEnd_List:Ljava/util/List;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mStart_List:Ljava/util/List;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mMobileDiff:J

    .line 4310
    nop

    .line 4305
    .end local v5    # "e":Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
    :goto_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 4317
    :cond_9c
    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mMobileDiff:J

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mWifiDiff:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mTotalDiff:J

    .line 4319
    :cond_a3
    return-void

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_72
        :pswitch_72
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method
