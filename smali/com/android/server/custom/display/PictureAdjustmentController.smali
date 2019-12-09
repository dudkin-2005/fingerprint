.class public Lcom/android/server/custom/display/PictureAdjustmentController;
.super Lcom/android/server/custom/display/LiveDisplayFeature;
.source "PictureAdjustmentController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveDisplay-PAC"


# instance fields
.field private final mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

.field private final mHasDisplayModes:Z

.field private mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUsePictureAdjustment:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/custom/hardware/LineageHardwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 51
    iget-object p1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHasDisplayModes:Z

    .line 53
    iget-object p1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/16 p2, 0x1000

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    .line 54
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 55
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {v1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 57
    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 60
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 61
    nop

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    goto :goto_0

    .line 67
    :cond_2
    move p2, p1

    :goto_1
    if-nez p2, :cond_3

    .line 68
    iget-object p1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 70
    :cond_3
    iput-boolean p2, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    .line 71
    return-void
.end method

.method private getPAForMode(I)Lcom/android/internal/custom/hardware/HSIC;
    .locals 2

    .line 200
    invoke-direct {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->unpackPreference()Landroid/util/SparseArray;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/custom/hardware/HSIC;

    return-object p1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object p1

    return-object p1
.end method

.method private packPreference(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/custom/hardware/HSIC;",
            ">;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 232
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 233
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/custom/hardware/HSIC;

    .line 234
    if-lez v1, :cond_0

    .line 235
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/custom/hardware/HSIC;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    const-string p1, "display_picture_adjustment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private setPAForMode(ILcom/android/internal/custom/hardware/HSIC;)V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->unpackPreference()Landroid/util/SparseArray;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->packPreference(Landroid/util/SparseArray;)V

    .line 211
    return-void
.end method

.method private unpackPreference()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/custom/hardware/HSIC;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 216
    const-string v1, "display_picture_adjustment"

    invoke-virtual {p0, v1}, Lcom/android/server/custom/display/PictureAdjustmentController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_1

    .line 218
    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 219
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 220
    const-string v6, ":"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 221
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 222
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Lcom/android/internal/custom/hardware/HSIC;->unflattenFrom(Ljava/lang/String;)Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-object v0
.end method

.method private updatePictureAdjustment()V
    .locals 4

    .line 94
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->setPictureAdjustment(Lcom/android/internal/custom/hardware/HSIC;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string v1, "LiveDisplay-PAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set picture adjustment! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/custom/hardware/HSIC;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 108
    const-string v0, "PictureAdjustmentController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  adjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  hueRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getHueRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  saturationRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getSaturationRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  intensityRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getIntensityRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  contrastRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getContrastRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  saturationThresholdRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  defaultAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    .line 123
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 125
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    return p1
.end method

.method getContrastRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0
.end method

.method getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
    .locals 7

    .line 154
    nop

    .line 155
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {v0}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/android/internal/custom/hardware/HSIC;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/custom/hardware/HSIC;-><init>(FFFFF)V

    .line 161
    :cond_1
    return-object v0
.end method

.method getHueRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0
.end method

.method getIntensityRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0
.end method

.method getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
    .locals 7

    .line 165
    nop

    .line 166
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x0

    .line 168
    iget-boolean v1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHasDisplayModes:Z

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {v1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getCurrentDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    .line 171
    iget v0, v1, Lcom/android/internal/custom/hardware/DisplayMode;->id:I

    .line 174
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getPAForMode(I)Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 177
    new-instance v0, Lcom/android/internal/custom/hardware/HSIC;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/custom/hardware/HSIC;-><init>(FFFFF)V

    .line 179
    :cond_2
    return-object v0
.end method

.method getSaturationRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0
.end method

.method getSaturationThresholdRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 149
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0
.end method

.method protected onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->updatePictureAdjustment()V

    .line 86
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "display_picture_adjustment"

    .line 80
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->registerSettings([Landroid/net/Uri;)V

    .line 81
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/server/custom/display/PictureAdjustmentController;->updatePictureAdjustment()V

    .line 91
    return-void
.end method

.method setPictureAdjustment(Lcom/android/internal/custom/hardware/HSIC;)Z
    .locals 2

    .line 183
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 184
    nop

    .line 185
    iget-boolean v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHasDisplayModes:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/server/custom/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {v0}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getCurrentDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget v1, v0, Lcom/android/internal/custom/hardware/DisplayMode;->id:I

    .line 191
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/custom/display/PictureAdjustmentController;->setPAForMode(ILcom/android/internal/custom/hardware/HSIC;)V

    .line 192
    const/4 p1, 0x1

    return p1

    .line 194
    :cond_1
    return v1
.end method
