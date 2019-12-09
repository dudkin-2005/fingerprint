.class public Lcom/android/server/StaticScrollView;
.super Landroid/widget/ScrollView;
.source "StaticScrollView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StaticScrollView"

.field private static mPreviousPointY:F


# instance fields
.field private isSettingsShow:Z

.field private mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

.field private mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private mDisableScrollFromTouch:Z

.field private mEffectList:Landroid/widget/RelativeLayout;

.field private mExpandHeight:I

.field private mNotifyPopupWindow:Landroid/widget/PopupWindow;

.field private mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

.field private mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

.field private mScrollHeight:I

.field private mSettings:Landroid/view/View;

.field private mSettingsFake:Landroid/view/View;

.field private mSettingsIcon:Landroid/widget/ImageView;

.field private mSettingsIconFake:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/android/server/StaticScrollView;->mPreviousPointY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/StaticScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/StaticScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/StaticScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    .line 23
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/StaticScrollView;->mDisableScrollFromTouch:Z

    .line 33
    iput v0, p0, Lcom/android/server/StaticScrollView;->mDefaultHeight:I

    .line 55
    iput-object p1, p0, Lcom/android/server/StaticScrollView;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/StaticScrollView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StaticScrollView;

    .line 19
    iget-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/StaticScrollView;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StaticScrollView;

    .line 19
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mNotifyPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/StaticScrollView;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StaticScrollView;

    .line 19
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mEffectList:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/StaticScrollView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StaticScrollView;

    .line 19
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsFake:Landroid/view/View;

    return-object v0
.end method

