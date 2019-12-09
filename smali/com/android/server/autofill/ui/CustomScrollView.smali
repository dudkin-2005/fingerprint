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
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 55
    return-void
.end method

.method private calculateDimensions()V
    .locals 5

    .line 72
    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 75
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1110011

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/autofill/ui/CustomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 82
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    .line 84
    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 85
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 86
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    .line 87
    const-string v1, "CustomScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateDimensions(): maxHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", childHeight="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", w="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 63
    const-string p1, "CustomScrollView"

    const-string p2, "no children"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->calculateDimensions()V

    .line 68
    iget p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iget p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/CustomScrollView;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method
