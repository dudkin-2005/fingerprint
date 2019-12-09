.class Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConneciton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$1;)V
    .locals 0

    .line 618
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 621
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1100(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1200(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 625
    :cond_0
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/print/RemotePrintService;->access$1202(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 626
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/print/RemotePrintService;->access$1502(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;

    .line 628
    :try_start_0
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 632
    nop

    .line 634
    :try_start_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1500(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->access$1700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    nop

    .line 641
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1900(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 642
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$400(Lcom/android/server/print/RemotePrintService;)V

    .line 645
    :cond_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$2000(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 646
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintService;->access$2000(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/print/RemotePrintService;->access$600(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    .line 648
    :cond_2
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$2100(Lcom/android/server/print/RemotePrintService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 650
    :try_start_2
    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintService;->access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 651
    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintService;->access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 652
    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 653
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    invoke-static {v2, v3}, Lcom/android/server/print/RemotePrintService;->access$900(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 658
    :goto_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$2300(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 659
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$2300(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 660
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 661
    goto :goto_1

    .line 665
    :cond_4
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1900(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$2400(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 666
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$2500(Lcom/android/server/print/RemotePrintService;)V

    .line 668
    :cond_5
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1, v0}, Lcom/android/server/print/RemotePrintService;->access$1802(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 669
    return-void

    .line 656
    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    .line 635
    :catch_0
    move-exception p1

    .line 636
    const-string v0, "RemotePrintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting client for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1600(Lcom/android/server/print/RemotePrintService;)V

    .line 638
    return-void

    .line 629
    :catch_1
    move-exception p1

    .line 630
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1600(Lcom/android/server/print/RemotePrintService;)V

    .line 631
    return-void

    .line 622
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->access$1400(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintService;->access$1300(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 623
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 673
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/print/RemotePrintService;->access$1202(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 674
    return-void
.end method
