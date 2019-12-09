.class public Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedtuneParam"
.end annotation


# instance fields
.field private mItemSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    .line 618
    return-void
.end method

.method private writeSchedtuneValue(ZLjava/lang/String;)Z
    .registers 14
    .param p1, "acquire"    # Z
    .param p2, "level"    # Ljava/lang/String;

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 640
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x1

    .line 642
    .local v2, "ret":Z
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_e6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e4

    .line 643
    :try_start_6
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    .line 644
    .local v5, "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 645
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_72

    .line 646
    const-string v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : file not exits :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v4, 0x0

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_e1

    .line 661
    if-eqz v0, :cond_70

    .line 662
    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4b

    .line 663
    const/4 v0, 0x0

    goto :goto_70

    .line 665
    :catch_4b
    move-exception v3

    .line 666
    .local v3, "ex":Ljava/io/IOException;
    const-string v6, "OPPerf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO close failed : level = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",ex->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v2, 0x0

    .line 667
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_71

    .line 668
    :cond_70
    :goto_70
    nop

    .line 647
    :goto_71
    return v4

    .line 649
    :cond_72
    :try_start_72
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 650
    if-eqz p1, :cond_83

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getParam()Ljava/lang/String;

    move-result-object v6

    goto :goto_87

    :cond_83
    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getDefaultParam()Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, "cmd":Ljava/lang/String;
    :goto_87
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 652
    .local v7, "statebuffer":[B
    invoke-virtual {v0, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 653
    sget-boolean v8, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v8, :cond_b1

    const-string v8, "OPPerf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeSchedtuneValue : level ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v5    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    .end local v6    # "cmd":Ljava/lang/String;
    .end local v7    # "statebuffer":[B
    :cond_b1
    goto/16 :goto_c

    .line 655
    :cond_b3
    monitor-exit v3
    :try_end_b4
    .catchall {:try_start_72 .. :try_end_b4} :catchall_e1

    .line 661
    if-eqz v0, :cond_e0

    .line 662
    :try_start_b6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bb

    .line 663
    :goto_b9
    const/4 v0, 0x0

    goto :goto_e0

    .line 665
    :catch_bb
    move-exception v3

    .line 666
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c3
    const-string v6, "IO close failed : level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v2, 0x0

    .line 669
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_11a

    .line 668
    :cond_e0
    :goto_e0
    goto :goto_11a

    .line 655
    :catchall_e1
    move-exception v4

    :try_start_e2
    monitor-exit v3
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v4
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e4} :catch_e6
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e4

    .line 660
    :catchall_e4
    move-exception v3

    goto :goto_11b

    .line 656
    :catch_e6
    move-exception v3

    .line 657
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_e7
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeSchedtuneValue failed : level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_e7 .. :try_end_10a} :catchall_e4

    .line 658
    const/4 v2, 0x0

    .line 661
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_e0

    .line 662
    :try_start_10d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_b9

    .line 665
    :catch_111
    move-exception v3

    .line 666
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c3

    .line 670
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_11a
    return v2

    .line 660
    :goto_11b
    nop

    .line 661
    if-eqz v0, :cond_148

    .line 662
    :try_start_11e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_123

    .line 663
    const/4 v0, 0x0

    goto :goto_148

    .line 665
    :catch_123
    move-exception v4

    .line 666
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO close failed : level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPPerf"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v2, 0x0

    .line 667
    .end local v4    # "ex":Ljava/io/IOException;
    nop

    .line 668
    :cond_148
    :goto_148
    throw v3
.end method


# virtual methods
.method public addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V
    .registers 4
    .param p1, "item"    # Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    .line 620
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 621
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    monitor-exit v0

    .line 623
    return-void

    .line 622
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public resetPerfFiles(Ljava/lang/String;)Z
    .registers 3
    .param p1, "level"    # Ljava/lang/String;

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writePerfFiles(Ljava/lang/String;)Z
    .registers 4
    .param p1, "level"    # Ljava/lang/String;

    .line 626
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    .line 628
    return v0

    .line 630
    :cond_c
    return v0
.end method
