.class Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;
.super Landroid/database/ContentObserver;
.source "OnePlusRamBoostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusRamBoostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusRamBoostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 215
    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    .line 216
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 217
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 221
    # getter for: Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "smartboost_enable changed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # getter for: Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;
    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$100(Lcom/android/server/am/OnePlusRamBoostManager;)Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendEmptyMessage(I)Z

    .line 223
    return-void
.end method
