.class public Lcom/android/server/EffectImageList;
.super Ljava/lang/Object;
.source "EffectImageList.java"


# static fields
.field public static final GROUP_ESPORTMODE:I = 0x2

.field public static final GROUP_GAMEMODE:I = 0x1

.field private static mPathInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mContext:Landroid/content/Context;

.field mFnaticOffAn:Landroid/view/animation/Animation;

.field mFnaticOnAn:Landroid/view/animation/Animation;

.field private mGroupNo:I

.field mList:Landroid/view/View;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOrigFnaticOffAnDuration:J

.field private mOrigFnaticOnAnDuration:J

.field mOwner:Lcom/android/server/OemSceneGameModeDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 27
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupNo"    # I
    .param p3, "list"    # Landroid/view/View;
    .param p4, "listener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p5, "owner"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    .line 31
    iput p2, p0, Lcom/android/server/EffectImageList;->mGroupNo:I

    .line 32
    iput-object p3, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    .line 33
    iput-object p4, p0, Lcom/android/server/EffectImageList;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 34
    iput-object p5, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    .line 35
    invoke-direct {p0}, Lcom/android/server/EffectImageList;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EffectImageList;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/EffectImageList;

    .line 13
    iget v0, p0, Lcom/android/server/EffectImageList;->mGroupNo:I

    return v0
.end method

.method private init()V
    .registers 3

    .line 94
    iget v0, p0, Lcom/android/server/EffectImageList;->mGroupNo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 95
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    const v1, 0x5010007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    .line 96
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    const v1, 0x5010008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    .line 97
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOnAnDuration:J

    .line 98
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOffAnDuration:J

    .line 99
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_6e

    .line 102
    :cond_3a
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    const v1, 0x5010001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    .line 103
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    const v1, 0x5010002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    .line 104
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOnAnDuration:J

    .line 105
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOffAnDuration:J

    .line 106
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 109
    :goto_6e
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/server/EffectImageList$3;

    invoke-direct {v1, p0}, Lcom/android/server/EffectImageList$3;-><init>(Lcom/android/server/EffectImageList;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 128
    return-void
.end method

.method private updateDuration()V
    .registers 7

    .line 142
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_e

    move-wide v4, v2

    goto :goto_10

    :cond_e
    iget-wide v4, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOnAnDuration:J

    :goto_10
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 143
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_20

    :cond_1e
    iget-wide v2, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOffAnDuration:J

    :goto_20
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public gone()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hide()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public hideAniamtion()V
    .registers 4

    .line 64
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 65
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    iget-object v1, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_13

    const-wide/16 v1, 0x0

    goto :goto_15

    :cond_13
    const-wide/16 v1, 0xe1

    :goto_15
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 66
    new-instance v1, Lcom/android/server/EffectImageList$2;

    invoke-direct {v1, p0}, Lcom/android/server/EffectImageList$2;-><init>(Lcom/android/server/EffectImageList;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    return-void
.end method

.method public show()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void
.end method

.method public showAnimation()V
    .registers 4

    .line 42
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 43
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    iget-object v1, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_13

    const-wide/16 v1, 0x0

    goto :goto_15

    :cond_13
    const-wide/16 v1, 0xe1

    :goto_15
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 44
    new-instance v1, Lcom/android/server/EffectImageList$1;

    invoke-direct {v1, p0}, Lcom/android/server/EffectImageList$1;-><init>(Lcom/android/server/EffectImageList;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    iget-object v1, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    return-void
.end method

.method public startFnaticOff()V
    .registers 3

    .line 137
    invoke-direct {p0}, Lcom/android/server/EffectImageList;->updateDuration()V

    .line 138
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    return-void
.end method

.method public startFnaticOn()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/server/EffectImageList;->updateDuration()V

    .line 133
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    return-void
.end method
