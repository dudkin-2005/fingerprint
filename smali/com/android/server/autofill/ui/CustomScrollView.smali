.class public Lcom/android/server/autofill/ui/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomScrollView"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 55
    return-void
.end method

.method private calculateDimensions()V
    .registers 10

    .line 72
    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 74
    :cond_6
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v0, "typedValue":Landroid/util/TypedValue;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 76
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1110012

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 80
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/autofill/ui/CustomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 81
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 82
    .local v4, "childHeight":I
    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v5, v5

    .line 84
    .local v5, "maxHeight":I
    iget v6, v1, Landroid/graphics/Point;->x:I

    iput v6, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 86
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_7a

    .line 87
    const-string v6, "CustomScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateDimensions(): maxHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", childHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_7a
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_12

    .line 63
    const-string v0, "CustomScrollView"

    const-string/jumbo v1, "no children"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_12
    invoke-direct {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->calculateDimensions()V

    .line 68
    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iget v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method
