.class Lcom/android/server/am/OnePlusBGController$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .registers 2

    .line 689
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "x1"    # Lcom/android/server/am/OnePlusBGController$1;

    .line 689
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 693
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 695
    return-void

    .line 697
    :cond_7
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 698
    const-string/jumbo v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 699
    .local v1, "plugged":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$2300(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    move v5, v4

    goto :goto_23

    :cond_22
    move v5, v2

    :goto_23
    if-eq v3, v5, :cond_48

    .line 700
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;->this$0:Lcom/android/server/am/OnePlusBGController;

    if-eqz v1, :cond_2b

    move v2, v4

    nop

    :cond_2b
    # setter for: Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z
    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusBGController;->access$2302(Lcom/android/server/am/OnePlusBGController;Z)Z

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update mIsPluggedIn to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$2300(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 703
    .end local v1    # "plugged":I
    :cond_48
    goto :goto_68

    :cond_49
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 704
    const-string/jumbo v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 705
    .local v1, "state":I
    const/16 v2, 0x1e6c

    if-ne v1, v2, :cond_68

    .line 707
    const-string v2, "User is waking up, reset budget"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;->this$0:Lcom/android/server/am/OnePlusBGController;

    # invokes: Lcom/android/server/am/OnePlusBGController;->resetAllBudget()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$800(Lcom/android/server/am/OnePlusBGController;)V

    .line 711
    .end local v1    # "state":I
    :cond_68
    :goto_68
    return-void
.end method
