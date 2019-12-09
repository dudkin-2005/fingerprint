.class public Lcom/android/server/OemSceneGameModeView;
.super Landroid/widget/RelativeLayout;
.source "OemSceneGameModeView.java"


# static fields
.field public static final DONTSHOWAGAIN_DEFAULT:I = -0x1

.field public static final DONTSHOWAGAIN_OFF:I = 0x0

.field public static final DONTSHOWAGAIN_ON:I = 0x1

.field public static final ESPORTMODE_ANIMATION:I = 0x1

.field public static final GAMEMODE_ANIMATION:I

.field public static sDontShowAgainValue:I


# instance fields
.field protected mAnimate:Z

.field protected mContext:Landroid/content/Context;

.field protected mIsViewAdded:Z

.field protected mPanel:Lcom/android/server/OemSceneGameModePanel;

.field protected mViewRoot:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/android/server/OemSceneGameModeView;->sDontShowAgainValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "panel"    # Lcom/android/server/OemSceneGameModePanel;
    .param p4, "animate"    # Z

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeView;->mIsViewAdded:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeView;->mAnimate:Z

    .line 33
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    .line 35
    iput-boolean p4, p0, Lcom/android/server/OemSceneGameModeView;->mAnimate:Z

    .line 36
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mViewRoot:Landroid/widget/RelativeLayout;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeView;->updateView()V

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 55
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    .line 56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_24

    .line 58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1f

    goto :goto_24

    .line 66
    :cond_1f
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 59
    :cond_24
    :goto_24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 61
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    .line 64
    :cond_30
    return v1
.end method

.method public doSomething(I)V
    .registers 2
    .param p1, "something"    # I

    .line 50
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 42
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0, p1}, Lcom/android/server/OemSceneGameModePanel;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    const-string v0, "OemSceneGameModeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemSceneGameModeView onConfigurationChanged, orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "OemSceneGameModeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemSceneGameModeView mContext, orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/OemSceneGameModeView;->setMeasuredDimension(II)V

    .line 74
    :try_start_3
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_6} :catch_7

    .line 77
    goto :goto_11

    .line 75
    :catch_7
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "OemSceneGameModeView"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_11
    return-void
.end method

.method public updateView()V
    .registers 1

    .line 48
    return-void
.end method

.method public updateViewOptions()V
    .registers 1

    .line 51
    return-void
.end method

.method public updateViewState()V
    .registers 1

    .line 49
    return-void
.end method