.method private initSettingsAnimation()V
    .registers 12

    .line 186
    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 187
    .local v0, "scrollViewCurrentHeight":I
    const/4 v1, 0x0

    .line 188
    .local v1, "expandHeight":I
    iget-object v2, p0, Lcom/android/server/StaticScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 189
    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x5050002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 191
    :cond_28
    add-int v2, v0, v1

    .line 192
    .local v2, "scrollViewCurrentHeightInFnatic":I
    const/4 v4, 0x2

    new-array v5, v4, [F

    int-to-float v6, v0

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x0

    aput v6, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    .line 193
    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x96

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 194
    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/server/StaticScrollView$2;

    invoke-direct {v10, p0, v0}, Lcom/android/server/StaticScrollView$2;-><init>(Lcom/android/server/StaticScrollView;I)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    new-array v5, v4, [F

    aput v6, v5, v7

    int-to-float v10, v0

    aput v10, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    .line 207
    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/server/StaticScrollView$3;

    invoke-direct {v10, p0}, Lcom/android/server/StaticScrollView$3;-><init>(Lcom/android/server/StaticScrollView;)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    new-array v5, v4, [F

    add-int v10, v0, v1

    int-to-float v10, v10

    aput v10, v5, v7

    aput v6, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    .line 218
    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 219
    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/server/StaticScrollView$4;

    invoke-direct {v10, p0, v2}, Lcom/android/server/StaticScrollView$4;-><init>(Lcom/android/server/StaticScrollView;I)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    new-array v4, v4, [F

    aput v6, v4, v7

    add-int v5, v0, v1

    int-to-float v5, v5

    aput v5, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    .line 232
    iget-object v3, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    iget-object v3, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/StaticScrollView$5;

    invoke-direct {v4, p0}, Lcom/android/server/StaticScrollView$5;-><init>(Lcom/android/server/StaticScrollView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 242
    return-void
.end method

.method private startCloseExpandHeightAnimation(ZZ)V
    .registers 4
    .param p1, "fnaticStatus"    # Z
    .param p2, "force"    # Z

    .line 167
    if-nez p1, :cond_d

    .line 168
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 169
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_17

    .line 171
    :cond_d
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 172
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    :goto_17
    return-void
.end method

.method private startCloseExpandHeightAnimationWithListener(ZZLandroid/animation/Animator$AnimatorListener;)V
    .registers 5
    .param p1, "fnaticStatus"    # Z
    .param p2, "force"    # Z
    .param p3, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 177
    if-nez p1, :cond_d

    .line 178
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_17

    .line 181
    :cond_d
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 184
    :goto_17
    return-void
.end method

.method private startExpandHeightAnimation(Z)V
    .registers 3
    .param p1, "fnaticStatus"    # Z

    .line 147
    if-nez p1, :cond_d

    .line 148
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 149
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_17

    .line 151
    :cond_d
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 152
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 154
    :goto_17
    return-void
.end method

.method private startExpandHeightAnimationWithListener(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 4
    .param p1, "fnaticStatus"    # Z
    .param p2, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 157
    if-nez p1, :cond_d

    .line 158
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_17

    .line 161
    :cond_d
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 164
    :goto_17
    return-void
.end method


# virtual methods
.method public checkSettingsShow()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    return v0
.end method

.method public forceCloseSettings(Z)V
    .registers 4
    .param p1, "fnaticStatus"    # Z

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/StaticScrollView;->startCloseExpandHeightAnimation(ZZ)V

    .line 135
    iget-boolean v1, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    .line 136
    return-void
.end method

.method public getCurrentHeight()I
    .registers 4

    .line 100
    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getHeight()I

    move-result v0

    .line 101
    .local v0, "height":I
    if-nez v0, :cond_12

    .line 102
    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 104
    :cond_12
    return v0
.end method

.method public init(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/PopupWindow;)V
    .registers 9
    .param p1, "settings"    # Landroid/view/View;
    .param p2, "settingsIcon"    # Landroid/widget/ImageView;
    .param p3, "settingsFake"    # Landroid/view/View;
    .param p4, "settingIconFake"    # Landroid/widget/ImageView;
    .param p5, "effectlist"    # Landroid/widget/RelativeLayout;
    .param p6, "popupWindow"    # Landroid/widget/PopupWindow;

    .line 63
    iput-object p1, p0, Lcom/android/server/StaticScrollView;->mSettings:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lcom/android/server/StaticScrollView;->mSettingsIcon:Landroid/widget/ImageView;

    .line 65
    iput-object p3, p0, Lcom/android/server/StaticScrollView;->mSettingsFake:Landroid/view/View;

    .line 66
    iput-object p4, p0, Lcom/android/server/StaticScrollView;->mSettingsIconFake:Landroid/widget/ImageView;

    .line 67
    iput-object p5, p0, Lcom/android/server/StaticScrollView;->mEffectList:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p6, p0, Lcom/android/server/StaticScrollView;->mNotifyPopupWindow:Landroid/widget/PopupWindow;

    .line 69
    invoke-direct {p0}, Lcom/android/server/StaticScrollView;->initSettingsAnimation()V

    .line 70
    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p0, Lcom/android/server/StaticScrollView;->mDefaultHeight:I

    .line 71
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/StaticScrollView;->mScrollHeight:I

    .line 72
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/StaticScrollView;->mExpandHeight:I

    .line 73
    new-instance v0, Lcom/android/server/StaticScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/server/StaticScrollView$1;-><init>(Lcom/android/server/StaticScrollView;)V

    invoke-virtual {p0, v0}, Lcom/android/server/StaticScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    return-void
.end method

.method public resetHeight()V
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 89
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/server/StaticScrollView;->mDefaultHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/StaticScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method

.method public scrollToTop()V
    .registers 2

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/StaticScrollView;->scrollTo(II)V

    .line 144
    return-void
.end method

.method public setCurrentHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .line 94
    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 95
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/StaticScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void
.end method

.method public setTouchScrollEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/StaticScrollView;->mDisableScrollFromTouch:Z

    .line 60
    return-void
.end method

.method public switchView(Z)V
    .registers 3
    .param p1, "fnaticStatus"    # Z

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/StaticScrollView;->switchViewWithListener(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 109
    return-void
.end method

.method public switchViewWithListener(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 5
    .param p1, "fnaticStatus"    # Z
    .param p2, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 112
    iget-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    if-eqz v0, :cond_23

    .line 113
    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/android/server/StaticScrollView;->startCloseExpandHeightAnimation(ZZ)V

    goto :goto_e

    .line 116
    :cond_b
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/StaticScrollView;->startCloseExpandHeightAnimationWithListener(ZZLandroid/animation/Animator$AnimatorListener;)V

    .line 118
    :goto_e
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsFake:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsIcon:Landroid/widget/ImageView;

    const v1, 0x5060008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsIconFake:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_39

    .line 122
    :cond_23
    if-nez p2, :cond_29

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/StaticScrollView;->startExpandHeightAnimation(Z)V

    goto :goto_2c

    .line 125
    :cond_29
    invoke-direct {p0, p1, p2}, Lcom/android/server/StaticScrollView;->startExpandHeightAnimationWithListener(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 127
    :goto_2c
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsIcon:Landroid/widget/ImageView;

    const v1, 0x5060009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsIconFake:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    :goto_39
    iget-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    .line 131
    return-void
.end method
