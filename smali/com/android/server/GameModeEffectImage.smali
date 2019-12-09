.class public Lcom/android/server/GameModeEffectImage;
.super Ljava/lang/Object;
.source "GameModeEffectImage.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawableId:I

.field private mEffect:Landroid/view/View;

.field mFnaticOffMoveLeft:Landroid/view/animation/Animation;

.field mFnaticOffMoveRight:Landroid/view/animation/Animation;

.field mFnaticOnMoveLeft:Landroid/view/animation/Animation;

.field mFnaticOnMoveRight:Landroid/view/animation/Animation;

.field private mIcon:Landroid/widget/ImageView;

.field private mLayout:Landroid/view/View;

.field private mOrigAnimMoveLeftDuration:J

.field private mOrigAnimMoveRevertLeftDuration:J

.field private mOrigAnimMoveRevertRightDuration:J

.field private mOrigAnimMoveRightDuration:J

.field private mOwner:Lcom/android/server/OemSceneGameModeDialog;

.field private mTextView:Landroid/widget/TextView;

.field private mTitle:I

.field private mV:Landroid/widget/ImageView;

.field private mVAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "owner"    # Lcom/android/server/OemSceneGameModeDialog;
    .param p3, "viewId"    # I
    .param p4, "drawableId"    # I
    .param p5, "title"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    .line 39
    iput p4, p0, Lcom/android/server/GameModeEffectImage;->mDrawableId:I

    .line 40
    invoke-virtual {p2, p3}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    .line 41
    iput p5, p0, Lcom/android/server/GameModeEffectImage;->mTitle:I

    .line 42
    iput-object p2, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    .line 43
    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->init()V

    .line 44
    return-void
.end method

.method private generateNewLineInText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "src"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "result":Ljava/lang/StringBuilder;
    if-nez p1, :cond_8

    .line 72
    return-object p1

    .line 74
    :cond_8
    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "splits":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_34

    .line 76
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    nop

    .local v3, "i":I
    :goto_1e
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v1

    if-ge v2, v3, :cond_2f

    .line 82
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1e

    .line 85
    .end local v3    # "i":I
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 79
    :cond_34
    return-object p1
.end method

.method private init()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->initView()V

    .line 48
    return-void
.end method

.method private initView()V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    const v1, 0x507003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    const v1, 0x507003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mIcon:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/server/GameModeEffectImage;->mDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    const v1, 0x507003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x506003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 56
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    const v1, 0x507003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GameModeEffectImage;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/GameModeEffectImage;->generateNewLineInText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    const v1, 0x5010005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    .line 59
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    const v1, 0x5010003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    .line 60
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    const v1, 0x5010004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    .line 61
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    const v1, 0x5010006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    .line 63
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRightDuration:J

    .line 64
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveLeftDuration:J

    .line 65
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRevertRightDuration:J

    .line 66
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRevertLeftDuration:J

    .line 67
    return-void
.end method

.method private updateDuration()V
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_e

    move-wide v4, v2

    goto :goto_10

    :cond_e
    iget-wide v4, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRightDuration:J

    :goto_10
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_1f

    move-wide v4, v2

    goto :goto_21

    :cond_1f
    iget-wide v4, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveLeftDuration:J

    :goto_21
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_30

    move-wide v4, v2

    goto :goto_32

    :cond_30
    iget-wide v4, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRevertRightDuration:J

    :goto_32
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_42

    :cond_40
    iget-wide v2, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRevertLeftDuration:J

    :goto_42
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    return-void
.end method


# virtual methods
.method public setFnaticIcon()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x5060007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 130
    return-void
.end method

.method public setGameModeIcon()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x506003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 134
    return-void
.end method

.method public startFnaticOffMoveLeft()V
    .registers 3

    .line 122
    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    .line 123
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x5060007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    return-void
.end method

.method public startFnaticOffMoveRight()V
    .registers 3

    .line 115
    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    .line 116
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x5060007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    return-void
.end method

.method public startFnaticOffMoveRightWithListner(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 108
    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    .line 109
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    return-void
.end method

.method public startFnaticOnMoveLeft()V
    .registers 3

    .line 102
    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    .line 103
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    return-void
.end method

.method public startFnaticOnMoveRight()V
    .registers 3

    .line 96
    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    .line 97
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    return-void
.end method
