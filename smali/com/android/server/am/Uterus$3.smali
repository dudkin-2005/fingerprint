.class Lcom/android/server/am/Uterus$3;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method constructor <init>(Lcom/android/server/am/Uterus;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;

    .line 587
    iput-object p1, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v0, "byRank":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    iget-object v1, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 593
    :try_start_c
    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trim size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 597
    .local v2, "i":I
    :goto_39
    if-ltz v2, :cond_73

    .line 598
    iget-object v3, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/EmbryoSupervisor;

    .line 599
    .local v3, "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z

    move-result v4

    if-nez v4, :cond_70

    .line 601
    const-string v4, "Embryo_Uterus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detect supervisors wo embryo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v4, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 597
    .end local v3    # "es":Lcom/android/server/am/EmbryoSupervisor;
    :cond_70
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 606
    .end local v2    # "i":I
    :cond_73
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    # getter for: Lcom/android/server/am/Uterus;->MAX:I
    invoke-static {}, Lcom/android/server/am/Uterus;->access$700()I

    move-result v3

    if-gt v2, v3, :cond_85

    .line 607
    monitor-exit v1

    return-void

    .line 609
    :cond_85
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 610
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_c .. :try_end_8f} :catchall_18c

    .line 612
    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> trim start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v1, Lcom/android/server/am/EmbryoSupervisor$LowToHighComparator;

    invoke-direct {v1}, Lcom/android/server/am/EmbryoSupervisor$LowToHighComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 620
    const/4 v1, 0x1

    .line 621
    .local v1, "rank":I
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$800(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 622
    :try_start_b9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/EmbryoSupervisor;

    .line 623
    .local v4, "es":Lcom/android/server/am/EmbryoSupervisor;
    iget-object v5, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/am/Uterus;->access$800(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5
    :try_end_d3
    .catchall {:try_start_b9 .. :try_end_d3} :catchall_189

    .line 625
    .local v5, "lru":I
    add-int/lit8 v6, v1, 0x1

    .line 625
    .local v6, "rank":I
    add-int/2addr v1, v5

    .line 625
    .end local v1    # "rank":I
    :try_start_d6
    invoke-virtual {v4, v1}, Lcom/android/server/am/EmbryoSupervisor;->setRank(I)V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_dc

    .line 626
    .end local v4    # "es":Lcom/android/server/am/EmbryoSupervisor;
    .end local v5    # "lru":I
    nop

    .line 622
    move v1, v6

    goto :goto_bd

    .line 627
    :catchall_dc
    move-exception v1

    move-object v3, v1

    move v1, v6

    goto/16 :goto_18a

    .line 627
    .end local v6    # "rank":I
    .restart local v1    # "rank":I
    :cond_e1
    :try_start_e1
    monitor-exit v2
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_189

    .line 628
    new-instance v2, Lcom/android/server/am/EmbryoSupervisor$RankComparator;

    invoke-direct {v2}, Lcom/android/server/am/EmbryoSupervisor$RankComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 630
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ee
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/EmbryoSupervisor;

    .line 631
    .restart local v3    # "es":Lcom/android/server/am/EmbryoSupervisor;
    const-string v4, "Embryo_Uterus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rank:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getRank()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 631
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v3    # "es":Lcom/android/server/am/EmbryoSupervisor;
    goto :goto_ee

    .line 636
    :cond_12e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    # getter for: Lcom/android/server/am/Uterus;->MAX:I
    invoke-static {}, Lcom/android/server/am/Uterus;->access$700()I

    move-result v3

    sub-int/2addr v2, v3

    .line 637
    .local v2, "kill":I
    add-int/lit8 v3, v2, -0x1

    .line 637
    .local v3, "i":I
    :goto_139
    if-ltz v3, :cond_181

    .line 638
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/EmbryoSupervisor;

    .line 640
    .local v4, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    iget-object v5, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 641
    :try_start_148
    iget-object v6, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    # getter for: Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 642
    monitor-exit v5
    :try_end_152
    .catchall {:try_start_148 .. :try_end_152} :catchall_17e

    .line 644
    monitor-enter v4

    .line 646
    :try_start_153
    const-string v5, "Embryo_Uterus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v4}, Lcom/android/server/am/EmbryoSupervisor;->detach()Lcom/android/server/am/Embryo;

    move-result-object v5

    .line 648
    .local v5, "embryo":Lcom/android/server/am/Embryo;
    if-eqz v5, :cond_177

    .line 649
    invoke-virtual {v5}, Lcom/android/server/am/Embryo;->destroy()V

    .line 650
    .end local v5    # "embryo":Lcom/android/server/am/Embryo;
    :cond_177
    monitor-exit v4

    .line 637
    .end local v4    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    add-int/lit8 v3, v3, -0x1

    goto :goto_139

    .line 650
    .restart local v4    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :catchall_17b
    move-exception v5

    monitor-exit v4
    :try_end_17d
    .catchall {:try_start_153 .. :try_end_17d} :catchall_17b

    throw v5

    .line 642
    :catchall_17e
    move-exception v6

    :try_start_17f
    monitor-exit v5
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v6

    .line 653
    .end local v3    # "i":I
    .end local v4    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :cond_181
    const-string v3, "Embryo_Uterus"

    const-string v4, "<<< trim finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 627
    .end local v2    # "kill":I
    :catchall_189
    move-exception v3

    :goto_18a
    :try_start_18a
    monitor-exit v2
    :try_end_18b
    .catchall {:try_start_18a .. :try_end_18b} :catchall_189

    throw v3

    .line 610
    .end local v1    # "rank":I
    :catchall_18c
    move-exception v2

    :try_start_18d
    monitor-exit v1
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_18c

    throw v2
.end method
