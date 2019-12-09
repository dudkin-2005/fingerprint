.class Lcom/android/server/substratum/SubstratumService$2;
.super Landroid/content/substratum/ISubstratumService$Stub;
.source "SubstratumService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/substratum/SubstratumService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/substratum/SubstratumService;


# direct methods
.method constructor <init>(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-direct {p0}, Landroid/content/substratum/ISubstratumService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public applyBootanimation(Ljava/lang/String;)V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 467
    if-nez p1, :cond_0

    .line 468
    :try_start_0
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v2, "Restoring system boot animation..."

    invoke-static {p1, v2}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$1600(Lcom/android/server/substratum/SubstratumService;)V

    goto :goto_0

    .line 475
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v3, "Configuring themed boot animation..."

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2, p1}, Lcom/android/server/substratum/SubstratumService;->access$1700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    nop

    .line 477
    return-void

    .line 475
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public applyFonts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    if-nez p1, :cond_0

    .line 485
    :try_start_0
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string p2, "Restoring system font..."

    invoke-static {p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 486
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$1800(Lcom/android/server/substratum/SubstratumService;)V

    goto :goto_0

    .line 492
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v3, "Configuring theme font..."

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2, p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$1900(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    nop

    .line 494
    return-void

    .line 492
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public applyProfile(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProfileJob - Applying profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2}, Lcom/android/server/substratum/SubstratumService;->access$400(Lcom/android/server/substratum/SubstratumService;)V

    .line 521
    nop

    .line 523
    invoke-static {}, Lcom/android/server/substratum/SubstratumService;->access$2200()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 524
    invoke-static {}, Lcom/android/server/substratum/SubstratumService;->access$2300()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 526
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v4}, Lcom/android/server/substratum/SubstratumService;->access$000(Lcom/android/server/substratum/SubstratumService;)Lcom/android/internal/substratum/ISubstratumHelperService;

    move-result-object v4

    invoke-interface {v4, p3}, Lcom/android/internal/substratum/ISubstratumHelperService;->applyProfile(Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/android/server/substratum/SubstratumService;->access$2200()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    .line 529
    invoke-static {}, Lcom/android/server/substratum/SubstratumService;->access$2300()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    .line 531
    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2}, Lcom/android/server/substratum/SubstratumService;->access$2400(Lcom/android/server/substratum/SubstratumService;)V

    .line 535
    :cond_1
    const/4 v2, 0x1

    if-nez v3, :cond_2

    if-eqz v5, :cond_3

    .line 536
    :cond_2
    iget-object p4, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p4}, Lcom/android/server/substratum/SubstratumService;->access$2500(Lcom/android/server/substratum/SubstratumService;)V

    .line 537
    nop

    .line 540
    move p4, v2

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/server/substratum/SubstratumService;->access$700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Z)V

    .line 542
    goto :goto_0

    .line 544
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 545
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3, p2, v2}, Lcom/android/server/substratum/SubstratumService;->access$700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Z)V

    .line 546
    goto :goto_1

    .line 548
    :cond_5
    if-eqz p4, :cond_6

    .line 549
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$1100(Lcom/android/server/substratum/SubstratumService;)V

    .line 552
    :cond_6
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ProfileJob - "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " successfully applied."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 556
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 553
    :catch_0
    move-exception p1

    .line 554
    :try_start_1
    iget-object p2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string p3, "Failed to apply profile"

    invoke-static {p2, p3, p1}, Lcom/android/server/substratum/SubstratumService;->access$1000(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 557
    nop

    .line 558
    return-void

    .line 556
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public applyShutdownAnimation(Ljava/lang/String;)V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 565
    if-nez p1, :cond_0

    .line 566
    :try_start_0
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v2, "Restoring system shutdown animation..."

    invoke-static {p1, v2}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$2600(Lcom/android/server/substratum/SubstratumService;)V

    goto :goto_0

    .line 573
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v3, "Configuring themed shutdown animation..."

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2, p1}, Lcom/android/server/substratum/SubstratumService;->access$2700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 574
    nop

    .line 575
    return-void

    .line 573
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public applySounds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 501
    if-nez p1, :cond_0

    .line 502
    :try_start_0
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string p2, "Restoring system sounds..."

    invoke-static {p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 503
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$2000(Lcom/android/server/substratum/SubstratumService;)V

    goto :goto_0

    .line 509
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v3, "Configuring theme sounds..."

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2, p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$2100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CopyJob - copying \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 398
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2, p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$1300(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 406
    :cond_1
    iget-object p2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CopyJob - \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist, aborting..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/substratum/SubstratumService;->access$1400(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public deleteDirectory(Ljava/lang/String;Z)V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 452
    if-eqz p2, :cond_0

    .line 453
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    goto :goto_0

    .line 458
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 455
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    nop

    .line 460
    return-void

    .line 458
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v0}, Lcom/android/server/substratum/SubstratumService;->access$1200(Lcom/android/server/substratum/SubstratumService;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 582
    :catch_0
    move-exception p1

    .line 583
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v1, "There is an exception when trying to get all overlays"

    invoke-static {v0, v1, p1}, Lcom/android/server/substratum/SubstratumService;->access$1000(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    const/4 p1, 0x0

    return-object p1
.end method

.method public installOverlay(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2}, Lcom/android/server/substratum/SubstratumService;->access$300(Lcom/android/server/substratum/SubstratumService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 279
    :try_start_1
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3}, Lcom/android/server/substratum/SubstratumService;->access$400(Lcom/android/server/substratum/SubstratumService;)V

    .line 280
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3}, Lcom/android/server/substratum/SubstratumService;->access$000(Lcom/android/server/substratum/SubstratumService;)Lcom/android/internal/substratum/ISubstratumHelperService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/substratum/ISubstratumHelperService;->installOverlay(Ljava/util/List;)V

    .line 281
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 282
    :catch_0
    move-exception p1

    .line 285
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    nop

    .line 287
    return-void
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 5

    .line 437
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 440
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MkdirJob - creating \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$1500(Lcom/android/server/substratum/SubstratumService;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    nop

    .line 445
    return-void

    .line 443
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoveJob - moving \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 419
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    .line 424
    :cond_0
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3, p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$1300(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 426
    :goto_0
    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    goto :goto_1

    .line 428
    :cond_1
    iget-object p2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoveJob - \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist, aborting..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/substratum/SubstratumService;->access$1400(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    nop

    .line 433
    return-void

    .line 431
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public restartSystemUI()V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v3, "Restarting SystemUI..."

    invoke-static {v2, v3}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2}, Lcom/android/server/substratum/SubstratumService;->access$1100(Lcom/android/server/substratum/SubstratumService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    nop

    .line 390
    return-void

    .line 388
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 592
    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 593
    return p3

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled - File name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 598
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2}, Lcom/android/server/substratum/SubstratumService;->access$300(Lcom/android/server/substratum/SubstratumService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 599
    :try_start_1
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3}, Lcom/android/server/substratum/SubstratumService;->access$1200(Lcom/android/server/substratum/SubstratumService;)Landroid/content/om/IOverlayManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return p1

    .line 600
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 602
    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setPriority(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2}, Lcom/android/server/substratum/SubstratumService;->access$300(Lcom/android/server/substratum/SubstratumService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    :try_start_1
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v4, "PriorityJob - processing priority changes..."

    invoke-static {v3, v4}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 362
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 363
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 364
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 366
    iget-object v7, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v7}, Lcom/android/server/substratum/SubstratumService;->access$1200(Lcom/android/server/substratum/SubstratumService;)Landroid/content/om/IOverlayManager;

    move-result-object v7

    invoke-interface {v7, v6, v5, v3}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 362
    goto :goto_0

    .line 369
    :cond_0
    if-eqz p2, :cond_1

    .line 370
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$1100(Lcom/android/server/substratum/SubstratumService;)V

    .line 372
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 373
    :catch_0
    move-exception p1

    .line 374
    :try_start_3
    iget-object p2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v2, "There is an exception when trying to adjust overlay priority"

    invoke-static {p2, v2, p1}, Lcom/android/server/substratum/SubstratumService;->access$1000(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    nop

    .line 378
    return-void

    .line 376
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public switchOverlay(Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2}, Lcom/android/server/substratum/SubstratumService;->access$300(Lcom/android/server/substratum/SubstratumService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 342
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 343
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    if-eqz p2, :cond_0

    const-string v5, "Enabling"

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling overlay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v4, v5}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 344
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v4, v3, p2}, Lcom/android/server/substratum/SubstratumService;->access$700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Z)V

    .line 345
    goto :goto_0

    .line 346
    :cond_1
    if-eqz p3, :cond_2

    .line 347
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$1100(Lcom/android/server/substratum/SubstratumService;)V

    .line 349
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    nop

    .line 353
    return-void

    .line 349
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public uninstallOverlay(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/substratum/SubstratumService;->access$200(Lcom/android/server/substratum/SubstratumService;I)V

    .line 292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v2}, Lcom/android/server/substratum/SubstratumService;->access$300(Lcom/android/server/substratum/SubstratumService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    :try_start_1
    new-instance v9, Lcom/android/server/substratum/SubstratumService$PackageDeleteObserver;

    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Lcom/android/server/substratum/SubstratumService$PackageDeleteObserver;-><init>(Lcom/android/server/substratum/SubstratumService;Lcom/android/server/substratum/SubstratumService$1;)V

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 297
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3, v4}, Lcom/android/server/substratum/SubstratumService;->access$600(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remover - disabling overlay for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3, v4, v5}, Lcom/android/server/substratum/SubstratumService;->access$700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3}, Lcom/android/server/substratum/SubstratumService;->access$800(Lcom/android/server/substratum/SubstratumService;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v4, v5, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 304
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 306
    iget-object v5, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remover - uninstalling \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 307
    iget-object v5, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/substratum/SubstratumService;->access$902(Lcom/android/server/substratum/SubstratumService;Z)Z

    .line 308
    iget-object v5, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v5}, Lcom/android/server/substratum/SubstratumService;->access$800(Lcom/android/server/substratum/SubstratumService;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v5

    move v5, v6

    move-object v6, v9

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 315
    :goto_1
    iget-object v3, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {v3}, Lcom/android/server/substratum/SubstratumService;->access$900(Lcom/android/server/substratum/SubstratumService;)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 317
    const-wide/16 v3, 0x1

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    :goto_2
    goto :goto_1

    .line 318
    :catch_0
    move-exception v3

    goto :goto_2

    .line 325
    :cond_1
    goto :goto_3

    .line 323
    :catch_1
    move-exception v3

    .line 324
    :try_start_4
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v5, "There is an exception when trying to uninstall package"

    invoke-static {v4, v5, v3}, Lcom/android/server/substratum/SubstratumService;->access$1000(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    :goto_3
    goto/16 :goto_0

    .line 327
    :cond_2
    if-eqz p2, :cond_3

    .line 328
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$2;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$1100(Lcom/android/server/substratum/SubstratumService;)V

    .line 330
    :cond_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    nop

    .line 334
    return-void

    .line 330
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 332
    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
