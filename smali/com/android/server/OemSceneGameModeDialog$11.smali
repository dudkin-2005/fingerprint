.class Lcom/android/server/OemSceneGameModeDialog$11;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasStartFnaticIconAnimation:Z

.field i:I

.field id:I

.field final synthetic this$0:Lcom/android/server/OemSceneGameModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 599
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    .line 602
    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->hasStartFnaticIconAnimation:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 605
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_9d

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 606
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3f

    .line 607
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lines_00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    .line 608
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "com.oneplus"

    .line 607
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->id:I

    goto :goto_69

    .line 610
    :cond_3f
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lines_0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    .line 611
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "com.oneplus"

    .line 610
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->id:I

    .line 614
    :goto_69
    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->hasStartFnaticIconAnimation:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7b

    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_7b

    .line 615
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # invokes: Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnIconAnimation()V
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$1100(Lcom/android/server/OemSceneGameModeDialog;)V

    .line 616
    iput-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog$11;->hasStartFnaticIconAnimation:Z

    .line 619
    :cond_7b
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$1200(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog$11;->id:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 620
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    .line 621
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$1400(Lcom/android/server/OemSceneGameModeDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$1300(Lcom/android/server/OemSceneGameModeDialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b4

    .line 623
    :cond_9d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->i:I

    .line 624
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # invokes: Lcom/android/server/OemSceneGameModeDialog;->enableClick()V
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$1500(Lcom/android/server/OemSceneGameModeDialog;)V

    .line 625
    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->hasStartFnaticIconAnimation:Z

    .line 626
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 627
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$11;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # invokes: Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnIconAnimation()V
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$1100(Lcom/android/server/OemSceneGameModeDialog;)V

    .line 630
    :cond_b4
    :goto_b4
    return-void
.end method
