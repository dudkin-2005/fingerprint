.class Lcom/android/server/OemSceneModeController$2;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .line 587
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iput p2, p0, Lcom/android/server/OemSceneModeController$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 590
    iget v0, p0, Lcom/android/server/OemSceneModeController$2;->val$code:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_46

    goto :goto_45

    .line 598
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$1600(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/OemSceneModeController;->executePowerSavePolicy(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v1}, Lcom/android/server/OemSceneModeController;->access$1700(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    .line 599
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$600(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 600
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->access$1600(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/server/OemSceneModeController;->executePowerSavePolicy(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->access$1700(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    goto :goto_45

    .line 595
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$1600(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/OemSceneModeController;->executePowerSavePolicy(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v1}, Lcom/android/server/OemSceneModeController;->access$1700(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    .line 596
    goto :goto_45

    .line 592
    :pswitch_33
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->access$1600(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z
    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$600(Lcom/android/server/OemSceneModeController;)Z

    move-result v2

    # invokes: Lcom/android/server/OemSceneModeController;->executePowerSavePolicy(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->access$1700(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    .line 593
    nop

    .line 606
    :cond_45
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_33
        :pswitch_27
        :pswitch_7
    .end packed-switch
.end method
