.class public Lcom/android/server/wm/utils/CoordinateTransforms;
.super Ljava/lang/Object;
.source "CoordinateTransforms.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 1

    .line 76
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :pswitch_0
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 90
    neg-int p0, p2

    int-to-float p0, p0

    invoke-virtual {p3, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 91
    goto :goto_0

    .line 85
    :pswitch_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 86
    neg-int p0, p1

    int-to-float p0, p0

    neg-int p1, p2

    int-to-float p1, p1

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 87
    goto :goto_0

    .line 81
    :pswitch_2
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 82
    neg-int p0, p1

    int-to-float p0, p0

    invoke-virtual {p3, v0, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 83
    goto :goto_0

    .line 78
    :pswitch_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 79
    nop

    .line 95
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 1

    .line 46
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :pswitch_0
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 60
    int-to-float p0, p2

    invoke-virtual {p3, p0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 61
    goto :goto_0

    .line 55
    :pswitch_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 56
    int-to-float p0, p1

    int-to-float p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 57
    goto :goto_0

    .line 51
    :pswitch_2
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 52
    int-to-float p0, p1

    invoke-virtual {p3, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    goto :goto_0

    .line 48
    :pswitch_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 49
    nop

    .line 65
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 148
    if-nez p2, :cond_0

    .line 149
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 151
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 152
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 153
    iget p0, p2, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    return-void
.end method

.method public static transformToRotation(IIIILandroid/graphics/Matrix;)V
    .locals 2

    .line 130
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    .line 131
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 132
    move v1, p2

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    if-eqz v0, :cond_3

    .line 134
    move p2, p3

    :cond_3
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    invoke-static {p0, p2, v1, p4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 136
    invoke-static {p1, p2, v1, p3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 137
    invoke-virtual {p4, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 138
    return-void
.end method

.method public static transformToRotation(IILandroid/view/DisplayInfo;Landroid/graphics/Matrix;)V
    .locals 3

    .line 108
    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 109
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget v0, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_2
    iget v0, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 110
    :goto_1
    if-eqz v1, :cond_3

    iget p2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_3
    iget p2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 112
    :goto_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    invoke-static {p0, p2, v0, p3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 114
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 115
    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 116
    return-void
.end method
