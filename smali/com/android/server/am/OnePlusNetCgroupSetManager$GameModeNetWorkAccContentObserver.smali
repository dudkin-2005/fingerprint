.class Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;
.super Landroid/database/ContentObserver;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusNetCgroupSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeNetWorkAccContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 614
    iput-object p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 615
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 616
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 620
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] GameModeNetWorkAccContentObserver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeNetWorkAcc()I
    invoke-static {v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$800(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeNetWorkAcc()I
    invoke-static {v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$800(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v1

    # setter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$902(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    .line 622
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I
    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$900(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 623
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$1000(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 624
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    goto :goto_50

    .line 626
    :cond_42
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # getter for: Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I
    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$900(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v0

    if-nez v0, :cond_50

    .line 627
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 629
    :cond_50
    :goto_50
    return-void
.end method
